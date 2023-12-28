#include <stdlib.h>
#include <stdio.h>
#include <stdint.h>
#include <time.h>

#define MEM_SZ      4*1024*1024
#define STK_SZ      31

#define BCASE       break; case
#define NCASE       goto next; case
#define S0          stk[sp]
#define S1          stk[sp-1]
#define MEMB(x)     mem[(x)]
#define CELL_SZ     sizeof(cell_t)
#define BTW(n,l,h) ((l<=n)&(n<=h))

typedef enum {
    JUMP=0, RET, JMPZ, JMPNZ, CALL, ACSTORE, ACAT, SYS,
    LIT1, AATINC, LIT, AAT, STORE, ASTOREINC, FETCH, ASTORE,
    COM, TIMES2, DIV2, ADDMULT, XOR, AND, DEC, ADD,
    POPR, AVALUE, DUP, OVER, PUSHR, TOA, INC, DROP
} MF_ops;

typedef enum {
    EMIT=101, DOT10, DOT16, FOPEN, FCLOSE, CCOMMA, COMMA, 
    CREATE, FIND, HA, LA, STA, CSZ, MEMST, MEMSZ, IMM, INL,
    SEQ, SLEN, SCPY, NXTWD, CLK
} SYS_ops;

typedef unsigned char byte;
typedef long cell_t;
typedef struct { cell_t next, xt; byte f, l; char name[32]; } de_t;

cell_t stk[STK_SZ+1], rstk[STK_SZ+1];
cell_t sp, rsp, t, n, A, ST, input_fp;
char tib[128], wd[32], *in = &tib[0];
byte *H, *L, mem[MEM_SZ];

void push(cell_t x) { stk[++sp] = x; }
cell_t pop() { return (0<sp) ? stk[sp--] : 0; }

void rpush(cell_t x) { rstk[++rsp] = x; }
cell_t rpop() { return (0<rsp) ? rstk[rsp--] : 0; }

#ifndef NEEDS_ALIGN
    cell_t GetNumAt(byte *a) { return *(cell_t*)a; }
    void SetNumAt(byte *a, cell_t val) { *(cell_t*)a = val; } 
#else
    cell_t GetNumAt(byte *a) {
        return *a | *(a+1)<<8 | *(a+2)<<16 | *(a+2)<<24;
    }

    void SetNumAt(byte *a, cell_t val) {
        *a = (val & 0xFF);
        *(a+1) = (val>>8 & 0xFF);
        *(a+2) = (val>>16 & 0xFF);
        *(a+2) = (val>>24 & 0xFF);
    }
#endif

void CComma(cell_t x) { *(H++) = (byte)x; }
void Comma(cell_t x) { SetNumAt(H, x); H += CELL_SZ; }

int nextWord() {
    int l = 0;
    while (*in && (*in<33)) { ++in; }
    while (*in && (*in>32)) { wd[l++] = *(in++); }
    wd[l] = 0; return l;
}

int strLen(const char *s1) {
    int l = 0;
    while (*s1) { ++l; ++s1; }
    return l;
}

int lower(char c) { return BTW(c,'A','Z') ? c+32 : c; }

int strEqI(const char* s1, const char* s2) {
    while (*s1 || *s2) { if (lower(*(s1++)) != lower(*(s2++))) { return 0; } }
    return (*s1 == *s2) ? 1 : 0;
}

int strEq(const char* s1, const char* s2) {
    while (*s1 || *s2) { if (*(s1++) != *(s2++)) { return 0; } }
    return (*s1 == *s2) ? 1 : 0;
}

void strCpy(char *s1, const char *s2) {
    while (*s2) { *(s1++) = *(s2++); }
    (*s1) = 0;
}

void create(const char *name) {
    if (name == 0) { name = wd; nextWord(); }
    int l = strLen(name);
    int sz = (CELL_SZ*2)+4+l;
    de_t *dp = (de_t*)(L-sz);
    dp->next = (cell_t)L;
    dp->xt = (cell_t)H;
    dp->f = 0;
    dp->l = l;
    strCpy(dp->name, name);
    L = (byte*)dp;
}

de_t *find(const char *name) {
    if (name == 0) { name = wd; nextWord(); }
    de_t *dp = (de_t*)L;
    while (dp < (de_t*)&MEMB(MEM_SZ)) {
        if (strEqI(dp->name, name)) { return dp; }
        dp = (de_t*)dp->next;
    }
    return 0;
}

void sysOP(cell_t op) {
    switch (op) {
        case  EMIT:   putchar((int)pop());
        BCASE DOT10:  printf("%ld", pop());
        BCASE DOT16:  printf("%lx", pop());
        BCASE FOPEN:  n=pop(); t=pop(); push((cell_t)fopen((char*)t, (char*)n));
        BCASE FCLOSE: t=pop(); fclose((FILE*)t);
        BCASE CCOMMA: t=pop(); CComma(t);
        BCASE COMMA:  t=pop(); Comma(t);
        BCASE CREATE: create(0);
        BCASE FIND:   find(0);
        BCASE HA:     push((cell_t)&H);
        BCASE LA:     push((cell_t)&L);
        BCASE STA:    push((cell_t)&ST);
        BCASE CSZ:    push(CELL_SZ);
        BCASE MEMST:  push((cell_t)&mem[0]);
        BCASE MEMSZ:  push(MEM_SZ);
        BCASE IMM:    { de_t *dp=(de_t*)L; dp->f = 2; }
        BCASE INL:    { de_t *dp=(de_t*)L; dp->f = 4; }
        BCASE SEQ:    t=pop(); S0=strEq((char *)S0, (char*)t);
        BCASE SLEN:   S0=strLen((char*)S0);
        BCASE SCPY:   t=pop(); n=pop(); strCpy((char*)t, (char*)n);
        BCASE NXTWD:  nextWord(); push((cell_t)wd);
        BCASE CLK : push(clock());
        break; default: printf("-sysOP:%ld?-", op);
    }
}

void run(byte *pc) {
    next:
    // printf("-pc/ir:%p/%d-\n",pc,*(pc));
    switch(*(pc++)) {
        case  JUMP: pc = (byte*)GetNumAt(pc); 
        NCASE RET:   if (0 < rsp) { pc = (byte*)rpop(); } else { return; }
        NCASE JMPZ: if (S0 == 0) { pc = (byte*)GetNumAt(pc); } else { pc+=CELL_SZ; }
        NCASE JMPNZ: if (S0) { pc = (byte*)GetNumAt(pc); } else { pc+=CELL_SZ; }
        NCASE CALL: rpush((cell_t)pc+CELL_SZ); pc = (byte*)GetNumAt(pc);
        NCASE ACSTORE: *(byte*)A = (byte)pop();         // NON-standard, AC! 
        NCASE ACAT: push(*(byte*)A);                    // NON-standard, AC@
        NCASE SYS: sysOP(pop());                        // NON-standard
        NCASE LIT1: push(*(pc++));                      // NON-standard
        NCASE AATINC: push(GetNumAt((byte*)(A++)));
        NCASE LIT: push(GetNumAt(pc)); pc += CELL_SZ;
        NCASE AAT: push(GetNumAt((byte*)A));
        NCASE STORE: SetNumAt((byte*)S0,S1); sp-=2;      // NON-standard
        NCASE ASTOREINC: SetNumAt((byte*)(A++),pop());
        NCASE FETCH: S0 = GetNumAt((byte*)S0);           // NON-standard, FORTH @
        NCASE ASTORE: SetNumAt((byte*)A, pop());
        NCASE COM: S0 = ~S0;
        NCASE TIMES2: S0 *= 2;
        NCASE DIV2:   S0 /= 2;
        NCASE ADDMULT: if (S0 & 0x01) { S0 += S1; }
        NCASE XOR: t=pop(); S0 ^= t;
        NCASE AND: t=pop(); S0 &= t;
        NCASE DEC : S0--;                                // Unused
        NCASE ADD: t=pop(); S0 += t;
        NCASE POPR: push(rpop());
        NCASE AVALUE: push(A);
        NCASE DUP: t=S0; push(t);
        NCASE OVER: t=S1; push(t);
        NCASE PUSHR: rpush(pop());
        NCASE TOA: A = pop();
        NCASE INC : S0++;
        NCASE DROP: sp = (0<sp) ? sp-1: 0;   goto next;
        default: printf("-ir:%u?-",*(pc-1)); return;
    }
}

int parseNum(const char *cp) {
    cell_t x = 0;
    while (BTW(*cp,'0','9')) {
        x = (x*10) + (*(cp++)-'0');
    }
    if (*cp) return 0;
    push(x);
    return 1;
}

int isNum(const char *cp) {
    if (parseNum(cp)) {
        CComma(LIT); Comma(pop());
        return 1;
    }
    return 0;
}

int isML(const char *cp) {
    if (!strEq(cp, "-ML-")) { return 0; }
    create(0);
    while (nextWord()) {
        if (strEq(wd,"-X-")) { break; }
        if (parseNum(wd)) { CComma(pop()); }
        else { printf("-ML:%s?-", wd); }
    }
    return 1;
}

int isWord(const char *cp) {
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
        if (isNum(wd)) { continue; }
        if (isWord(wd)) { continue; }
        if (isML(wd)) { continue; }
        printf("-%s?-\n",wd);
        return 0;
    }
    return 1;
}

char *getInput() {
    if (sp<1) { sp=0; }
    FILE *fp = input_fp ? (FILE*)input_fp : stdin;
    if (fp == stdin) { printf(" ok\n"); }
    if (tib != fgets(tib, sizeof(tib), fp)) {
        fclose(fp);
        input_fp=0;
        tib[0]=0;
    }
    return tib;
}

void repl(const char *cp) {
    byte *cH=H, *cL=L;
    if (parse(cp) == 0) { H=cH; return; }
    if (cL == L) { CComma(RET); H=cH; run(H); }
}

int main(int argc, char **argv) {
    sp = rsp = input_fp = 0;
    H = &MEMB(0);
    L = &MEMB(MEM_SZ);
    if (2 <= argc) {
        input_fp = (cell_t)fopen(argv[1],"rb");
        if (input_fp) { printf("Cannot open: %s\n", argv[1]); }
    }
    if (!input_fp) { input_fp = (cell_t)fopen("mf.f","rb"); }
    parse("-ML- IMMEDIATE 8 116 7 1 -X-");
    repl("IMMEDIATE");
    parse("-ML- INLINE 8 117 7 1 -X- IMMEDIATE");
    while (ST != 999) { repl(getInput()); }
    return 0;
}
