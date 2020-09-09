//BREXXL   JOB (JCC),
//            'Link BREXX',
//            CLASS=A,
//            MSGCLASS=H,
//            REGION=8M,
//            MSGLEVEL=(1,1),
//            NOTIFY=&SYSUID
//********************************************************************
//*
//* Name: BREXX.CNTL(LINK)
//*
//* Desc: Link BREXX from object library (none reentrant version)
//*
//********************************************************************
//*
//LINK     PROC OBJ='BREXX.OBJ',LIB='JCC.OBJ',LMOD='BREXXSTD'
//PRELINK  EXEC PGM=PRELINK,
//         PARM='-s //DDN:L //DDN:O -//DDN:I'
//STEPLIB  DD   DSN=JCC.LINKLIB,DISP=SHR
//STDOUT   DD   SYSOUT=*
//STDERR   DD   SYSOUT=*
//L        DD   DSN=&LIB,DISP=SHR
//I        DD   DDNAME=LINKLIST
//ABBREV   DD   DISP=SHR,DSN=&OBJ(ABBREV)
//ABS      DD   DISP=SHR,DSN=&OBJ(ABS)
//ADD      DD   DISP=SHR,DSN=&OBJ(ADD)
//ADDRESS  DD   DISP=SHR,DSN=&OBJ(ADDRESS)
//B2X      DD   DISP=SHR,DSN=&OBJ(B2X)
//BINTREE  DD   DISP=SHR,DSN=&OBJ(BINTREE)
//BITAND   DD   DISP=SHR,DSN=&OBJ(BITAND)
//BITOR    DD   DISP=SHR,DSN=&OBJ(BITOR)
//BITXOR   DD   DISP=SHR,DSN=&OBJ(BITXOR)
//BMEM     DD   DISP=SHR,DSN=&OBJ(BMEM)
//BOOL     DD   DISP=SHR,DSN=&OBJ(BOOL)
//BREXX    DD   DISP=SHR,DSN=&OBJ(BREXX)
//BUILTIN  DD   DISP=SHR,DSN=&OBJ(BUILTIN)
//C2D      DD   DISP=SHR,DSN=&OBJ(C2D)
//C2X      DD   DISP=SHR,DSN=&OBJ(C2X)
//CEIL     DD   DISP=SHR,DSN=&OBJ(CEIL)
//CENTER   DD   DISP=SHR,DSN=&OBJ(CENTER)
//CHANGEST DD   DISP=SHR,DSN=&OBJ(CHANGEST)
//CHARIN   DD   DISP=SHR,DSN=&OBJ(CHARIN)
//CHAROUT  DD   DISP=SHR,DSN=&OBJ(CHAROUT)
//CHARS    DD   DISP=SHR,DSN=&OBJ(CHARS)
//COMPARE  DD   DISP=SHR,DSN=&OBJ(COMPARE)
//COMPILE  DD   DISP=SHR,DSN=&OBJ(COMPILE)
//COPIES   DD   DISP=SHR,DSN=&OBJ(COPIES)
//COUNTSTR DD   DISP=SHR,DSN=&OBJ(COUNTSTR)
//D2C      DD   DISP=SHR,DSN=&OBJ(D2C)
//D2P      DD   DISP=SHR,DSN=&OBJ(D2P)
//D2X      DD   DISP=SHR,DSN=&OBJ(D2X)
//DATATYPE DD   DISP=SHR,DSN=&OBJ(DATATYPE)
//DATE     DD   DISP=SHR,DSN=&OBJ(DATE)
//DEC      DD   DISP=SHR,DSN=&OBJ(DEC)
//DELSTR   DD   DISP=SHR,DSN=&OBJ(DELSTR)
//DELWORD  DD   DISP=SHR,DSN=&OBJ(DELWORD)
//DIV      DD   DISP=SHR,DSN=&OBJ(DIV)
//DQUEUE   DD   DISP=SHR,DSN=&OBJ(DQUEUE)
//DYNIT    DD   DISP=SHR,DSN=&OBJ(DYNIT)
//EQUAL    DD   DISP=SHR,DSN=&OBJ(EQUAL)
//ERROR    DD   DISP=SHR,DSN=&OBJ(ERROR)
//ERRORTXT DD   DISP=SHR,DSN=&OBJ(ERRORTXT)
//EXPOSE   DD   DISP=SHR,DSN=&OBJ(EXPOSE)
//EXPR     DD   DISP=SHR,DSN=&OBJ(EXPR)
//FILTER   DD   DISP=SHR,DSN=&OBJ(FILTER)
//FLOOR    DD   DISP=SHR,DSN=&OBJ(FLOOR)
//FORMAT   DD   DISP=SHR,DSN=&OBJ(FORMAT)
//FSS      DD   DISP=SHR,DSN=&OBJ(FSS)
//HASHVALU DD   DISP=SHR,DSN=&OBJ(HASHVALU)
//HOSTCMD  DD   DISP=SHR,DSN=&OBJ(HOSTCMD)
//INC      DD   DISP=SHR,DSN=&OBJ(INC)
//INDEX    DD   DISP=SHR,DSN=&OBJ(INDEX)
//INSERT   DD   DISP=SHR,DSN=&OBJ(INSERT)
//INTDIV   DD   DISP=SHR,DSN=&OBJ(INTDIV)
//INTERPRE DD   DISP=SHR,DSN=&OBJ(INTERPRE)
//JUSTIFY  DD   DISP=SHR,DSN=&OBJ(JUSTIFY)
//LASTPOS  DD   DISP=SHR,DSN=&OBJ(LASTPOS)
//LINEIN   DD   DISP=SHR,DSN=&OBJ(LINEIN)
//LINEOUT  DD   DISP=SHR,DSN=&OBJ(LINEOUT)
//LINES    DD   DISP=SHR,DSN=&OBJ(LINES)
//LMATH    DD   DISP=SHR,DSN=&OBJ(LMATH)
//LOWER    DD   DISP=SHR,DSN=&OBJ(LOWER)
//LSTRING  DD   DISP=SHR,DSN=&OBJ(LSTRING)
//MOD      DD   DISP=SHR,DSN=&OBJ(MOD)
//MULT     DD   DISP=SHR,DSN=&OBJ(MULT)
//NEG      DD   DISP=SHR,DSN=&OBJ(NEG)
//NETDATA  DD   DISP=SHR,DSN=&OBJ(NETDATA)
//NEXTSYMB DD   DISP=SHR,DSN=&OBJ(NEXTSYMB)
//OVERLAY  DD   DISP=SHR,DSN=&OBJ(OVERLAY)
//P2D      DD   DISP=SHR,DSN=&OBJ(P2D)
//PRINT    DD   DISP=SHR,DSN=&OBJ(PRINT)
//RAC      DD   DISP=SHR,DSN=&OBJ(RAC)
//READ     DD   DISP=SHR,DSN=&OBJ(READ)
//RERADIX  DD   DISP=SHR,DSN=&OBJ(RERADIX)
//REVERSE  DD   DISP=SHR,DSN=&OBJ(REVERSE)
//REXXFUNC DD   DISP=SHR,DSN=&OBJ(REXXFUNC)
//REXX     DD   DISP=SHR,DSN=&OBJ(REXX)
//RIGHT    DD   DISP=SHR,DSN=&OBJ(RIGHT)
//ROUND    DD   DISP=SHR,DSN=&OBJ(ROUND)
//RXCONV   DD   DISP=SHR,DSN=&OBJ(RXCONV)
//RXFILES  DD   DISP=SHR,DSN=&OBJ(RXFILES)
//RXMATH   DD   DISP=SHR,DSN=&OBJ(RXMATH)
//RXMVS    DD   DISP=SHR,DSN=&OBJ(RXMVS)
//RXMVSEXT DD   DISP=SHR,DSN=&OBJ(RXMVSEXT)
//RXNETDAT DD   DISP=SHR,DSN=&OBJ(RXNETDAT)
//RXSTR    DD   DISP=SHR,DSN=&OBJ(RXSTR)
//RXRAC    DD   DISP=SHR,DSN=&OBJ(RXRAC)
//RXTCP    DD   DISP=SHR,DSN=&OBJ(RXTCP)
//RXTSO    DD   DISP=SHR,DSN=&OBJ(RXTSO)
//RXWORD   DD   DISP=SHR,DSN=&OBJ(RXWORD)
//SIGN     DD   DISP=SHR,DSN=&OBJ(SIGN)
//SOUNDEX  DD   DISP=SHR,DSN=&OBJ(SOUNDEX)
//SPACE    DD   DISP=SHR,DSN=&OBJ(SPACE)
//STACK    DD   DISP=SHR,DSN=&OBJ(STACK)
//STDERRBR DD   DISP=SHR,DSN=&OBJ(STDERR)
//STRIP    DD   DISP=SHR,DSN=&OBJ(STRIP)
//SUB      DD   DISP=SHR,DSN=&OBJ(SUB)
//SUBSTR   DD   DISP=SHR,DSN=&OBJ(SUBSTR)
//SUBWORD  DD   DISP=SHR,DSN=&OBJ(SUBWORD)
//SVC99    DD   DISP=SHR,DSN=&OBJ(SVC99)
//TEMPLATE DD   DISP=SHR,DSN=&OBJ(TEMPLATE)
//TIME     DD   DISP=SHR,DSN=&OBJ(TIME)
//TRACE    DD   DISP=SHR,DSN=&OBJ(TRACE)
//TRANSLAT DD   DISP=SHR,DSN=&OBJ(TRANSLAT)
//TRUNC    DD   DISP=SHR,DSN=&OBJ(TRUNC)
//UPPER    DD   DISP=SHR,DSN=&OBJ(UPPER)
//UTIL     DD   DISP=SHR,DSN=&OBJ(UTIL)
//VARIABLE DD   DISP=SHR,DSN=&OBJ(VARIABLE)
//VERIFY   DD   DISP=SHR,DSN=&OBJ(VERIFY)
//WORDIDX  DD   DISP=SHR,DSN=&OBJ(WORDIDX)
//WORDLEN  DD   DISP=SHR,DSN=&OBJ(WORDLEN)
//WORD     DD   DISP=SHR,DSN=&OBJ(WORD)
//WORDPOS  DD   DISP=SHR,DSN=&OBJ(WORDPOS)
//WORDS    DD   DISP=SHR,DSN=&OBJ(WORDS)
//WRITE    DD   DISP=SHR,DSN=&OBJ(WRITE)
//X2B      DD   DISP=SHR,DSN=&OBJ(X2B)
//X2C      DD   DISP=SHR,DSN=&OBJ(X2C)
//X2D      DD   DISP=SHR,DSN=&OBJ(X2D)
//XRANGE   DD   DISP=SHR,DSN=&OBJ(XRANGE)
//O        DD   UNIT=3390,SPACE=(TRK,(30,10),RLSE),DSN=&&OBJMOD,
//         DCB=(RECFM=FB,LRECL=80,BLKSIZE=3200),DISP=(,PASS)
//LOCK     DD   DSN=BREXX.LOCK,DISP=(OLD,PASS)
//*
//LKED     EXEC PGM=IEWL,
//         PARM='AC=1,NCAL,MAP,LIST,XREF,NORENT,SIZE=(999424,65536)'
//SYSUT1   DD UNIT=SYSDA,SPACE=(CYL,(5,2))
//SYSPRINT DD SYSOUT=*
//SYSLIN   DD DSN=&&OBJMOD,DISP=(OLD,KEEP)
//SYSLMOD  DD DSN=SYS2.LINKLIB(&LMOD),DISP=SHR
//LOCK     DD DSN=BREXX.LOCK,DISP=(OLD,PASS)
//* Link Non Authorised
//LKED2    EXEC PGM=IEWL,
//         PARM='NCAL,MAP,LIST,XREF,NORENT,SIZE=(999424,65536)'
//SYSUT1   DD UNIT=SYSDA,SPACE=(CYL,(5,2))
//SYSPRINT DD SYSOUT=*
//SYSLIN   DD DSN=&&OBJMOD,DISP=(OLD,DELETE)
//SYSLMOD  DD DSN=BREXX.LINKLIB(&LMOD),DISP=SHR
//LOCK     DD DSN=BREXX.LOCK,DISP=(OLD,PASS)
// PEND
//LINK     EXEC LINK
//PRELINK.LINKLIST DD DATA,DLM=@@
//DDN:ABBREV
//DDN:ABS
//DDN:ADD
//DDN:ADDRESS
//DDN:B2X
//DDN:BINTREE
//DDN:BITAND
//DDN:BITOR
//DDN:BITXOR
//DDN:BMEM
//DDN:BOOL
//DDN:BREXX
//DDN:BUILTIN
//DDN:C2D
//DDN:C2X
//DDN:CEIL
//DDN:CENTER
//DDN:CHANGEST
//DDN:CHARIN
//DDN:CHAROUT
//DDN:CHARS
//DDN:COMPARE
//DDN:COMPILE
//DDN:COPIES
//DDN:COUNTSTR
//DDN:D2C
//DDN:D2P
//DDN:D2X
//DDN:DATATYPE
//DDN:DATE
//DDN:DEC
//DDN:DELSTR
//DDN:DELWORD
//DDN:DIV
//DDN:DQUEUE
//DDN:DYNIT
//DDN:EQUAL
//DDN:ERROR
//DDN:ERRORTXT
//DDN:EXPOSE
//DDN:EXPR
//DDN:FILTER
//DDN:FLOOR
//DDN:FORMAT
//DDN:FSS
//DDN:HASHVALU
//DDN:HOSTCMD
//DDN:INC
//DDN:INDEX
//DDN:INSERT
//DDN:INTDIV
//DDN:INTERPRE
//DDN:JUSTIFY
//DDN:LASTPOS
//DDN:LINEIN
//DDN:LINEOUT
//DDN:LINES
//DDN:LMATH
//DDN:LOWER
//DDN:LSTRING
//DDN:MOD
//DDN:MULT
//DDN:NEG
//DDN:NETDATA
//DDN:NEXTSYMB
//DDN:OVERLAY
//DDN:P2D
//DDN:PRINT
//DDN:RAC
//DDN:READ
//DDN:RERADIX
//DDN:REVERSE
//DDN:REXXFUNC
//DDN:REXX
//DDN:RIGHT
//DDN:ROUND
//DDN:RXCONV
//DDN:RXFILES
//DDN:RXMATH
//DDN:RXMVS
//DDN:RXMVSEXT
//DDN:RXNETDAT
//DDN:RXSTR
//DDN:RXRAC
//DDN:RXTCP
//DDN:RXTSO
//DDN:RXWORD
//DDN:SIGN
//DDN:SOUNDEX
//DDN:SPACE
//DDN:STACK
//DDN:STDERRBR
//DDN:STRIP
//DDN:SUB
//DDN:SUBSTR
//DDN:SUBWORD
//DDN:SVC99
//DDN:TEMPLATE
//DDN:TIME
//DDN:TRACE
//DDN:TRANSLAT
//DDN:TRUNC
//DDN:UPPER
//DDN:UTIL
//DDN:VARIABLE
//DDN:VERIFY
//DDN:WORDIDX
//DDN:WORDLEN
//DDN:WORD
//DDN:WORDPOS
//DDN:WORDS
//DDN:WRITE
//DDN:X2B
//DDN:X2C
//DDN:X2D
//DDN:XRANGE
@@
//* -----------------------------------------------------------------
//* !!!!! APF Version
//* Link Aliases separately to avoid interference with BREXX LINK
//*      Use Fake Aliases as there are External names with the Aliases
//* ------------------------------------------------------------------
//LINK     EXEC  PGM=IEWL,
//         PARM='AC=1,NCAL,MAP,LIST,XREF,NORENT,SIZE=(999424,65536)'
//SYSLMOD  DD  DSN=SYS2.LINKLIB,DISP=SHR
//SYSUT1   DD  UNIT=SYSDA,SPACE=(1024,(100,10))
//SYSPRINT DD  SYSOUT=*
//SYSLIN   DD  *
 INCLUDE SYSLMOD(BREXXSTD)
 ALIAS RX1
 ALIAS RX2
 ALIAS RX3
 NAME BREXXSTD(R)
/*
//* -----------------------------------------------------------------
//* !!!!! NON-APF Version
//* Link Aliases separately to avoid interference with BREXX LINK
//*      Use Fake Aliases as there are External names with the Aliases
//* ------------------------------------------------------------------
//LINK     EXEC  PGM=IEWL,
//         PARM='NCAL,MAP,LIST,XREF,NORENT,SIZE=(999424,65536)'
//SYSLMOD  DD  DSN=BREXX.LINKLIB,DISP=SHR
//SYSUT1   DD  UNIT=SYSDA,SPACE=(1024,(100,10))
//SYSPRINT DD  SYSOUT=*
//SYSLIN   DD  *
 INCLUDE SYSLMOD(BREXXSTD)
 ALIAS RX1
 ALIAS RX2
 ALIAS RX3
 NAME BREXXSTD(R)
/*
//* ------------------------------------------------------------------
//* Rename Fake Aliases into real Aliases
//* ------------------------------------------------------------------
//EXEC     EXEC PGM=IKJEFT01,REGION=8192K
//SYSTSPRT DD   SYSOUT=*
//SYSTSIN  DD   *
  DELETE 'SYS2.LINKLIB(BREXX)'
  DELETE 'SYS2.LINKLIB(REXX)'
  DELETE 'SYS2.LINKLIB(RX)'
  RENAME 'SYS2.LINKLIB(RX1)' 'SYS2.LINKLIB(BREXX)'
  RENAME 'SYS2.LINKLIB(RX2)' 'SYS2.LINKLIB(REXX)'
  RENAME 'SYS2.LINKLIB(RX3)' 'SYS2.LINKLIB(RX)'
  COMPRESS 'SYS2.LINKLIB'
  DELETE 'BREXX.LINKLIB(BREXX)'
  DELETE 'BREXX.LINKLIB(REXX)'
  DELETE 'BREXX.LINKLIB(RX)'
  RENAME 'BREXX.LINKLIB(RX1)' 'BREXX.LINKLIB(BREXX)'
  RENAME 'BREXX.LINKLIB(RX2)' 'BREXX.LINKLIB(REXX)'
  RENAME 'BREXX.LINKLIB(RX3)' 'BREXX.LINKLIB(RX)'
  COMPRESS 'BREXX.LINKLIB'
/*
//