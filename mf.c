#include <stdlib.h>
#include <stdio.h>
#include <time.h>

#define MEM_SZ      1024*1024
#define STK_SZ      31

#define BCASE       break; case
#define NCASE       goto next; case
#define S0          stk[sp]
#define S1          stk[sp-1]
#define MEMB(x)     mem[(x)]
#define CELL_SZ     sizeof(long)
#define BTW(n,l,h) ((l<=n)&(n<=h))

typedef enum {
    JUMP=0, RET, JMPT0, JMPC0, CALL, ACSTORE, ACAT, SYS,
    LIT1, AATINC, LIT, AAT, STORE, ASTOREINC, FETCH, ASTORE,
    COM, TIMES2, DIV2, ADDMULT, XOR, AND, U22, ADD,
    POPR, AVALUE, DUP, OVER, PUSHR, TOA, NOP, DROP
} MF_ops;

typedef enum {
    EMIT=101, DOT10, DOT16, FOPEN, FCLOSE, CCOMMA, COMMA, 
    CREATE, FIND, HA, LA, STA, CSZ, MEMST, MEMSZ
} SYS_ops;

typedef unsigned char byte;
typedef struct { long next, xt; byte f, l; char name[32]; } de_t;

long stk[STK_SZ+1], rstk[STK_SZ+1];
long sp, rsp, t, n, a, cf, st, input_fp;
char tib[128], wd[32], *in = &tib[0];
byte *H, *L, mem[MEM_SZ];

void push(long x) { stk[++sp] = x; }
long pop() { return stk[sp--]; }

void rpush(long x) { rstk[++rsp] = x; }
long rpop() { return rstk[rsp--]; }

#ifndef NEEDS_ALIGN
    long GetNumAt(byte *a) { return *(long*)a; }
    void SetNumAt(byte *a, long val) { *(long*)a = val; } 
#else
    long GetNumAt(byte *a) {
        return *a | *(a+1)<<8 | *(a+2)<<16 | *(a+2)<<24;
    }

    void SetNumAt(byte *a, long val) {
        *a = (val & 0xFF);
        *(a+1) = (val>>8 & 0xFF);
        *(a+2) = (val>>16 & 0xFF);
        *(a+2) = (val>>24 & 0xFF);
    }
#endif

void CComma(long x) { *(H++) = (byte)x; }
void Comma(long x) { SetNumAt(H, x); H += CELL_SZ; }

int nextWord() {
    int l = 0;
    while (*in && (*in<33)) { ++in; }
    while (*in && (*in>32)) { wd[l++] = *(in++); }
    wd[l] = 0; return l;
}

int strLen(char *s1) {
    int l = 0;
    while (*s1) { ++l; ++s1; }
    return l;
}

int strEq(char *s1, char *s2) {
    while (*s1 || *s2) { if (*(s1++) != *(s2++)) { return 0; } }
    return (*s1 == *s2) ? 1 : 0;
}

void strCpy(char *s1, char *s2) {
    while (*s2) { *(s1++) = *(s2++); }
    (*s1) = 0;
}

void create(char *name) {
    if (name == 0) { name = wd; nextWord(); }
    // printf("-cr:%s-", name);
    int l = strLen(name);
    int sz = (CELL_SZ*2)+4+l;
    de_t *dp = (de_t*)(L-sz);
    dp->next = (long)L;
    dp->xt = (long)H;
    dp->f = 0;
    dp->l = l;
    strCpy(dp->name, name);
    // printf("-nm:%s,%p-", dp->name, dp);
    L = (byte*)dp;
}

de_t *find(char *name) {
    if (name == 0) { name = wd; nextWord(); }
    de_t *dp = (de_t*)L;
    // printf("-find:%s(%p)-\n", name, dp);
    while (dp < (de_t*)&MEMB(MEM_SZ*CELL_SZ)) {
        // printf("-f?:%s-\n", dp->name);
        if (strEq(dp->name, name)) { return dp; }
        dp = (de_t*)dp->next;
    }
    return 0;
}

void sysOP(long op) {
    switch (op) {
        case  EMIT:   putchar((int)pop());
        BCASE DOT10:  printf("%ld", pop());
        BCASE DOT16:  printf("%lx", pop());
        BCASE FOPEN:  n=pop(); t=pop(); push((long)fopen((char*)t, (char*)n));
        BCASE FCLOSE: t=pop(); fclose((FILE*)t);
        BCASE CCOMMA: t=pop(); CComma(t);
        BCASE COMMA:  t=pop(); Comma(t);
        BCASE CREATE: create(0);
        BCASE FIND:   find(0);
        BCASE HA:     push((long)&H);
        BCASE LA:     push((long)&L);
        BCASE STA:    push((long)&st);
        BCASE CSZ:    push(CELL_SZ);
        BCASE MEMST:  push((long)&mem[0]);
        BCASE MEMSZ:  push(MEM_SZ);
        break; default: printf("-sysOP:%ld?-", op);
    }
}

void run(byte *pc) {
    next:
    // printf("-pc/ir:%p/%d-\n",pc,*(pc));
    switch(*(pc++)) {
        case  JUMP: pc = (byte*)GetNumAt(pc); 
        NCASE RET: if (0 < rsp) { pc = (byte*)rpop(); } else { return; }
        NCASE JMPT0: if (S0 == 0) { pc = (byte*)GetNumAt(pc); } else { pc+=CELL_SZ; }
        NCASE JMPC0: if (cf != 0) { pc = (byte*)GetNumAt(pc); } else { pc+=CELL_SZ; }
        NCASE CALL: rpush((long)pc+CELL_SZ); pc = (byte*)GetNumAt(pc);
        NCASE ACSTORE: *(byte*)a = (byte)pop();         // NON-standard, AC! 
        NCASE ACAT: push(*(byte*)a);                    // NON-standard, AC@
        NCASE SYS: sysOP(pop());                        // NON-standard
        NCASE LIT1: push(*(pc++));                      // NON-standard
        NCASE AATINC: push(GetNumAt((byte*)(a++)));
        NCASE LIT: push(GetNumAt(pc)); pc += CELL_SZ;
        NCASE AAT: push(GetNumAt((byte*)a));
        NCASE STORE: SetNumAt((byte*)S0,S1); sp-=2;      // NON-standard
        NCASE ASTOREINC: SetNumAt((byte*)(a++),pop());
        NCASE FETCH: S0 = GetNumAt((byte*)S0);           // NON-standard, FORTH @
        NCASE ASTORE: SetNumAt((byte*)a, pop());
        NCASE COM: S0 = ~S0;
        NCASE TIMES2: S0 *= 2;
        NCASE DIV2:   S0 /= 2;
        NCASE ADDMULT: if (S0 & 0x01) { S0 += S1; }
        NCASE XOR: t=pop(); S0 ^= t;
        NCASE AND: t=pop(); S0 &= t;
        NCASE U22:                                      // Unused
        NCASE ADD: t=pop(); S0 += t;
        NCASE POPR: push(rpop());
        NCASE AVALUE: push(a);
        NCASE DUP: t=S0; push(t);
        NCASE OVER: t=S1; push(t);
        NCASE PUSHR: rpush(pop());
        NCASE TOA: a = pop();
        NCASE NOP: // NOP
        NCASE DROP: sp = (0<sp) ? sp-1: 0;
        default: printf("-ir:%u?-",*(pc-1)); return;
    }
}

int parseNum(char *cp) {
    long x = 0;
    while (BTW(*cp,'0','9')) {
        x = (x*10) + (*(cp++)-'0');
    }
    if (*cp) return 0;
    push(x);
    return 1;
}

int isNum(char *cp) {
    // printf("-num:%s?-\n",cp);
    if (parseNum(cp)) {
        CComma(LIT); Comma(pop());
        return 1;
    }
    return 0;
}

int isML(char *cp) {
    if (!strEq(cp, "-ML-")) { return 0; }
    create(0);
    while (nextWord()) {
        if (strEq(wd,"-X-")) { break; }
        if (parseNum(wd)) { CComma(pop()); }
        else { printf("-ML:%s?-", wd); }
    }
    return 1;
}

int isWord(char *cp) {
    //printf("-word:%s?-\n",cp);
    de_t *dp = find(cp);
    if (!dp) { return 0; }
    if (dp->f & 0x02) { run((byte*)dp->xt); }  // immediate
    else if (dp->f & 0x04) {                   // inline
        byte *x = (byte*)(dp->xt);
        CComma(*(x++));
        while (*x != RET) { CComma(*(x++)); }
    } else { CComma(CALL); Comma(dp->xt); }
    return 1;
}

int parse(const char *cp) {
    in = (char*)cp;
    while (nextWord()) {
        //printf("-re:%s-",wd);
        if (isML(wd)) { continue; }
        if (isNum(wd)) { continue; }
        if (isWord(wd)) { continue; }
        printf("-%s?-",wd);
        return 0;
    }
    return 1;
}

char *getInput() {
    FILE *fp = input_fp ? (FILE*)input_fp : stdin;
    if (fp == stdin) { printf(" ok\n"); }
    if (tib != fgets(tib, sizeof(tib), fp)) {
        fclose(fp);
        input_fp=0;
        tib[0]=0;
    }
    return tib;
}

void repl(char *cp) {
    byte *cH=H, *cL=L;
    if (cp == 0) { cp = getInput(); }
    if (parse(cp) == 0) { H=cH; return; }
    if (cL == L) { CComma(RET); H=cH; run(H); }
}

int main(int argc, char **argv) {
    sp = rsp = input_fp = 0;
    H = &MEMB(0);
    L = &MEMB(MEM_SZ);
    if (2 <= argc) {
        input_fp = (long)fopen(argv[1],"rb");
        if (input_fp) { printf("Cannot open: %s\n", argv[1]); }
    }
    if (!input_fp) { input_fp = (long)fopen("mf.f","rb"); }
    while (st != 999) { repl(0); }
    return 0;
}
