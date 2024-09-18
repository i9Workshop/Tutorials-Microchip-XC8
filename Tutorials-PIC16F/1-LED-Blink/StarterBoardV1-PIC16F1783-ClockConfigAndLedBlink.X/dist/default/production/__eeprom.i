# 1 "C:\\Program Files\\Microchip\\xc8\\v2.46\\pic\\sources\\c99\\pic\\__eeprom.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 288 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "C:\\Program Files\\Microchip\\xc8\\v2.46\\pic\\include\\language_support.h" 1 3
# 2 "<built-in>" 2
# 1 "C:\\Program Files\\Microchip\\xc8\\v2.46\\pic\\sources\\c99\\pic\\__eeprom.c" 2
# 1 "C:\\Program Files\\Microchip\\xc8\\v2.46\\pic\\include\\xc.h" 1 3
# 18 "C:\\Program Files\\Microchip\\xc8\\v2.46\\pic\\include\\xc.h" 3
extern const char __xc8_OPTIM_SPEED;

extern double __fpnormalize(double);



# 1 "C:\\Program Files\\Microchip\\xc8\\v2.46\\pic\\include\\c99\\xc8debug.h" 1 3



# 1 "C:\\Program Files\\Microchip\\xc8\\v2.46\\pic\\include\\c99\\stdlib.h" 1 3



# 1 "C:\\Program Files\\Microchip\\xc8\\v2.46\\pic\\include\\c99\\musl_xc8.h" 1 3
# 5 "C:\\Program Files\\Microchip\\xc8\\v2.46\\pic\\include\\c99\\stdlib.h" 2 3





# 1 "C:\\Program Files\\Microchip\\xc8\\v2.46\\pic\\include\\c99\\features.h" 1 3
# 11 "C:\\Program Files\\Microchip\\xc8\\v2.46\\pic\\include\\c99\\stdlib.h" 2 3
# 21 "C:\\Program Files\\Microchip\\xc8\\v2.46\\pic\\include\\c99\\stdlib.h" 3
# 1 "C:\\Program Files\\Microchip\\xc8\\v2.46\\pic\\include\\c99\\bits/alltypes.h" 1 3
# 24 "C:\\Program Files\\Microchip\\xc8\\v2.46\\pic\\include\\c99\\bits/alltypes.h" 3
typedef long int wchar_t;
# 128 "C:\\Program Files\\Microchip\\xc8\\v2.46\\pic\\include\\c99\\bits/alltypes.h" 3
typedef unsigned size_t;
# 174 "C:\\Program Files\\Microchip\\xc8\\v2.46\\pic\\include\\c99\\bits/alltypes.h" 3
typedef __int24 int24_t;
# 210 "C:\\Program Files\\Microchip\\xc8\\v2.46\\pic\\include\\c99\\bits/alltypes.h" 3
typedef __uint24 uint24_t;
# 22 "C:\\Program Files\\Microchip\\xc8\\v2.46\\pic\\include\\c99\\stdlib.h" 2 3

int atoi (const char *);
long atol (const char *);

long long atoll (const char *);

double atof (const char *);


float strtof (const char *restrict, char **restrict);
double strtod (const char *restrict, char **restrict);
long double strtold (const char *restrict, char **restrict);



long strtol (const char *restrict, char **restrict, int);
unsigned long strtoul (const char *restrict, char **restrict, int);

long long strtoll (const char *restrict, char **restrict, int);
unsigned long long strtoull (const char *restrict, char **restrict, int);


unsigned long __strtoxl(const char * s, char ** endptr, int base, char is_signed);

unsigned long long __strtoxll(const char * s, char ** endptr, int base, char is_signed);
# 55 "C:\\Program Files\\Microchip\\xc8\\v2.46\\pic\\include\\c99\\stdlib.h" 3
int rand (void);
void srand (unsigned);

void *malloc (size_t);
void *calloc (size_t, size_t);
void *realloc (void *, size_t);
void free (void *);

          void abort (void);
int atexit (void (*) (void));
          void exit (int);
          void _Exit (int);

void *bsearch (const void *, const void *, size_t, size_t, int (*)(const void *, const void *));







__attribute__((nonreentrant)) void qsort (void *, size_t, size_t, int (*)(const void *, const void *));

int abs (int);
long labs (long);

long long llabs (long long);


typedef struct { int quot, rem; } div_t;
typedef struct { long quot, rem; } ldiv_t;

typedef struct { long long quot, rem; } lldiv_t;


div_t div (int, int);
ldiv_t ldiv (long, long);

lldiv_t lldiv (long long, long long);


typedef struct { unsigned int quot, rem; } udiv_t;
typedef struct { unsigned long quot, rem; } uldiv_t;
udiv_t udiv (unsigned int, unsigned int);
uldiv_t uldiv (unsigned long, unsigned long);
# 5 "C:\\Program Files\\Microchip\\xc8\\v2.46\\pic\\include\\c99\\xc8debug.h" 2 3







#pragma intrinsic(__builtin_software_breakpoint)
extern void __builtin_software_breakpoint(void);
# 23 "C:\\Program Files\\Microchip\\xc8\\v2.46\\pic\\include\\xc.h" 2 3

# 1 "C:\\Program Files\\Microchip\\xc8\\v2.46\\pic\\include\\builtins.h" 1 3



# 1 "C:\\Program Files\\Microchip\\xc8\\v2.46\\pic\\include\\c99\\stdint.h" 1 3
# 26 "C:\\Program Files\\Microchip\\xc8\\v2.46\\pic\\include\\c99\\stdint.h" 3
# 1 "C:\\Program Files\\Microchip\\xc8\\v2.46\\pic\\include\\c99\\bits/alltypes.h" 1 3
# 133 "C:\\Program Files\\Microchip\\xc8\\v2.46\\pic\\include\\c99\\bits/alltypes.h" 3
typedef unsigned short uintptr_t;
# 148 "C:\\Program Files\\Microchip\\xc8\\v2.46\\pic\\include\\c99\\bits/alltypes.h" 3
typedef short intptr_t;
# 164 "C:\\Program Files\\Microchip\\xc8\\v2.46\\pic\\include\\c99\\bits/alltypes.h" 3
typedef signed char int8_t;




typedef short int16_t;
# 179 "C:\\Program Files\\Microchip\\xc8\\v2.46\\pic\\include\\c99\\bits/alltypes.h" 3
typedef long int32_t;





typedef long long int64_t;
# 194 "C:\\Program Files\\Microchip\\xc8\\v2.46\\pic\\include\\c99\\bits/alltypes.h" 3
typedef long long intmax_t;





typedef unsigned char uint8_t;




typedef unsigned short uint16_t;
# 215 "C:\\Program Files\\Microchip\\xc8\\v2.46\\pic\\include\\c99\\bits/alltypes.h" 3
typedef unsigned long uint32_t;





typedef unsigned long long uint64_t;
# 235 "C:\\Program Files\\Microchip\\xc8\\v2.46\\pic\\include\\c99\\bits/alltypes.h" 3
typedef unsigned long long uintmax_t;
# 27 "C:\\Program Files\\Microchip\\xc8\\v2.46\\pic\\include\\c99\\stdint.h" 2 3

typedef int8_t int_fast8_t;

typedef int64_t int_fast64_t;


typedef int8_t int_least8_t;
typedef int16_t int_least16_t;

typedef int24_t int_least24_t;
typedef int24_t int_fast24_t;

typedef int32_t int_least32_t;

typedef int64_t int_least64_t;


typedef uint8_t uint_fast8_t;

typedef uint64_t uint_fast64_t;


typedef uint8_t uint_least8_t;
typedef uint16_t uint_least16_t;

typedef uint24_t uint_least24_t;
typedef uint24_t uint_fast24_t;

typedef uint32_t uint_least32_t;

typedef uint64_t uint_least64_t;
# 148 "C:\\Program Files\\Microchip\\xc8\\v2.46\\pic\\include\\c99\\stdint.h" 3
# 1 "C:\\Program Files\\Microchip\\xc8\\v2.46\\pic\\include\\c99\\bits/stdint.h" 1 3
typedef int16_t int_fast16_t;
typedef int32_t int_fast32_t;
typedef uint16_t uint_fast16_t;
typedef uint32_t uint_fast32_t;
# 149 "C:\\Program Files\\Microchip\\xc8\\v2.46\\pic\\include\\c99\\stdint.h" 2 3
# 4 "C:\\Program Files\\Microchip\\xc8\\v2.46\\pic\\include\\builtins.h" 2 3



#pragma intrinsic(__nop)
extern void __nop(void);
# 19 "C:\\Program Files\\Microchip\\xc8\\v2.46\\pic\\include\\builtins.h" 3
#pragma intrinsic(_delay)
extern __attribute__((nonreentrant)) void _delay(uint32_t);
#pragma intrinsic(_delaywdt)
extern __attribute__((nonreentrant)) void _delaywdt(uint32_t);

#pragma intrinsic(_delay3)
extern __attribute__((nonreentrant)) void _delay3(uint8_t);
# 24 "C:\\Program Files\\Microchip\\xc8\\v2.46\\pic\\include\\xc.h" 2 3




# 1 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\pic.h" 1 3




# 1 "C:\\Program Files\\Microchip\\xc8\\v2.46\\pic\\include\\htc.h" 1 3



# 1 "C:\\Program Files\\Microchip\\xc8\\v2.46\\pic\\include\\xc.h" 1 3
# 4 "C:\\Program Files\\Microchip\\xc8\\v2.46\\pic\\include\\htc.h" 2 3
# 6 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\pic.h" 2 3







# 1 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\pic_chip_select.h" 1 3
# 339 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\pic_chip_select.h" 3
# 1 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 1 3
# 44 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
# 1 "C:\\Program Files\\Microchip\\xc8\\v2.46\\pic\\include\\__at.h" 1 3
# 45 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 2 3







extern volatile unsigned char INDF0 __attribute__((address(0x000)));

__asm("INDF0 equ 00h");


typedef union {
    struct {
        unsigned INDF0 :8;
    };
} INDF0bits_t;
extern volatile INDF0bits_t INDF0bits __attribute__((address(0x000)));
# 72 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char INDF1 __attribute__((address(0x001)));

__asm("INDF1 equ 01h");


typedef union {
    struct {
        unsigned INDF1 :8;
    };
} INDF1bits_t;
extern volatile INDF1bits_t INDF1bits __attribute__((address(0x001)));
# 92 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char PCL __attribute__((address(0x002)));

__asm("PCL equ 02h");


typedef union {
    struct {
        unsigned PCL :8;
    };
} PCLbits_t;
extern volatile PCLbits_t PCLbits __attribute__((address(0x002)));
# 112 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char STATUS __attribute__((address(0x003)));

__asm("STATUS equ 03h");


typedef union {
    struct {
        unsigned C :1;
        unsigned DC :1;
        unsigned Z :1;
        unsigned nPD :1;
        unsigned nTO :1;
    };
    struct {
        unsigned CARRY :1;
        unsigned :1;
        unsigned ZERO :1;
    };
} STATUSbits_t;
extern volatile STATUSbits_t STATUSbits __attribute__((address(0x003)));
# 171 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned short FSR0 __attribute__((address(0x004)));



extern volatile unsigned char FSR0L __attribute__((address(0x004)));

__asm("FSR0L equ 04h");


typedef union {
    struct {
        unsigned FSR0L :8;
    };
} FSR0Lbits_t;
extern volatile FSR0Lbits_t FSR0Lbits __attribute__((address(0x004)));
# 195 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char FSR0H __attribute__((address(0x005)));

__asm("FSR0H equ 05h");


typedef union {
    struct {
        unsigned FSR0H :8;
    };
} FSR0Hbits_t;
extern volatile FSR0Hbits_t FSR0Hbits __attribute__((address(0x005)));
# 215 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned short FSR1 __attribute__((address(0x006)));



extern volatile unsigned char FSR1L __attribute__((address(0x006)));

__asm("FSR1L equ 06h");


typedef union {
    struct {
        unsigned FSR1L :8;
    };
} FSR1Lbits_t;
extern volatile FSR1Lbits_t FSR1Lbits __attribute__((address(0x006)));
# 239 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char FSR1H __attribute__((address(0x007)));

__asm("FSR1H equ 07h");


typedef union {
    struct {
        unsigned FSR1H :8;
    };
} FSR1Hbits_t;
extern volatile FSR1Hbits_t FSR1Hbits __attribute__((address(0x007)));
# 259 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char BSR __attribute__((address(0x008)));

__asm("BSR equ 08h");


typedef union {
    struct {
        unsigned BSR0 :1;
        unsigned BSR1 :1;
        unsigned BSR2 :1;
        unsigned BSR3 :1;
        unsigned BSR4 :1;
    };
    struct {
        unsigned BSR :5;
    };
} BSRbits_t;
extern volatile BSRbits_t BSRbits __attribute__((address(0x008)));
# 311 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char WREG __attribute__((address(0x009)));

__asm("WREG equ 09h");


typedef union {
    struct {
        unsigned WREG0 :8;
    };
} WREGbits_t;
extern volatile WREGbits_t WREGbits __attribute__((address(0x009)));
# 331 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char PCLATH __attribute__((address(0x00A)));

__asm("PCLATH equ 0Ah");


typedef union {
    struct {
        unsigned PCLATH :7;
    };
} PCLATHbits_t;
extern volatile PCLATHbits_t PCLATHbits __attribute__((address(0x00A)));
# 351 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char INTCON __attribute__((address(0x00B)));

__asm("INTCON equ 0Bh");


typedef union {
    struct {
        unsigned IOCIF :1;
        unsigned INTF :1;
        unsigned TMR0IF :1;
        unsigned IOCIE :1;
        unsigned INTE :1;
        unsigned TMR0IE :1;
        unsigned PEIE :1;
        unsigned GIE :1;
    };
    struct {
        unsigned :2;
        unsigned T0IF :1;
        unsigned :2;
        unsigned T0IE :1;
    };
} INTCONbits_t;
extern volatile INTCONbits_t INTCONbits __attribute__((address(0x00B)));
# 429 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char PORTA __attribute__((address(0x00C)));

__asm("PORTA equ 0Ch");


typedef union {
    struct {
        unsigned RA0 :1;
        unsigned RA1 :1;
        unsigned RA2 :1;
        unsigned RA3 :1;
        unsigned RA4 :1;
        unsigned RA5 :1;
        unsigned RA6 :1;
        unsigned RA7 :1;
    };
    struct {
        unsigned PORTA :8;
    };
} PORTAbits_t;
extern volatile PORTAbits_t PORTAbits __attribute__((address(0x00C)));
# 499 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char PORTB __attribute__((address(0x00D)));

__asm("PORTB equ 0Dh");


typedef union {
    struct {
        unsigned RB0 :1;
        unsigned RB1 :1;
        unsigned RB2 :1;
        unsigned RB3 :1;
        unsigned RB4 :1;
        unsigned RB5 :1;
        unsigned RB6 :1;
        unsigned RB7 :1;
    };
    struct {
        unsigned PORTB :8;
    };
} PORTBbits_t;
extern volatile PORTBbits_t PORTBbits __attribute__((address(0x00D)));
# 569 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char PORTC __attribute__((address(0x00E)));

__asm("PORTC equ 0Eh");


typedef union {
    struct {
        unsigned RC0 :1;
        unsigned RC1 :1;
        unsigned RC2 :1;
        unsigned RC3 :1;
        unsigned RC4 :1;
        unsigned RC5 :1;
        unsigned RC6 :1;
        unsigned RC7 :1;
    };
    struct {
        unsigned PORTC :8;
    };
} PORTCbits_t;
extern volatile PORTCbits_t PORTCbits __attribute__((address(0x00E)));
# 639 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char PORTE __attribute__((address(0x010)));

__asm("PORTE equ 010h");


typedef union {
    struct {
        unsigned :3;
        unsigned RE3 :1;
    };
} PORTEbits_t;
extern volatile PORTEbits_t PORTEbits __attribute__((address(0x010)));
# 660 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char PIR1 __attribute__((address(0x011)));

__asm("PIR1 equ 011h");


typedef union {
    struct {
        unsigned TMR1IF :1;
        unsigned TMR2IF :1;
        unsigned CCP1IF :1;
        unsigned SSP1IF :1;
        unsigned TXIF :1;
        unsigned RCIF :1;
        unsigned ADIF :1;
        unsigned TMR1GIF :1;
    };
} PIR1bits_t;
extern volatile PIR1bits_t PIR1bits __attribute__((address(0x011)));
# 722 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char PIR2 __attribute__((address(0x012)));

__asm("PIR2 equ 012h");


typedef union {
    struct {
        unsigned CCP2IF :1;
        unsigned C3IF :1;
        unsigned :1;
        unsigned BCL1IF :1;
        unsigned EEIF :1;
        unsigned C1IF :1;
        unsigned C2IF :1;
        unsigned OSFIF :1;
    };
} PIR2bits_t;
extern volatile PIR2bits_t PIR2bits __attribute__((address(0x012)));
# 779 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char PIR4 __attribute__((address(0x014)));

__asm("PIR4 equ 014h");


typedef union {
    struct {
        unsigned PSMC1SIF :1;
        unsigned PSMC2SIF :1;
        unsigned :2;
        unsigned PSMC1TIF :1;
        unsigned PSMC2TIF :1;
    };
} PIR4bits_t;
extern volatile PIR4bits_t PIR4bits __attribute__((address(0x014)));
# 818 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char TMR0 __attribute__((address(0x015)));

__asm("TMR0 equ 015h");


typedef union {
    struct {
        unsigned TMR0 :8;
    };
} TMR0bits_t;
extern volatile TMR0bits_t TMR0bits __attribute__((address(0x015)));
# 838 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned short TMR1 __attribute__((address(0x016)));

__asm("TMR1 equ 016h");




extern volatile unsigned char TMR1L __attribute__((address(0x016)));

__asm("TMR1L equ 016h");


typedef union {
    struct {
        unsigned TMR1L :8;
    };
} TMR1Lbits_t;
extern volatile TMR1Lbits_t TMR1Lbits __attribute__((address(0x016)));
# 865 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char TMR1H __attribute__((address(0x017)));

__asm("TMR1H equ 017h");


typedef union {
    struct {
        unsigned TMR1H :8;
    };
} TMR1Hbits_t;
extern volatile TMR1Hbits_t TMR1Hbits __attribute__((address(0x017)));
# 885 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char T1CON __attribute__((address(0x018)));

__asm("T1CON equ 018h");


typedef union {
    struct {
        unsigned TMR1ON :1;
        unsigned :1;
        unsigned nT1SYNC :1;
        unsigned T1OSCEN :1;
        unsigned T1CKPS0 :1;
        unsigned T1CKPS1 :1;
        unsigned TMR1CS0 :1;
        unsigned TMR1CS1 :1;
    };
    struct {
        unsigned :4;
        unsigned T1CKPS :2;
        unsigned TMR1CS :2;
    };
} T1CONbits_t;
extern volatile T1CONbits_t T1CONbits __attribute__((address(0x018)));
# 957 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char T1GCON __attribute__((address(0x019)));

__asm("T1GCON equ 019h");


typedef union {
    struct {
        unsigned T1GSS0 :1;
        unsigned T1GSS1 :1;
        unsigned T1GVAL :1;
        unsigned T1GGO :1;
        unsigned T1GSPM :1;
        unsigned T1GTM :1;
        unsigned T1GPOL :1;
        unsigned TMR1GE :1;
    };
    struct {
        unsigned T1GSS :2;
    };
} T1GCONbits_t;
extern volatile T1GCONbits_t T1GCONbits __attribute__((address(0x019)));
# 1027 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char TMR2 __attribute__((address(0x01A)));

__asm("TMR2 equ 01Ah");


typedef union {
    struct {
        unsigned TMR2 :8;
    };
} TMR2bits_t;
extern volatile TMR2bits_t TMR2bits __attribute__((address(0x01A)));
# 1047 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char PR2 __attribute__((address(0x01B)));

__asm("PR2 equ 01Bh");


typedef union {
    struct {
        unsigned PR2 :8;
    };
} PR2bits_t;
extern volatile PR2bits_t PR2bits __attribute__((address(0x01B)));
# 1067 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char T2CON __attribute__((address(0x01C)));

__asm("T2CON equ 01Ch");


typedef union {
    struct {
        unsigned T2CKPS0 :1;
        unsigned T2CKPS1 :1;
        unsigned TMR2ON :1;
        unsigned T2OUTPS0 :1;
        unsigned T2OUTPS1 :1;
        unsigned T2OUTPS2 :1;
        unsigned T2OUTPS3 :1;
    };
    struct {
        unsigned T2CKPS :2;
        unsigned :1;
        unsigned T2OUTPS :4;
    };
} T2CONbits_t;
extern volatile T2CONbits_t T2CONbits __attribute__((address(0x01C)));
# 1138 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char TRISA __attribute__((address(0x08C)));

__asm("TRISA equ 08Ch");


typedef union {
    struct {
        unsigned TRISA0 :1;
        unsigned TRISA1 :1;
        unsigned TRISA2 :1;
        unsigned TRISA3 :1;
        unsigned TRISA4 :1;
        unsigned TRISA5 :1;
        unsigned TRISA6 :1;
        unsigned TRISA7 :1;
    };
    struct {
        unsigned TRISA :8;
    };
} TRISAbits_t;
extern volatile TRISAbits_t TRISAbits __attribute__((address(0x08C)));
# 1208 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char TRISB __attribute__((address(0x08D)));

__asm("TRISB equ 08Dh");


typedef union {
    struct {
        unsigned TRISB0 :1;
        unsigned TRISB1 :1;
        unsigned TRISB2 :1;
        unsigned TRISB3 :1;
        unsigned TRISB4 :1;
        unsigned TRISB5 :1;
        unsigned TRISB6 :1;
        unsigned TRISB7 :1;
    };
    struct {
        unsigned TRISB :8;
    };
} TRISBbits_t;
extern volatile TRISBbits_t TRISBbits __attribute__((address(0x08D)));
# 1278 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char TRISC __attribute__((address(0x08E)));

__asm("TRISC equ 08Eh");


typedef union {
    struct {
        unsigned TRISC0 :1;
        unsigned TRISC1 :1;
        unsigned TRISC2 :1;
        unsigned TRISC3 :1;
        unsigned TRISC4 :1;
        unsigned TRISC5 :1;
        unsigned TRISC6 :1;
        unsigned TRISC7 :1;
    };
    struct {
        unsigned TRISC :8;
    };
} TRISCbits_t;
extern volatile TRISCbits_t TRISCbits __attribute__((address(0x08E)));
# 1348 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char TRISE __attribute__((address(0x090)));

__asm("TRISE equ 090h");


typedef union {
    struct {
        unsigned :3;
        unsigned TRISE3 :1;
    };
} TRISEbits_t;
extern volatile TRISEbits_t TRISEbits __attribute__((address(0x090)));
# 1369 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char PIE1 __attribute__((address(0x091)));

__asm("PIE1 equ 091h");


typedef union {
    struct {
        unsigned TMR1IE :1;
        unsigned TMR2IE :1;
        unsigned CCP1IE :1;
        unsigned SSP1IE :1;
        unsigned TXIE :1;
        unsigned RCIE :1;
        unsigned ADIE :1;
        unsigned TMR1GIE :1;
    };
} PIE1bits_t;
extern volatile PIE1bits_t PIE1bits __attribute__((address(0x091)));
# 1431 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char PIE2 __attribute__((address(0x092)));

__asm("PIE2 equ 092h");


typedef union {
    struct {
        unsigned CCP2IE :1;
        unsigned C3IE :1;
        unsigned :1;
        unsigned BCL1IE :1;
        unsigned EEIE :1;
        unsigned C1IE :1;
        unsigned C2IE :1;
        unsigned OSFIE :1;
    };
} PIE2bits_t;
extern volatile PIE2bits_t PIE2bits __attribute__((address(0x092)));
# 1488 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char PIE4 __attribute__((address(0x094)));

__asm("PIE4 equ 094h");


typedef union {
    struct {
        unsigned PSMC1SIE :1;
        unsigned PSMC2SIE :1;
        unsigned :2;
        unsigned PSMC1TIE :1;
        unsigned PSMC2TIE :1;
    };
} PIE4bits_t;
extern volatile PIE4bits_t PIE4bits __attribute__((address(0x094)));
# 1527 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char OPTION_REG __attribute__((address(0x095)));

__asm("OPTION_REG equ 095h");


typedef union {
    struct {
        unsigned PS0 :1;
        unsigned PS1 :1;
        unsigned PS2 :1;
        unsigned PSA :1;
        unsigned TMR0SE :1;
        unsigned TMR0CS :1;
        unsigned INTEDG :1;
        unsigned nWPUEN :1;
    };
    struct {
        unsigned PS :3;
        unsigned :1;
        unsigned T0SE :1;
        unsigned T0CS :1;
    };
} OPTION_REGbits_t;
extern volatile OPTION_REGbits_t OPTION_REGbits __attribute__((address(0x095)));
# 1610 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char PCON __attribute__((address(0x096)));

__asm("PCON equ 096h");


typedef union {
    struct {
        unsigned nBOR :1;
        unsigned nPOR :1;
        unsigned nRI :1;
        unsigned nRMCLR :1;
        unsigned nRWDT :1;
        unsigned :1;
        unsigned STKUNF :1;
        unsigned STKOVF :1;
    };
} PCONbits_t;
extern volatile PCONbits_t PCONbits __attribute__((address(0x096)));
# 1667 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char WDTCON __attribute__((address(0x097)));

__asm("WDTCON equ 097h");


typedef union {
    struct {
        unsigned SWDTEN :1;
        unsigned WDTPS0 :1;
        unsigned WDTPS1 :1;
        unsigned WDTPS2 :1;
        unsigned WDTPS3 :1;
        unsigned WDTPS4 :1;
    };
    struct {
        unsigned :1;
        unsigned WDTPS :5;
    };
} WDTCONbits_t;
extern volatile WDTCONbits_t WDTCONbits __attribute__((address(0x097)));
# 1726 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char OSCTUNE __attribute__((address(0x098)));

__asm("OSCTUNE equ 098h");


typedef union {
    struct {
        unsigned TUN0 :1;
        unsigned TUN1 :1;
        unsigned TUN2 :1;
        unsigned TUN3 :1;
        unsigned TUN4 :1;
        unsigned TUN5 :1;
    };
    struct {
        unsigned TUN :6;
    };
} OSCTUNEbits_t;
extern volatile OSCTUNEbits_t OSCTUNEbits __attribute__((address(0x098)));
# 1784 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char OSCCON __attribute__((address(0x099)));

__asm("OSCCON equ 099h");


typedef union {
    struct {
        unsigned SCS0 :1;
        unsigned SCS1 :1;
        unsigned :1;
        unsigned IRCF0 :1;
        unsigned IRCF1 :1;
        unsigned IRCF2 :1;
        unsigned IRCF3 :1;
        unsigned SPLLEN :1;
    };
    struct {
        unsigned SCS :2;
        unsigned :1;
        unsigned IRCF :4;
    };
} OSCCONbits_t;
extern volatile OSCCONbits_t OSCCONbits __attribute__((address(0x099)));
# 1856 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char OSCSTAT __attribute__((address(0x09A)));

__asm("OSCSTAT equ 09Ah");


typedef union {
    struct {
        unsigned HFIOFS :1;
        unsigned LFIOFR :1;
        unsigned MFIOFR :1;
        unsigned HFIOFL :1;
        unsigned HFIOFR :1;
        unsigned OSTS :1;
        unsigned PLLR :1;
        unsigned T1OSCR :1;
    };
} OSCSTATbits_t;
extern volatile OSCSTATbits_t OSCSTATbits __attribute__((address(0x09A)));
# 1918 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned short ADRES __attribute__((address(0x09B)));

__asm("ADRES equ 09Bh");




extern volatile unsigned char ADRESL __attribute__((address(0x09B)));

__asm("ADRESL equ 09Bh");


typedef union {
    struct {
        unsigned ADRESL :8;
    };
} ADRESLbits_t;
extern volatile ADRESLbits_t ADRESLbits __attribute__((address(0x09B)));
# 1945 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char ADRESH __attribute__((address(0x09C)));

__asm("ADRESH equ 09Ch");


typedef union {
    struct {
        unsigned ADRESH :8;
    };
} ADRESHbits_t;
extern volatile ADRESHbits_t ADRESHbits __attribute__((address(0x09C)));
# 1965 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char ADCON0 __attribute__((address(0x09D)));

__asm("ADCON0 equ 09Dh");


typedef union {
    struct {
        unsigned ADON :1;
        unsigned GO_nDONE :1;
        unsigned CHS0 :1;
        unsigned CHS1 :1;
        unsigned CHS2 :1;
        unsigned CHS3 :1;
        unsigned CHS4 :1;
        unsigned ADRMD :1;
    };
    struct {
        unsigned :1;
        unsigned ADGO :1;
        unsigned CHS :5;
    };
    struct {
        unsigned :1;
        unsigned GO :1;
    };
    struct {
        unsigned :1;
        unsigned DONE :1;
    };
} ADCON0bits_t;
extern volatile ADCON0bits_t ADCON0bits __attribute__((address(0x09D)));
# 2060 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char ADCON1 __attribute__((address(0x09E)));

__asm("ADCON1 equ 09Eh");


typedef union {
    struct {
        unsigned ADPREF0 :1;
        unsigned ADPREF1 :1;
        unsigned ADNREF :1;
        unsigned :1;
        unsigned ADCS0 :1;
        unsigned ADCS1 :1;
        unsigned ADCS2 :1;
        unsigned ADFM :1;
    };
    struct {
        unsigned ADPREF :2;
        unsigned :2;
        unsigned ADCS :3;
    };
} ADCON1bits_t;
extern volatile ADCON1bits_t ADCON1bits __attribute__((address(0x09E)));
# 2132 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char ADCON2 __attribute__((address(0x09F)));

__asm("ADCON2 equ 09Fh");


typedef union {
    struct {
        unsigned CHSN0 :1;
        unsigned CHSN1 :1;
        unsigned CHSN2 :1;
        unsigned CHSN3 :1;
        unsigned TRIGSEL0 :1;
        unsigned TRIGSEL1 :1;
        unsigned TRIGSEL2 :1;
        unsigned TRIGSEL3 :1;
    };
    struct {
        unsigned CHSN :4;
        unsigned TRIGSEL :4;
    };
} ADCON2bits_t;
extern volatile ADCON2bits_t ADCON2bits __attribute__((address(0x09F)));
# 2208 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char LATA __attribute__((address(0x10C)));

__asm("LATA equ 010Ch");


typedef union {
    struct {
        unsigned LATA0 :1;
        unsigned LATA1 :1;
        unsigned LATA2 :1;
        unsigned LATA3 :1;
        unsigned LATA4 :1;
        unsigned LATA5 :1;
        unsigned LATA6 :1;
        unsigned LATA7 :1;
    };
    struct {
        unsigned LATA :8;
    };
} LATAbits_t;
extern volatile LATAbits_t LATAbits __attribute__((address(0x10C)));
# 2278 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char LATB __attribute__((address(0x10D)));

__asm("LATB equ 010Dh");


typedef union {
    struct {
        unsigned LATB0 :1;
        unsigned LATB1 :1;
        unsigned LATB2 :1;
        unsigned LATB3 :1;
        unsigned LATB4 :1;
        unsigned LATB5 :1;
        unsigned LATB6 :1;
        unsigned LATB7 :1;
    };
    struct {
        unsigned LATB :8;
    };
} LATBbits_t;
extern volatile LATBbits_t LATBbits __attribute__((address(0x10D)));
# 2348 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char LATC __attribute__((address(0x10E)));

__asm("LATC equ 010Eh");


typedef union {
    struct {
        unsigned LATC0 :1;
        unsigned LATC1 :1;
        unsigned LATC2 :1;
        unsigned LATC3 :1;
        unsigned LATC4 :1;
        unsigned LATC5 :1;
        unsigned LATC6 :1;
        unsigned LATC7 :1;
    };
    struct {
        unsigned LATC :8;
    };
} LATCbits_t;
extern volatile LATCbits_t LATCbits __attribute__((address(0x10E)));
# 2418 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char CM1CON0 __attribute__((address(0x111)));

__asm("CM1CON0 equ 0111h");


typedef union {
    struct {
        unsigned C1SYNC :1;
        unsigned C1HYS :1;
        unsigned C1SP :1;
        unsigned C1ZLF :1;
        unsigned C1POL :1;
        unsigned C1OE :1;
        unsigned C1OUT :1;
        unsigned C1ON :1;
    };
} CM1CON0bits_t;
extern volatile CM1CON0bits_t CM1CON0bits __attribute__((address(0x111)));
# 2480 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char CM1CON1 __attribute__((address(0x112)));

__asm("CM1CON1 equ 0112h");


typedef union {
    struct {
        unsigned C1NCH0 :1;
        unsigned C1NCH1 :1;
        unsigned C1NCH2 :1;
        unsigned C1PCH0 :1;
        unsigned C1PCH1 :1;
        unsigned C1PCH2 :1;
        unsigned C1INTN :1;
        unsigned C1INTP :1;
    };
    struct {
        unsigned C1NCH :3;
        unsigned C1PCH :3;
    };
} CM1CON1bits_t;
extern volatile CM1CON1bits_t CM1CON1bits __attribute__((address(0x112)));
# 2556 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char CM2CON0 __attribute__((address(0x113)));

__asm("CM2CON0 equ 0113h");


typedef union {
    struct {
        unsigned C2SYNC :1;
        unsigned C2HYS :1;
        unsigned C2SP :1;
        unsigned C2ZLF :1;
        unsigned C2POL :1;
        unsigned C2OE :1;
        unsigned C2OUT :1;
        unsigned C2ON :1;
    };
} CM2CON0bits_t;
extern volatile CM2CON0bits_t CM2CON0bits __attribute__((address(0x113)));
# 2618 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char CM2CON1 __attribute__((address(0x114)));

__asm("CM2CON1 equ 0114h");


typedef union {
    struct {
        unsigned C2NCH0 :1;
        unsigned C2NCH1 :1;
        unsigned C2NCH2 :1;
        unsigned C2PCH0 :1;
        unsigned C2PCH1 :1;
        unsigned C2PCH2 :1;
        unsigned C2INTN :1;
        unsigned C2INTP :1;
    };
    struct {
        unsigned C2NCH :3;
        unsigned C2PCH :3;
    };
} CM2CON1bits_t;
extern volatile CM2CON1bits_t CM2CON1bits __attribute__((address(0x114)));
# 2694 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char CMOUT __attribute__((address(0x115)));

__asm("CMOUT equ 0115h");


typedef union {
    struct {
        unsigned MC1OUT :1;
        unsigned MC2OUT :1;
        unsigned MC3OUT :1;
    };
} CMOUTbits_t;
extern volatile CMOUTbits_t CMOUTbits __attribute__((address(0x115)));
# 2726 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char BORCON __attribute__((address(0x116)));

__asm("BORCON equ 0116h");


typedef union {
    struct {
        unsigned BORRDY :1;
        unsigned :5;
        unsigned BORFS :1;
        unsigned SBOREN :1;
    };
} BORCONbits_t;
extern volatile BORCONbits_t BORCONbits __attribute__((address(0x116)));
# 2759 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char FVRCON __attribute__((address(0x117)));

__asm("FVRCON equ 0117h");


typedef union {
    struct {
        unsigned ADFVR0 :1;
        unsigned ADFVR1 :1;
        unsigned CDAFVR0 :1;
        unsigned CDAFVR1 :1;
        unsigned TSRNG :1;
        unsigned TSEN :1;
        unsigned FVRRDY :1;
        unsigned FVREN :1;
    };
    struct {
        unsigned ADFVR :2;
        unsigned CDAFVR :2;
    };
} FVRCONbits_t;
extern volatile FVRCONbits_t FVRCONbits __attribute__((address(0x117)));
# 2835 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char DACCON0 __attribute__((address(0x118)));

__asm("DACCON0 equ 0118h");


typedef union {
    struct {
        unsigned DACNSS :1;
        unsigned :1;
        unsigned DACPSS0 :1;
        unsigned DACPSS1 :1;
        unsigned DACOE2 :1;
        unsigned DACOE1 :1;
        unsigned :1;
        unsigned DACEN :1;
    };
    struct {
        unsigned :2;
        unsigned DACPSS :2;
    };
} DACCON0bits_t;
extern volatile DACCON0bits_t DACCON0bits __attribute__((address(0x118)));
# 2896 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char DACCON1 __attribute__((address(0x119)));

__asm("DACCON1 equ 0119h");


typedef union {
    struct {
        unsigned DACR0 :1;
        unsigned DACR1 :1;
        unsigned DACR2 :1;
        unsigned DACR3 :1;
        unsigned DACR4 :1;
        unsigned DACR5 :1;
        unsigned DACR6 :1;
        unsigned DACR7 :1;
    };
    struct {
        unsigned DACR :8;
    };
} DACCON1bits_t;
extern volatile DACCON1bits_t DACCON1bits __attribute__((address(0x119)));
# 2966 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char APFCON __attribute__((address(0x11D)));

__asm("APFCON equ 011Dh");


extern volatile unsigned char APFCON0 __attribute__((address(0x11D)));

__asm("APFCON0 equ 011Dh");


typedef union {
    struct {
        unsigned CCP2SEL :1;
        unsigned RXSEL :1;
        unsigned TXSEL :1;
        unsigned SDISEL :1;
        unsigned SCKSEL :1;
        unsigned SDOSEL :1;
        unsigned CCP1SEL :1;
        unsigned C2OUTSEL :1;
    };
} APFCONbits_t;
extern volatile APFCONbits_t APFCONbits __attribute__((address(0x11D)));
# 3031 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
typedef union {
    struct {
        unsigned CCP2SEL :1;
        unsigned RXSEL :1;
        unsigned TXSEL :1;
        unsigned SDISEL :1;
        unsigned SCKSEL :1;
        unsigned SDOSEL :1;
        unsigned CCP1SEL :1;
        unsigned C2OUTSEL :1;
    };
} APFCON0bits_t;
extern volatile APFCON0bits_t APFCON0bits __attribute__((address(0x11D)));
# 3088 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char CM3CON0 __attribute__((address(0x11E)));

__asm("CM3CON0 equ 011Eh");


typedef union {
    struct {
        unsigned C3SYNC :1;
        unsigned C3HYS :1;
        unsigned C3SP :1;
        unsigned C3ZLF :1;
        unsigned C3POL :1;
        unsigned C3OE :1;
        unsigned C3OUT :1;
        unsigned C3ON :1;
    };
} CM3CON0bits_t;
extern volatile CM3CON0bits_t CM3CON0bits __attribute__((address(0x11E)));
# 3150 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char CM3CON1 __attribute__((address(0x11F)));

__asm("CM3CON1 equ 011Fh");


typedef union {
    struct {
        unsigned C3NCH0 :1;
        unsigned C3NCH1 :1;
        unsigned C3NCH2 :1;
        unsigned C3PCH0 :1;
        unsigned C3PCH1 :1;
        unsigned C3PCH2 :1;
        unsigned C3INTN :1;
        unsigned C3INTP :1;
    };
    struct {
        unsigned C3NCH :3;
        unsigned C3PCH :3;
    };
} CM3CON1bits_t;
extern volatile CM3CON1bits_t CM3CON1bits __attribute__((address(0x11F)));
# 3226 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char ANSELA __attribute__((address(0x18C)));

__asm("ANSELA equ 018Ch");


typedef union {
    struct {
        unsigned ANSA0 :1;
        unsigned ANSA1 :1;
        unsigned ANSA2 :1;
        unsigned ANSA3 :1;
        unsigned ANSA4 :1;
        unsigned ANSA5 :1;
        unsigned :1;
        unsigned ANSA7 :1;
    };
    struct {
        unsigned ANSELA :8;
    };
} ANSELAbits_t;
extern volatile ANSELAbits_t ANSELAbits __attribute__((address(0x18C)));
# 3291 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char ANSELB __attribute__((address(0x18D)));

__asm("ANSELB equ 018Dh");


typedef union {
    struct {
        unsigned ANSB0 :1;
        unsigned ANSB1 :1;
        unsigned ANSB2 :1;
        unsigned ANSB3 :1;
        unsigned ANSB4 :1;
        unsigned ANSB5 :1;
    };
    struct {
        unsigned ANSELB :6;
    };
} ANSELBbits_t;
extern volatile ANSELBbits_t ANSELBbits __attribute__((address(0x18D)));
# 3349 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned short EEADR __attribute__((address(0x191)));

__asm("EEADR equ 0191h");




extern volatile unsigned char EEADRL __attribute__((address(0x191)));

__asm("EEADRL equ 0191h");


typedef union {
    struct {
        unsigned EEADRL :8;
    };
} EEADRLbits_t;
extern volatile EEADRLbits_t EEADRLbits __attribute__((address(0x191)));
# 3376 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char EEADRH __attribute__((address(0x192)));

__asm("EEADRH equ 0192h");


typedef union {
    struct {
        unsigned EEADRH :7;
    };
} EEADRHbits_t;
extern volatile EEADRHbits_t EEADRHbits __attribute__((address(0x192)));
# 3396 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned short EEDAT __attribute__((address(0x193)));

__asm("EEDAT equ 0193h");




extern volatile unsigned char EEDATL __attribute__((address(0x193)));

__asm("EEDATL equ 0193h");


extern volatile unsigned char EEDATA __attribute__((address(0x193)));

__asm("EEDATA equ 0193h");


typedef union {
    struct {
        unsigned EEDATL :8;
    };
} EEDATLbits_t;
extern volatile EEDATLbits_t EEDATLbits __attribute__((address(0x193)));







typedef union {
    struct {
        unsigned EEDATL :8;
    };
} EEDATAbits_t;
extern volatile EEDATAbits_t EEDATAbits __attribute__((address(0x193)));
# 3441 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char EEDATH __attribute__((address(0x194)));

__asm("EEDATH equ 0194h");


typedef union {
    struct {
        unsigned EEDATH :6;
    };
} EEDATHbits_t;
extern volatile EEDATHbits_t EEDATHbits __attribute__((address(0x194)));
# 3461 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char EECON1 __attribute__((address(0x195)));

__asm("EECON1 equ 0195h");


typedef union {
    struct {
        unsigned RD :1;
        unsigned WR :1;
        unsigned WREN :1;
        unsigned WRERR :1;
        unsigned FREE :1;
        unsigned LWLO :1;
        unsigned CFGS :1;
        unsigned EEPGD :1;
    };
} EECON1bits_t;
extern volatile EECON1bits_t EECON1bits __attribute__((address(0x195)));
# 3523 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char EECON2 __attribute__((address(0x196)));

__asm("EECON2 equ 0196h");


typedef union {
    struct {
        unsigned EECON2 :8;
    };
} EECON2bits_t;
extern volatile EECON2bits_t EECON2bits __attribute__((address(0x196)));
# 3543 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char VREGCON __attribute__((address(0x197)));

__asm("VREGCON equ 0197h");


typedef union {
    struct {
        unsigned :1;
        unsigned VREGPM :1;
    };
} VREGCONbits_t;
extern volatile VREGCONbits_t VREGCONbits __attribute__((address(0x197)));
# 3564 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char RC1REG __attribute__((address(0x199)));

__asm("RC1REG equ 0199h");


extern volatile unsigned char RCREG __attribute__((address(0x199)));

__asm("RCREG equ 0199h");

extern volatile unsigned char RCREG1 __attribute__((address(0x199)));

__asm("RCREG1 equ 0199h");


typedef union {
    struct {
        unsigned RC1REG :8;
    };
} RC1REGbits_t;
extern volatile RC1REGbits_t RC1REGbits __attribute__((address(0x199)));







typedef union {
    struct {
        unsigned RC1REG :8;
    };
} RCREGbits_t;
extern volatile RCREGbits_t RCREGbits __attribute__((address(0x199)));






typedef union {
    struct {
        unsigned RC1REG :8;
    };
} RCREG1bits_t;
extern volatile RCREG1bits_t RCREG1bits __attribute__((address(0x199)));
# 3618 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char TX1REG __attribute__((address(0x19A)));

__asm("TX1REG equ 019Ah");


extern volatile unsigned char TXREG1 __attribute__((address(0x19A)));

__asm("TXREG1 equ 019Ah");

extern volatile unsigned char TXREG __attribute__((address(0x19A)));

__asm("TXREG equ 019Ah");


typedef union {
    struct {
        unsigned TX1REG :8;
    };
} TX1REGbits_t;
extern volatile TX1REGbits_t TX1REGbits __attribute__((address(0x19A)));







typedef union {
    struct {
        unsigned TX1REG :8;
    };
} TXREG1bits_t;
extern volatile TXREG1bits_t TXREG1bits __attribute__((address(0x19A)));






typedef union {
    struct {
        unsigned TX1REG :8;
    };
} TXREGbits_t;
extern volatile TXREGbits_t TXREGbits __attribute__((address(0x19A)));
# 3672 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned short SP1BRG __attribute__((address(0x19B)));

__asm("SP1BRG equ 019Bh");


extern volatile unsigned short SPBRG __attribute__((address(0x19B)));

__asm("SPBRG equ 019Bh");




extern volatile unsigned char SP1BRGL __attribute__((address(0x19B)));

__asm("SP1BRGL equ 019Bh");


extern volatile unsigned char SPBRG1 __attribute__((address(0x19B)));

__asm("SPBRG1 equ 019Bh");

extern volatile unsigned char SPBRGL __attribute__((address(0x19B)));

__asm("SPBRGL equ 019Bh");


typedef union {
    struct {
        unsigned SP1BRGL :8;
    };
} SP1BRGLbits_t;
extern volatile SP1BRGLbits_t SP1BRGLbits __attribute__((address(0x19B)));







typedef union {
    struct {
        unsigned SP1BRGL :8;
    };
} SPBRG1bits_t;
extern volatile SPBRG1bits_t SPBRG1bits __attribute__((address(0x19B)));






typedef union {
    struct {
        unsigned SP1BRGL :8;
    };
} SPBRGLbits_t;
extern volatile SPBRGLbits_t SPBRGLbits __attribute__((address(0x19B)));
# 3738 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char SP1BRGH __attribute__((address(0x19C)));

__asm("SP1BRGH equ 019Ch");


extern volatile unsigned char SPBRGH __attribute__((address(0x19C)));

__asm("SPBRGH equ 019Ch");

extern volatile unsigned char SPBRGH1 __attribute__((address(0x19C)));

__asm("SPBRGH1 equ 019Ch");


typedef union {
    struct {
        unsigned SP1BRGH :8;
    };
} SP1BRGHbits_t;
extern volatile SP1BRGHbits_t SP1BRGHbits __attribute__((address(0x19C)));







typedef union {
    struct {
        unsigned SP1BRGH :8;
    };
} SPBRGHbits_t;
extern volatile SPBRGHbits_t SPBRGHbits __attribute__((address(0x19C)));






typedef union {
    struct {
        unsigned SP1BRGH :8;
    };
} SPBRGH1bits_t;
extern volatile SPBRGH1bits_t SPBRGH1bits __attribute__((address(0x19C)));
# 3792 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char RC1STA __attribute__((address(0x19D)));

__asm("RC1STA equ 019Dh");


extern volatile unsigned char RCSTA1 __attribute__((address(0x19D)));

__asm("RCSTA1 equ 019Dh");

extern volatile unsigned char RCSTA __attribute__((address(0x19D)));

__asm("RCSTA equ 019Dh");


typedef union {
    struct {
        unsigned RX9D :1;
        unsigned OERR :1;
        unsigned FERR :1;
        unsigned ADDEN :1;
        unsigned CREN :1;
        unsigned SREN :1;
        unsigned RX9 :1;
        unsigned SPEN :1;
    };
} RC1STAbits_t;
extern volatile RC1STAbits_t RC1STAbits __attribute__((address(0x19D)));
# 3861 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
typedef union {
    struct {
        unsigned RX9D :1;
        unsigned OERR :1;
        unsigned FERR :1;
        unsigned ADDEN :1;
        unsigned CREN :1;
        unsigned SREN :1;
        unsigned RX9 :1;
        unsigned SPEN :1;
    };
} RCSTA1bits_t;
extern volatile RCSTA1bits_t RCSTA1bits __attribute__((address(0x19D)));
# 3915 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
typedef union {
    struct {
        unsigned RX9D :1;
        unsigned OERR :1;
        unsigned FERR :1;
        unsigned ADDEN :1;
        unsigned CREN :1;
        unsigned SREN :1;
        unsigned RX9 :1;
        unsigned SPEN :1;
    };
} RCSTAbits_t;
extern volatile RCSTAbits_t RCSTAbits __attribute__((address(0x19D)));
# 3972 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char TX1STA __attribute__((address(0x19E)));

__asm("TX1STA equ 019Eh");


extern volatile unsigned char TXSTA1 __attribute__((address(0x19E)));

__asm("TXSTA1 equ 019Eh");

extern volatile unsigned char TXSTA __attribute__((address(0x19E)));

__asm("TXSTA equ 019Eh");


typedef union {
    struct {
        unsigned TX9D :1;
        unsigned TRMT :1;
        unsigned BRGH :1;
        unsigned SENDB :1;
        unsigned SYNC :1;
        unsigned TXEN :1;
        unsigned TX9 :1;
        unsigned CSRC :1;
    };
} TX1STAbits_t;
extern volatile TX1STAbits_t TX1STAbits __attribute__((address(0x19E)));
# 4041 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
typedef union {
    struct {
        unsigned TX9D :1;
        unsigned TRMT :1;
        unsigned BRGH :1;
        unsigned SENDB :1;
        unsigned SYNC :1;
        unsigned TXEN :1;
        unsigned TX9 :1;
        unsigned CSRC :1;
    };
} TXSTA1bits_t;
extern volatile TXSTA1bits_t TXSTA1bits __attribute__((address(0x19E)));
# 4095 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
typedef union {
    struct {
        unsigned TX9D :1;
        unsigned TRMT :1;
        unsigned BRGH :1;
        unsigned SENDB :1;
        unsigned SYNC :1;
        unsigned TXEN :1;
        unsigned TX9 :1;
        unsigned CSRC :1;
    };
} TXSTAbits_t;
extern volatile TXSTAbits_t TXSTAbits __attribute__((address(0x19E)));
# 4152 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char BAUD1CON __attribute__((address(0x19F)));

__asm("BAUD1CON equ 019Fh");


extern volatile unsigned char BAUDCON1 __attribute__((address(0x19F)));

__asm("BAUDCON1 equ 019Fh");

extern volatile unsigned char BAUDCTL1 __attribute__((address(0x19F)));

__asm("BAUDCTL1 equ 019Fh");

extern volatile unsigned char BAUDCON __attribute__((address(0x19F)));

__asm("BAUDCON equ 019Fh");

extern volatile unsigned char BAUDCTL __attribute__((address(0x19F)));

__asm("BAUDCTL equ 019Fh");


typedef union {
    struct {
        unsigned ABDEN :1;
        unsigned WUE :1;
        unsigned :1;
        unsigned BRG16 :1;
        unsigned SCKP :1;
        unsigned :1;
        unsigned RCIDL :1;
        unsigned ABDOVF :1;
    };
} BAUD1CONbits_t;
extern volatile BAUD1CONbits_t BAUD1CONbits __attribute__((address(0x19F)));
# 4219 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
typedef union {
    struct {
        unsigned ABDEN :1;
        unsigned WUE :1;
        unsigned :1;
        unsigned BRG16 :1;
        unsigned SCKP :1;
        unsigned :1;
        unsigned RCIDL :1;
        unsigned ABDOVF :1;
    };
} BAUDCON1bits_t;
extern volatile BAUDCON1bits_t BAUDCON1bits __attribute__((address(0x19F)));
# 4263 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
typedef union {
    struct {
        unsigned ABDEN :1;
        unsigned WUE :1;
        unsigned :1;
        unsigned BRG16 :1;
        unsigned SCKP :1;
        unsigned :1;
        unsigned RCIDL :1;
        unsigned ABDOVF :1;
    };
} BAUDCTL1bits_t;
extern volatile BAUDCTL1bits_t BAUDCTL1bits __attribute__((address(0x19F)));
# 4307 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
typedef union {
    struct {
        unsigned ABDEN :1;
        unsigned WUE :1;
        unsigned :1;
        unsigned BRG16 :1;
        unsigned SCKP :1;
        unsigned :1;
        unsigned RCIDL :1;
        unsigned ABDOVF :1;
    };
} BAUDCONbits_t;
extern volatile BAUDCONbits_t BAUDCONbits __attribute__((address(0x19F)));
# 4351 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
typedef union {
    struct {
        unsigned ABDEN :1;
        unsigned WUE :1;
        unsigned :1;
        unsigned BRG16 :1;
        unsigned SCKP :1;
        unsigned :1;
        unsigned RCIDL :1;
        unsigned ABDOVF :1;
    };
} BAUDCTLbits_t;
extern volatile BAUDCTLbits_t BAUDCTLbits __attribute__((address(0x19F)));
# 4398 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char WPUA __attribute__((address(0x20C)));

__asm("WPUA equ 020Ch");


typedef union {
    struct {
        unsigned WPUA0 :1;
        unsigned WPUA1 :1;
        unsigned WPUA2 :1;
        unsigned WPUA3 :1;
        unsigned WPUA4 :1;
        unsigned WPUA5 :1;
        unsigned WPUA6 :1;
        unsigned WPUA7 :1;
    };
    struct {
        unsigned WPUA :8;
    };
} WPUAbits_t;
extern volatile WPUAbits_t WPUAbits __attribute__((address(0x20C)));
# 4468 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char WPUB __attribute__((address(0x20D)));

__asm("WPUB equ 020Dh");


typedef union {
    struct {
        unsigned WPUB0 :1;
        unsigned WPUB1 :1;
        unsigned WPUB2 :1;
        unsigned WPUB3 :1;
        unsigned WPUB4 :1;
        unsigned WPUB5 :1;
        unsigned WPUB6 :1;
        unsigned WPUB7 :1;
    };
    struct {
        unsigned WPUB :8;
    };
} WPUBbits_t;
extern volatile WPUBbits_t WPUBbits __attribute__((address(0x20D)));
# 4538 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char WPUC __attribute__((address(0x20E)));

__asm("WPUC equ 020Eh");


typedef union {
    struct {
        unsigned WPUC0 :1;
        unsigned WPUC1 :1;
        unsigned WPUC2 :1;
        unsigned WPUC3 :1;
        unsigned WPUC4 :1;
        unsigned WPUC5 :1;
        unsigned WPUC6 :1;
        unsigned WPUC7 :1;
    };
    struct {
        unsigned WPUC :8;
    };
} WPUCbits_t;
extern volatile WPUCbits_t WPUCbits __attribute__((address(0x20E)));
# 4608 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char WPUE __attribute__((address(0x210)));

__asm("WPUE equ 0210h");


typedef union {
    struct {
        unsigned :3;
        unsigned WPUE3 :1;
    };
} WPUEbits_t;
extern volatile WPUEbits_t WPUEbits __attribute__((address(0x210)));
# 4629 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char SSPBUF __attribute__((address(0x211)));

__asm("SSPBUF equ 0211h");


extern volatile unsigned char SSP1BUF __attribute__((address(0x211)));

__asm("SSP1BUF equ 0211h");


typedef union {
    struct {
        unsigned SSPBUF :8;
    };
} SSPBUFbits_t;
extern volatile SSPBUFbits_t SSPBUFbits __attribute__((address(0x211)));







typedef union {
    struct {
        unsigned SSPBUF :8;
    };
} SSP1BUFbits_t;
extern volatile SSP1BUFbits_t SSP1BUFbits __attribute__((address(0x211)));
# 4667 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char SSPADD __attribute__((address(0x212)));

__asm("SSPADD equ 0212h");


extern volatile unsigned char SSP1ADD __attribute__((address(0x212)));

__asm("SSP1ADD equ 0212h");


typedef union {
    struct {
        unsigned SSPADD :8;
    };
} SSPADDbits_t;
extern volatile SSPADDbits_t SSPADDbits __attribute__((address(0x212)));







typedef union {
    struct {
        unsigned SSPADD :8;
    };
} SSP1ADDbits_t;
extern volatile SSP1ADDbits_t SSP1ADDbits __attribute__((address(0x212)));
# 4705 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char SSPMSK __attribute__((address(0x213)));

__asm("SSPMSK equ 0213h");


extern volatile unsigned char SSP1MSK __attribute__((address(0x213)));

__asm("SSP1MSK equ 0213h");


typedef union {
    struct {
        unsigned SSPMSK :8;
    };
} SSPMSKbits_t;
extern volatile SSPMSKbits_t SSPMSKbits __attribute__((address(0x213)));







typedef union {
    struct {
        unsigned SSPMSK :8;
    };
} SSP1MSKbits_t;
extern volatile SSP1MSKbits_t SSP1MSKbits __attribute__((address(0x213)));
# 4743 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char SSPSTAT __attribute__((address(0x214)));

__asm("SSPSTAT equ 0214h");


extern volatile unsigned char SSP1STAT __attribute__((address(0x214)));

__asm("SSP1STAT equ 0214h");


typedef union {
    struct {
        unsigned BF :1;
        unsigned UA :1;
        unsigned R_nW :1;
        unsigned S :1;
        unsigned P :1;
        unsigned D_nA :1;
        unsigned CKE :1;
        unsigned SMP :1;
    };
} SSPSTATbits_t;
extern volatile SSPSTATbits_t SSPSTATbits __attribute__((address(0x214)));
# 4808 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
typedef union {
    struct {
        unsigned BF :1;
        unsigned UA :1;
        unsigned R_nW :1;
        unsigned S :1;
        unsigned P :1;
        unsigned D_nA :1;
        unsigned CKE :1;
        unsigned SMP :1;
    };
} SSP1STATbits_t;
extern volatile SSP1STATbits_t SSP1STATbits __attribute__((address(0x214)));
# 4865 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char SSPCON1 __attribute__((address(0x215)));

__asm("SSPCON1 equ 0215h");


extern volatile unsigned char SSP1CON __attribute__((address(0x215)));

__asm("SSP1CON equ 0215h");

extern volatile unsigned char SSPCON __attribute__((address(0x215)));

__asm("SSPCON equ 0215h");


typedef union {
    struct {
        unsigned SSPM0 :1;
        unsigned SSPM1 :1;
        unsigned SSPM2 :1;
        unsigned SSPM3 :1;
        unsigned CKP :1;
        unsigned SSPEN :1;
        unsigned SSPOV :1;
        unsigned WCOL :1;
    };
    struct {
        unsigned SSPM :4;
    };
} SSPCON1bits_t;
extern volatile SSPCON1bits_t SSPCON1bits __attribute__((address(0x215)));
# 4942 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
typedef union {
    struct {
        unsigned SSPM0 :1;
        unsigned SSPM1 :1;
        unsigned SSPM2 :1;
        unsigned SSPM3 :1;
        unsigned CKP :1;
        unsigned SSPEN :1;
        unsigned SSPOV :1;
        unsigned WCOL :1;
    };
    struct {
        unsigned SSPM :4;
    };
} SSP1CONbits_t;
extern volatile SSP1CONbits_t SSP1CONbits __attribute__((address(0x215)));
# 5004 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
typedef union {
    struct {
        unsigned SSPM0 :1;
        unsigned SSPM1 :1;
        unsigned SSPM2 :1;
        unsigned SSPM3 :1;
        unsigned CKP :1;
        unsigned SSPEN :1;
        unsigned SSPOV :1;
        unsigned WCOL :1;
    };
    struct {
        unsigned SSPM :4;
    };
} SSPCONbits_t;
extern volatile SSPCONbits_t SSPCONbits __attribute__((address(0x215)));
# 5069 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char SSPCON2 __attribute__((address(0x216)));

__asm("SSPCON2 equ 0216h");


extern volatile unsigned char SSP1CON2 __attribute__((address(0x216)));

__asm("SSP1CON2 equ 0216h");


typedef union {
    struct {
        unsigned SEN :1;
        unsigned RSEN :1;
        unsigned PEN :1;
        unsigned RCEN :1;
        unsigned ACKEN :1;
        unsigned ACKDT :1;
        unsigned ACKSTAT :1;
        unsigned GCEN :1;
    };
} SSPCON2bits_t;
extern volatile SSPCON2bits_t SSPCON2bits __attribute__((address(0x216)));
# 5134 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
typedef union {
    struct {
        unsigned SEN :1;
        unsigned RSEN :1;
        unsigned PEN :1;
        unsigned RCEN :1;
        unsigned ACKEN :1;
        unsigned ACKDT :1;
        unsigned ACKSTAT :1;
        unsigned GCEN :1;
    };
} SSP1CON2bits_t;
extern volatile SSP1CON2bits_t SSP1CON2bits __attribute__((address(0x216)));
# 5191 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char SSPCON3 __attribute__((address(0x217)));

__asm("SSPCON3 equ 0217h");


extern volatile unsigned char SSP1CON3 __attribute__((address(0x217)));

__asm("SSP1CON3 equ 0217h");


typedef union {
    struct {
        unsigned DHEN :1;
        unsigned AHEN :1;
        unsigned SBCDE :1;
        unsigned SDAHT :1;
        unsigned BOEN :1;
        unsigned SCIE :1;
        unsigned PCIE :1;
        unsigned ACKTIM :1;
    };
} SSPCON3bits_t;
extern volatile SSPCON3bits_t SSPCON3bits __attribute__((address(0x217)));
# 5256 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
typedef union {
    struct {
        unsigned DHEN :1;
        unsigned AHEN :1;
        unsigned SBCDE :1;
        unsigned SDAHT :1;
        unsigned BOEN :1;
        unsigned SCIE :1;
        unsigned PCIE :1;
        unsigned ACKTIM :1;
    };
} SSP1CON3bits_t;
extern volatile SSP1CON3bits_t SSP1CON3bits __attribute__((address(0x217)));
# 5313 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char ODCONA __attribute__((address(0x28C)));

__asm("ODCONA equ 028Ch");


typedef union {
    struct {
        unsigned ODCONA0 :1;
        unsigned ODCONA1 :1;
        unsigned ODCONA2 :1;
        unsigned ODCONA3 :1;
        unsigned ODCONA4 :1;
        unsigned ODCONA5 :1;
        unsigned ODCONA6 :1;
        unsigned ODCONA7 :1;
    };
    struct {
        unsigned ODCONA :8;
    };
} ODCONAbits_t;
extern volatile ODCONAbits_t ODCONAbits __attribute__((address(0x28C)));
# 5383 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char ODCONB __attribute__((address(0x28D)));

__asm("ODCONB equ 028Dh");


typedef union {
    struct {
        unsigned ODCONB0 :1;
        unsigned ODCONB1 :1;
        unsigned ODCONB2 :1;
        unsigned ODCONB3 :1;
        unsigned ODCONB4 :1;
        unsigned ODCONB5 :1;
        unsigned ODCONB6 :1;
        unsigned ODCONB7 :1;
    };
    struct {
        unsigned ODCONB :8;
    };
} ODCONBbits_t;
extern volatile ODCONBbits_t ODCONBbits __attribute__((address(0x28D)));
# 5453 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char ODCONC __attribute__((address(0x28E)));

__asm("ODCONC equ 028Eh");


typedef union {
    struct {
        unsigned ODCONC0 :1;
        unsigned ODCONC1 :1;
        unsigned ODCONC2 :1;
        unsigned ODCONC3 :1;
        unsigned ODCONC4 :1;
        unsigned ODCONC5 :1;
        unsigned ODCONC6 :1;
        unsigned ODCONC7 :1;
    };
    struct {
        unsigned ODCONC :8;
    };
} ODCONCbits_t;
extern volatile ODCONCbits_t ODCONCbits __attribute__((address(0x28E)));
# 5523 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned short CCPR1 __attribute__((address(0x291)));

__asm("CCPR1 equ 0291h");




extern volatile unsigned char CCPR1L __attribute__((address(0x291)));

__asm("CCPR1L equ 0291h");


typedef union {
    struct {
        unsigned CCPR1L :8;
    };
} CCPR1Lbits_t;
extern volatile CCPR1Lbits_t CCPR1Lbits __attribute__((address(0x291)));
# 5550 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char CCPR1H __attribute__((address(0x292)));

__asm("CCPR1H equ 0292h");


typedef union {
    struct {
        unsigned CCPR1H :8;
    };
} CCPR1Hbits_t;
extern volatile CCPR1Hbits_t CCPR1Hbits __attribute__((address(0x292)));
# 5570 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char CCP1CON __attribute__((address(0x293)));

__asm("CCP1CON equ 0293h");


typedef union {
    struct {
        unsigned CCP1M0 :1;
        unsigned CCP1M1 :1;
        unsigned CCP1M2 :1;
        unsigned CCP1M3 :1;
        unsigned DC1B0 :1;
        unsigned DC1B1 :1;
        unsigned P1M0 :1;
        unsigned P1M1 :1;
    };
    struct {
        unsigned CCP1M :4;
        unsigned DC1B :2;
        unsigned P1M :2;
    };
} CCP1CONbits_t;
extern volatile CCP1CONbits_t CCP1CONbits __attribute__((address(0x293)));
# 5652 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned short CCPR2 __attribute__((address(0x298)));

__asm("CCPR2 equ 0298h");




extern volatile unsigned char CCPR2L __attribute__((address(0x298)));

__asm("CCPR2L equ 0298h");


typedef union {
    struct {
        unsigned CCPR2L :8;
    };
} CCPR2Lbits_t;
extern volatile CCPR2Lbits_t CCPR2Lbits __attribute__((address(0x298)));
# 5679 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char CCPR2H __attribute__((address(0x299)));

__asm("CCPR2H equ 0299h");


typedef union {
    struct {
        unsigned CCPR2H :8;
    };
} CCPR2Hbits_t;
extern volatile CCPR2Hbits_t CCPR2Hbits __attribute__((address(0x299)));
# 5699 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char CCP2CON __attribute__((address(0x29A)));

__asm("CCP2CON equ 029Ah");


typedef union {
    struct {
        unsigned CCP2M0 :1;
        unsigned CCP2M1 :1;
        unsigned CCP2M2 :1;
        unsigned CCP2M3 :1;
        unsigned DC2B0 :1;
        unsigned DC2B1 :1;
        unsigned P2M0 :1;
        unsigned P2M1 :1;
    };
    struct {
        unsigned CCP2M :4;
        unsigned DC2B :2;
        unsigned P2M :2;
    };
} CCP2CONbits_t;
extern volatile CCP2CONbits_t CCP2CONbits __attribute__((address(0x29A)));
# 5781 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char SLRCONA __attribute__((address(0x30C)));

__asm("SLRCONA equ 030Ch");


typedef union {
    struct {
        unsigned SLRCONA0 :1;
        unsigned SLRCONA1 :1;
        unsigned SLRCONA2 :1;
        unsigned SLRCONA3 :1;
        unsigned SLRCONA4 :1;
        unsigned SLRCONA5 :1;
        unsigned SLRCONA6 :1;
        unsigned SLRCONA7 :1;
    };
    struct {
        unsigned SLRCONA :8;
    };
} SLRCONAbits_t;
extern volatile SLRCONAbits_t SLRCONAbits __attribute__((address(0x30C)));
# 5851 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char SLRCONB __attribute__((address(0x30D)));

__asm("SLRCONB equ 030Dh");


typedef union {
    struct {
        unsigned SLRCONB0 :1;
        unsigned SLRCONB1 :1;
        unsigned SLRCONB2 :1;
        unsigned SLRCONB3 :1;
        unsigned SLRCONB4 :1;
        unsigned SLRCONB5 :1;
        unsigned SLRCONB6 :1;
        unsigned SLRCONB7 :1;
    };
    struct {
        unsigned SLRCONB :8;
    };
} SLRCONBbits_t;
extern volatile SLRCONBbits_t SLRCONBbits __attribute__((address(0x30D)));
# 5921 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char SLRCONC __attribute__((address(0x30E)));

__asm("SLRCONC equ 030Eh");


typedef union {
    struct {
        unsigned SLRCONC0 :1;
        unsigned SLRCONC1 :1;
        unsigned SLRCONC2 :1;
        unsigned SLRCONC3 :1;
        unsigned SLRCONC4 :1;
        unsigned SLRCONC5 :1;
        unsigned SLRCONC6 :1;
        unsigned SLRCONC7 :1;
    };
    struct {
        unsigned SLRCONC :8;
    };
} SLRCONCbits_t;
extern volatile SLRCONCbits_t SLRCONCbits __attribute__((address(0x30E)));
# 5991 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char INLVLA __attribute__((address(0x38C)));

__asm("INLVLA equ 038Ch");


typedef union {
    struct {
        unsigned INLVLA0 :1;
        unsigned INLVLA1 :1;
        unsigned INLVLA2 :1;
        unsigned INLVLA3 :1;
        unsigned INLVLA4 :1;
        unsigned INLVLA5 :1;
        unsigned INLVLA6 :1;
        unsigned INLVLA7 :1;
    };
    struct {
        unsigned INLVLA :8;
    };
} INLVLAbits_t;
extern volatile INLVLAbits_t INLVLAbits __attribute__((address(0x38C)));
# 6061 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char INLVLB __attribute__((address(0x38D)));

__asm("INLVLB equ 038Dh");


typedef union {
    struct {
        unsigned INLVLB0 :1;
        unsigned INLVLB1 :1;
        unsigned INLVLB2 :1;
        unsigned INLVLB3 :1;
        unsigned INLVLB4 :1;
        unsigned INLVLB5 :1;
        unsigned INLVLB6 :1;
        unsigned INLVLB7 :1;
    };
    struct {
        unsigned INLVLB :8;
    };
} INLVLBbits_t;
extern volatile INLVLBbits_t INLVLBbits __attribute__((address(0x38D)));
# 6131 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char INLVLC __attribute__((address(0x38E)));

__asm("INLVLC equ 038Eh");


typedef union {
    struct {
        unsigned INLVLC0 :1;
        unsigned INLVLC1 :1;
        unsigned INLVLC2 :1;
        unsigned INLVLC3 :1;
        unsigned INLVLC4 :1;
        unsigned INLVLC5 :1;
        unsigned INLVLC6 :1;
        unsigned INLVLC7 :1;
    };
    struct {
        unsigned INLVLC :8;
    };
} INLVLCbits_t;
extern volatile INLVLCbits_t INLVLCbits __attribute__((address(0x38E)));
# 6201 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char INLVLE __attribute__((address(0x390)));

__asm("INLVLE equ 0390h");


typedef union {
    struct {
        unsigned :3;
        unsigned INLVLE3 :1;
    };
} INLVLEbits_t;
extern volatile INLVLEbits_t INLVLEbits __attribute__((address(0x390)));
# 6222 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char IOCAP __attribute__((address(0x391)));

__asm("IOCAP equ 0391h");


typedef union {
    struct {
        unsigned IOCAP0 :1;
        unsigned IOCAP1 :1;
        unsigned IOCAP2 :1;
        unsigned IOCAP3 :1;
        unsigned IOCAP4 :1;
        unsigned IOCAP5 :1;
        unsigned IOCAP6 :1;
        unsigned IOCAP7 :1;
    };
    struct {
        unsigned IOCAP :8;
    };
} IOCAPbits_t;
extern volatile IOCAPbits_t IOCAPbits __attribute__((address(0x391)));
# 6292 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char IOCAN __attribute__((address(0x392)));

__asm("IOCAN equ 0392h");


typedef union {
    struct {
        unsigned IOCAN0 :1;
        unsigned IOCAN1 :1;
        unsigned IOCAN2 :1;
        unsigned IOCAN3 :1;
        unsigned IOCAN4 :1;
        unsigned IOCAN5 :1;
        unsigned IOCAN6 :1;
        unsigned IOCAN7 :1;
    };
    struct {
        unsigned IOCAN :8;
    };
} IOCANbits_t;
extern volatile IOCANbits_t IOCANbits __attribute__((address(0x392)));
# 6362 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char IOCAF __attribute__((address(0x393)));

__asm("IOCAF equ 0393h");


typedef union {
    struct {
        unsigned IOCAF0 :1;
        unsigned IOCAF1 :1;
        unsigned IOCAF2 :1;
        unsigned IOCAF3 :1;
        unsigned IOCAF4 :1;
        unsigned IOCAF5 :1;
        unsigned IOCAF6 :1;
        unsigned IOCAF7 :1;
    };
    struct {
        unsigned IOCAF :8;
    };
} IOCAFbits_t;
extern volatile IOCAFbits_t IOCAFbits __attribute__((address(0x393)));
# 6432 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char IOCBP __attribute__((address(0x394)));

__asm("IOCBP equ 0394h");


typedef union {
    struct {
        unsigned IOCBP0 :1;
        unsigned IOCBP1 :1;
        unsigned IOCBP2 :1;
        unsigned IOCBP3 :1;
        unsigned IOCBP4 :1;
        unsigned IOCBP5 :1;
        unsigned IOCBP6 :1;
        unsigned IOCBP7 :1;
    };
    struct {
        unsigned IOCBP :8;
    };
} IOCBPbits_t;
extern volatile IOCBPbits_t IOCBPbits __attribute__((address(0x394)));
# 6502 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char IOCBN __attribute__((address(0x395)));

__asm("IOCBN equ 0395h");


typedef union {
    struct {
        unsigned IOCBN0 :1;
        unsigned IOCBN1 :1;
        unsigned IOCBN2 :1;
        unsigned IOCBN3 :1;
        unsigned IOCBN4 :1;
        unsigned IOCBN5 :1;
        unsigned IOCBN6 :1;
        unsigned IOCBN7 :1;
    };
    struct {
        unsigned IOCBN :8;
    };
} IOCBNbits_t;
extern volatile IOCBNbits_t IOCBNbits __attribute__((address(0x395)));
# 6572 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char IOCBF __attribute__((address(0x396)));

__asm("IOCBF equ 0396h");


typedef union {
    struct {
        unsigned IOCBF0 :1;
        unsigned IOCBF1 :1;
        unsigned IOCBF2 :1;
        unsigned IOCBF3 :1;
        unsigned IOCBF4 :1;
        unsigned IOCBF5 :1;
        unsigned IOCBF6 :1;
        unsigned IOCBF7 :1;
    };
    struct {
        unsigned IOCBF :8;
    };
} IOCBFbits_t;
extern volatile IOCBFbits_t IOCBFbits __attribute__((address(0x396)));
# 6642 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char IOCCP __attribute__((address(0x397)));

__asm("IOCCP equ 0397h");


typedef union {
    struct {
        unsigned IOCCP0 :1;
        unsigned IOCCP1 :1;
        unsigned IOCCP2 :1;
        unsigned IOCCP3 :1;
        unsigned IOCCP4 :1;
        unsigned IOCCP5 :1;
        unsigned IOCCP6 :1;
        unsigned IOCCP7 :1;
    };
    struct {
        unsigned IOCCP :8;
    };
} IOCCPbits_t;
extern volatile IOCCPbits_t IOCCPbits __attribute__((address(0x397)));
# 6712 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char IOCCN __attribute__((address(0x398)));

__asm("IOCCN equ 0398h");


typedef union {
    struct {
        unsigned IOCCN0 :1;
        unsigned IOCCN1 :1;
        unsigned IOCCN2 :1;
        unsigned IOCCN3 :1;
        unsigned IOCCN4 :1;
        unsigned IOCCN5 :1;
        unsigned IOCCN6 :1;
        unsigned IOCCN7 :1;
    };
    struct {
        unsigned IOCCN :8;
    };
} IOCCNbits_t;
extern volatile IOCCNbits_t IOCCNbits __attribute__((address(0x398)));
# 6782 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char IOCCF __attribute__((address(0x399)));

__asm("IOCCF equ 0399h");


typedef union {
    struct {
        unsigned IOCCF0 :1;
        unsigned IOCCF1 :1;
        unsigned IOCCF2 :1;
        unsigned IOCCF3 :1;
        unsigned IOCCF4 :1;
        unsigned IOCCF5 :1;
        unsigned IOCCF6 :1;
        unsigned IOCCF7 :1;
    };
    struct {
        unsigned IOCCF :8;
    };
} IOCCFbits_t;
extern volatile IOCCFbits_t IOCCFbits __attribute__((address(0x399)));
# 6852 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char IOCEP __attribute__((address(0x39D)));

__asm("IOCEP equ 039Dh");


typedef union {
    struct {
        unsigned :3;
        unsigned IOCEP3 :1;
    };
} IOCEPbits_t;
extern volatile IOCEPbits_t IOCEPbits __attribute__((address(0x39D)));
# 6873 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char IOCEN __attribute__((address(0x39E)));

__asm("IOCEN equ 039Eh");


typedef union {
    struct {
        unsigned :3;
        unsigned IOCEN3 :1;
    };
} IOCENbits_t;
extern volatile IOCENbits_t IOCENbits __attribute__((address(0x39E)));
# 6894 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char IOCEF __attribute__((address(0x39F)));

__asm("IOCEF equ 039Fh");


typedef union {
    struct {
        unsigned :3;
        unsigned IOCEF3 :1;
    };
} IOCEFbits_t;
extern volatile IOCEFbits_t IOCEFbits __attribute__((address(0x39F)));
# 6915 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char OPA1CON __attribute__((address(0x511)));

__asm("OPA1CON equ 0511h");


typedef union {
    struct {
        unsigned OPA1CH0 :1;
        unsigned OPA1CH1 :1;
        unsigned :4;
        unsigned OPA1SP :1;
        unsigned OPA1EN :1;
    };
    struct {
        unsigned OPA1CH :2;
    };
} OPA1CONbits_t;
extern volatile OPA1CONbits_t OPA1CONbits __attribute__((address(0x511)));
# 6962 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char OPA2CON __attribute__((address(0x513)));

__asm("OPA2CON equ 0513h");


typedef union {
    struct {
        unsigned OPA2CH0 :1;
        unsigned OPA2CH1 :1;
        unsigned :4;
        unsigned OPA2SP :1;
        unsigned OPA2EN :1;
    };
    struct {
        unsigned OPA2CH :2;
    };
} OPA2CONbits_t;
extern volatile OPA2CONbits_t OPA2CONbits __attribute__((address(0x513)));
# 7009 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char CLKRCON __attribute__((address(0x51A)));

__asm("CLKRCON equ 051Ah");


typedef union {
    struct {
        unsigned CLKRDIV0 :1;
        unsigned CLKRDIV1 :1;
        unsigned CLKRDIV2 :1;
        unsigned CLKRDC0 :1;
        unsigned CLKRDC1 :1;
        unsigned CLKRSLR :1;
        unsigned CLKROE :1;
        unsigned CLKREN :1;
    };
    struct {
        unsigned CLKRDIV :3;
        unsigned CLKRDC :2;
    };
} CLKRCONbits_t;
extern volatile CLKRCONbits_t CLKRCONbits __attribute__((address(0x51A)));
# 7085 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char PSMC1CON __attribute__((address(0x811)));

__asm("PSMC1CON equ 0811h");


typedef union {
    struct {
        unsigned P1MODE :4;
        unsigned P1DBRE :1;
        unsigned P1DBFE :1;
        unsigned PSMC1LD :1;
        unsigned PSMC1EN :1;
    };
    struct {
        unsigned P1MODE0 :1;
        unsigned P1MODE1 :1;
        unsigned P1MODE2 :1;
        unsigned P1MODE3 :1;
    };
} PSMC1CONbits_t;
extern volatile PSMC1CONbits_t PSMC1CONbits __attribute__((address(0x811)));
# 7155 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char PSMC1MDL __attribute__((address(0x812)));

__asm("PSMC1MDL equ 0812h");


typedef union {
    struct {
        unsigned P1MSRC :4;
        unsigned :1;
        unsigned P1MDLBIT :1;
        unsigned P1MDLPOL :1;
        unsigned P1MDLEN :1;
    };
    struct {
        unsigned P1MSRC0 :1;
        unsigned P1MSRC1 :1;
        unsigned P1MSRC2 :1;
        unsigned P1MSRC3 :1;
    };
} PSMC1MDLbits_t;
extern volatile PSMC1MDLbits_t PSMC1MDLbits __attribute__((address(0x812)));
# 7220 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char PSMC1SYNC __attribute__((address(0x813)));

__asm("PSMC1SYNC equ 0813h");


typedef union {
    struct {
        unsigned P1SYNC0 :1;
        unsigned P1SYNC1 :1;
    };
} PSMC1SYNCbits_t;
extern volatile PSMC1SYNCbits_t PSMC1SYNCbits __attribute__((address(0x813)));
# 7246 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char PSMC1CLK __attribute__((address(0x814)));

__asm("PSMC1CLK equ 0814h");


typedef union {
    struct {
        unsigned P1CSRC0 :1;
        unsigned P1CSRC1 :1;
        unsigned :2;
        unsigned P1CPRE0 :1;
        unsigned P1CPRE1 :1;
    };
    struct {
        unsigned P1CSRC :2;
        unsigned :2;
        unsigned P1CPRE :2;
    };
} PSMC1CLKbits_t;
extern volatile PSMC1CLKbits_t PSMC1CLKbits __attribute__((address(0x814)));
# 7300 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char PSMC1OEN __attribute__((address(0x815)));

__asm("PSMC1OEN equ 0815h");


typedef union {
    struct {
        unsigned P1OEA :1;
        unsigned P1OEB :1;
        unsigned P1OEC :1;
        unsigned P1OED :1;
        unsigned P1OEE :1;
        unsigned P1OEF :1;
    };
} PSMC1OENbits_t;
extern volatile PSMC1OENbits_t PSMC1OENbits __attribute__((address(0x815)));
# 7350 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char PSMC1POL __attribute__((address(0x816)));

__asm("PSMC1POL equ 0816h");


typedef union {
    struct {
        unsigned P1POLA :1;
        unsigned P1POLB :1;
        unsigned P1POLC :1;
        unsigned P1POLD :1;
        unsigned P1POLE :1;
        unsigned P1POLF :1;
        unsigned P1INPOL :1;
    };
} PSMC1POLbits_t;
extern volatile PSMC1POLbits_t PSMC1POLbits __attribute__((address(0x816)));
# 7406 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char PSMC1BLNK __attribute__((address(0x817)));

__asm("PSMC1BLNK equ 0817h");


typedef union {
    struct {
        unsigned P1REBM :2;
        unsigned :2;
        unsigned P1FEBM :2;
    };
    struct {
        unsigned P1REBM0 :1;
        unsigned P1REBM1 :1;
        unsigned :2;
        unsigned P1FEBM0 :1;
        unsigned P1FEBM1 :1;
    };
} PSMC1BLNKbits_t;
extern volatile PSMC1BLNKbits_t PSMC1BLNKbits __attribute__((address(0x817)));
# 7460 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char PSMC1REBS __attribute__((address(0x818)));

__asm("PSMC1REBS equ 0818h");


typedef union {
    struct {
        unsigned :1;
        unsigned P1REBSC1 :1;
        unsigned P1REBSC2 :1;
        unsigned P1REBSC3 :1;
        unsigned :3;
        unsigned P1REBSIN :1;
    };
} PSMC1REBSbits_t;
extern volatile PSMC1REBSbits_t PSMC1REBSbits __attribute__((address(0x818)));
# 7500 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char PSMC1FEBS __attribute__((address(0x819)));

__asm("PSMC1FEBS equ 0819h");


typedef union {
    struct {
        unsigned :1;
        unsigned P1FEBSC1 :1;
        unsigned P1FEBSC2 :1;
        unsigned P1FEBSC3 :1;
        unsigned :3;
        unsigned P1FEBSIN :1;
    };
} PSMC1FEBSbits_t;
extern volatile PSMC1FEBSbits_t PSMC1FEBSbits __attribute__((address(0x819)));
# 7540 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char PSMC1PHS __attribute__((address(0x81A)));

__asm("PSMC1PHS equ 081Ah");


typedef union {
    struct {
        unsigned P1PHST :1;
        unsigned P1PHSC1 :1;
        unsigned P1PHSC2 :1;
        unsigned P1PHSC3 :1;
        unsigned :3;
        unsigned P1PHSIN :1;
    };
} PSMC1PHSbits_t;
extern volatile PSMC1PHSbits_t PSMC1PHSbits __attribute__((address(0x81A)));
# 7585 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char PSMC1DCS __attribute__((address(0x81B)));

__asm("PSMC1DCS equ 081Bh");


typedef union {
    struct {
        unsigned P1DCST :1;
        unsigned P1DCSC1 :1;
        unsigned P1DCSC2 :1;
        unsigned P1DCSC3 :1;
        unsigned :3;
        unsigned P1DCSIN :1;
    };
} PSMC1DCSbits_t;
extern volatile PSMC1DCSbits_t PSMC1DCSbits __attribute__((address(0x81B)));
# 7630 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char PSMC1PRS __attribute__((address(0x81C)));

__asm("PSMC1PRS equ 081Ch");


typedef union {
    struct {
        unsigned P1PRST :1;
        unsigned P1PRSC1 :1;
        unsigned P1PRSC2 :1;
        unsigned P1PRSC3 :1;
        unsigned :3;
        unsigned P1PRSIN :1;
    };
} PSMC1PRSbits_t;
extern volatile PSMC1PRSbits_t PSMC1PRSbits __attribute__((address(0x81C)));
# 7675 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char PSMC1ASDC __attribute__((address(0x81D)));

__asm("PSMC1ASDC equ 081Dh");


typedef union {
    struct {
        unsigned P1ASDOV :1;
        unsigned :4;
        unsigned P1ARSEN :1;
        unsigned P1ASDEN :1;
        unsigned P1ASE :1;
    };
} PSMC1ASDCbits_t;
extern volatile PSMC1ASDCbits_t PSMC1ASDCbits __attribute__((address(0x81D)));
# 7714 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char PSMC1ASDL __attribute__((address(0x81E)));

__asm("PSMC1ASDL equ 081Eh");


typedef union {
    struct {
        unsigned P1ASDLA :1;
        unsigned P1ASDLB :1;
        unsigned P1ASDLC :1;
        unsigned P1ASDLD :1;
        unsigned P1ASDLE :1;
        unsigned P1ASDLF :1;
    };
} PSMC1ASDLbits_t;
extern volatile PSMC1ASDLbits_t PSMC1ASDLbits __attribute__((address(0x81E)));
# 7764 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char PSMC1ASDS __attribute__((address(0x81F)));

__asm("PSMC1ASDS equ 081Fh");


typedef union {
    struct {
        unsigned :1;
        unsigned P1ASDSC1 :1;
        unsigned P1ASDSC2 :1;
        unsigned P1ASDSC3 :1;
        unsigned :3;
        unsigned P1ASDSIN :1;
    };
} PSMC1ASDSbits_t;
extern volatile PSMC1ASDSbits_t PSMC1ASDSbits __attribute__((address(0x81F)));
# 7804 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char PSMC1INT __attribute__((address(0x820)));

__asm("PSMC1INT equ 0820h");


typedef union {
    struct {
        unsigned P1TPRIF :1;
        unsigned P1TDCIF :1;
        unsigned P1TPHIF :1;
        unsigned P1TOVIF :1;
        unsigned P1TPRIE :1;
        unsigned P1TDCIE :1;
        unsigned P1TPHIE :1;
        unsigned P1TOVIE :1;
    };
} PSMC1INTbits_t;
extern volatile PSMC1INTbits_t PSMC1INTbits __attribute__((address(0x820)));
# 7866 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned short PSMC1PH __attribute__((address(0x821)));

__asm("PSMC1PH equ 0821h");




extern volatile unsigned char PSMC1PHL __attribute__((address(0x821)));

__asm("PSMC1PHL equ 0821h");


typedef union {
    struct {
        unsigned PSMC1PH0 :1;
        unsigned PSMC1PH1 :1;
        unsigned PSMC1PH2 :1;
        unsigned PSMC1PH3 :1;
        unsigned PSMC1PH4 :1;
        unsigned PSMC1PH5 :1;
        unsigned PSMC1PH6 :1;
        unsigned PSMC1PH7 :1;
    };
} PSMC1PHLbits_t;
extern volatile PSMC1PHLbits_t PSMC1PHLbits __attribute__((address(0x821)));
# 7935 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char PSMC1PHH __attribute__((address(0x822)));

__asm("PSMC1PHH equ 0822h");


typedef union {
    struct {
        unsigned PSMC1PH8 :1;
        unsigned PSMC1PH9 :1;
        unsigned PSMC1PH10 :1;
        unsigned PSMC1PH11 :1;
        unsigned PSMC1PH12 :1;
        unsigned PSMC1PH13 :1;
        unsigned PSMC1PH14 :1;
        unsigned PSMC1PH15 :1;
    };
} PSMC1PHHbits_t;
extern volatile PSMC1PHHbits_t PSMC1PHHbits __attribute__((address(0x822)));
# 7997 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned short PSMC1DC __attribute__((address(0x823)));

__asm("PSMC1DC equ 0823h");




extern volatile unsigned char PSMC1DCL __attribute__((address(0x823)));

__asm("PSMC1DCL equ 0823h");


typedef union {
    struct {
        unsigned PSMC1DC0 :1;
        unsigned PSMC1DC1 :1;
        unsigned PSMC1DC2 :1;
        unsigned PSMC1DC3 :1;
        unsigned PSMC1DC4 :1;
        unsigned PSMC1DC5 :1;
        unsigned PSMC1DC6 :1;
        unsigned PSMC1DC7 :1;
    };
} PSMC1DCLbits_t;
extern volatile PSMC1DCLbits_t PSMC1DCLbits __attribute__((address(0x823)));
# 8066 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char PSMC1DCH __attribute__((address(0x824)));

__asm("PSMC1DCH equ 0824h");


typedef union {
    struct {
        unsigned PSMC1DC8 :1;
        unsigned PSMC1DC9 :1;
        unsigned PSMC1DC10 :1;
        unsigned PSMC1DC11 :1;
        unsigned PSMC1DC12 :1;
        unsigned PSMC1DC13 :1;
        unsigned PSMC1DC14 :1;
        unsigned PSMC1DC15 :1;
    };
} PSMC1DCHbits_t;
extern volatile PSMC1DCHbits_t PSMC1DCHbits __attribute__((address(0x824)));
# 8128 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned short PSMC1PR __attribute__((address(0x825)));

__asm("PSMC1PR equ 0825h");




extern volatile unsigned char PSMC1PRL __attribute__((address(0x825)));

__asm("PSMC1PRL equ 0825h");


typedef union {
    struct {
        unsigned PSMC1PR0 :1;
        unsigned PSMC1PR1 :1;
        unsigned PSMC1PR2 :1;
        unsigned PSMC1PR3 :1;
        unsigned PSMC1PR4 :1;
        unsigned PSMC1PR5 :1;
        unsigned PSMC1PR6 :1;
        unsigned PSMC1PR7 :1;
    };
} PSMC1PRLbits_t;
extern volatile PSMC1PRLbits_t PSMC1PRLbits __attribute__((address(0x825)));
# 8197 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char PSMC1PRH __attribute__((address(0x826)));

__asm("PSMC1PRH equ 0826h");


typedef union {
    struct {
        unsigned PSMC1PR8 :1;
        unsigned PSMC1PR9 :1;
        unsigned PSMC1PR10 :1;
        unsigned PSMC1PR11 :1;
        unsigned PSMC1PR12 :1;
        unsigned PSMC1PR13 :1;
        unsigned PSMC1PR14 :1;
        unsigned PSMC1PR15 :1;
    };
} PSMC1PRHbits_t;
extern volatile PSMC1PRHbits_t PSMC1PRHbits __attribute__((address(0x826)));
# 8259 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned short PSMC1TMR __attribute__((address(0x827)));

__asm("PSMC1TMR equ 0827h");




extern volatile unsigned char PSMC1TMRL __attribute__((address(0x827)));

__asm("PSMC1TMRL equ 0827h");


typedef union {
    struct {
        unsigned PSMC1TMR0 :1;
        unsigned PSMC1TMR1 :1;
        unsigned PSMC1TMR2 :1;
        unsigned PSMC1TMR3 :1;
        unsigned PSMC1TMR4 :1;
        unsigned PSMC1TMR5 :1;
        unsigned PSMC1TMR6 :1;
        unsigned PSMC1TMR7 :1;
    };
} PSMC1TMRLbits_t;
extern volatile PSMC1TMRLbits_t PSMC1TMRLbits __attribute__((address(0x827)));
# 8328 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char PSMC1TMRH __attribute__((address(0x828)));

__asm("PSMC1TMRH equ 0828h");


typedef union {
    struct {
        unsigned PSMC1TMR8 :1;
        unsigned PSMC1TMR9 :1;
        unsigned PSMC1TMR10 :1;
        unsigned PSMC1TMR11 :1;
        unsigned PSMC1TMR12 :1;
        unsigned PSMC1TMR13 :1;
        unsigned PSMC1TMR14 :1;
        unsigned PSMC1TMR15 :1;
    };
} PSMC1TMRHbits_t;
extern volatile PSMC1TMRHbits_t PSMC1TMRHbits __attribute__((address(0x828)));
# 8390 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char PSMC1DBR __attribute__((address(0x829)));

__asm("PSMC1DBR equ 0829h");


typedef union {
    struct {
        unsigned PSMC1DBR0 :1;
        unsigned PSMC1DBR1 :1;
        unsigned PSMC1DBR2 :1;
        unsigned PSMC1DBR3 :1;
        unsigned PSMC1DBR4 :1;
        unsigned PSMC1DBR5 :1;
        unsigned PSMC1DBR6 :1;
        unsigned PSMC1DBR7 :1;
    };
} PSMC1DBRbits_t;
extern volatile PSMC1DBRbits_t PSMC1DBRbits __attribute__((address(0x829)));
# 8452 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char PSMC1DBF __attribute__((address(0x82A)));

__asm("PSMC1DBF equ 082Ah");


typedef union {
    struct {
        unsigned PSMC1DBF0 :1;
        unsigned PSMC1DBF1 :1;
        unsigned PSMC1DBF2 :1;
        unsigned PSMC1DBF3 :1;
        unsigned PSMC1DBF4 :1;
        unsigned PSMC1DBF5 :1;
        unsigned PSMC1DBF6 :1;
        unsigned PSMC1DBF7 :1;
    };
} PSMC1DBFbits_t;
extern volatile PSMC1DBFbits_t PSMC1DBFbits __attribute__((address(0x82A)));
# 8514 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char PSMC1BLKR __attribute__((address(0x82B)));

__asm("PSMC1BLKR equ 082Bh");


typedef union {
    struct {
        unsigned PSMC1BLKR0 :1;
        unsigned PSMC1BLKR1 :1;
        unsigned PSMC1BLKR2 :1;
        unsigned PSMC1BLKR3 :1;
        unsigned PSMC1BLKR4 :1;
        unsigned PSMC1BLKR5 :1;
        unsigned PSMC1BLKR6 :1;
        unsigned PSMC1BLKR7 :1;
    };
} PSMC1BLKRbits_t;
extern volatile PSMC1BLKRbits_t PSMC1BLKRbits __attribute__((address(0x82B)));
# 8576 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char PSMC1BLKF __attribute__((address(0x82C)));

__asm("PSMC1BLKF equ 082Ch");


typedef union {
    struct {
        unsigned PSMC1BLKF0 :1;
        unsigned PSMC1BLKF1 :1;
        unsigned PSMC1BLKF2 :1;
        unsigned PSMC1BLKF3 :1;
        unsigned PSMC1BLKF4 :1;
        unsigned PSMC1BLKF5 :1;
        unsigned PSMC1BLKF6 :1;
        unsigned PSMC1BLKF7 :1;
    };
} PSMC1BLKFbits_t;
extern volatile PSMC1BLKFbits_t PSMC1BLKFbits __attribute__((address(0x82C)));
# 8638 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char PSMC1FFA __attribute__((address(0x82D)));

__asm("PSMC1FFA equ 082Dh");


typedef union {
    struct {
        unsigned PSMC1FFA0 :1;
        unsigned PSMC1FFA1 :1;
        unsigned PSMC1FFA2 :1;
        unsigned PSMC1FFA3 :1;
    };
} PSMC1FFAbits_t;
extern volatile PSMC1FFAbits_t PSMC1FFAbits __attribute__((address(0x82D)));
# 8676 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char PSMC1STR0 __attribute__((address(0x82E)));

__asm("PSMC1STR0 equ 082Eh");


typedef union {
    struct {
        unsigned P1STRA :1;
        unsigned P1STRB :1;
        unsigned P1STRC :1;
        unsigned P1STRD :1;
        unsigned P1STRE :1;
        unsigned P1STRF :1;
    };
} PSMC1STR0bits_t;
extern volatile PSMC1STR0bits_t PSMC1STR0bits __attribute__((address(0x82E)));
# 8726 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char PSMC1STR1 __attribute__((address(0x82F)));

__asm("PSMC1STR1 equ 082Fh");


typedef union {
    struct {
        unsigned P1HSMEN :1;
        unsigned P1LSMEN :1;
        unsigned :5;
        unsigned P1SSYNC :1;
    };
} PSMC1STR1bits_t;
extern volatile PSMC1STR1bits_t PSMC1STR1bits __attribute__((address(0x82F)));
# 8759 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char PSMC2CON __attribute__((address(0x831)));

__asm("PSMC2CON equ 0831h");


typedef union {
    struct {
        unsigned P2MODE :4;
        unsigned P2DBRE :1;
        unsigned P2DBFE :1;
        unsigned PSMC2LD :1;
        unsigned PSMC2EN :1;
    };
    struct {
        unsigned P2MODE0 :1;
        unsigned P2MODE1 :1;
        unsigned P2MODE2 :1;
        unsigned P2MODE3 :1;
    };
} PSMC2CONbits_t;
extern volatile PSMC2CONbits_t PSMC2CONbits __attribute__((address(0x831)));
# 8829 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char PSMC2MDL __attribute__((address(0x832)));

__asm("PSMC2MDL equ 0832h");


typedef union {
    struct {
        unsigned P2MSRC :4;
        unsigned :1;
        unsigned P2MDLBIT :1;
        unsigned P2MDLPOL :1;
        unsigned P2MDLEN :1;
    };
    struct {
        unsigned P2MSRC0 :1;
        unsigned P2MSRC1 :1;
        unsigned P2MSRC2 :1;
        unsigned P2MSRC3 :1;
    };
} PSMC2MDLbits_t;
extern volatile PSMC2MDLbits_t PSMC2MDLbits __attribute__((address(0x832)));
# 8894 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char PSMC2SYNC __attribute__((address(0x833)));

__asm("PSMC2SYNC equ 0833h");


typedef union {
    struct {
        unsigned P2SYNC0 :1;
        unsigned P2SYNC1 :1;
    };
} PSMC2SYNCbits_t;
extern volatile PSMC2SYNCbits_t PSMC2SYNCbits __attribute__((address(0x833)));
# 8920 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char PSMC2CLK __attribute__((address(0x834)));

__asm("PSMC2CLK equ 0834h");


typedef union {
    struct {
        unsigned P2CSRC0 :1;
        unsigned P2CSRC1 :1;
        unsigned :2;
        unsigned P2CPRE0 :1;
        unsigned P2CPRE1 :1;
    };
    struct {
        unsigned P2CSRC :2;
        unsigned :2;
        unsigned P2CPRE :2;
    };
} PSMC2CLKbits_t;
extern volatile PSMC2CLKbits_t PSMC2CLKbits __attribute__((address(0x834)));
# 8974 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char PSMC2OEN __attribute__((address(0x835)));

__asm("PSMC2OEN equ 0835h");


typedef union {
    struct {
        unsigned P2OEA :1;
        unsigned P2OEB :1;
    };
} PSMC2OENbits_t;
extern volatile PSMC2OENbits_t PSMC2OENbits __attribute__((address(0x835)));
# 9000 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char PSMC2POL __attribute__((address(0x836)));

__asm("PSMC2POL equ 0836h");


typedef union {
    struct {
        unsigned P2POLA :1;
        unsigned P2POLB :1;
        unsigned :4;
        unsigned P2INPOL :1;
    };
} PSMC2POLbits_t;
extern volatile PSMC2POLbits_t PSMC2POLbits __attribute__((address(0x836)));
# 9033 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char PSMC2BLNK __attribute__((address(0x837)));

__asm("PSMC2BLNK equ 0837h");


typedef union {
    struct {
        unsigned P2REBM :2;
        unsigned :2;
        unsigned P2FEBM :2;
    };
    struct {
        unsigned P2REBM0 :1;
        unsigned P2REBM1 :1;
        unsigned :2;
        unsigned P2FEBM0 :1;
        unsigned P2FEBM1 :1;
    };
} PSMC2BLNKbits_t;
extern volatile PSMC2BLNKbits_t PSMC2BLNKbits __attribute__((address(0x837)));
# 9087 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char PSMC2REBS __attribute__((address(0x838)));

__asm("PSMC2REBS equ 0838h");


typedef union {
    struct {
        unsigned :1;
        unsigned P2REBSC1 :1;
        unsigned P2REBSC2 :1;
        unsigned P2REBSC3 :1;
        unsigned :3;
        unsigned P2REBSIN :1;
    };
} PSMC2REBSbits_t;
extern volatile PSMC2REBSbits_t PSMC2REBSbits __attribute__((address(0x838)));
# 9127 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char PSMC2FEBS __attribute__((address(0x839)));

__asm("PSMC2FEBS equ 0839h");


typedef union {
    struct {
        unsigned :1;
        unsigned P2FEBSC1 :1;
        unsigned P2FEBSC2 :1;
        unsigned P2FEBSC3 :1;
        unsigned :3;
        unsigned P2FEBSIN :1;
    };
} PSMC2FEBSbits_t;
extern volatile PSMC2FEBSbits_t PSMC2FEBSbits __attribute__((address(0x839)));
# 9167 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char PSMC2PHS __attribute__((address(0x83A)));

__asm("PSMC2PHS equ 083Ah");


typedef union {
    struct {
        unsigned P2PHST :1;
        unsigned P2PHSC1 :1;
        unsigned P2PHSC2 :1;
        unsigned P2PHSC3 :1;
        unsigned :3;
        unsigned P2PHSIN :1;
    };
} PSMC2PHSbits_t;
extern volatile PSMC2PHSbits_t PSMC2PHSbits __attribute__((address(0x83A)));
# 9212 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char PSMC2DCS __attribute__((address(0x83B)));

__asm("PSMC2DCS equ 083Bh");


typedef union {
    struct {
        unsigned P2DCST :1;
        unsigned P2DCSC1 :1;
        unsigned P2DCSC2 :1;
        unsigned P2DCSC3 :1;
        unsigned :3;
        unsigned P2DCSIN :1;
    };
} PSMC2DCSbits_t;
extern volatile PSMC2DCSbits_t PSMC2DCSbits __attribute__((address(0x83B)));
# 9257 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char PSMC2PRS __attribute__((address(0x83C)));

__asm("PSMC2PRS equ 083Ch");


typedef union {
    struct {
        unsigned P2PRST :1;
        unsigned P2PRSC1 :1;
        unsigned P2PRSC2 :1;
        unsigned P2PRSC3 :1;
        unsigned :3;
        unsigned P2PRSIN :1;
    };
} PSMC2PRSbits_t;
extern volatile PSMC2PRSbits_t PSMC2PRSbits __attribute__((address(0x83C)));
# 9302 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char PSMC2ASDC __attribute__((address(0x83D)));

__asm("PSMC2ASDC equ 083Dh");


typedef union {
    struct {
        unsigned P2ASDOV :1;
        unsigned :4;
        unsigned P2ARSEN :1;
        unsigned P2ASDEN :1;
        unsigned P2ASE :1;
    };
} PSMC2ASDCbits_t;
extern volatile PSMC2ASDCbits_t PSMC2ASDCbits __attribute__((address(0x83D)));
# 9341 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char PSMC2ASDL __attribute__((address(0x83E)));

__asm("PSMC2ASDL equ 083Eh");


typedef union {
    struct {
        unsigned P2ASDLA :1;
        unsigned P2ASDLB :1;
    };
} PSMC2ASDLbits_t;
extern volatile PSMC2ASDLbits_t PSMC2ASDLbits __attribute__((address(0x83E)));
# 9367 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char PSMC2ASDS __attribute__((address(0x83F)));

__asm("PSMC2ASDS equ 083Fh");


typedef union {
    struct {
        unsigned :1;
        unsigned P2ASDSC1 :1;
        unsigned P2ASDSC2 :1;
        unsigned P2ASDSC3 :1;
        unsigned :3;
        unsigned P2ASDSIN :1;
    };
} PSMC2ASDSbits_t;
extern volatile PSMC2ASDSbits_t PSMC2ASDSbits __attribute__((address(0x83F)));
# 9407 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char PSMC2INT __attribute__((address(0x840)));

__asm("PSMC2INT equ 0840h");


typedef union {
    struct {
        unsigned P2TPRIF :1;
        unsigned P2TDCIF :1;
        unsigned P2TPHIF :1;
        unsigned P2TOVIF :1;
        unsigned P2TPRIE :1;
        unsigned P2TDCIE :1;
        unsigned P2TPHIE :1;
        unsigned P2TOVIE :1;
    };
} PSMC2INTbits_t;
extern volatile PSMC2INTbits_t PSMC2INTbits __attribute__((address(0x840)));
# 9469 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned short PSMC2PH __attribute__((address(0x841)));

__asm("PSMC2PH equ 0841h");




extern volatile unsigned char PSMC2PHL __attribute__((address(0x841)));

__asm("PSMC2PHL equ 0841h");


typedef union {
    struct {
        unsigned PSMC2PH0 :1;
        unsigned PSMC2PH1 :1;
        unsigned PSMC2PH2 :1;
        unsigned PSMC2PH3 :1;
        unsigned PSMC2PH4 :1;
        unsigned PSMC2PH5 :1;
        unsigned PSMC2PH6 :1;
        unsigned PSMC2PH7 :1;
    };
} PSMC2PHLbits_t;
extern volatile PSMC2PHLbits_t PSMC2PHLbits __attribute__((address(0x841)));
# 9538 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char PSMC2PHH __attribute__((address(0x842)));

__asm("PSMC2PHH equ 0842h");


typedef union {
    struct {
        unsigned PSMC2PH8 :1;
        unsigned PSMC2PH9 :1;
        unsigned PSMC2PH10 :1;
        unsigned PSMC2PH11 :1;
        unsigned PSMC2PH12 :1;
        unsigned PSMC2PH13 :1;
        unsigned PSMC2PH14 :1;
        unsigned PSMC2PH15 :1;
    };
} PSMC2PHHbits_t;
extern volatile PSMC2PHHbits_t PSMC2PHHbits __attribute__((address(0x842)));
# 9600 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned short PSMC2DC __attribute__((address(0x843)));

__asm("PSMC2DC equ 0843h");




extern volatile unsigned char PSMC2DCL __attribute__((address(0x843)));

__asm("PSMC2DCL equ 0843h");


typedef union {
    struct {
        unsigned PSMC2DC0 :1;
        unsigned PSMC2DC1 :1;
        unsigned PSMC2DC2 :1;
        unsigned PSMC2DC3 :1;
        unsigned PSMC2DC4 :1;
        unsigned PSMC2DC5 :1;
        unsigned PSMC2DC6 :1;
        unsigned PSMC2DC7 :1;
    };
} PSMC2DCLbits_t;
extern volatile PSMC2DCLbits_t PSMC2DCLbits __attribute__((address(0x843)));
# 9669 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char PSMC2DCH __attribute__((address(0x844)));

__asm("PSMC2DCH equ 0844h");


typedef union {
    struct {
        unsigned PSMC2DC8 :1;
        unsigned PSMC2DC9 :1;
        unsigned PSMC2DC10 :1;
        unsigned PSMC2DC11 :1;
        unsigned PSMC2DC12 :1;
        unsigned PSMC2DC13 :1;
        unsigned PSMC2DC14 :1;
        unsigned PSMC2DC15 :1;
    };
} PSMC2DCHbits_t;
extern volatile PSMC2DCHbits_t PSMC2DCHbits __attribute__((address(0x844)));
# 9731 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned short PSMC2PR __attribute__((address(0x845)));

__asm("PSMC2PR equ 0845h");




extern volatile unsigned char PSMC2PRL __attribute__((address(0x845)));

__asm("PSMC2PRL equ 0845h");


typedef union {
    struct {
        unsigned PSMC2PR0 :1;
        unsigned PSMC2PR1 :1;
        unsigned PSMC2PR2 :1;
        unsigned PSMC2PR3 :1;
        unsigned PSMC2PR4 :1;
        unsigned PSMC2PR5 :1;
        unsigned PSMC2PR6 :1;
        unsigned PSMC2PR7 :1;
    };
} PSMC2PRLbits_t;
extern volatile PSMC2PRLbits_t PSMC2PRLbits __attribute__((address(0x845)));
# 9800 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char PSMC2PRH __attribute__((address(0x846)));

__asm("PSMC2PRH equ 0846h");


typedef union {
    struct {
        unsigned PSMC2PR8 :1;
        unsigned PSMC2PR9 :1;
        unsigned PSMC2PR10 :1;
        unsigned PSMC2PR11 :1;
        unsigned PSMC2PR12 :1;
        unsigned PSMC2PR13 :1;
        unsigned PSMC2PR14 :1;
        unsigned PSMC2PR15 :1;
    };
} PSMC2PRHbits_t;
extern volatile PSMC2PRHbits_t PSMC2PRHbits __attribute__((address(0x846)));
# 9862 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned short PSMC2TMR __attribute__((address(0x847)));

__asm("PSMC2TMR equ 0847h");




extern volatile unsigned char PSMC2TMRL __attribute__((address(0x847)));

__asm("PSMC2TMRL equ 0847h");


typedef union {
    struct {
        unsigned PSMC2TMR0 :1;
        unsigned PSMC2TMR1 :1;
        unsigned PSMC2TMR2 :1;
        unsigned PSMC2TMR3 :1;
        unsigned PSMC2TMR4 :1;
        unsigned PSMC2TMR5 :1;
        unsigned PSMC2TMR6 :1;
        unsigned PSMC2TMR7 :1;
    };
} PSMC2TMRLbits_t;
extern volatile PSMC2TMRLbits_t PSMC2TMRLbits __attribute__((address(0x847)));
# 9931 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char PSMC2TMRH __attribute__((address(0x848)));

__asm("PSMC2TMRH equ 0848h");


typedef union {
    struct {
        unsigned PSMC2TMR8 :1;
        unsigned PSMC2TMR9 :1;
        unsigned PSMC2TMR10 :1;
        unsigned PSMC2TMR11 :1;
        unsigned PSMC2TMR12 :1;
        unsigned PSMC2TMR13 :1;
        unsigned PSMC2TMR14 :1;
        unsigned PSMC2TMR15 :1;
    };
} PSMC2TMRHbits_t;
extern volatile PSMC2TMRHbits_t PSMC2TMRHbits __attribute__((address(0x848)));
# 9993 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char PSMC2DBR __attribute__((address(0x849)));

__asm("PSMC2DBR equ 0849h");


typedef union {
    struct {
        unsigned PSMC2DBR0 :1;
        unsigned PSMC2DBR1 :1;
        unsigned PSMC2DBR2 :1;
        unsigned PSMC2DBR3 :1;
        unsigned PSMC2DBR4 :1;
        unsigned PSMC2DBR5 :1;
        unsigned PSMC2DBR6 :1;
        unsigned PSMC2DBR7 :1;
    };
} PSMC2DBRbits_t;
extern volatile PSMC2DBRbits_t PSMC2DBRbits __attribute__((address(0x849)));
# 10055 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char PSMC2DBF __attribute__((address(0x84A)));

__asm("PSMC2DBF equ 084Ah");


typedef union {
    struct {
        unsigned PSMC2DBF0 :1;
        unsigned PSMC2DBF1 :1;
        unsigned PSMC2DBF2 :1;
        unsigned PSMC2DBF3 :1;
        unsigned PSMC2DBF4 :1;
        unsigned PSMC2DBF5 :1;
        unsigned PSMC2DBF6 :1;
        unsigned PSMC2DBF7 :1;
    };
} PSMC2DBFbits_t;
extern volatile PSMC2DBFbits_t PSMC2DBFbits __attribute__((address(0x84A)));
# 10117 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char PSMC2BLKR __attribute__((address(0x84B)));

__asm("PSMC2BLKR equ 084Bh");


typedef union {
    struct {
        unsigned PSMC2BLKR0 :1;
        unsigned PSMC2BLKR1 :1;
        unsigned PSMC2BLKR2 :1;
        unsigned PSMC2BLKR3 :1;
        unsigned PSMC2BLKR4 :1;
        unsigned PSMC2BLKR5 :1;
        unsigned PSMC2BLKR6 :1;
        unsigned PSMC2BLKR7 :1;
    };
} PSMC2BLKRbits_t;
extern volatile PSMC2BLKRbits_t PSMC2BLKRbits __attribute__((address(0x84B)));
# 10179 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char PSMC2BLKF __attribute__((address(0x84C)));

__asm("PSMC2BLKF equ 084Ch");


typedef union {
    struct {
        unsigned PSMC2BLKF0 :1;
        unsigned PSMC2BLKF1 :1;
        unsigned PSMC2BLKF2 :1;
        unsigned PSMC2BLKF3 :1;
        unsigned PSMC2BLKF4 :1;
        unsigned PSMC2BLKF5 :1;
        unsigned PSMC2BLKF6 :1;
        unsigned PSMC2BLKF7 :1;
    };
} PSMC2BLKFbits_t;
extern volatile PSMC2BLKFbits_t PSMC2BLKFbits __attribute__((address(0x84C)));
# 10241 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char PSMC2FFA __attribute__((address(0x84D)));

__asm("PSMC2FFA equ 084Dh");


typedef union {
    struct {
        unsigned PSMC2FFA0 :1;
        unsigned PSMC2FFA1 :1;
        unsigned PSMC2FFA2 :1;
        unsigned PSMC2FFA3 :1;
    };
} PSMC2FFAbits_t;
extern volatile PSMC2FFAbits_t PSMC2FFAbits __attribute__((address(0x84D)));
# 10279 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char PSMC2STR0 __attribute__((address(0x84E)));

__asm("PSMC2STR0 equ 084Eh");


typedef union {
    struct {
        unsigned P2STRA :1;
        unsigned P2STRB :1;
    };
} PSMC2STR0bits_t;
extern volatile PSMC2STR0bits_t PSMC2STR0bits __attribute__((address(0x84E)));
# 10305 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char PSMC2STR1 __attribute__((address(0x84F)));

__asm("PSMC2STR1 equ 084Fh");


typedef union {
    struct {
        unsigned P2HSMEN :1;
        unsigned P2LSMEN :1;
        unsigned :5;
        unsigned P2SSYNC :1;
    };
} PSMC2STR1bits_t;
extern volatile PSMC2STR1bits_t PSMC2STR1bits __attribute__((address(0x84F)));
# 10338 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char STATUS_SHAD __attribute__((address(0xFE4)));

__asm("STATUS_SHAD equ 0FE4h");


typedef union {
    struct {
        unsigned C_SHAD :1;
        unsigned DC_SHAD :1;
        unsigned Z_SHAD :1;
    };
} STATUS_SHADbits_t;
extern volatile STATUS_SHADbits_t STATUS_SHADbits __attribute__((address(0xFE4)));
# 10370 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char WREG_SHAD __attribute__((address(0xFE5)));

__asm("WREG_SHAD equ 0FE5h");


typedef union {
    struct {
        unsigned WREG_SHAD :8;
    };
} WREG_SHADbits_t;
extern volatile WREG_SHADbits_t WREG_SHADbits __attribute__((address(0xFE5)));
# 10390 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char BSR_SHAD __attribute__((address(0xFE6)));

__asm("BSR_SHAD equ 0FE6h");


typedef union {
    struct {
        unsigned BSR_SHAD :5;
    };
} BSR_SHADbits_t;
extern volatile BSR_SHADbits_t BSR_SHADbits __attribute__((address(0xFE6)));
# 10410 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char PCLATH_SHAD __attribute__((address(0xFE7)));

__asm("PCLATH_SHAD equ 0FE7h");


typedef union {
    struct {
        unsigned PCLATH_SHAD :7;
    };
} PCLATH_SHADbits_t;
extern volatile PCLATH_SHADbits_t PCLATH_SHADbits __attribute__((address(0xFE7)));
# 10430 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char FSR0L_SHAD __attribute__((address(0xFE8)));

__asm("FSR0L_SHAD equ 0FE8h");


typedef union {
    struct {
        unsigned FSR0L_SHAD :8;
    };
} FSR0L_SHADbits_t;
extern volatile FSR0L_SHADbits_t FSR0L_SHADbits __attribute__((address(0xFE8)));
# 10450 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char FSR0H_SHAD __attribute__((address(0xFE9)));

__asm("FSR0H_SHAD equ 0FE9h");


typedef union {
    struct {
        unsigned FSR0H_SHAD :8;
    };
} FSR0H_SHADbits_t;
extern volatile FSR0H_SHADbits_t FSR0H_SHADbits __attribute__((address(0xFE9)));
# 10470 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char FSR1L_SHAD __attribute__((address(0xFEA)));

__asm("FSR1L_SHAD equ 0FEAh");


typedef union {
    struct {
        unsigned FSR1L_SHAD :8;
    };
} FSR1L_SHADbits_t;
extern volatile FSR1L_SHADbits_t FSR1L_SHADbits __attribute__((address(0xFEA)));
# 10490 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char FSR1H_SHAD __attribute__((address(0xFEB)));

__asm("FSR1H_SHAD equ 0FEBh");


typedef union {
    struct {
        unsigned FSR1H_SHAD :8;
    };
} FSR1H_SHADbits_t;
extern volatile FSR1H_SHADbits_t FSR1H_SHADbits __attribute__((address(0xFEB)));
# 10510 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char STKPTR __attribute__((address(0xFED)));

__asm("STKPTR equ 0FEDh");


typedef union {
    struct {
        unsigned STKPTR :5;
    };
} STKPTRbits_t;
extern volatile STKPTRbits_t STKPTRbits __attribute__((address(0xFED)));
# 10530 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char TOSL __attribute__((address(0xFEE)));

__asm("TOSL equ 0FEEh");


typedef union {
    struct {
        unsigned TOSL :8;
    };
} TOSLbits_t;
extern volatile TOSLbits_t TOSLbits __attribute__((address(0xFEE)));
# 10550 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile unsigned char TOSH __attribute__((address(0xFEF)));

__asm("TOSH equ 0FEFh");


typedef union {
    struct {
        unsigned TOSH :7;
    };
} TOSHbits_t;
extern volatile TOSHbits_t TOSHbits __attribute__((address(0xFEF)));
# 10580 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\proc\\pic16f1783.h" 3
extern volatile __bit ABDEN __attribute__((address(0xCF8)));


extern volatile __bit ABDOVF __attribute__((address(0xCFF)));


extern volatile __bit ACKDT __attribute__((address(0x10B5)));


extern volatile __bit ACKEN __attribute__((address(0x10B4)));


extern volatile __bit ACKSTAT __attribute__((address(0x10B6)));


extern volatile __bit ACKTIM __attribute__((address(0x10BF)));


extern volatile __bit ADCS0 __attribute__((address(0x4F4)));


extern volatile __bit ADCS1 __attribute__((address(0x4F5)));


extern volatile __bit ADCS2 __attribute__((address(0x4F6)));


extern volatile __bit ADDEN __attribute__((address(0xCEB)));


extern volatile __bit ADFM __attribute__((address(0x4F7)));


extern volatile __bit ADFVR0 __attribute__((address(0x8B8)));


extern volatile __bit ADFVR1 __attribute__((address(0x8B9)));


extern volatile __bit ADGO __attribute__((address(0x4E9)));


extern volatile __bit ADIE __attribute__((address(0x48E)));


extern volatile __bit ADIF __attribute__((address(0x8E)));


extern volatile __bit ADNREF __attribute__((address(0x4F2)));


extern volatile __bit ADON __attribute__((address(0x4E8)));


extern volatile __bit ADPREF0 __attribute__((address(0x4F0)));


extern volatile __bit ADPREF1 __attribute__((address(0x4F1)));


extern volatile __bit ADRMD __attribute__((address(0x4EF)));


extern volatile __bit AHEN __attribute__((address(0x10B9)));


extern volatile __bit ANSA0 __attribute__((address(0xC60)));


extern volatile __bit ANSA1 __attribute__((address(0xC61)));


extern volatile __bit ANSA2 __attribute__((address(0xC62)));


extern volatile __bit ANSA3 __attribute__((address(0xC63)));


extern volatile __bit ANSA4 __attribute__((address(0xC64)));


extern volatile __bit ANSA5 __attribute__((address(0xC65)));


extern volatile __bit ANSA7 __attribute__((address(0xC67)));


extern volatile __bit ANSB0 __attribute__((address(0xC68)));


extern volatile __bit ANSB1 __attribute__((address(0xC69)));


extern volatile __bit ANSB2 __attribute__((address(0xC6A)));


extern volatile __bit ANSB3 __attribute__((address(0xC6B)));


extern volatile __bit ANSB4 __attribute__((address(0xC6C)));


extern volatile __bit ANSB5 __attribute__((address(0xC6D)));


extern volatile __bit BCL1IE __attribute__((address(0x493)));


extern volatile __bit BCL1IF __attribute__((address(0x93)));


extern volatile __bit BF __attribute__((address(0x10A0)));


extern volatile __bit BOEN __attribute__((address(0x10BC)));


extern volatile __bit BORFS __attribute__((address(0x8B6)));


extern volatile __bit BORRDY __attribute__((address(0x8B0)));


extern volatile __bit BRG16 __attribute__((address(0xCFB)));


extern volatile __bit BRGH __attribute__((address(0xCF2)));


extern volatile __bit BSR0 __attribute__((address(0x40)));


extern volatile __bit BSR1 __attribute__((address(0x41)));


extern volatile __bit BSR2 __attribute__((address(0x42)));


extern volatile __bit BSR3 __attribute__((address(0x43)));


extern volatile __bit BSR4 __attribute__((address(0x44)));


extern volatile __bit C1HYS __attribute__((address(0x889)));


extern volatile __bit C1IE __attribute__((address(0x495)));


extern volatile __bit C1IF __attribute__((address(0x95)));


extern volatile __bit C1INTN __attribute__((address(0x896)));


extern volatile __bit C1INTP __attribute__((address(0x897)));


extern volatile __bit C1NCH0 __attribute__((address(0x890)));


extern volatile __bit C1NCH1 __attribute__((address(0x891)));


extern volatile __bit C1NCH2 __attribute__((address(0x892)));


extern volatile __bit C1OE __attribute__((address(0x88D)));


extern volatile __bit C1ON __attribute__((address(0x88F)));


extern volatile __bit C1OUT __attribute__((address(0x88E)));


extern volatile __bit C1PCH0 __attribute__((address(0x893)));


extern volatile __bit C1PCH1 __attribute__((address(0x894)));


extern volatile __bit C1PCH2 __attribute__((address(0x895)));


extern volatile __bit C1POL __attribute__((address(0x88C)));


extern volatile __bit C1SP __attribute__((address(0x88A)));


extern volatile __bit C1SYNC __attribute__((address(0x888)));


extern volatile __bit C1ZLF __attribute__((address(0x88B)));


extern volatile __bit C2HYS __attribute__((address(0x899)));


extern volatile __bit C2IE __attribute__((address(0x496)));


extern volatile __bit C2IF __attribute__((address(0x96)));


extern volatile __bit C2INTN __attribute__((address(0x8A6)));


extern volatile __bit C2INTP __attribute__((address(0x8A7)));


extern volatile __bit C2NCH0 __attribute__((address(0x8A0)));


extern volatile __bit C2NCH1 __attribute__((address(0x8A1)));


extern volatile __bit C2NCH2 __attribute__((address(0x8A2)));


extern volatile __bit C2OE __attribute__((address(0x89D)));


extern volatile __bit C2ON __attribute__((address(0x89F)));


extern volatile __bit C2OUT __attribute__((address(0x89E)));


extern volatile __bit C2OUTSEL __attribute__((address(0x8EF)));


extern volatile __bit C2PCH0 __attribute__((address(0x8A3)));


extern volatile __bit C2PCH1 __attribute__((address(0x8A4)));


extern volatile __bit C2PCH2 __attribute__((address(0x8A5)));


extern volatile __bit C2POL __attribute__((address(0x89C)));


extern volatile __bit C2SP __attribute__((address(0x89A)));


extern volatile __bit C2SYNC __attribute__((address(0x898)));


extern volatile __bit C2ZLF __attribute__((address(0x89B)));


extern volatile __bit C3HYS __attribute__((address(0x8F1)));


extern volatile __bit C3IE __attribute__((address(0x491)));


extern volatile __bit C3IF __attribute__((address(0x91)));


extern volatile __bit C3INTN __attribute__((address(0x8FE)));


extern volatile __bit C3INTP __attribute__((address(0x8FF)));


extern volatile __bit C3NCH0 __attribute__((address(0x8F8)));


extern volatile __bit C3NCH1 __attribute__((address(0x8F9)));


extern volatile __bit C3NCH2 __attribute__((address(0x8FA)));


extern volatile __bit C3OE __attribute__((address(0x8F5)));


extern volatile __bit C3ON __attribute__((address(0x8F7)));


extern volatile __bit C3OUT __attribute__((address(0x8F6)));


extern volatile __bit C3PCH0 __attribute__((address(0x8FB)));


extern volatile __bit C3PCH1 __attribute__((address(0x8FC)));


extern volatile __bit C3PCH2 __attribute__((address(0x8FD)));


extern volatile __bit C3POL __attribute__((address(0x8F4)));


extern volatile __bit C3SP __attribute__((address(0x8F2)));


extern volatile __bit C3SYNC __attribute__((address(0x8F0)));


extern volatile __bit C3ZLF __attribute__((address(0x8F3)));


extern volatile __bit CARRY __attribute__((address(0x18)));


extern volatile __bit CCP1IE __attribute__((address(0x48A)));


extern volatile __bit CCP1IF __attribute__((address(0x8A)));


extern volatile __bit CCP1M0 __attribute__((address(0x1498)));


extern volatile __bit CCP1M1 __attribute__((address(0x1499)));


extern volatile __bit CCP1M2 __attribute__((address(0x149A)));


extern volatile __bit CCP1M3 __attribute__((address(0x149B)));


extern volatile __bit CCP1SEL __attribute__((address(0x8EE)));


extern volatile __bit CCP2IE __attribute__((address(0x490)));


extern volatile __bit CCP2IF __attribute__((address(0x90)));


extern volatile __bit CCP2M0 __attribute__((address(0x14D0)));


extern volatile __bit CCP2M1 __attribute__((address(0x14D1)));


extern volatile __bit CCP2M2 __attribute__((address(0x14D2)));


extern volatile __bit CCP2M3 __attribute__((address(0x14D3)));


extern volatile __bit CCP2SEL __attribute__((address(0x8E8)));


extern volatile __bit CDAFVR0 __attribute__((address(0x8BA)));


extern volatile __bit CDAFVR1 __attribute__((address(0x8BB)));


extern volatile __bit CFGS __attribute__((address(0xCAE)));


extern volatile __bit CHS0 __attribute__((address(0x4EA)));


extern volatile __bit CHS1 __attribute__((address(0x4EB)));


extern volatile __bit CHS2 __attribute__((address(0x4EC)));


extern volatile __bit CHS3 __attribute__((address(0x4ED)));


extern volatile __bit CHS4 __attribute__((address(0x4EE)));


extern volatile __bit CHSN0 __attribute__((address(0x4F8)));


extern volatile __bit CHSN1 __attribute__((address(0x4F9)));


extern volatile __bit CHSN2 __attribute__((address(0x4FA)));


extern volatile __bit CHSN3 __attribute__((address(0x4FB)));


extern volatile __bit CKE __attribute__((address(0x10A6)));


extern volatile __bit CKP __attribute__((address(0x10AC)));


extern volatile __bit CLKRDC0 __attribute__((address(0x28D3)));


extern volatile __bit CLKRDC1 __attribute__((address(0x28D4)));


extern volatile __bit CLKRDIV0 __attribute__((address(0x28D0)));


extern volatile __bit CLKRDIV1 __attribute__((address(0x28D1)));


extern volatile __bit CLKRDIV2 __attribute__((address(0x28D2)));


extern volatile __bit CLKREN __attribute__((address(0x28D7)));


extern volatile __bit CLKROE __attribute__((address(0x28D6)));


extern volatile __bit CLKRSLR __attribute__((address(0x28D5)));


extern volatile __bit CREN __attribute__((address(0xCEC)));


extern volatile __bit CSRC __attribute__((address(0xCF7)));


extern volatile __bit C_SHAD __attribute__((address(0x7F20)));


extern volatile __bit DACEN __attribute__((address(0x8C7)));


extern volatile __bit DACNSS __attribute__((address(0x8C0)));


extern volatile __bit DACOE1 __attribute__((address(0x8C5)));


extern volatile __bit DACOE2 __attribute__((address(0x8C4)));


extern volatile __bit DACPSS0 __attribute__((address(0x8C2)));


extern volatile __bit DACPSS1 __attribute__((address(0x8C3)));


extern volatile __bit DACR0 __attribute__((address(0x8C8)));


extern volatile __bit DACR1 __attribute__((address(0x8C9)));


extern volatile __bit DACR2 __attribute__((address(0x8CA)));


extern volatile __bit DACR3 __attribute__((address(0x8CB)));


extern volatile __bit DACR4 __attribute__((address(0x8CC)));


extern volatile __bit DACR5 __attribute__((address(0x8CD)));


extern volatile __bit DACR6 __attribute__((address(0x8CE)));


extern volatile __bit DACR7 __attribute__((address(0x8CF)));


extern volatile __bit DC __attribute__((address(0x19)));


extern volatile __bit DC1B0 __attribute__((address(0x149C)));


extern volatile __bit DC1B1 __attribute__((address(0x149D)));


extern volatile __bit DC2B0 __attribute__((address(0x14D4)));


extern volatile __bit DC2B1 __attribute__((address(0x14D5)));


extern volatile __bit DC_SHAD __attribute__((address(0x7F21)));


extern volatile __bit DHEN __attribute__((address(0x10B8)));


extern volatile __bit DONE __attribute__((address(0x4E9)));


extern volatile __bit D_nA __attribute__((address(0x10A5)));


extern volatile __bit EEIE __attribute__((address(0x494)));


extern volatile __bit EEIF __attribute__((address(0x94)));


extern volatile __bit EEPGD __attribute__((address(0xCAF)));


extern volatile __bit FERR __attribute__((address(0xCEA)));


extern volatile __bit FREE __attribute__((address(0xCAC)));


extern volatile __bit FVREN __attribute__((address(0x8BF)));


extern volatile __bit FVRRDY __attribute__((address(0x8BE)));


extern volatile __bit GCEN __attribute__((address(0x10B7)));


extern volatile __bit GIE __attribute__((address(0x5F)));


extern volatile __bit GO __attribute__((address(0x4E9)));


extern volatile __bit GO_nDONE __attribute__((address(0x4E9)));


extern volatile __bit HFIOFL __attribute__((address(0x4D3)));


extern volatile __bit HFIOFR __attribute__((address(0x4D4)));


extern volatile __bit HFIOFS __attribute__((address(0x4D0)));


extern volatile __bit INLVLA0 __attribute__((address(0x1C60)));


extern volatile __bit INLVLA1 __attribute__((address(0x1C61)));


extern volatile __bit INLVLA2 __attribute__((address(0x1C62)));


extern volatile __bit INLVLA3 __attribute__((address(0x1C63)));


extern volatile __bit INLVLA4 __attribute__((address(0x1C64)));


extern volatile __bit INLVLA5 __attribute__((address(0x1C65)));


extern volatile __bit INLVLA6 __attribute__((address(0x1C66)));


extern volatile __bit INLVLA7 __attribute__((address(0x1C67)));


extern volatile __bit INLVLB0 __attribute__((address(0x1C68)));


extern volatile __bit INLVLB1 __attribute__((address(0x1C69)));


extern volatile __bit INLVLB2 __attribute__((address(0x1C6A)));


extern volatile __bit INLVLB3 __attribute__((address(0x1C6B)));


extern volatile __bit INLVLB4 __attribute__((address(0x1C6C)));


extern volatile __bit INLVLB5 __attribute__((address(0x1C6D)));


extern volatile __bit INLVLB6 __attribute__((address(0x1C6E)));


extern volatile __bit INLVLB7 __attribute__((address(0x1C6F)));


extern volatile __bit INLVLC0 __attribute__((address(0x1C70)));


extern volatile __bit INLVLC1 __attribute__((address(0x1C71)));


extern volatile __bit INLVLC2 __attribute__((address(0x1C72)));


extern volatile __bit INLVLC3 __attribute__((address(0x1C73)));


extern volatile __bit INLVLC4 __attribute__((address(0x1C74)));


extern volatile __bit INLVLC5 __attribute__((address(0x1C75)));


extern volatile __bit INLVLC6 __attribute__((address(0x1C76)));


extern volatile __bit INLVLC7 __attribute__((address(0x1C77)));


extern volatile __bit INLVLE3 __attribute__((address(0x1C83)));


extern volatile __bit INTE __attribute__((address(0x5C)));


extern volatile __bit INTEDG __attribute__((address(0x4AE)));


extern volatile __bit INTF __attribute__((address(0x59)));


extern volatile __bit IOCAF0 __attribute__((address(0x1C98)));


extern volatile __bit IOCAF1 __attribute__((address(0x1C99)));


extern volatile __bit IOCAF2 __attribute__((address(0x1C9A)));


extern volatile __bit IOCAF3 __attribute__((address(0x1C9B)));


extern volatile __bit IOCAF4 __attribute__((address(0x1C9C)));


extern volatile __bit IOCAF5 __attribute__((address(0x1C9D)));


extern volatile __bit IOCAF6 __attribute__((address(0x1C9E)));


extern volatile __bit IOCAF7 __attribute__((address(0x1C9F)));


extern volatile __bit IOCAN0 __attribute__((address(0x1C90)));


extern volatile __bit IOCAN1 __attribute__((address(0x1C91)));


extern volatile __bit IOCAN2 __attribute__((address(0x1C92)));


extern volatile __bit IOCAN3 __attribute__((address(0x1C93)));


extern volatile __bit IOCAN4 __attribute__((address(0x1C94)));


extern volatile __bit IOCAN5 __attribute__((address(0x1C95)));


extern volatile __bit IOCAN6 __attribute__((address(0x1C96)));


extern volatile __bit IOCAN7 __attribute__((address(0x1C97)));


extern volatile __bit IOCAP0 __attribute__((address(0x1C88)));


extern volatile __bit IOCAP1 __attribute__((address(0x1C89)));


extern volatile __bit IOCAP2 __attribute__((address(0x1C8A)));


extern volatile __bit IOCAP3 __attribute__((address(0x1C8B)));


extern volatile __bit IOCAP4 __attribute__((address(0x1C8C)));


extern volatile __bit IOCAP5 __attribute__((address(0x1C8D)));


extern volatile __bit IOCAP6 __attribute__((address(0x1C8E)));


extern volatile __bit IOCAP7 __attribute__((address(0x1C8F)));


extern volatile __bit IOCBF0 __attribute__((address(0x1CB0)));


extern volatile __bit IOCBF1 __attribute__((address(0x1CB1)));


extern volatile __bit IOCBF2 __attribute__((address(0x1CB2)));


extern volatile __bit IOCBF3 __attribute__((address(0x1CB3)));


extern volatile __bit IOCBF4 __attribute__((address(0x1CB4)));


extern volatile __bit IOCBF5 __attribute__((address(0x1CB5)));


extern volatile __bit IOCBF6 __attribute__((address(0x1CB6)));


extern volatile __bit IOCBF7 __attribute__((address(0x1CB7)));


extern volatile __bit IOCBN0 __attribute__((address(0x1CA8)));


extern volatile __bit IOCBN1 __attribute__((address(0x1CA9)));


extern volatile __bit IOCBN2 __attribute__((address(0x1CAA)));


extern volatile __bit IOCBN3 __attribute__((address(0x1CAB)));


extern volatile __bit IOCBN4 __attribute__((address(0x1CAC)));


extern volatile __bit IOCBN5 __attribute__((address(0x1CAD)));


extern volatile __bit IOCBN6 __attribute__((address(0x1CAE)));


extern volatile __bit IOCBN7 __attribute__((address(0x1CAF)));


extern volatile __bit IOCBP0 __attribute__((address(0x1CA0)));


extern volatile __bit IOCBP1 __attribute__((address(0x1CA1)));


extern volatile __bit IOCBP2 __attribute__((address(0x1CA2)));


extern volatile __bit IOCBP3 __attribute__((address(0x1CA3)));


extern volatile __bit IOCBP4 __attribute__((address(0x1CA4)));


extern volatile __bit IOCBP5 __attribute__((address(0x1CA5)));


extern volatile __bit IOCBP6 __attribute__((address(0x1CA6)));


extern volatile __bit IOCBP7 __attribute__((address(0x1CA7)));


extern volatile __bit IOCCF0 __attribute__((address(0x1CC8)));


extern volatile __bit IOCCF1 __attribute__((address(0x1CC9)));


extern volatile __bit IOCCF2 __attribute__((address(0x1CCA)));


extern volatile __bit IOCCF3 __attribute__((address(0x1CCB)));


extern volatile __bit IOCCF4 __attribute__((address(0x1CCC)));


extern volatile __bit IOCCF5 __attribute__((address(0x1CCD)));


extern volatile __bit IOCCF6 __attribute__((address(0x1CCE)));


extern volatile __bit IOCCF7 __attribute__((address(0x1CCF)));


extern volatile __bit IOCCN0 __attribute__((address(0x1CC0)));


extern volatile __bit IOCCN1 __attribute__((address(0x1CC1)));


extern volatile __bit IOCCN2 __attribute__((address(0x1CC2)));


extern volatile __bit IOCCN3 __attribute__((address(0x1CC3)));


extern volatile __bit IOCCN4 __attribute__((address(0x1CC4)));


extern volatile __bit IOCCN5 __attribute__((address(0x1CC5)));


extern volatile __bit IOCCN6 __attribute__((address(0x1CC6)));


extern volatile __bit IOCCN7 __attribute__((address(0x1CC7)));


extern volatile __bit IOCCP0 __attribute__((address(0x1CB8)));


extern volatile __bit IOCCP1 __attribute__((address(0x1CB9)));


extern volatile __bit IOCCP2 __attribute__((address(0x1CBA)));


extern volatile __bit IOCCP3 __attribute__((address(0x1CBB)));


extern volatile __bit IOCCP4 __attribute__((address(0x1CBC)));


extern volatile __bit IOCCP5 __attribute__((address(0x1CBD)));


extern volatile __bit IOCCP6 __attribute__((address(0x1CBE)));


extern volatile __bit IOCCP7 __attribute__((address(0x1CBF)));


extern volatile __bit IOCEF3 __attribute__((address(0x1CFB)));


extern volatile __bit IOCEN3 __attribute__((address(0x1CF3)));


extern volatile __bit IOCEP3 __attribute__((address(0x1CEB)));


extern volatile __bit IOCIE __attribute__((address(0x5B)));


extern volatile __bit IOCIF __attribute__((address(0x58)));


extern volatile __bit IRCF0 __attribute__((address(0x4CB)));


extern volatile __bit IRCF1 __attribute__((address(0x4CC)));


extern volatile __bit IRCF2 __attribute__((address(0x4CD)));


extern volatile __bit IRCF3 __attribute__((address(0x4CE)));


extern volatile __bit LATA0 __attribute__((address(0x860)));


extern volatile __bit LATA1 __attribute__((address(0x861)));


extern volatile __bit LATA2 __attribute__((address(0x862)));


extern volatile __bit LATA3 __attribute__((address(0x863)));


extern volatile __bit LATA4 __attribute__((address(0x864)));


extern volatile __bit LATA5 __attribute__((address(0x865)));


extern volatile __bit LATA6 __attribute__((address(0x866)));


extern volatile __bit LATA7 __attribute__((address(0x867)));


extern volatile __bit LATB0 __attribute__((address(0x868)));


extern volatile __bit LATB1 __attribute__((address(0x869)));


extern volatile __bit LATB2 __attribute__((address(0x86A)));


extern volatile __bit LATB3 __attribute__((address(0x86B)));


extern volatile __bit LATB4 __attribute__((address(0x86C)));


extern volatile __bit LATB5 __attribute__((address(0x86D)));


extern volatile __bit LATB6 __attribute__((address(0x86E)));


extern volatile __bit LATB7 __attribute__((address(0x86F)));


extern volatile __bit LATC0 __attribute__((address(0x870)));


extern volatile __bit LATC1 __attribute__((address(0x871)));


extern volatile __bit LATC2 __attribute__((address(0x872)));


extern volatile __bit LATC3 __attribute__((address(0x873)));


extern volatile __bit LATC4 __attribute__((address(0x874)));


extern volatile __bit LATC5 __attribute__((address(0x875)));


extern volatile __bit LATC6 __attribute__((address(0x876)));


extern volatile __bit LATC7 __attribute__((address(0x877)));


extern volatile __bit LFIOFR __attribute__((address(0x4D1)));


extern volatile __bit LWLO __attribute__((address(0xCAD)));


extern volatile __bit MC1OUT __attribute__((address(0x8A8)));


extern volatile __bit MC2OUT __attribute__((address(0x8A9)));


extern volatile __bit MC3OUT __attribute__((address(0x8AA)));


extern volatile __bit MFIOFR __attribute__((address(0x4D2)));


extern volatile __bit ODCONA0 __attribute__((address(0x1460)));


extern volatile __bit ODCONA1 __attribute__((address(0x1461)));


extern volatile __bit ODCONA2 __attribute__((address(0x1462)));


extern volatile __bit ODCONA3 __attribute__((address(0x1463)));


extern volatile __bit ODCONA4 __attribute__((address(0x1464)));


extern volatile __bit ODCONA5 __attribute__((address(0x1465)));


extern volatile __bit ODCONA6 __attribute__((address(0x1466)));


extern volatile __bit ODCONA7 __attribute__((address(0x1467)));


extern volatile __bit ODCONB0 __attribute__((address(0x1468)));


extern volatile __bit ODCONB1 __attribute__((address(0x1469)));


extern volatile __bit ODCONB2 __attribute__((address(0x146A)));


extern volatile __bit ODCONB3 __attribute__((address(0x146B)));


extern volatile __bit ODCONB4 __attribute__((address(0x146C)));


extern volatile __bit ODCONB5 __attribute__((address(0x146D)));


extern volatile __bit ODCONB6 __attribute__((address(0x146E)));


extern volatile __bit ODCONB7 __attribute__((address(0x146F)));


extern volatile __bit ODCONC0 __attribute__((address(0x1470)));


extern volatile __bit ODCONC1 __attribute__((address(0x1471)));


extern volatile __bit ODCONC2 __attribute__((address(0x1472)));


extern volatile __bit ODCONC3 __attribute__((address(0x1473)));


extern volatile __bit ODCONC4 __attribute__((address(0x1474)));


extern volatile __bit ODCONC5 __attribute__((address(0x1475)));


extern volatile __bit ODCONC6 __attribute__((address(0x1476)));


extern volatile __bit ODCONC7 __attribute__((address(0x1477)));


extern volatile __bit OERR __attribute__((address(0xCE9)));


extern volatile __bit OPA1CH0 __attribute__((address(0x2888)));


extern volatile __bit OPA1CH1 __attribute__((address(0x2889)));


extern volatile __bit OPA1EN __attribute__((address(0x288F)));


extern volatile __bit OPA1SP __attribute__((address(0x288E)));


extern volatile __bit OPA2CH0 __attribute__((address(0x2898)));


extern volatile __bit OPA2CH1 __attribute__((address(0x2899)));


extern volatile __bit OPA2EN __attribute__((address(0x289F)));


extern volatile __bit OPA2SP __attribute__((address(0x289E)));


extern volatile __bit OSFIE __attribute__((address(0x497)));


extern volatile __bit OSFIF __attribute__((address(0x97)));


extern volatile __bit OSTS __attribute__((address(0x4D5)));


extern volatile __bit P1ARSEN __attribute__((address(0x40ED)));


extern volatile __bit P1ASDEN __attribute__((address(0x40EE)));


extern volatile __bit P1ASDLA __attribute__((address(0x40F0)));


extern volatile __bit P1ASDLB __attribute__((address(0x40F1)));


extern volatile __bit P1ASDLC __attribute__((address(0x40F2)));


extern volatile __bit P1ASDLD __attribute__((address(0x40F3)));


extern volatile __bit P1ASDLE __attribute__((address(0x40F4)));


extern volatile __bit P1ASDLF __attribute__((address(0x40F5)));


extern volatile __bit P1ASDOV __attribute__((address(0x40E8)));


extern volatile __bit P1ASDSC1 __attribute__((address(0x40F9)));


extern volatile __bit P1ASDSC2 __attribute__((address(0x40FA)));


extern volatile __bit P1ASDSC3 __attribute__((address(0x40FB)));


extern volatile __bit P1ASDSIN __attribute__((address(0x40FF)));


extern volatile __bit P1ASE __attribute__((address(0x40EF)));


extern volatile __bit P1CPRE0 __attribute__((address(0x40A4)));


extern volatile __bit P1CPRE1 __attribute__((address(0x40A5)));


extern volatile __bit P1CSRC0 __attribute__((address(0x40A0)));


extern volatile __bit P1CSRC1 __attribute__((address(0x40A1)));


extern volatile __bit P1DBFE __attribute__((address(0x408D)));


extern volatile __bit P1DBRE __attribute__((address(0x408C)));


extern volatile __bit P1DCSC1 __attribute__((address(0x40D9)));


extern volatile __bit P1DCSC2 __attribute__((address(0x40DA)));


extern volatile __bit P1DCSC3 __attribute__((address(0x40DB)));


extern volatile __bit P1DCSIN __attribute__((address(0x40DF)));


extern volatile __bit P1DCST __attribute__((address(0x40D8)));


extern volatile __bit P1FEBM0 __attribute__((address(0x40BC)));


extern volatile __bit P1FEBM1 __attribute__((address(0x40BD)));


extern volatile __bit P1FEBSC1 __attribute__((address(0x40C9)));


extern volatile __bit P1FEBSC2 __attribute__((address(0x40CA)));


extern volatile __bit P1FEBSC3 __attribute__((address(0x40CB)));


extern volatile __bit P1FEBSIN __attribute__((address(0x40CF)));


extern volatile __bit P1HSMEN __attribute__((address(0x4178)));


extern volatile __bit P1INPOL __attribute__((address(0x40B6)));


extern volatile __bit P1LSMEN __attribute__((address(0x4179)));


extern volatile __bit P1M0 __attribute__((address(0x149E)));


extern volatile __bit P1M1 __attribute__((address(0x149F)));


extern volatile __bit P1MDLBIT __attribute__((address(0x4095)));


extern volatile __bit P1MDLEN __attribute__((address(0x4097)));


extern volatile __bit P1MDLPOL __attribute__((address(0x4096)));


extern volatile __bit P1MODE0 __attribute__((address(0x4088)));


extern volatile __bit P1MODE1 __attribute__((address(0x4089)));


extern volatile __bit P1MODE2 __attribute__((address(0x408A)));


extern volatile __bit P1MODE3 __attribute__((address(0x408B)));


extern volatile __bit P1MSRC0 __attribute__((address(0x4090)));


extern volatile __bit P1MSRC1 __attribute__((address(0x4091)));


extern volatile __bit P1MSRC2 __attribute__((address(0x4092)));


extern volatile __bit P1MSRC3 __attribute__((address(0x4093)));


extern volatile __bit P1OEA __attribute__((address(0x40A8)));


extern volatile __bit P1OEB __attribute__((address(0x40A9)));


extern volatile __bit P1OEC __attribute__((address(0x40AA)));


extern volatile __bit P1OED __attribute__((address(0x40AB)));


extern volatile __bit P1OEE __attribute__((address(0x40AC)));


extern volatile __bit P1OEF __attribute__((address(0x40AD)));


extern volatile __bit P1PHSC1 __attribute__((address(0x40D1)));


extern volatile __bit P1PHSC2 __attribute__((address(0x40D2)));


extern volatile __bit P1PHSC3 __attribute__((address(0x40D3)));


extern volatile __bit P1PHSIN __attribute__((address(0x40D7)));


extern volatile __bit P1PHST __attribute__((address(0x40D0)));


extern volatile __bit P1POLA __attribute__((address(0x40B0)));


extern volatile __bit P1POLB __attribute__((address(0x40B1)));


extern volatile __bit P1POLC __attribute__((address(0x40B2)));


extern volatile __bit P1POLD __attribute__((address(0x40B3)));


extern volatile __bit P1POLE __attribute__((address(0x40B4)));


extern volatile __bit P1POLF __attribute__((address(0x40B5)));


extern volatile __bit P1PRSC1 __attribute__((address(0x40E1)));


extern volatile __bit P1PRSC2 __attribute__((address(0x40E2)));


extern volatile __bit P1PRSC3 __attribute__((address(0x40E3)));


extern volatile __bit P1PRSIN __attribute__((address(0x40E7)));


extern volatile __bit P1PRST __attribute__((address(0x40E0)));


extern volatile __bit P1REBM0 __attribute__((address(0x40B8)));


extern volatile __bit P1REBM1 __attribute__((address(0x40B9)));


extern volatile __bit P1REBSC1 __attribute__((address(0x40C1)));


extern volatile __bit P1REBSC2 __attribute__((address(0x40C2)));


extern volatile __bit P1REBSC3 __attribute__((address(0x40C3)));


extern volatile __bit P1REBSIN __attribute__((address(0x40C7)));


extern volatile __bit P1SSYNC __attribute__((address(0x417F)));


extern volatile __bit P1STRA __attribute__((address(0x4170)));


extern volatile __bit P1STRB __attribute__((address(0x4171)));


extern volatile __bit P1STRC __attribute__((address(0x4172)));


extern volatile __bit P1STRD __attribute__((address(0x4173)));


extern volatile __bit P1STRE __attribute__((address(0x4174)));


extern volatile __bit P1STRF __attribute__((address(0x4175)));


extern volatile __bit P1SYNC0 __attribute__((address(0x4098)));


extern volatile __bit P1SYNC1 __attribute__((address(0x4099)));


extern volatile __bit P1TDCIE __attribute__((address(0x4105)));


extern volatile __bit P1TDCIF __attribute__((address(0x4101)));


extern volatile __bit P1TOVIE __attribute__((address(0x4107)));


extern volatile __bit P1TOVIF __attribute__((address(0x4103)));


extern volatile __bit P1TPHIE __attribute__((address(0x4106)));


extern volatile __bit P1TPHIF __attribute__((address(0x4102)));


extern volatile __bit P1TPRIE __attribute__((address(0x4104)));


extern volatile __bit P1TPRIF __attribute__((address(0x4100)));


extern volatile __bit P2ARSEN __attribute__((address(0x41ED)));


extern volatile __bit P2ASDEN __attribute__((address(0x41EE)));


extern volatile __bit P2ASDLA __attribute__((address(0x41F0)));


extern volatile __bit P2ASDLB __attribute__((address(0x41F1)));


extern volatile __bit P2ASDOV __attribute__((address(0x41E8)));


extern volatile __bit P2ASDSC1 __attribute__((address(0x41F9)));


extern volatile __bit P2ASDSC2 __attribute__((address(0x41FA)));


extern volatile __bit P2ASDSC3 __attribute__((address(0x41FB)));


extern volatile __bit P2ASDSIN __attribute__((address(0x41FF)));


extern volatile __bit P2ASE __attribute__((address(0x41EF)));


extern volatile __bit P2CPRE0 __attribute__((address(0x41A4)));


extern volatile __bit P2CPRE1 __attribute__((address(0x41A5)));


extern volatile __bit P2CSRC0 __attribute__((address(0x41A0)));


extern volatile __bit P2CSRC1 __attribute__((address(0x41A1)));


extern volatile __bit P2DBFE __attribute__((address(0x418D)));


extern volatile __bit P2DBRE __attribute__((address(0x418C)));


extern volatile __bit P2DCSC1 __attribute__((address(0x41D9)));


extern volatile __bit P2DCSC2 __attribute__((address(0x41DA)));


extern volatile __bit P2DCSC3 __attribute__((address(0x41DB)));


extern volatile __bit P2DCSIN __attribute__((address(0x41DF)));


extern volatile __bit P2DCST __attribute__((address(0x41D8)));


extern volatile __bit P2FEBM0 __attribute__((address(0x41BC)));


extern volatile __bit P2FEBM1 __attribute__((address(0x41BD)));


extern volatile __bit P2FEBSC1 __attribute__((address(0x41C9)));


extern volatile __bit P2FEBSC2 __attribute__((address(0x41CA)));


extern volatile __bit P2FEBSC3 __attribute__((address(0x41CB)));


extern volatile __bit P2FEBSIN __attribute__((address(0x41CF)));


extern volatile __bit P2HSMEN __attribute__((address(0x4278)));


extern volatile __bit P2INPOL __attribute__((address(0x41B6)));


extern volatile __bit P2LSMEN __attribute__((address(0x4279)));


extern volatile __bit P2M0 __attribute__((address(0x14D6)));


extern volatile __bit P2M1 __attribute__((address(0x14D7)));


extern volatile __bit P2MDLBIT __attribute__((address(0x4195)));


extern volatile __bit P2MDLEN __attribute__((address(0x4197)));


extern volatile __bit P2MDLPOL __attribute__((address(0x4196)));


extern volatile __bit P2MODE0 __attribute__((address(0x4188)));


extern volatile __bit P2MODE1 __attribute__((address(0x4189)));


extern volatile __bit P2MODE2 __attribute__((address(0x418A)));


extern volatile __bit P2MODE3 __attribute__((address(0x418B)));


extern volatile __bit P2MSRC0 __attribute__((address(0x4190)));


extern volatile __bit P2MSRC1 __attribute__((address(0x4191)));


extern volatile __bit P2MSRC2 __attribute__((address(0x4192)));


extern volatile __bit P2MSRC3 __attribute__((address(0x4193)));


extern volatile __bit P2OEA __attribute__((address(0x41A8)));


extern volatile __bit P2OEB __attribute__((address(0x41A9)));


extern volatile __bit P2PHSC1 __attribute__((address(0x41D1)));


extern volatile __bit P2PHSC2 __attribute__((address(0x41D2)));


extern volatile __bit P2PHSC3 __attribute__((address(0x41D3)));


extern volatile __bit P2PHSIN __attribute__((address(0x41D7)));


extern volatile __bit P2PHST __attribute__((address(0x41D0)));


extern volatile __bit P2POLA __attribute__((address(0x41B0)));


extern volatile __bit P2POLB __attribute__((address(0x41B1)));


extern volatile __bit P2PRSC1 __attribute__((address(0x41E1)));


extern volatile __bit P2PRSC2 __attribute__((address(0x41E2)));


extern volatile __bit P2PRSC3 __attribute__((address(0x41E3)));


extern volatile __bit P2PRSIN __attribute__((address(0x41E7)));


extern volatile __bit P2PRST __attribute__((address(0x41E0)));


extern volatile __bit P2REBM0 __attribute__((address(0x41B8)));


extern volatile __bit P2REBM1 __attribute__((address(0x41B9)));


extern volatile __bit P2REBSC1 __attribute__((address(0x41C1)));


extern volatile __bit P2REBSC2 __attribute__((address(0x41C2)));


extern volatile __bit P2REBSC3 __attribute__((address(0x41C3)));


extern volatile __bit P2REBSIN __attribute__((address(0x41C7)));


extern volatile __bit P2SSYNC __attribute__((address(0x427F)));


extern volatile __bit P2STRA __attribute__((address(0x4270)));


extern volatile __bit P2STRB __attribute__((address(0x4271)));


extern volatile __bit P2SYNC0 __attribute__((address(0x4198)));


extern volatile __bit P2SYNC1 __attribute__((address(0x4199)));


extern volatile __bit P2TDCIE __attribute__((address(0x4205)));


extern volatile __bit P2TDCIF __attribute__((address(0x4201)));


extern volatile __bit P2TOVIE __attribute__((address(0x4207)));


extern volatile __bit P2TOVIF __attribute__((address(0x4203)));


extern volatile __bit P2TPHIE __attribute__((address(0x4206)));


extern volatile __bit P2TPHIF __attribute__((address(0x4202)));


extern volatile __bit P2TPRIE __attribute__((address(0x4204)));


extern volatile __bit P2TPRIF __attribute__((address(0x4200)));


extern volatile __bit PCIE __attribute__((address(0x10BE)));


extern volatile __bit PEIE __attribute__((address(0x5E)));


extern volatile __bit PEN __attribute__((address(0x10B2)));


extern volatile __bit PLLR __attribute__((address(0x4D6)));


extern volatile __bit PS0 __attribute__((address(0x4A8)));


extern volatile __bit PS1 __attribute__((address(0x4A9)));


extern volatile __bit PS2 __attribute__((address(0x4AA)));


extern volatile __bit PSA __attribute__((address(0x4AB)));


extern volatile __bit PSMC1BLKF0 __attribute__((address(0x4160)));


extern volatile __bit PSMC1BLKF1 __attribute__((address(0x4161)));


extern volatile __bit PSMC1BLKF2 __attribute__((address(0x4162)));


extern volatile __bit PSMC1BLKF3 __attribute__((address(0x4163)));


extern volatile __bit PSMC1BLKF4 __attribute__((address(0x4164)));


extern volatile __bit PSMC1BLKF5 __attribute__((address(0x4165)));


extern volatile __bit PSMC1BLKF6 __attribute__((address(0x4166)));


extern volatile __bit PSMC1BLKF7 __attribute__((address(0x4167)));


extern volatile __bit PSMC1BLKR0 __attribute__((address(0x4158)));


extern volatile __bit PSMC1BLKR1 __attribute__((address(0x4159)));


extern volatile __bit PSMC1BLKR2 __attribute__((address(0x415A)));


extern volatile __bit PSMC1BLKR3 __attribute__((address(0x415B)));


extern volatile __bit PSMC1BLKR4 __attribute__((address(0x415C)));


extern volatile __bit PSMC1BLKR5 __attribute__((address(0x415D)));


extern volatile __bit PSMC1BLKR6 __attribute__((address(0x415E)));


extern volatile __bit PSMC1BLKR7 __attribute__((address(0x415F)));


extern volatile __bit PSMC1DBF0 __attribute__((address(0x4150)));


extern volatile __bit PSMC1DBF1 __attribute__((address(0x4151)));


extern volatile __bit PSMC1DBF2 __attribute__((address(0x4152)));


extern volatile __bit PSMC1DBF3 __attribute__((address(0x4153)));


extern volatile __bit PSMC1DBF4 __attribute__((address(0x4154)));


extern volatile __bit PSMC1DBF5 __attribute__((address(0x4155)));


extern volatile __bit PSMC1DBF6 __attribute__((address(0x4156)));


extern volatile __bit PSMC1DBF7 __attribute__((address(0x4157)));


extern volatile __bit PSMC1DBR0 __attribute__((address(0x4148)));


extern volatile __bit PSMC1DBR1 __attribute__((address(0x4149)));


extern volatile __bit PSMC1DBR2 __attribute__((address(0x414A)));


extern volatile __bit PSMC1DBR3 __attribute__((address(0x414B)));


extern volatile __bit PSMC1DBR4 __attribute__((address(0x414C)));


extern volatile __bit PSMC1DBR5 __attribute__((address(0x414D)));


extern volatile __bit PSMC1DBR6 __attribute__((address(0x414E)));


extern volatile __bit PSMC1DBR7 __attribute__((address(0x414F)));


extern volatile __bit PSMC1DC0 __attribute__((address(0x4118)));


extern volatile __bit PSMC1DC1 __attribute__((address(0x4119)));


extern volatile __bit PSMC1DC10 __attribute__((address(0x4122)));


extern volatile __bit PSMC1DC11 __attribute__((address(0x4123)));


extern volatile __bit PSMC1DC12 __attribute__((address(0x4124)));


extern volatile __bit PSMC1DC13 __attribute__((address(0x4125)));


extern volatile __bit PSMC1DC14 __attribute__((address(0x4126)));


extern volatile __bit PSMC1DC15 __attribute__((address(0x4127)));


extern volatile __bit PSMC1DC2 __attribute__((address(0x411A)));


extern volatile __bit PSMC1DC3 __attribute__((address(0x411B)));


extern volatile __bit PSMC1DC4 __attribute__((address(0x411C)));


extern volatile __bit PSMC1DC5 __attribute__((address(0x411D)));


extern volatile __bit PSMC1DC6 __attribute__((address(0x411E)));


extern volatile __bit PSMC1DC7 __attribute__((address(0x411F)));


extern volatile __bit PSMC1DC8 __attribute__((address(0x4120)));


extern volatile __bit PSMC1DC9 __attribute__((address(0x4121)));


extern volatile __bit PSMC1EN __attribute__((address(0x408F)));


extern volatile __bit PSMC1FFA0 __attribute__((address(0x4168)));


extern volatile __bit PSMC1FFA1 __attribute__((address(0x4169)));


extern volatile __bit PSMC1FFA2 __attribute__((address(0x416A)));


extern volatile __bit PSMC1FFA3 __attribute__((address(0x416B)));


extern volatile __bit PSMC1LD __attribute__((address(0x408E)));


extern volatile __bit PSMC1PH0 __attribute__((address(0x4108)));


extern volatile __bit PSMC1PH1 __attribute__((address(0x4109)));


extern volatile __bit PSMC1PH10 __attribute__((address(0x4112)));


extern volatile __bit PSMC1PH11 __attribute__((address(0x4113)));


extern volatile __bit PSMC1PH12 __attribute__((address(0x4114)));


extern volatile __bit PSMC1PH13 __attribute__((address(0x4115)));


extern volatile __bit PSMC1PH14 __attribute__((address(0x4116)));


extern volatile __bit PSMC1PH15 __attribute__((address(0x4117)));


extern volatile __bit PSMC1PH2 __attribute__((address(0x410A)));


extern volatile __bit PSMC1PH3 __attribute__((address(0x410B)));


extern volatile __bit PSMC1PH4 __attribute__((address(0x410C)));


extern volatile __bit PSMC1PH5 __attribute__((address(0x410D)));


extern volatile __bit PSMC1PH6 __attribute__((address(0x410E)));


extern volatile __bit PSMC1PH7 __attribute__((address(0x410F)));


extern volatile __bit PSMC1PH8 __attribute__((address(0x4110)));


extern volatile __bit PSMC1PH9 __attribute__((address(0x4111)));


extern volatile __bit PSMC1PR0 __attribute__((address(0x4128)));


extern volatile __bit PSMC1PR1 __attribute__((address(0x4129)));


extern volatile __bit PSMC1PR10 __attribute__((address(0x4132)));


extern volatile __bit PSMC1PR11 __attribute__((address(0x4133)));


extern volatile __bit PSMC1PR12 __attribute__((address(0x4134)));


extern volatile __bit PSMC1PR13 __attribute__((address(0x4135)));


extern volatile __bit PSMC1PR14 __attribute__((address(0x4136)));


extern volatile __bit PSMC1PR15 __attribute__((address(0x4137)));


extern volatile __bit PSMC1PR2 __attribute__((address(0x412A)));


extern volatile __bit PSMC1PR3 __attribute__((address(0x412B)));


extern volatile __bit PSMC1PR4 __attribute__((address(0x412C)));


extern volatile __bit PSMC1PR5 __attribute__((address(0x412D)));


extern volatile __bit PSMC1PR6 __attribute__((address(0x412E)));


extern volatile __bit PSMC1PR7 __attribute__((address(0x412F)));


extern volatile __bit PSMC1PR8 __attribute__((address(0x4130)));


extern volatile __bit PSMC1PR9 __attribute__((address(0x4131)));


extern volatile __bit PSMC1SIE __attribute__((address(0x4A0)));


extern volatile __bit PSMC1SIF __attribute__((address(0xA0)));


extern volatile __bit PSMC1TIE __attribute__((address(0x4A4)));


extern volatile __bit PSMC1TIF __attribute__((address(0xA4)));


extern volatile __bit PSMC1TMR0 __attribute__((address(0x4138)));


extern volatile __bit PSMC1TMR1 __attribute__((address(0x4139)));


extern volatile __bit PSMC1TMR10 __attribute__((address(0x4142)));


extern volatile __bit PSMC1TMR11 __attribute__((address(0x4143)));


extern volatile __bit PSMC1TMR12 __attribute__((address(0x4144)));


extern volatile __bit PSMC1TMR13 __attribute__((address(0x4145)));


extern volatile __bit PSMC1TMR14 __attribute__((address(0x4146)));


extern volatile __bit PSMC1TMR15 __attribute__((address(0x4147)));


extern volatile __bit PSMC1TMR2 __attribute__((address(0x413A)));


extern volatile __bit PSMC1TMR3 __attribute__((address(0x413B)));


extern volatile __bit PSMC1TMR4 __attribute__((address(0x413C)));


extern volatile __bit PSMC1TMR5 __attribute__((address(0x413D)));


extern volatile __bit PSMC1TMR6 __attribute__((address(0x413E)));


extern volatile __bit PSMC1TMR7 __attribute__((address(0x413F)));


extern volatile __bit PSMC1TMR8 __attribute__((address(0x4140)));


extern volatile __bit PSMC1TMR9 __attribute__((address(0x4141)));


extern volatile __bit PSMC2BLKF0 __attribute__((address(0x4260)));


extern volatile __bit PSMC2BLKF1 __attribute__((address(0x4261)));


extern volatile __bit PSMC2BLKF2 __attribute__((address(0x4262)));


extern volatile __bit PSMC2BLKF3 __attribute__((address(0x4263)));


extern volatile __bit PSMC2BLKF4 __attribute__((address(0x4264)));


extern volatile __bit PSMC2BLKF5 __attribute__((address(0x4265)));


extern volatile __bit PSMC2BLKF6 __attribute__((address(0x4266)));


extern volatile __bit PSMC2BLKF7 __attribute__((address(0x4267)));


extern volatile __bit PSMC2BLKR0 __attribute__((address(0x4258)));


extern volatile __bit PSMC2BLKR1 __attribute__((address(0x4259)));


extern volatile __bit PSMC2BLKR2 __attribute__((address(0x425A)));


extern volatile __bit PSMC2BLKR3 __attribute__((address(0x425B)));


extern volatile __bit PSMC2BLKR4 __attribute__((address(0x425C)));


extern volatile __bit PSMC2BLKR5 __attribute__((address(0x425D)));


extern volatile __bit PSMC2BLKR6 __attribute__((address(0x425E)));


extern volatile __bit PSMC2BLKR7 __attribute__((address(0x425F)));


extern volatile __bit PSMC2DBF0 __attribute__((address(0x4250)));


extern volatile __bit PSMC2DBF1 __attribute__((address(0x4251)));


extern volatile __bit PSMC2DBF2 __attribute__((address(0x4252)));


extern volatile __bit PSMC2DBF3 __attribute__((address(0x4253)));


extern volatile __bit PSMC2DBF4 __attribute__((address(0x4254)));


extern volatile __bit PSMC2DBF5 __attribute__((address(0x4255)));


extern volatile __bit PSMC2DBF6 __attribute__((address(0x4256)));


extern volatile __bit PSMC2DBF7 __attribute__((address(0x4257)));


extern volatile __bit PSMC2DBR0 __attribute__((address(0x4248)));


extern volatile __bit PSMC2DBR1 __attribute__((address(0x4249)));


extern volatile __bit PSMC2DBR2 __attribute__((address(0x424A)));


extern volatile __bit PSMC2DBR3 __attribute__((address(0x424B)));


extern volatile __bit PSMC2DBR4 __attribute__((address(0x424C)));


extern volatile __bit PSMC2DBR5 __attribute__((address(0x424D)));


extern volatile __bit PSMC2DBR6 __attribute__((address(0x424E)));


extern volatile __bit PSMC2DBR7 __attribute__((address(0x424F)));


extern volatile __bit PSMC2DC0 __attribute__((address(0x4218)));


extern volatile __bit PSMC2DC1 __attribute__((address(0x4219)));


extern volatile __bit PSMC2DC10 __attribute__((address(0x4222)));


extern volatile __bit PSMC2DC11 __attribute__((address(0x4223)));


extern volatile __bit PSMC2DC12 __attribute__((address(0x4224)));


extern volatile __bit PSMC2DC13 __attribute__((address(0x4225)));


extern volatile __bit PSMC2DC14 __attribute__((address(0x4226)));


extern volatile __bit PSMC2DC15 __attribute__((address(0x4227)));


extern volatile __bit PSMC2DC2 __attribute__((address(0x421A)));


extern volatile __bit PSMC2DC3 __attribute__((address(0x421B)));


extern volatile __bit PSMC2DC4 __attribute__((address(0x421C)));


extern volatile __bit PSMC2DC5 __attribute__((address(0x421D)));


extern volatile __bit PSMC2DC6 __attribute__((address(0x421E)));


extern volatile __bit PSMC2DC7 __attribute__((address(0x421F)));


extern volatile __bit PSMC2DC8 __attribute__((address(0x4220)));


extern volatile __bit PSMC2DC9 __attribute__((address(0x4221)));


extern volatile __bit PSMC2EN __attribute__((address(0x418F)));


extern volatile __bit PSMC2FFA0 __attribute__((address(0x4268)));


extern volatile __bit PSMC2FFA1 __attribute__((address(0x4269)));


extern volatile __bit PSMC2FFA2 __attribute__((address(0x426A)));


extern volatile __bit PSMC2FFA3 __attribute__((address(0x426B)));


extern volatile __bit PSMC2LD __attribute__((address(0x418E)));


extern volatile __bit PSMC2PH0 __attribute__((address(0x4208)));


extern volatile __bit PSMC2PH1 __attribute__((address(0x4209)));


extern volatile __bit PSMC2PH10 __attribute__((address(0x4212)));


extern volatile __bit PSMC2PH11 __attribute__((address(0x4213)));


extern volatile __bit PSMC2PH12 __attribute__((address(0x4214)));


extern volatile __bit PSMC2PH13 __attribute__((address(0x4215)));


extern volatile __bit PSMC2PH14 __attribute__((address(0x4216)));


extern volatile __bit PSMC2PH15 __attribute__((address(0x4217)));


extern volatile __bit PSMC2PH2 __attribute__((address(0x420A)));


extern volatile __bit PSMC2PH3 __attribute__((address(0x420B)));


extern volatile __bit PSMC2PH4 __attribute__((address(0x420C)));


extern volatile __bit PSMC2PH5 __attribute__((address(0x420D)));


extern volatile __bit PSMC2PH6 __attribute__((address(0x420E)));


extern volatile __bit PSMC2PH7 __attribute__((address(0x420F)));


extern volatile __bit PSMC2PH8 __attribute__((address(0x4210)));


extern volatile __bit PSMC2PH9 __attribute__((address(0x4211)));


extern volatile __bit PSMC2PR0 __attribute__((address(0x4228)));


extern volatile __bit PSMC2PR1 __attribute__((address(0x4229)));


extern volatile __bit PSMC2PR10 __attribute__((address(0x4232)));


extern volatile __bit PSMC2PR11 __attribute__((address(0x4233)));


extern volatile __bit PSMC2PR12 __attribute__((address(0x4234)));


extern volatile __bit PSMC2PR13 __attribute__((address(0x4235)));


extern volatile __bit PSMC2PR14 __attribute__((address(0x4236)));


extern volatile __bit PSMC2PR15 __attribute__((address(0x4237)));


extern volatile __bit PSMC2PR2 __attribute__((address(0x422A)));


extern volatile __bit PSMC2PR3 __attribute__((address(0x422B)));


extern volatile __bit PSMC2PR4 __attribute__((address(0x422C)));


extern volatile __bit PSMC2PR5 __attribute__((address(0x422D)));


extern volatile __bit PSMC2PR6 __attribute__((address(0x422E)));


extern volatile __bit PSMC2PR7 __attribute__((address(0x422F)));


extern volatile __bit PSMC2PR8 __attribute__((address(0x4230)));


extern volatile __bit PSMC2PR9 __attribute__((address(0x4231)));


extern volatile __bit PSMC2SIE __attribute__((address(0x4A1)));


extern volatile __bit PSMC2SIF __attribute__((address(0xA1)));


extern volatile __bit PSMC2TIE __attribute__((address(0x4A5)));


extern volatile __bit PSMC2TIF __attribute__((address(0xA5)));


extern volatile __bit PSMC2TMR0 __attribute__((address(0x4238)));


extern volatile __bit PSMC2TMR1 __attribute__((address(0x4239)));


extern volatile __bit PSMC2TMR10 __attribute__((address(0x4242)));


extern volatile __bit PSMC2TMR11 __attribute__((address(0x4243)));


extern volatile __bit PSMC2TMR12 __attribute__((address(0x4244)));


extern volatile __bit PSMC2TMR13 __attribute__((address(0x4245)));


extern volatile __bit PSMC2TMR14 __attribute__((address(0x4246)));


extern volatile __bit PSMC2TMR15 __attribute__((address(0x4247)));


extern volatile __bit PSMC2TMR2 __attribute__((address(0x423A)));


extern volatile __bit PSMC2TMR3 __attribute__((address(0x423B)));


extern volatile __bit PSMC2TMR4 __attribute__((address(0x423C)));


extern volatile __bit PSMC2TMR5 __attribute__((address(0x423D)));


extern volatile __bit PSMC2TMR6 __attribute__((address(0x423E)));


extern volatile __bit PSMC2TMR7 __attribute__((address(0x423F)));


extern volatile __bit PSMC2TMR8 __attribute__((address(0x4240)));


extern volatile __bit PSMC2TMR9 __attribute__((address(0x4241)));


extern volatile __bit RA0 __attribute__((address(0x60)));


extern volatile __bit RA1 __attribute__((address(0x61)));


extern volatile __bit RA2 __attribute__((address(0x62)));


extern volatile __bit RA3 __attribute__((address(0x63)));


extern volatile __bit RA4 __attribute__((address(0x64)));


extern volatile __bit RA5 __attribute__((address(0x65)));


extern volatile __bit RA6 __attribute__((address(0x66)));


extern volatile __bit RA7 __attribute__((address(0x67)));


extern volatile __bit RB0 __attribute__((address(0x68)));


extern volatile __bit RB1 __attribute__((address(0x69)));


extern volatile __bit RB2 __attribute__((address(0x6A)));


extern volatile __bit RB3 __attribute__((address(0x6B)));


extern volatile __bit RB4 __attribute__((address(0x6C)));


extern volatile __bit RB5 __attribute__((address(0x6D)));


extern volatile __bit RB6 __attribute__((address(0x6E)));


extern volatile __bit RB7 __attribute__((address(0x6F)));


extern volatile __bit RC0 __attribute__((address(0x70)));


extern volatile __bit RC1 __attribute__((address(0x71)));


extern volatile __bit RC2 __attribute__((address(0x72)));


extern volatile __bit RC3 __attribute__((address(0x73)));


extern volatile __bit RC4 __attribute__((address(0x74)));


extern volatile __bit RC5 __attribute__((address(0x75)));


extern volatile __bit RC6 __attribute__((address(0x76)));


extern volatile __bit RC7 __attribute__((address(0x77)));


extern volatile __bit RCEN __attribute__((address(0x10B3)));


extern volatile __bit RCIDL __attribute__((address(0xCFE)));


extern volatile __bit RCIE __attribute__((address(0x48D)));


extern volatile __bit RCIF __attribute__((address(0x8D)));


extern volatile __bit RD __attribute__((address(0xCA8)));


extern volatile __bit RE3 __attribute__((address(0x83)));


extern volatile __bit RSEN __attribute__((address(0x10B1)));


extern volatile __bit RX9 __attribute__((address(0xCEE)));


extern volatile __bit RX9D __attribute__((address(0xCE8)));


extern volatile __bit RXSEL __attribute__((address(0x8E9)));


extern volatile __bit R_nW __attribute__((address(0x10A2)));


extern volatile __bit SBCDE __attribute__((address(0x10BA)));


extern volatile __bit SBOREN __attribute__((address(0x8B7)));


extern volatile __bit SCIE __attribute__((address(0x10BD)));


extern volatile __bit SCKP __attribute__((address(0xCFC)));


extern volatile __bit SCKSEL __attribute__((address(0x8EC)));


extern volatile __bit SCS0 __attribute__((address(0x4C8)));


extern volatile __bit SCS1 __attribute__((address(0x4C9)));


extern volatile __bit SDAHT __attribute__((address(0x10BB)));


extern volatile __bit SDISEL __attribute__((address(0x8EB)));


extern volatile __bit SDOSEL __attribute__((address(0x8ED)));


extern volatile __bit SEN __attribute__((address(0x10B0)));


extern volatile __bit SENDB __attribute__((address(0xCF3)));


extern volatile __bit SLRCONA0 __attribute__((address(0x1860)));


extern volatile __bit SLRCONA1 __attribute__((address(0x1861)));


extern volatile __bit SLRCONA2 __attribute__((address(0x1862)));


extern volatile __bit SLRCONA3 __attribute__((address(0x1863)));


extern volatile __bit SLRCONA4 __attribute__((address(0x1864)));


extern volatile __bit SLRCONA5 __attribute__((address(0x1865)));


extern volatile __bit SLRCONA6 __attribute__((address(0x1866)));


extern volatile __bit SLRCONA7 __attribute__((address(0x1867)));


extern volatile __bit SLRCONB0 __attribute__((address(0x1868)));


extern volatile __bit SLRCONB1 __attribute__((address(0x1869)));


extern volatile __bit SLRCONB2 __attribute__((address(0x186A)));


extern volatile __bit SLRCONB3 __attribute__((address(0x186B)));


extern volatile __bit SLRCONB4 __attribute__((address(0x186C)));


extern volatile __bit SLRCONB5 __attribute__((address(0x186D)));


extern volatile __bit SLRCONB6 __attribute__((address(0x186E)));


extern volatile __bit SLRCONB7 __attribute__((address(0x186F)));


extern volatile __bit SLRCONC0 __attribute__((address(0x1870)));


extern volatile __bit SLRCONC1 __attribute__((address(0x1871)));


extern volatile __bit SLRCONC2 __attribute__((address(0x1872)));


extern volatile __bit SLRCONC3 __attribute__((address(0x1873)));


extern volatile __bit SLRCONC4 __attribute__((address(0x1874)));


extern volatile __bit SLRCONC5 __attribute__((address(0x1875)));


extern volatile __bit SLRCONC6 __attribute__((address(0x1876)));


extern volatile __bit SLRCONC7 __attribute__((address(0x1877)));


extern volatile __bit SMP __attribute__((address(0x10A7)));


extern volatile __bit SPEN __attribute__((address(0xCEF)));


extern volatile __bit SPLLEN __attribute__((address(0x4CF)));


extern volatile __bit SREN __attribute__((address(0xCED)));


extern volatile __bit SSP1IE __attribute__((address(0x48B)));


extern volatile __bit SSP1IF __attribute__((address(0x8B)));


extern volatile __bit SSPEN __attribute__((address(0x10AD)));


extern volatile __bit SSPM0 __attribute__((address(0x10A8)));


extern volatile __bit SSPM1 __attribute__((address(0x10A9)));


extern volatile __bit SSPM2 __attribute__((address(0x10AA)));


extern volatile __bit SSPM3 __attribute__((address(0x10AB)));


extern volatile __bit SSPOV __attribute__((address(0x10AE)));


extern volatile __bit STKOVF __attribute__((address(0x4B7)));


extern volatile __bit STKUNF __attribute__((address(0x4B6)));


extern volatile __bit SWDTEN __attribute__((address(0x4B8)));


extern volatile __bit SYNC __attribute__((address(0xCF4)));


extern volatile __bit T0CS __attribute__((address(0x4AD)));


extern volatile __bit T0IE __attribute__((address(0x5D)));


extern volatile __bit T0IF __attribute__((address(0x5A)));


extern volatile __bit T0SE __attribute__((address(0x4AC)));


extern volatile __bit T1CKPS0 __attribute__((address(0xC4)));


extern volatile __bit T1CKPS1 __attribute__((address(0xC5)));


extern volatile __bit T1GGO __attribute__((address(0xCB)));


extern volatile __bit T1GPOL __attribute__((address(0xCE)));


extern volatile __bit T1GSPM __attribute__((address(0xCC)));


extern volatile __bit T1GSS0 __attribute__((address(0xC8)));


extern volatile __bit T1GSS1 __attribute__((address(0xC9)));


extern volatile __bit T1GTM __attribute__((address(0xCD)));


extern volatile __bit T1GVAL __attribute__((address(0xCA)));


extern volatile __bit T1OSCEN __attribute__((address(0xC3)));


extern volatile __bit T1OSCR __attribute__((address(0x4D7)));


extern volatile __bit T2CKPS0 __attribute__((address(0xE0)));


extern volatile __bit T2CKPS1 __attribute__((address(0xE1)));


extern volatile __bit T2OUTPS0 __attribute__((address(0xE3)));


extern volatile __bit T2OUTPS1 __attribute__((address(0xE4)));


extern volatile __bit T2OUTPS2 __attribute__((address(0xE5)));


extern volatile __bit T2OUTPS3 __attribute__((address(0xE6)));


extern volatile __bit TMR0CS __attribute__((address(0x4AD)));


extern volatile __bit TMR0IE __attribute__((address(0x5D)));


extern volatile __bit TMR0IF __attribute__((address(0x5A)));


extern volatile __bit TMR0SE __attribute__((address(0x4AC)));


extern volatile __bit TMR1CS0 __attribute__((address(0xC6)));


extern volatile __bit TMR1CS1 __attribute__((address(0xC7)));


extern volatile __bit TMR1GE __attribute__((address(0xCF)));


extern volatile __bit TMR1GIE __attribute__((address(0x48F)));


extern volatile __bit TMR1GIF __attribute__((address(0x8F)));


extern volatile __bit TMR1IE __attribute__((address(0x488)));


extern volatile __bit TMR1IF __attribute__((address(0x88)));


extern volatile __bit TMR1ON __attribute__((address(0xC0)));


extern volatile __bit TMR2IE __attribute__((address(0x489)));


extern volatile __bit TMR2IF __attribute__((address(0x89)));


extern volatile __bit TMR2ON __attribute__((address(0xE2)));


extern volatile __bit TRIGSEL0 __attribute__((address(0x4FC)));


extern volatile __bit TRIGSEL1 __attribute__((address(0x4FD)));


extern volatile __bit TRIGSEL2 __attribute__((address(0x4FE)));


extern volatile __bit TRIGSEL3 __attribute__((address(0x4FF)));


extern volatile __bit TRISA0 __attribute__((address(0x460)));


extern volatile __bit TRISA1 __attribute__((address(0x461)));


extern volatile __bit TRISA2 __attribute__((address(0x462)));


extern volatile __bit TRISA3 __attribute__((address(0x463)));


extern volatile __bit TRISA4 __attribute__((address(0x464)));


extern volatile __bit TRISA5 __attribute__((address(0x465)));


extern volatile __bit TRISA6 __attribute__((address(0x466)));


extern volatile __bit TRISA7 __attribute__((address(0x467)));


extern volatile __bit TRISB0 __attribute__((address(0x468)));


extern volatile __bit TRISB1 __attribute__((address(0x469)));


extern volatile __bit TRISB2 __attribute__((address(0x46A)));


extern volatile __bit TRISB3 __attribute__((address(0x46B)));


extern volatile __bit TRISB4 __attribute__((address(0x46C)));


extern volatile __bit TRISB5 __attribute__((address(0x46D)));


extern volatile __bit TRISB6 __attribute__((address(0x46E)));


extern volatile __bit TRISB7 __attribute__((address(0x46F)));


extern volatile __bit TRISC0 __attribute__((address(0x470)));


extern volatile __bit TRISC1 __attribute__((address(0x471)));


extern volatile __bit TRISC2 __attribute__((address(0x472)));


extern volatile __bit TRISC3 __attribute__((address(0x473)));


extern volatile __bit TRISC4 __attribute__((address(0x474)));


extern volatile __bit TRISC5 __attribute__((address(0x475)));


extern volatile __bit TRISC6 __attribute__((address(0x476)));


extern volatile __bit TRISC7 __attribute__((address(0x477)));


extern volatile __bit TRISE3 __attribute__((address(0x483)));


extern volatile __bit TRMT __attribute__((address(0xCF1)));


extern volatile __bit TSEN __attribute__((address(0x8BD)));


extern volatile __bit TSRNG __attribute__((address(0x8BC)));


extern volatile __bit TUN0 __attribute__((address(0x4C0)));


extern volatile __bit TUN1 __attribute__((address(0x4C1)));


extern volatile __bit TUN2 __attribute__((address(0x4C2)));


extern volatile __bit TUN3 __attribute__((address(0x4C3)));


extern volatile __bit TUN4 __attribute__((address(0x4C4)));


extern volatile __bit TUN5 __attribute__((address(0x4C5)));


extern volatile __bit TX9 __attribute__((address(0xCF6)));


extern volatile __bit TX9D __attribute__((address(0xCF0)));


extern volatile __bit TXEN __attribute__((address(0xCF5)));


extern volatile __bit TXIE __attribute__((address(0x48C)));


extern volatile __bit TXIF __attribute__((address(0x8C)));


extern volatile __bit TXSEL __attribute__((address(0x8EA)));


extern volatile __bit UA __attribute__((address(0x10A1)));


extern volatile __bit VREGPM __attribute__((address(0xCB9)));


extern volatile __bit WCOL __attribute__((address(0x10AF)));


extern volatile __bit WDTPS0 __attribute__((address(0x4B9)));


extern volatile __bit WDTPS1 __attribute__((address(0x4BA)));


extern volatile __bit WDTPS2 __attribute__((address(0x4BB)));


extern volatile __bit WDTPS3 __attribute__((address(0x4BC)));


extern volatile __bit WDTPS4 __attribute__((address(0x4BD)));


extern volatile __bit WPUA0 __attribute__((address(0x1060)));


extern volatile __bit WPUA1 __attribute__((address(0x1061)));


extern volatile __bit WPUA2 __attribute__((address(0x1062)));


extern volatile __bit WPUA3 __attribute__((address(0x1063)));


extern volatile __bit WPUA4 __attribute__((address(0x1064)));


extern volatile __bit WPUA5 __attribute__((address(0x1065)));


extern volatile __bit WPUA6 __attribute__((address(0x1066)));


extern volatile __bit WPUA7 __attribute__((address(0x1067)));


extern volatile __bit WPUB0 __attribute__((address(0x1068)));


extern volatile __bit WPUB1 __attribute__((address(0x1069)));


extern volatile __bit WPUB2 __attribute__((address(0x106A)));


extern volatile __bit WPUB3 __attribute__((address(0x106B)));


extern volatile __bit WPUB4 __attribute__((address(0x106C)));


extern volatile __bit WPUB5 __attribute__((address(0x106D)));


extern volatile __bit WPUB6 __attribute__((address(0x106E)));


extern volatile __bit WPUB7 __attribute__((address(0x106F)));


extern volatile __bit WPUC0 __attribute__((address(0x1070)));


extern volatile __bit WPUC1 __attribute__((address(0x1071)));


extern volatile __bit WPUC2 __attribute__((address(0x1072)));


extern volatile __bit WPUC3 __attribute__((address(0x1073)));


extern volatile __bit WPUC4 __attribute__((address(0x1074)));


extern volatile __bit WPUC5 __attribute__((address(0x1075)));


extern volatile __bit WPUC6 __attribute__((address(0x1076)));


extern volatile __bit WPUC7 __attribute__((address(0x1077)));


extern volatile __bit WPUE3 __attribute__((address(0x1083)));


extern volatile __bit WR __attribute__((address(0xCA9)));


extern volatile __bit WREN __attribute__((address(0xCAA)));


extern volatile __bit WRERR __attribute__((address(0xCAB)));


extern volatile __bit WUE __attribute__((address(0xCF9)));


extern volatile __bit ZERO __attribute__((address(0x1A)));


extern volatile __bit Z_SHAD __attribute__((address(0x7F22)));


extern volatile __bit nBOR __attribute__((address(0x4B0)));


extern volatile __bit nPD __attribute__((address(0x1B)));


extern volatile __bit nPOR __attribute__((address(0x4B1)));


extern volatile __bit nRI __attribute__((address(0x4B2)));


extern volatile __bit nRMCLR __attribute__((address(0x4B3)));


extern volatile __bit nRWDT __attribute__((address(0x4B4)));


extern volatile __bit nT1SYNC __attribute__((address(0xC2)));


extern volatile __bit nTO __attribute__((address(0x1C)));


extern volatile __bit nWPUEN __attribute__((address(0x4AF)));
# 340 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\pic_chip_select.h" 2 3
# 14 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\pic.h" 2 3
# 76 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\pic.h" 3
__attribute__((__unsupported__("The " "FLASH_READ" " macro function is no longer supported. Please use the MPLAB X MCC."))) unsigned char __flash_read(unsigned short addr);

__attribute__((__unsupported__("The " "FLASH_WRITE" " macro function is no longer supported. Please use the MPLAB X MCC."))) void __flash_write(unsigned short addr, unsigned short data);

__attribute__((__unsupported__("The " "FLASH_ERASE" " macro function is no longer supported. Please use the MPLAB X MCC."))) void __flash_erase(unsigned short addr);



# 1 "C:\\Program Files\\Microchip\\xc8\\v2.46\\pic\\include\\eeprom_routines.h" 1 3
# 114 "C:\\Program Files\\Microchip\\xc8\\v2.46\\pic\\include\\eeprom_routines.h" 3
extern void eeprom_write(unsigned char addr, unsigned char value);
extern unsigned char eeprom_read(unsigned char addr);
# 84 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\pic.h" 2 3
# 118 "C:/Program Files/Microchip/MPLABX/v6.20/packs/Microchip/PIC12-16F1xxx_DFP/1.7.242/xc8\\pic\\include\\pic.h" 3
extern __bank0 unsigned char __resetbits;
extern __bank0 __bit __powerdown;
extern __bank0 __bit __timeout;
# 28 "C:\\Program Files\\Microchip\\xc8\\v2.46\\pic\\include\\xc.h" 2 3
# 1 "C:\\Program Files\\Microchip\\xc8\\v2.46\\pic\\sources\\c99\\pic\\__eeprom.c" 2




void
__eecpymem(volatile unsigned char *to, __eeprom unsigned char * from, unsigned char size)
{
 volatile unsigned char *cp = to;

 while (EECON1bits.WR) continue;
 EEADR = (unsigned char)from;
 while(size--) {
  while (EECON1bits.WR) continue;

  EECON1 &= 0x7F;

  EECON1bits.RD = 1;
  *cp++ = EEDATA;
  ++EEADR;
 }
# 36 "C:\\Program Files\\Microchip\\xc8\\v2.46\\pic\\sources\\c99\\pic\\__eeprom.c"
}

void
__memcpyee(__eeprom unsigned char * to, const unsigned char *from, unsigned char size)
{
 const unsigned char *ptr =from;

 while (EECON1bits.WR) continue;
 EEADR = (unsigned char)to - 1U;

 EECON1 &= 0x7F;

 while(size--) {
  while (EECON1bits.WR) {
   continue;
  }
  EEDATA = *ptr++;
  ++EEADR;
  STATUSbits.CARRY = 0;
  if (INTCONbits.GIE) {
   STATUSbits.CARRY = 1;
  }
  INTCONbits.GIE = 0;
  EECON1bits.WREN = 1;
  EECON2 = 0x55;
  EECON2 = 0xAA;
  EECON1bits.WR = 1;
  EECON1bits.WREN = 0;
  if (STATUSbits.CARRY) {
   INTCONbits.GIE = 1;
  }
 }
# 101 "C:\\Program Files\\Microchip\\xc8\\v2.46\\pic\\sources\\c99\\pic\\__eeprom.c"
}

unsigned char
__eetoc(__eeprom void *addr)
{
 unsigned char data;
 __eecpymem((unsigned char *) &data,addr,1);
 return data;
}

unsigned int
__eetoi(__eeprom void *addr)
{
 unsigned int data;
 __eecpymem((unsigned char *) &data,addr,2);
 return data;
}

#pragma warning push
#pragma warning disable 2040
__uint24
__eetom(__eeprom void *addr)
{
 __uint24 data;
 __eecpymem((unsigned char *) &data,addr,3);
 return data;
}
#pragma warning pop

unsigned long
__eetol(__eeprom void *addr)
{
 unsigned long data;
 __eecpymem((unsigned char *) &data,addr,4);
 return data;
}

#pragma warning push
#pragma warning disable 1516
unsigned long long
__eetoo(__eeprom void *addr)
{
 unsigned long long data;
 __eecpymem((unsigned char *) &data,addr,8);
 return data;
}
#pragma warning pop

unsigned char
__ctoee(__eeprom void *addr, unsigned char data)
{
 __memcpyee(addr,(unsigned char *) &data,1);
 return data;
}

unsigned int
__itoee(__eeprom void *addr, unsigned int data)
{
 __memcpyee(addr,(unsigned char *) &data,2);
 return data;
}

#pragma warning push
#pragma warning disable 2040
__uint24
__mtoee(__eeprom void *addr, __uint24 data)
{
 __memcpyee(addr,(unsigned char *) &data,3);
 return data;
}
#pragma warning pop

unsigned long
__ltoee(__eeprom void *addr, unsigned long data)
{
 __memcpyee(addr,(unsigned char *) &data,4);
 return data;
}

#pragma warning push
#pragma warning disable 1516
unsigned long long
__otoee(__eeprom void *addr, unsigned long long data)
{
 __memcpyee(addr,(unsigned char *) &data,8);
 return data;
}
#pragma warning pop

float
__eetoft(__eeprom void *addr)
{
 float data;
 __eecpymem((unsigned char *) &data,addr,3);
 return data;
}

double
__eetofl(__eeprom void *addr)
{
 double data;
 __eecpymem((unsigned char *) &data,addr,4);
 return data;
}

float
__fttoee(__eeprom void *addr, float data)
{
 __memcpyee(addr,(unsigned char *) &data,3);
 return data;
}

double
__fltoee(__eeprom void *addr, double data)
{
 __memcpyee(addr,(unsigned char *) &data,4);
 return data;
}
