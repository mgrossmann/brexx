         MACRO
&USER    VPSACFID &ACFUID=NONE
         LCLA  &L
         LCLC  &AS
*
* VPSACFID MACRO ALLOWS VPS COMMAND SECURITY BASED ON ACF2 UID FIELD.
*        IN ORDER TO USE THIS MACRO, TURN ON UOPTION 0 AND MAKE THE
*        LABEL ON THIS INSTRUCTION EQUAL THE USER VALUE ON THE VPSEC
*        MACRO FOR THE USER/GROUP YOU WISH TO MODIFY
*
         ORG   U&USER
         DC    A(&USER)
         ORG
VPSACF   CSECT
&AS      SETC  '&ACFUID'
         AIF   ('&ACFUID '(1,1) EQ '''').QOK
&AS      SETC  '''&ACFUID'''
.QOK     ANOP
&L       SETA  K'&AS-2
&USER    DC    AL2(&L)
         DC    CL24&AS
&SYSECT  CSECT
         MEND
