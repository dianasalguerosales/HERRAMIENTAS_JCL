//SORTEXCL JOB (DS),'DIANA SALGUERO',
//         CLASS=P,
//         REGION=0M,
//         MSGCLASS=X,
//         MSGLEVEL=(1,1),
//         NOTIFY=&SYSUID TYPRUN=SCAN
//*
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SORTIN   DD DSN=EDUC.EDSR.IBMMF.PDS3(MEMBERA),DISP=SHR
//SORTOUT  DD DSN=EDUC.EDSR.IBMMF.PDS3(MEMBER1),DISP=OLD
//SYSIN    DD *
           SORT FIELDS=(1,6,CH,A)
           OMIT COND=(1,1,CH,EQ,C'9')
/*