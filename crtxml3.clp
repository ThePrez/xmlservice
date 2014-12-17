PGM
CHGLIBL LIBL(XMLSERVICE) CURLIB(XMLSERVICE)

CRTRPGMOD MODULE(XMLSERVICE/PLUGLIC) SRCFILE(XMLSERVICE/QRPGLESRC) +
  DBGVIEW(*SOURCE) OUTPUT(*PRINT) REPLACE(*YES)
CRTRPGMOD MODULE(XMLSERVICE/PLUGBUG) SRCFILE(XMLSERVICE/QRPGLESRC) +
  DBGVIEW(*SOURCE) OUTPUT(*PRINT) REPLACE(*YES)
CRTRPGMOD MODULE(XMLSERVICE/PLUGPASE) SRCFILE(XMLSERVICE/QRPGLESRC) +
  DBGVIEW(*SOURCE) OUTPUT(*PRINT) REPLACE(*YES)
CRTRPGMOD MODULE(XMLSERVICE/PLUGXML) SRCFILE(XMLSERVICE/QRPGLESRC) +
  DBGVIEW(*SOURCE) OUTPUT(*PRINT) REPLACE(*YES)
CRTRPGMOD MODULE(XMLSERVICE/PLUGIPC) SRCFILE(XMLSERVICE/QRPGLESRC) +
  DBGVIEW(*SOURCE) OUTPUT(*PRINT) REPLACE(*YES)
CRTRPGMOD MODULE(XMLSERVICE/PLUGILE) SRCFILE(XMLSERVICE/QRPGLESRC) +
  DBGVIEW(*SOURCE) OUTPUT(*PRINT) REPLACE(*YES)
CRTRPGMOD MODULE(XMLSERVICE/PLUGPERF) SRCFILE(XMLSERVICE/QRPGLESRC) +
  DBGVIEW(*SOURCE) OUTPUT(*PRINT) REPLACE(*YES)
CRTRPGMOD MODULE(XMLSERVICE/PLUGCACH) SRCFILE(XMLSERVICE/QRPGLESRC) +
  DBGVIEW(*SOURCE) OUTPUT(*PRINT) REPLACE(*YES)
CRTRPGMOD MODULE(XMLSERVICE/PLUGERR) SRCFILE(XMLSERVICE/QRPGLESRC) +
  DBGVIEW(*SOURCE) OUTPUT(*PRINT) REPLACE(*YES)
CRTRPGMOD MODULE(XMLSERVICE/PLUGSQL) SRCFILE(XMLSERVICE/QRPGLESRC) +
  DBGVIEW(*SOURCE) OUTPUT(*PRINT) REPLACE(*YES)
CRTRPGMOD MODULE(XMLSERVICE/PLUGDB2) SRCFILE(XMLSERVICE/QRPGLESRC) +
  DBGVIEW(*SOURCE) OUTPUT(*PRINT) REPLACE(*YES)
CRTRPGMOD MODULE(XMLSERVICE/PLUGRUN) SRCFILE(XMLSERVICE/QRPGLESRC) +
  DBGVIEW(*SOURCE) OUTPUT(*PRINT) REPLACE(*YES)

CRTRPGMOD MODULE(XMLSERVICE/PLUGSIG) SRCFILE(XMLSERVICE/QRPGLESRC) +
  DBGVIEW(*SOURCE) OUTPUT(*PRINT) REPLACE(*YES)
CRTRPGMOD MODULE(XMLSERVICE/PLUGCONV) SRCFILE(XMLSERVICE/QRPGLESRC) +
  DBGVIEW(*SOURCE) OUTPUT(*PRINT) REPLACE(*YES)

CRTRPGMOD MODULE(XMLSERVICE/PLUGCONF3) SRCFILE(XMLSERVICE/QRPGLESRC) +
  DBGVIEW(*SOURCE) OUTPUT(*PRINT) REPLACE(*YES)

CRTRPGMOD MODULE(XMLSERVICE/XMLSERVICE) SRCFILE(XMLSERVICE/QRPGLESRC) +
  DBGVIEW(*SOURCE) OUTPUT(*PRINT) REPLACE(*YES)

CRTSQLRPGI OBJ(XMLSERVICE/XMLSTOREDP) SRCFILE(XMLSERVICE/QRPGLESRC) +
  OBJTYPE(*MODULE) OUTPUT(*PRINT) DBGVIEW(*SOURCE) REPLACE(*YES)

CRTRPGMOD MODULE(XMLSERVICE/XMLMAIN) SRCFILE(XMLSERVICE/QRPGLESRC) +
  DBGVIEW(*SOURCE) OUTPUT(*PRINT) REPLACE(*YES)

CRTRPGMOD MODULE(XMLSERVICE/XMLVER) SRCFILE(XMLSERVICE/QRPGLESRC) +
  DBGVIEW(*SOURCE) OUTPUT(*PRINT) REPLACE(*YES)

CRTRPGMOD MODULE(XMLSERVICE/XMLCGI) SRCFILE(XMLSERVICE/QRPGLESRC) +
  DBGVIEW(*SOURCE) OUTPUT(*PRINT) REPLACE(*YES)

CRTPGM PGM(XMLSERVICE/XMLSERVICE) +
  MODULE(XMLSERVICE/XMLSERVICE XMLSERVICE/PLUGBUG +
         XMLSERVICE/PLUGIPC XMLSERVICE/PLUGRUN +
         XMLSERVICE/PLUGPERF XMLSERVICE/PLUGCACH +
         XMLSERVICE/PLUGERR +
         XMLSERVICE/PLUGSQL XMLSERVICE/PLUGDB2 +
         XMLSERVICE/PLUGCONF3 +
         XMLSERVICE/PLUGPASE XMLSERVICE/PLUGLIC + 
         XMLSERVICE/PLUGSIG XMLSERVICE/PLUGCONV +
         XMLSERVICE/PLUGXML XMLSERVICE/PLUGILE)

CRTSRVPGM SRVPGM(XMLSERVICE/XMLSTOREDP) + 
  MODULE(XMLSERVICE/XMLSTOREDP XMLSERVICE/PLUGBUG +
         XMLSERVICE/PLUGIPC XMLSERVICE/PLUGRUN +
         XMLSERVICE/PLUGPERF XMLSERVICE/PLUGCACH +
         XMLSERVICE/PLUGERR +
         XMLSERVICE/PLUGSQL XMLSERVICE/PLUGDB2 +
         XMLSERVICE/PLUGCONF3 +
         XMLSERVICE/PLUGPASE XMLSERVICE/PLUGLIC + 
         XMLSERVICE/PLUGSIG XMLSERVICE/PLUGCONV +
         XMLSERVICE/PLUGXML XMLSERVICE/PLUGILE) +
  EXPORT(*ALL) ACTGRP(*CALLER)

CRTPGM PGM(XMLSERVICE/XMLMAIN) +
  MODULE(XMLSERVICE/XMLMAIN XMLSERVICE/PLUGBUG +
         XMLSERVICE/PLUGIPC XMLSERVICE/PLUGRUN +
         XMLSERVICE/PLUGPERF XMLSERVICE/PLUGCACH +
         XMLSERVICE/PLUGERR +
         XMLSERVICE/PLUGSQL XMLSERVICE/PLUGDB2 +
         XMLSERVICE/PLUGCONF3 +
         XMLSERVICE/PLUGPASE XMLSERVICE/PLUGLIC + 
         XMLSERVICE/PLUGSIG XMLSERVICE/PLUGCONV +
         XMLSERVICE/PLUGXML XMLSERVICE/PLUGILE)

CRTPGM PGM(XMLSERVICE/XMLVER) +
  MODULE(XMLSERVICE/XMLVER)

CRTPGM PGM(XMLSERVICE/XMLCGI) +
  MODULE(XMLSERVICE/XMLCGI XMLSERVICE/PLUGBUG +
         XMLSERVICE/PLUGIPC XMLSERVICE/PLUGRUN +
         XMLSERVICE/PLUGPERF XMLSERVICE/PLUGCACH +
         XMLSERVICE/PLUGERR +
         XMLSERVICE/PLUGSQL XMLSERVICE/PLUGDB2 +
         XMLSERVICE/PLUGCONF3 +
         XMLSERVICE/PLUGPASE XMLSERVICE/PLUGLIC + 
         XMLSERVICE/PLUGSIG XMLSERVICE/PLUGCONV +
         XMLSERVICE/PLUGXML XMLSERVICE/PLUGILE) +
         BNDSRVPGM(QHTTPSVR/QZSRCORE)

DLTMOD MODULE(XMLSERVICE/PLUGBUG)
DLTMOD MODULE(XMLSERVICE/PLUGPASE)
DLTMOD MODULE(XMLSERVICE/PLUGXML)
DLTMOD MODULE(XMLSERVICE/PLUGIPC)
DLTMOD MODULE(XMLSERVICE/PLUGILE)
DLTMOD MODULE(XMLSERVICE/PLUGPERF)
DLTMOD MODULE(XMLSERVICE/PLUGCACH)
DLTMOD MODULE(XMLSERVICE/PLUGERR)
DLTMOD MODULE(XMLSERVICE/PLUGSQL)
DLTMOD MODULE(XMLSERVICE/PLUGDB2)
DLTMOD MODULE(XMLSERVICE/PLUGRUN)

DLTMOD MODULE(XMLSERVICE/PLUGSIG)
DLTMOD MODULE(XMLSERVICE/PLUGCONV)

DLTMOD MODULE(XMLSERVICE/PLUGCONF3)

DLTMOD MODULE(XMLSERVICE/XMLSERVICE)
DLTMOD MODULE(XMLSERVICE/XMLSTOREDP)
DLTMOD MODULE(XMLSERVICE/XMLMAIN)
DLTMOD MODULE(XMLSERVICE/XMLVER)
DLTMOD MODULE(XMLSERVICE/XMLCGI)

QSH CMD('/usr/bin/db2 -t -f /qsys.lib/XMLSERVICE.lib/QSQLSRC.FILE/CRTSQL.MBR')
ENDPGM
