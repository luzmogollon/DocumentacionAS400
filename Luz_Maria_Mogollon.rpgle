     H*************************  INICIO  ******************************
     H*  APLICACION :
     H*  PROGRAMA   : EJEMPLO1                        ALIAS :
     H*  DESCRIPCION:
     H*  FUNCION    :
     H*
     H*
     H*  CAMBIOS    :    TAREA   FECHA  AUTOR   MOTIVO
     H*                NTTITOS 2309205  WORKING KEY SINGLE DES
     H*                                 CARGA A LOS NUEVOS REGISTROS
     H*                                 "XXXXCXXXXXXXXX07"
     H*****************************************************************
     H*  ARCHIVOS UTILIZADOS:
     H*  MCFV030  -
     H*  CPMER    -
     H*  MCFV031  -
     H*  MCDI009  - MCDI009  Manten. Maestro de Puntos de Venta Instal
     H*
     H*  INDICADORES UTILIZADOS:
     H*  18                             69
     H*  52                             70
     H*  54                             71
     H*  55                             86
     H*  60                             92
     H*  61                             99
     H*  63                             OC
     H*  64                             OD
     H*  65                             KS
     H*  68                             LR
     H*****************************************************************
     H*  SUBRUTINAS UTILIZADAS:
     H*
     H*  PROGRAMAS INVOCADOS  :
     H*
     H*  DESCRIPCION DEL CALCULO:
     H*
     H*
     H*
     H*************************  FINAL  ******************************
      ***                                                          ***
      *** Mantenimiento al Maestro de P.O.S. ..................... ***
      *** MASTER-PERÚ .............................................***
      ***                                                          ***
      ****************************************************************
     ******************** CONTROL DE CAMBIOS **************************
     *** REQ          025403  FECHA 14/01/2013
     *** AUTOR        PEDRO SARAVIA
     *** DESCRIPCION  Se activara el campo propina para ciertos giros
     ***              definidos en la tabla MCFV075
     ******************* CONTROL DE CAMBIOS **************************
     *  REQ          036248  FECHA 16/04/2018
     *  AUTOR        KIKO AGUDELO
     *  DESCRIPCION  Se adiciona campos para MPOS
     ******************* CONTROL DE CAMBIOS **************************
     *  REQ                  FECHA 04/06/2018
     *  AUTOR        PEDRO SARAVIA
     *  DESCRIPCION  Se muestra numero de serie para POS
     ******************* CONTROL DE CAMBIOS **************************
     *  REQ          036596  FECHA 12/06/2018
     *  AUTOR        PEDRO SARAVIA
     *  DESCRIPCION  Se comenta validación de número de serie mpos
     *               duplicado
     ******************* CONTROL DE CAMBIOS **************************
      ** REQ          035407  FECHA 02/08/2018                      ***
      ** AUTOR        PEDRO SARAVIA                                 ***
      ** DESCRIPCION  Integracion de los Sistemas AS400,            ***
      **              MCCENTER, CRM                                 ***
     ******************** CONTROL DE CAMBIOS *************************
     ** REQ          038359  FECHA 29/11/2019                      ***
     ** AUTOR        PEDRO SARAVIA                                        ***
     ** DESCRIPCION  Retirar validación para comercios PPPAAA      ***
     ******************** CONTROL DE CAMBIOS *************************
     ** REQ          PRY-XXX                     FECHA 19/10/2020  ***
     ** AUTOR        PEDRO SARAVIA                                 ***
     ** DESCRIPCION  Se agrego subrutina para autogenerar cod.     ***
     **              terminales solo para casos de matricula       ***
     ******************** CONTROL DE CAMBIOS *************************
     ** REQ          INC-2877                    FECHA 21/07/2021  ***
     ** AUTOR        PEDRO MARCO                                   ***
     ** DESCRIPCION  Se ajusta subrutina de autogenerar para ejecu-***
     **              tar solo en el registro                       ***
     ******************** CONTROL DE CAMBIOS *************************
     ** REQ          REQ-3638                    FECHA 11/10/2021  ***
     ** AUTOR        PEDRO MARCO                                   ***
     ** DESCRIPCION  Devuelve situacion de comercio (Venta o Alqui-***
     **              ler)                                          ***
     ******************** CONTROL DE CAMBIOS *************************
      ** PRY          REQ-981                     FECHA 08/06/2022  ***
      ** AUTOR        PEDRO MARCO                                   ***
      ** DESCRIPCION  Ajustar nuevo codigo de 9 digitos.            ***
      ******************** CONTROL DE CAMBIOS *************************
      * Requerimien.: REQ-7064                                         *
      * Descripcion : Agregar tablas de auditoria (antes y despues)    *
      * Autor       : PEDRO MARCO                                      *
      * Fecha       : 29/03/2023                                       *
      ******************** CONTROL DE CAMBIOS *************************
      * Requerimien.: PRY-1447                                         *
      * Descripcion : Se agrega campo MDSERMX a tabla MCFV030E         *
      * Autor       : PEDRO MARCO                                      *
      * Fecha       : 08/05/2023                                       *
      ******************** CONTROL DE CAMBIOS *************************
      * Requerimien.: PRY-1447                                         *
      * Descripcion : Se controla validacion de comercio con prefijo 3 *
      * Autor       : PEDRO MARCO                                      *
      * Fecha       : 15/06/2023                                       *
      ******************** CONTROL DE CAMBIOS *************************
      * Requerimien.: GDTI-1495                                        *
      * Descripcion : Agregar controles Biomoneda                      *
      * Autor       : PEDRO MARCO                                      *
      * Fecha       : 25/09/2023                                       *
      ******************** CONTROL DE CAMBIOS *************************
      * Requerimien.: REQ - 7978                                       *
      * Descripcion : Mejora módulo log todos los escenarios           *
      * Autor       : PEDRO MARCO                                      *
      * Fecha       : 09/10/2023                                       *
      ******************** CONTROL DE CAMBIOS *************************
      * Requerimien.: GDTI- 2151                                       *
      * Descripcion : Agregar equipos no transaccionales               *
      * Autor       : PEDRO MARCO                                      *
      * Fecha       : 22/11/2023                                       *
      ******************** CONTROL DE CAMBIOS *************************
      * Requerimien.: GSTI- 3938                                       *
      * Descripcion : Actualización del historial de movimientos       *
      * Autor       : PEDRO MARCO                                      *
      * Fecha       : 03/10/2024                                       *
      ******************** CONTROL DE CAMBIOS *************************
     hdatfmt (*iso) datedit(*ymd)
     FMCFV030   UF A E           K DISK
     FMCFV30LA  UF A E           K DISK
     FMCFV30LD  UF A E           K DISK
     FMCFV030e  UF A E           K DISK    prefix(d_)
     FMCFV30ELA UF A E           K DISK    prefix(d_)
     FMCFV30ELD UF A E           K DISK    prefix(d_)
     FMCFV030F  UF A E           K DISK    PREFIX(F_)
     FMCFV30FLA UF A E           K DISK    prefix(F_)
     FMCFV30FLD UF A E           K DISK    prefix(F_)
     FMCLV030FA IF   E           K DISK    PREFIX(L_)
     F                                     RENAME(RMCFV030F:LMCFV030F)
     FMCFM019I  UF   E           K DISK
     FMCFV031   IF   E           K DISK
     FMCFV032   IF   E           K DISK
     FMCFV075   IF   E           K DISK
     FMCLM003   IF   E           K DISK
     fAKLM001A  UF   E           K DISK    prefix(af_)
     FAKFMLOGI  UF A E           K DISK    prefix(af_)
     FAKFMLOGN  UF A E           K DISK    prefix(af_)
     fAKFMARTI  IF   E           K DISK    prefix(ai_)
     FMCFM027   UF   E           K DISK    prefix(co_)
     FMCFM019   UF   E           K DISK    prefix(com_)
     F                                     rename(RMCFM019:mcfm019f)
     fMCLV030D1 IF   E           K DISK    rename(rMCFV30:rV30D1) prefix(t_)
     fMCFT0120  UF   E           K DISK
     fMCFT0120E UF   E           K DISK    rename(rMCFT0120:rMCFT0120E)
     FMCDI009   CF   E             WORKSTN
     F                                     INFDS(FILEDS)
     F                                     SFILE(SFL01:SLN1)
     F                                     SFILE(SFLDEL:SLN2)
     D PGSTAT         SDS
     D  PROGST           *STATUS
     D  IOPGM                  1     10
     D  WSID                 244    253
     D  USER                 254    263
      *
     D T               S             60    DIM(5) CTDATA PERRCD(1)
     D MSG             S             70    DIM(70) CTDATA PERRCD(1)
     * MPOS
     d nPos            s              2  0
     d codCom          s              9  0
     d codComx         s              9a
     d nroTerm         s              4  0
     d iExists         s               n   inz(*off)
     d fecAct          s              8  0
     d horAct          s              6  0
     d sPgTipo         s              6A
     d sPgCodi         s              6A
     d nActTip         s              1  0 inz(*zeros)
     d nLong           s              2  0 inz(*zeros)
     d sSerieNew       s             15A   inz(*Blanks)
     d nFlgSerAlf      s              1  0 inz(*Zeros)
      *
     d dfecha          s               d
     d sfechas         s             10a   Inz(*Blanks)
     d tHora           s               t
     d sHoras          s              8a   Inz(*Blanks)
     d nHora           s              6  0 Inz(0)
     *
     d nCon            s              4  0 inz(0)
     d comEquiv        s              9  0 Inz(0)
     d rucComer        s             11A
     d rucEquiv        s             11A
     *
     d letras          s             27a   inz('ABCDEFGHIJKLMNÑOPQRSTUVWXYZ')
     d ceros           s             27a   inz('000000000000000000000000000')
     d COM_MPOS        c                   const('81')
     *
      *
     D                 DS
     D  KEYMER                 1      9
     D  MORG                   1      2P 0
     D  MCTA                   3      7P 0
     D  MREC                   8      9  0
     D                 DS
     D  DZ_KEY                 1     11
     D     DZ_TTAB             1      3
     D     DZ_CREG             4     11
      *
     D                 DS
     D  SCNID                  1      9
     D                 DS
     D  HF                     1     14  0
     D  H                      1      6  0
     D  F                      7     14  0
     D                 DS
     D  FECARC                 1      8  0
     D  FECARA                 1      4  0
     D  FECARM                 5      6  0
     D  FECARD                 7      8  0
     D                 DS
     D  FECPAN                 1      8  0
     D  FECPAD                 1      2  0
     D  FECPAM                 3      4  0
     D  FECPAA                 5      8  0
     D                 DS
     D  WFECHA                 1      8  0
     D  DD                     1      2  0
     D  MM                     3      4  0
     D  AA                     5      8  0
     D                 DS
     D  WZFECAMD8              1      8  0
     D    WZFEC8A              3      4  0
     D    WZFEC8M              5      6  0
     D    WZFEC8D              7      8  0
     D                 DS
     D  WZFECDMA6              1      6  0
     D    WZFEC6D              1      2  0
     D    WZFEC6M              3      4  0
     D    WZFEC6A              5      6  0
     D
      *
     D FILEDS          ds
     D    binlin             370    370
     D    binpos             371    371
     D BINARY          ds
     D    binval               1      2B 0
      *
     d                 DS
     d nFecact                 1      8  0
     d Anoact                  1      4  0
     d Mesact                  5      6  0
     d Diaact                  7      8  0
      *
     D KCDES           C                   CONST('8B62C863ABD3CF07')
     D PPPAAA          C                   CONST(253357)
     D TERM_VIRTUAL    C                   CONST(9999)
      *
     I*PMER     NS  01
     I*                                10   11 0FLM004
     I*                                52   81  FLM008
     I*                            P  367  368 0FLM068
     I*                            P  432  434 0FLM121
     I*                               963  963  FLM253
     I*                               987  988  FLM256
      *===================================================*
      *         MODULO MANEJADOR DE RUTINAS               *
      *===================================================*
     C     *IN03         DOWEQ     '0'
     C     NEXT          CASEQ     10            SUB10
     C     NEXT          CASEQ     20            SUB20
     C     NEXT          CASEQ     30            SUB30
     C     NEXT          CASEQ     40            SUB40
     C     NEXT          CASEQ     50            SUB50
     C                   CAS                     *PSSR
      *
     C                   ENDCS
     C                   ENDDO
     C                   CLOSE     *ALL
     C                   MOVE      '1'           *INLR
     C                   RETURN
      *---------------------------------------------------*
      *  RUTINA : SUB10  = PROCESA  PRIMERA IMAGEN        *
      *---------------------------------------------------*
     C     SUB10         BEGSR
     C                   Z-ADD     *ZEROS        SLN1              4 0
     C                   Z-ADD     *ZEROS        SFLSIZ            4 0
     C                   MOVE      IOPGM         SCNID
      *** Controla si es Add/Del para no regresar a 1er reg
     C     ADDDEL        IFEQ      'S'
     C                   MOVE      'N'           ADDDEL
     C                   ELSE
     C                   Z-ADD     *ZEROS        MCCOCO
     C                   Z-ADD     *ZEROS        MCTIEN
     C                   Z-ADD     *ZEROS        MCTERM
     C                   ENDIF
      *
     C                   EXSR      RUTAVA
      *
     C     SFLSIZ        IFEQ      *ZEROS
     C                   Z-ADD     50            NEXT
     C                   ELSE
     C                   Z-ADD     1             SLN1
     C                   Z-ADD     1             UBICA
     C                   Z-ADD     20            NEXT
     C                   ENDIF
     C                   ENDSR
      *---------------------------------------------------*
      *  RUTINA : SUB20  = PRESENTA EL SUBFILE            *
      *---------------------------------------------------*
     C     SUB20         BEGSR
     C                   MOVE      *BLANKS       SITUAR
     C                   SETON                                        5253
     C                   WRITE     HEADER
     C                   WRITE     FOOTER
     C                   WRITE     MSG00
     C                   EXFMT     SFLCTL01
     C                   EXSR      CLRMSG
      *-- ROLL-UP
      * -----------------
     C                   SELECT
     C                   WHEN      *IN94
     C     SFLSIZ        CHAIN     SFL01                              99
     C  N99              Z-ADD     COD           MCCOCO
     C  N99              Z-ADD     TIE           MCTIEN
     C  N99              Z-ADD     TER           MCTERM
     C  N55              EXSR      RUTAVA
     C*
     C   80              Z-ADD     1             UBICA             4 0
     C   80              MOVEL     MSG(2)        WMSG
      *-  ROLL-DOWN                                                      |
      * -----------------
     C                   WHEN      *IN95
     C     1             CHAIN     SFL01                              99
     C  N99              Z-ADD     COD           MCCOCO
     C  N99              Z-ADD     TIE           MCTIEN
     C  N99              Z-ADD     TER           MCTERM
     C                   EXSR      RUTRET
      *
     C   02              Z-ADD     SFLSIZ        UBICA
     C   02              MOVEL     MSG(1)        WMSG
     C*
      *-- POSICIONAMIENTO DE BUSQUEDA
      * -----------------
     C                   WHEN      *IN45 AND SITUAR <> *ZEROS
     C                   Z-ADD     SITUAR        MCCOCO
     C                   Z-ADD     *ZEROS        MCTIEN
     C                   Z-ADD     *ZEROS        MCTERM
     C                   MOVE      '0'           *IN15
     C                   Z-ADD     1             UBICA
     C                   EXSR      RUTAVA
     c*
     c*------------------
     C                   WHEN      *IN05
     C                   Z-ADD     10            NEXT
     c*
     c*------------------
     C                   WHEN      *IN09
     C                   EXSR      SRTERMINALES
      *
      *-- REPETICION DE OPCIONES
      * -----------------
     C                   WHEN      *IN13
     C                   Z-ADD     1             SLN1
     C                   Z-ADD     *ZEROS        OPCSAV
     C     OPCSAV        DOWEQ     *ZEROS
      *          *IN99   ANDEQ'0'
     C                   READC     SFL01                                  99
     C                   MOVE      OPCION        OPCSAV            1 0
     C                   ENDDO
     C     *IN99         IFEQ      '0'
     C     SLN1          DOWLE     SFLSIZ
     C     SLN1          CHAIN     SFL01                              98
     C                   Z-ADD     OPCSAV        OPCION
     C                   UPDATE    SFL01
     C                   ADD       1             SLN1
     C                   ENDDO
     C                   ENDIF
     C*
      * -----------------
     C                   WHEN      *IN06
     C                   MOVE      *OFF          *IN92
     C                   SETON                                        18
     C                   EXSR      CLEAR
     C                   SETOFF                                       18
     C                   MOVE      0             PLZPLZ
     C                   EXSR      RUTADD
      *
      * -----------------
     C                   WHEN      *IN10
     C                   MOVE      '1'           *IN15
      *                   -------
      * -----------------
     C                   WHEN      *IN01
     C                   EXSR      RUTAYU
      *
      * -----------------
     C                   OTHER
     C                   Z-ADD     30            NEXT
     C                   ENDSL
      *
     C                   ENDSR
      *---------------------------------------------------*
      *  RUTINA : SUB30  = CONSISTENCIA DE OPCIONES       *
      *---------------------------------------------------*
     C     SUB30         BEGSR
     C                   MOVE      '0'           *IN90
     C                   READC     SFL01                                  99
     C*
     C     *IN99         DOWEQ     '0'
      *
     C                   IF        OPCION <> 0 AND OPCION <> 2 AND
     C                             OPCION <> 4 AND OPCION <> 7
     C                   MOVE      '1'           *IN90
     C                   MOVE      '1'           *IN78
     C                   Z-ADD     SLN1          UBICA
     C                   MOVEL     MSG(3)        WMSG
     C                   ENDIF
      *
     C                   UPDATE    SFL01
     C                   MOVE      '0'           *IN78
     C                   READC     SFL01                                  99
     C                   ENDDO
      *
     C  N90              Z-ADD     40            NEXT
     C   90              Z-ADD     20            NEXT
     C                   ENDSR
      *---------------------------------------------------*
      *  RUTINA : SUB40  PROCESA OPCION                   *
      *---------------------------------------------------*
     C     SUB40         BEGSR
     C     *IN20         IFEQ      '1'
     C                   MOVEA     *ZEROS        *IN
     C                   MOVE      '1'           *IN20
     C                   ELSE
     C                   MOVEA     *ZEROS        *IN
     C                   END
     C*
     C                   MOVE      '1'           *IN54
     C                   WRITE     CTLDEL
     C                   MOVE      '0'           *IN54
      *
     C                   Z-ADD     *ZEROS        SIZE              4 0
     C                   Z-ADD     *ZEROS        SLN2              4 0
     C                   MOVE      '0'           ERASE             1
      *
     C                   ADD       1             UBICA
     C                   ADD       1             SLN1
      *
     C                   READC     SFL01                                  99
     C                   DOW       NOT *IN99 AND NOT *IN03 AND NOT *IN12
     C     OPCION        CASEQ     2             RUTACT                   92
     C     OPCION        CASEQ     4             RUTELI
     C     OPCION        CASEQ     7             RUTADD                   92
     C                   ENDCS
     C                   READC     SFL01                                  99
     C                   ENDDO
      *** Si ha sido una duplicación o Modificación .......
     C     *IN92         IFEQ      *ON
     C                   Z-ADD     d1cest        MCCOCO
     C                   Z-ADD     TIENDA        MCTIEN
     C                   Z-ADD     TERMIN        MCTERM
     C                   ENDIF
      *** .................................................
     C                   Z-ADD     10            NEXT
     C                   ENDSR
      *---------------------------------------------------*
      *  RUTINA : SUB50  = NO EXISTE REGISTROS EN EL ARCH.*
      *---------------------------------------------------*
     C     SUB50         BEGSR
     C                   MOVEA     *ZEROS        *IN
     C                   MOVE      '1'           *IN52
     C                   DOW       NOT *IN06 AND NOT *IN03 AND NOT *IN12
     C                   MOVEL     *BLANKS       SITUAR
     C                   WRITE     HEADER
     C                   WRITE     NODATA
     C                   WRITE     FOOTER
     C                   WRITE     MSG00
     C                   EXFMT     SFLCTL01
     C                   EXSR      CLRMSG
      * REGRESA                                                |
     C     *IN12         IFEQ      '1'
     C                   Z-ADD     10            NEXT
     C                   ENDIF
      * ADICIONAR                                              |
     C     *IN06         IFEQ      '1'
     C                   SETON                                        18
     C                   EXSR      CLEAR
     C                   SETOFF                                       18
     C                   EXSR      RUTADD
     C                   MOVE      '1'           *IN06
     C                   ENDIF
     C                   ENDDO
     C                   ENDSR
      *---------------------------------------------------*
      *  @AutoGen - Autogenera serie de terminal          *
      *---------------------------------------------------*
     c     @AutoGen      begsr
     c                   If        OPCION =*Zeros
     c                   z-add     1             nVal              4 0
     c                   eval      nCon += 1
     c                   if        nCon = 1 and TERMIN=*Zeros
     c     d1cest        setll     mcfv030
     c     d1cest        reade(n)  mcfv030
     c                   dow       not %eof(mcfv030)
     c                   If        mcterm = 1
     c                   Eval      D1CESD = MCCESD
     c                   Endif
     c                   if        mcterm = nVal
     c                   eval      nVal += 1
     c                   else
     c                   if        mcterm > nVal
     c                   leave
     c                   endif
     c                   endif
     c     d1cest        reade(n)  mcfv030
     c                   enddo
     c                   z-add     nVal          TERMIN
     c                   endif
     c                   endif
     C                   movel     MENCOM        NOMPOS
     C                   movel     MEDIST        LOCALI
     c                   endsr
      *---------------------------------------------------*
      *  RUTINA : RUTADD = ADICION DE REGISTOS            *
      *---------------------------------------------------*
      *
     C     RUTADD        BEGSR
     C     *IN92         IFEQ      '0'
     C                   MOVEL     '0'           *IN90
     C                   MOVEL     T(1)          TITULO
     C                   MOVE      *ZEROS        *IN
     C                   MOVE      '0'           *IN12
     C                   MOVE      '0'           *IN30
     c                   z-add     0             nCon
     C                   SETON                                            60
     C                   ELSE
     C                   MOVE      'S'           ADDDEL
     C                   MOVEL     T(4)          TITULO
     C                   END
      *
     C     *IN12         DOWEQ     '0'
     C     SLN1          IFEQ      *ZEROS
     C                   WRITE     NODATA
     C                   MOVEA     '10'          *IN(52)
     C                   ELSE
     C                   MOVEA     '11'          *IN(52)
     C                   ENDIF
      *                                                          |
     C                   Z-ADD     1             UBICA
     C                   Z-ADD     F             FECHAI
     C***                  Z-ADD0         PLZPLZ                 |
      ***                                                        |
     C     *IN92         IFEQ      '1'
     C                   EXSR      RUTMAW
     C                   END
      ***                                                        |
     C                   WRITE     HEADER
     C                   WRITE     MSG00
     C                   EXFMT     IMG01
     C                   EXSR      CLRMSG
     C                   MOVE      '0'           *IN90
      ***                                                        |
     C     *IN12         IFEQ      '1'
     C     SFLSIZ        IFEQ      *ZEROS
     C                   MOVE      '1'           *IN90
     C                   Z-ADD     50            NEXT
     C                   ELSE
     C                   MOVE      '1'           *IN90
     C                   Z-ADD     20            NEXT
     C                   ENDIF
     C                   ENDIF
      * CONSULTA CODIGO DE GRUPO                                 |
     C     *IN04         IFEQ      '1'
     C                   CALL      'MCPI009A'
     C                   ENDIF
      *                                                          |
     C     *IN93         IFEQ      '0'
     C                   MOVE      'A'           ACC               1
     C                   EXSR      RUTCHK
     C     *IN90         IFEQ      '0'
     C     *IN93         ANDEQ     '0'
     c                   EXSR      SRIMG02
     C   90              ITER
     C*
     C                   CLEAR                   RMCFV30
     C                   EXSR      RUTMWA
     C                   MOVEL     USER          MCUCRE
     c                   MOVE      *DATE         MCFCRE
     C                   TIME                    MCHCRE
     C                   MOVEL     KCDES         MWRKSD
     C                   WRITE     RMCFV30
     c                   Exsr      SbrFecReg
     c                   eval      TIPMOV='I'
     C                   EXSR      GrbLogD30
     c                   Eval      pClave1=%editc(MCCOCO:'X')
     c                   Eval      pClave2=%editc(MCTIEN:'X')
     c                   Eval      pClave3=%editc(MCTERM:'X')
     c                   Eval      pClave4='MCFV030'
     c                   Eval      pTipMov='W'
     c                   Eval      pTabla1='MCFV030'
     c                   exsr      sbrGralog
     c                   exsr      srGrabTMpos
     c                   exsr      srGrabNTran
     c                   Exsr      Homologar
     C*
     C                   EXSR      CLEAR
     C                   MOVEL     MSG(5)        WMSG
     C                   SETON                                            60
      *                                                      | | |
     C*          1         CHAINSFL01                99      | | |
     C*       N99          Z-ADDCOD       PSCOCO             | | |
     C*       N99          Z-ADDTIE       PSTIEN             | | |
     C*       N99          Z-ADDTER       PSTERM             | | |
     C*        99          Z-ADD*ZEROS    PSCOCO             | | |
     C*        99          Z-ADD*ZEROS    PSTIEN             | | |
     C*        99          Z-ADD*ZEROS    PSTERM             | | |
     C                   EXSR      RUTAVA
     C                   ENDIF
     C                   ENDIF
     C   92              SETON                                        12
     C                   ENDDO
     C                   ENDSR
      *---------------------------------------------------*
      *  RUTINA : RUTACT = ACTUALIZACION DE REGISTROS     *
      *---------------------------------------------------*
     C     RUTACT        BEGSR
     C                   MOVEA     *ZEROS        *IN
     C                   SETON                                        6330
     C                   SETOFF                                       90
     C                   MOVE      '0'           GRABA             1
     C                   MOVEL     T(2)          TITULO
      *
     C                   Z-ADD     COD           MCCOCO
     C                   Z-ADD     TIE           MCTIEN
     C                   Z-ADD     TER           MCTERM
     C     KEY1          CHAIN(N)  RMCFV30                            99
     C                   DOW       NOT *IN99 AND NOT *IN03 AND NOT *IN12
     c                                       AND GRABA = '0'
     C     *IN90         IFEQ      '0'
     C                   EXSR      RUTMAW
     C                   ENDIF
     C*
     C                   WRITE     HEADER
     C                   WRITE     MSG00
     C                   EXFMT     IMG01
     C                   EXSR      CLRMSG
     C                   MOVE      'M'           ACC
      * CONSULTA CODIGO DE GRUPO                                 |
     C   04              CALL      'MCPI009A'
      *** Chequea Datos Adicionados/Modificados ...........      |
     C                   EXSR      RUTCHK
      *** .................................................      |
     C                   IF        NOT *IN93 AND NOT *IN90
     C                   EXSR      SRIMG02
     C                   IF        NOT *IN90
     C     KEY1          CHAIN     RMCFV30                            99
     c                   Exsr      SbrFecReg
     c                   eval      TIPMOV='U'
     C                   EXSR      GrbLogA30
     C  N99              EXSR      RUTMWA
     C                   MOVEL     USER          MCUMOD
     c                   MOVE      *DATE         MCFMOD
     C                   TIME                    MCHMOD
     C                   UPDATE    RMCFV30
     C                   EXSR      GrbLogD30
     c                   Eval      pClave1=%editc(MCCOCO:'X')
     c                   Eval      pClave2=%editc(MCTIEN:'X')
     c                   Eval      pClave3=%editc(MCTERM:'X')
     c                   Eval      pTipMov='U'
     c                   Eval      pTabla1='MCFV030'
     c                   exsr      sbrGralog
     c                   exsr      srGrabTMpos
     c                   exsr      srGrabNTran
     c                   Exsr      Homologar
     C                   MOVEL     '1'           GRABA
     C                   ENDIF
     C                   ENDIF
     C                   ENDDO
     C                   Z-ADD     SLN1          UBICA
     C                   MOVE      ' '           OPCION
      ***                  EXSR RUTMWA
     C                   UPDATE    SFL01
     C                   FEOD      MCFV030
     C                   SETON                                        92
     C                   MOVE      'S'           ADDDEL
     C                   ENDSR
      *---------------------------------------------------*
      *  RUTINA : RUTELI = ELIMINACION DE REGISTROS       *
      *---------------------------------------------------*
     c     RUTELI        BEGSR
     c*
     c                   Movea     *Zeros        *IN
     c                   Seton                                        6330
     c                   Setoff                                       90
     c*
     c                   Move      'N'           ADDDEL            1
     c                   Z-ADD     COD           MCCOCO
     c                   Z-ADD     TIE           MCTIEN
     c                   Z-ADD     TER           MCTERM
     c     KEY1          Chain     RMCFV30                            99
     c     *IN99         IfEq      '0'
     c                   Eval      pClave1=%editc(MCCOCO:'X')
     c                   Eval      pClave2=%editc(MCTIEN:'X')
     c                   Eval      pClave3=%editc(MCTERM:'X')
     c                   Delete    RMCFV30
     c                   Eval      pTipMov='D'
     c                   Eval      pTabla1='MCFV030'
     c                   exsr      sbrGralog
     c                   Eval      codcom = COD
     c                   Exsr      srVal_MPos
     c                   If        *in82 or *in83
     c                   Eval      d_MDCOCO = COD
     c                   Eval      d_MDTIEN = MCTIEN
     c                   Eval      d_MDTERM = MCTERM
     c     kmcfv30e      Chain     mcfv030e
     c                   If        %Found(mcfv030e)
     c                   Eval      pClave1=%editc(d_MDCOCO:'X')
     c                   Eval      pClave2=%editc(d_MDTIEN:'X')
     c                   Eval      pClave3=%editc(d_MDTERM:'X')
     c                   Delete    rmcfv030e
     c                   Eval      pTipMov='D'
     c                   Eval      pTabla1='MCFV030E'
     c                   exsr      sbrGralog
     c*Serie desvinculada --> A
     c                   Exsr      sbrActivaSerie
     c                   EndIf
     c*
     c                   Eval      f_MRCOCO = COD
     c                   Eval      f_MRTIEN = MCTIEN
     c                   Eval      f_MRTERM = MCTERM
     c     kmcfv30f      Chain     mcfv030f
     c                   If        %Found(mcfv030f)
     c                   Eval      pClave1=%editc(f_MRCOCO:'X')
     c                   Eval      pClave2=%editc(f_MRTIEN:'X')
     c                   Eval      pClave3=%editc(f_MRTERM:'X')
     c                   Delete    rmcfv030f
     c                   Eval      pTipMov='D'
     c                   Eval      pTabla1='MCFV030F'
     c                   exsr      sbrGralog
     c*Serie desvinculada --> A
     c                   Exsr      sbrActivaSerie
     c                   EndIf
     c*
     c                   EndIf
     c* Determina estado comercio
     c* V=venta Q=alquiler
     c                   Exsr      sbrUpdest
     c*
     c
     c                   Move      'S'           ADDDEL
     c                   End
     c                   FEOD      MCFV030
     c                   ENDSR
     c*****************************************************
     c* Devuelve estado comercio (V:venta o Q:alquiler)   *
     c*****************************************************
     c     sbrUpdest     BegSr
     c                   Eval      pComercio = %Editc(COD:'X')
     c                   Call      'MCPI009Z'
     c                   parm                    pComercio         9
     c                   parm      ' '           pTipOpe           1
     c
     c     MCCOCO        Chain     MCFM027
     c                   If        %Found(MCFM027)
     c
     c                   If        co_MEFIL2 <> pTipOpe
     c                   Eval      co_MEFIL2 = pTipOpe
     c                   Update    RMCFM027
     c                   EndIf
     c
     c                   EndIf
     c                   EndSr
     c*****************************************************
     c* Activa serie desvinculada                         *
     c*****************************************************
     c     sbrActivaSerieBegSr
     c     d_MDSERM      Chain     AKLM001A
     c                   If        %found(AKLM001A)
     c                   If        af_CSIAC = 'Q'
     c                   Exsr      SbrFecReg
     c                   Eval      af_TIPMOV = ''
     c                   Exsr      GrabaLogIni
     c                   Eval      af_CSIAC= 'A'
     c                   Update    RAFITEM
     c                   Eval      af_TIPMOV = 'U'
     c                   Exsr      GrabaLogFin
     c                   endif
     c                   endif
     c                   EndSr
     c*****************************************************
     c*** RUTCHK : Rutina de Consistencia ...............**
      *****************************************************
     C     RUTCHK        BEGSR
     C                   MOVE      '0'           *IN90
      *** Consistencia Código de Comercio en CPMER  .......
     C     PLZPLZ        IFNE      1
     C                   Z-ADD     105           MORG
     C                   Z-ADD     1             MREC
     C                   Z-ADD     d1cest        MCTA
      *
     C     d1cest        CHAIN(n)  mcfm019i                           86
      * NO EXISTE
     C                   IF        *IN86
     C                   SETON                                        9060
     C                   MOVEA     '00000000'    *IN(61)
     C                   MOVEA     '000000000'   *IN(69)
     C                   MOVEL     MSG(20)       WMSG
     C                   GOTO      FINCHK
     C* OK EXISTE
     C                   ELSE
     C                   Eval      rucComer = MERUCE
     c  N92              exsr      @autogen
     C                   z-add     0             Moneda
     C                   select
     C                   when      memone='604'
     C                   Z-add     1             Moneda
     C                   when      memone='840'
     C                   Z-add     2             Moneda
     C                   endsl
     C                   ENDIF
     C                   ENDIF
      *
      *-- CONSISTENCIA DE INGRESOS
     C                   IF        ACC = 'A' AND *IN90 = '0'
      *
      *  Si no es Jockey Plaza Consistencia Cód.Comercio..
      *  Código de Comercio no puede ser cero ............
     C                   IF        PLZPLZ = 0  AND d1cest = *ZEROS
     C                   SETON                                        9060
     C                   MOVEA     '00000000'    *IN(61)
     C                   MOVEA     '000000000'   *IN(69)
     C                   MOVEL     MSG(9)        WMSG
     C                   GOTO      FINCHK
     C                   ENDIF
     C*
      *** Consistencia que Registro no se duplique ........      |
     C                   Z-ADD     d1cest        MCCOCO
     C                   Z-ADD     TIENDA        MCTIEN
     C                   Z-ADD     TERMIN        MCTERM
     C     KEY1          CHAIN(N)  MCFV030                            85
     C     *IN85         IFEQ      '0'
     C                   SETON                                        9060
     C                   MOVEA     '00000000'    *IN(61)
     C                   MOVEA     '0000'        *IN(69)
     C                   MOVEL     MSG(6)        WMSG
     C                   GOTO      FINCHK
     C                   ENDIF
     C                   ENDIF
     C*
      ***  Chequea el Código de Terminal ..................
     C     TERMIN        IFEQ      *ZEROS
     C                   SETON                                        9062
     C                   SETOFF                                       6061
     C                   MOVEA     '00000000'    *IN(63)
     C                   MOVEA     '00'          *IN(71)
     C                   MOVEL     MSG(10)       WMSG
     C                   GOTO      FINCHK
     C                   ENDIF
      *
      *-- CHEQUEA EL ESTADO DEL POS
      *
     C                   IF        Estado <> 1 and Estado <> 2
     C                   SETON                                        9063
     C                   SETOFF                                       72
     C                   MOVEA     '000'         *IN(60)
     C                   MOVEA     '00000000'    *IN(64)
     C                   MOVEL     MSG(8)        WMSG
     C                   GOTO      FINCHK
     C                   ENDIF
      *
      *-- CHEQUEA VERSION DEL SOFTWARE
     C                   IF        D1TVER <> 'I' and D1TVER <> 'V' and
     C                             D1TVER <> 'C'
     C                   SETON                                        9075
     C                   MOVEA     '0000000000'  *IN(60)
     C                   MOVEL     MSG(52)       WMSG
     C                   GOTO      FINCHK
     C                   ENDIF
      *
      *-- CHEQUEA VERSION DEL SOFTWARE
     C                   IF        D1NVER <> 100 AND D1NVER <> 200 AND
     C                             D1NVER <> 000 AND D1NVER <> 400
     C                   SETON                                        9076
     C                   MOVEA     '0000000000'  *IN(60)
     C                   MOVEL     MSG(53)       WMSG
     C                   GOTO      FINCHK
     C                   ENDIF
      *
      *-- CAJAS TERMINALES DE RIPLEY
     C*                  IF        D1TVER = 'C' and D1NVER <> 000
     C*                  SETON                                        9076
     C*                  MOVEA     '0000000000'  *IN(60)
     C*                  MOVEL     MSG(53)       WMSG
     C*                  GOTO      FINCHK
     C*                  ENDIF
      *
      *-- CHEQUEA LA UBICACION FISICA DEL POS
     C     NOMPOS        IFEQ      *BLANKS
     C                   SETON                                        9069
     C                   MOVEA     '00000000'    *IN(60)
     C                   MOVE      '0'           *IN68
     C                   MOVEA     '000'         *IN(70)
     C                   MOVEL     MSG(16)       WMSG
     C                   GOTO      FINCHK
     C                   ENDIF
      *-- CHEQUEA LA LOCALIDAD DEL POS
     C     LOCALI        IFEQ      *BLANKS
     C                   SETON                                        9070
     C                   MOVEA     '00000000'    *IN(60)
     C                   MOVEA     '00'          *IN(68)
     C                   MOVEA     '00'          *IN(71)
     C                   MOVEL     MSG(17)       WMSG
     C                   GOTO      FINCHK
     C                   ENDIF
      *-- ARMA EL CODIGO DE LA PANTALLA
     C                   MOVEL     'MC00'        PANTAL
     C                   MOVE      TERMIN        PANTAL
      *-- CHEQUEA EL USUARIO ASIGNADO AL POS
     C     USUARI        IFEQ      *BLANKS
     C                   SETON                                        9072
     C                   MOVEA     '00000000'    *IN(60)
     C                   MOVEA     '0000'        *IN(68)
     C                   MOVEL     MSG(19)       WMSG
     C                   GOTO      FINCHK
     C                   ENDIF
      * CHEQUEA QUE CODIGO DE GRUPO EXISTA
     C                   MOVEL     USUARI        USUA4             4 0
     C     USUA4         CHAIN     MCFV031                            86
     C                   IF        *IN86
     C                   SETON                                        9072
     C                   MOVEA     '00000000'    *IN(60)
     C                   MOVEA     '0000'        *IN(68)
     C                   MOVEL     MSG(24)       WMSG
     C                   GOTO      FINCHK
     C                   ENDIF
      *** Chequea Código de Comercio de reg. Jockey Plaza..
     C     PLZPLZ        IFEQ      1
      *** Código de Comercio no puede ser cero (Jockey) ...    |
     C     CODMER        IFEQ      *ZEROS
     C                   SETON                                        9074
     C                   MOVEA     '00000000'    *IN(60)
     C                   MOVEA     '000000'      *IN(68)
     C                   MOVEL     MSG(9)        WMSG
     C                   GOTO      FINCHK
     C                   ENDIF
      *** Consistencia Cód. de Comercio en CPMER  (Jockey).    |
     C                   Z-ADD     105           MORG
     C                   Z-ADD     1             MREC
     C                   Z-ADD     CODMER        MCTA
     C     codmer        CHAIN(n)  mcfm019i                           86
     C                   IF        *IN86
     C                   SETON                                        9074
     C                   MOVEA     '00000000'    *IN(60)
     C                   MOVEA     '000000'      *IN(68)
     C                   MOVEL     MSG(20)       WMSG
     C                   GOTO      FINCHK
      *
     C                   Else
     C                   Z-add     0             Moneda
     c                   select
     C                   when      memone='604'
     C                   Z-add     1             Moneda
     C                   when      memone='840'
     C                   Z-add     2             Moneda
     C                   ENDsl
     C                   ENDIF
     c*
     C                   ENDIF
      *-- CHEQUEA EL CODIGO DE LA MONEDA
     c                   IF        moneda <> 01 and moneda <> 02
     C                   SETON                                        9064
     C                   MOVEA     '0000'        *IN(60)
     C                   MOVEA     '00000000'    *IN(65)
     C                   MOVEL     MSG(11)       WMSG
     C                   GOTO      FINCHK
     C                   ENDIF
      *** Consistencia que Cod. de Comercio soporte P.O.S.

     c                   eval      sPgTipo = %subst(meemod:2:2)
     c                   eval      sPgCodi = '1'
     C     key075        chain     MCFV075
     C                   if        %found() or (meemod='S90')
     C                   ELSE
     C                   IF        PLZPLZ = 1
     C                   SETON                                        9074
     C                   ELSE
     C                   SETON                                        9060
     C                   ENDIF
     C                   MOVEA     '00000000'    *IN(60)
     C                   MOVEA     '000000'      *IN(68)
     C                   MOVEL     MSG(31)       WMSG
     C                   GOTO      FINCHK
     C                   ENDIF
      *** Consistencia que Comercios de Transacciones Unicas...
     C***                IF        memcc ='4829' or memcc ='6051' or
     C***                          memcc ='7511' or memcc ='7995'
     C***                          FLM121 = 9311
     C*                  IF        FLM004 <> 8
     C*z                 IF        PLZPLZ = 1
     C*z                 SETON                                        9074
     C*z                 ELSE
     C*z                 SETON                                        9060
     C*z                 ENDIF
     C*z                 MOVEA     '00000000'    *IN(60)
     C*z                 MOVEA     '000000'      *IN(68)
     C*z                 MOVEL     MSG(32)       WMSG
     C*z                 GOTO      FINCHK
     C*z                 ENDIF
     C***                ENDIF
      *** Consistencia que Comercio no sea una Cadena .........
     C**                 IF        FLM004 = 4
     c                   if        mecest > 900000000
     C                   IF        PLZPLZ = 1
     C                   SETON                                        9074
     C                   ELSE
     C                   SETON                                        9060
     C                   ENDIF
     C                   MOVEA     '00000000'    *IN(60)
     C                   MOVEA     '000000'      *IN(68)
     C                   MOVEL     MSG(33)       WMSG
     C                   GOTO      FINCHK
     C                   ENDIF
      *
      *-- CHEQUEA CODIGO COMERCIO DOLARES
      *
     C                   IF        D1CESD <> *ZEROS
      *
      * MONEDA DE COMER ORIGINAL DEBE SER SOLES
     C                   IF        MONEDA <> 01
     C                   SETON                                        9077
     C                   MOVEA     '000000000'   *IN(60)
     C                   MOVEL     MSG(54)       WMSG
     C                   GOTO      FINCHK
     C                   ENDIF
      *
     C                   Z-ADD     105           MORG
     C                   Z-ADD     1             MREC
     C                   Z-ADD     D1CESD        MCTA
     C     d1cesd        CHAIN(n)  mcfm019i                           77
      *
     C* COMERCIO EQUIVAL DEBE SER DOLARES (840)
     C                   IF        NOT *IN77 AND memone <>'840'
     C                   SETON                                        9077
     C                   MOVEA     '0000000000'  *IN(60)
     C                   MOVEL     MSG(55)       WMSG
     C                   GOTO      FINCHK
     C                   ENDIF
      *
     C                   IF        NOT *IN77 AND memone = '840'
     C                   MOVEL     medire        D1DESD
     C                   ELSE
     C                   MOVE      *BLANKS       D1DESD
     C                   ENDIF
      *
     C* COMERCIO EQUIVAL NO EXISTE
     C                   IF        *IN77
     C                   SETON                                        9077
     C                   MOVEA     '0000000000'  *IN(60)
     C                   MOVEL     MSG(56)       WMSG
     C                   GOTO      FINCHK
     C                   ENDIF
     C*** Validar comecio equivalente en dolares
     C                   If        *In77 = *Off
     C                   Eval      rucEquiv = MERUCE
     c                   If        rucComer <> rucEquiv
     C                   SETON                                        9077
     C                   MOVEA     '0000000000'  *IN(60)
     C                   MOVEL     MSG(68)       WMSG
     C                   GOTO      FINCHK
     c                   Endif
     C     D1CESD        Chain     MCLV030D1
     C                   If        %Found()
     C                   If        MCCOCO <> t_MCCOCO
     C                   SETON                                        9077
     C                   MOVEA     '0000000000'  *IN(60)
     C                   MOVEL     MSG(67)       WMSG
     C                   GOTO      FINCHK
     C                   Endif
     C                   Endif
     C                   Endif
      *
     C                   ENDIF
      *
     C     FINCHK        ENDSR
      *---------------------------------------------------*
      *  RUTINA : RUTMWA = MUEVE CAMPOS PANTALLA-ARCHIVO  *
      *---------------------------------------------------*
     C     RUTMWA        BEGSR
     C*
     C                   Z-ADD     d1cest        MCCOCO
     C                   Z-ADD     TIENDA        MCTIEN
     C                   Z-ADD     TERMIN        MCTERM
     C                   Z-ADD     ESTADO        MCESTA
     C                   Z-ADD     MONEDA        MCMOCO
     C**                 Z-ADD     SUCURS        MCCOSU
     C**                 Z-ADD     AGENCI        MCCOAG
     C                   Z-ADD     CUENTA        MCCUCO
     C                   Z-ADD     FECHAI        FECPAN
     C                   EXSR      RUTPA
     C                   Z-ADD     FECARC        MCFEIN
     C                   MOVEL     NOMPOS        MCNOPS
     C                   MOVEL     LOCALI        MCLOCA
     C                   MOVEL     PANTAL        MCWRKS
     C                   MOVEL     USUARI        MCUSUA
CAFG C                   MOVE      PLZPLZ        MCPLAZ
CAFG C                   MOVEL     *ZEROS        MCCOME
CAFG C                   MOVE      CODMER        MCCOME
     C*
     C                   IF        D1TVER <> MCTVER OR
     C                             D1NVER <> MCNVER
     C                   MOVEL     USER          MCUVER
     c                   MOVE      *DATE         MCFVER
     C                   TIME                    MCHVER
     C                   ENDIF
     C*
     C                   MOVE      D1TVER        MCTVER
     C                   Z-ADD     D1NVER        MCNVER
     C                   Z-ADD     D1CESD        MCCESD
     C*
     C                   Z-ADD     D2PSER        MCPSER
     C                   MOVEL     D2PMOD        MCPMOD
     C                   MOVEL     D2PMRG        MCPMRG
     C*
     C                   Z-ADD     D2ISER        MCISER
     C                   MOVEL     D2IMOD        MCIMOD
     C                   MOVEL     D2IMRG        MCIMRG
     C*
     C                   Z-ADD     D2KSER        MCKSER
     C                   MOVEL     D2KMOD        MCKMOD
     C                   MOVEL     D2KMRG        MCKMRG
     C*
     C                   MOVEL     D2TCOM        MCTCOM
     C*
     C                   Z-ADD     D2MSER        MCSERD
     C                   MOVEL     D2MMRG        MCMMRG
     C                   MOVEL     D2EID         MCEIDD
     C                   MOVEL     D2NIP         MCNIPD
     C                   MOVEL     D2TANT        MCTANT
     C                   Z-ADD     D2CDIG        MCNCDD
     C                   MOVEL     D2SPED        MCSPED
      * Activacion de Propina
      *----------------------
      * relacion comercio - giro
     c                   movel     '0'           nSwP              1
     c     mccoco        Chain(n)  mcfm019i
     c                   If        %found
     c                   Movel     memcc         kCodi
     c                   EndIF
     c
     c                   Movel     'GIRO  '      kTipo
     c     kMcfv075      chain     mcfv075                            88
     c                   If        %found
     c                   eval      nSwP = '1'
     c                   EndIF
     c
     c                   If        nSwP = '1'
      * relacion cadena - comercio
     c                   z-add     0             nCade             9 0
     c     mccoco        Chain     mclm003
     c                   If        %found
     c                   z-add     recade        nCade
     c                   EndIF
      * Excepcion
     c                   z-add     0             nComercio         9 0
     c                   movel     *blanks       vTipo             1
     c                   Movel     'EGIRO '      kTipo
     c     kTipo         Setll     mcfv075
     c     kTipo         Reade     mcfv075                                88
     c                   Dow       not *in88
     c                   If        %subst(pgcodi: 1: 1) <> '*'
     c
     c                   eval      vTipo  = %subst(pgdesc:1:1)
     c                   eval      nComercio = %int(%subst(pgdesc:2:9))
     c                   Select
     c                   When      vTipo = 'C'
     c                   If        nComercio = mccoco
     c                   eval      nSwP = '0'
     c                   leave
     c                   EndIf
     c
     c                   When      vTipo = 'K'
     c                   If        (nComercio = nCade) and nCade > 0
     c                   eval      nSwP = '0'
     c                   leave
     c                   EndIf
     c                   EndSl
     c
     c                   EndIF
     c     kTipo         Reade     mcfv075                                88
     c                   EndDo
     c                   EndIf
     c
     * propina offline por facilitador
     c                   eval      ktipo = 'FGIRO'
     c                   eval      kcodi = %char(mepfid)
     c     kMcfv075      chain     mcfv075
     c                   if        %found(mcfv075)
     c                   eval      nSwp = %subst(pgdesc:1:1)
     c                   endif
     C                   Movel     nSwp          MCIPRO
     C*
     C*          PLZPLZ    IFEQ 0                          B01
     C*                    Z-ADDd1cest    MCCOCO             |
     C*                    MOVE *ZEROS    MCPLAZ             |
     C*                    MOVEL*BLANKS   MCCOME             |
     C*                    ELSE                            X01
     C*                    Z-ADDCODMER    PSCOCO             |
     C*                    MOVE PLZPLZ    PSPLAZ             |
     C*                    MOVELd1cest    PSCOME             |
     C*                    END                             E01
     c
     C                   ENDSR
      *---------------------------------------------------*
      *  RUTINA : srGrabTMpos                             *
      *---------------------------------------------------*
     c     srGrabTMpos   begsr
     c
     c                   if        *in82 or *in83
     c                   eval      fecAct = %dec(%date():*ISO)
     c                   eval      horAct = %dec(%time():*HMS)
     c                   eval      d_MDCOCO = D2CEST
     c                   eval      d_MDTIEN = MCTIEN
     c                   eval      d_MDTERM = MCTERM
     c                   Exsr      SbrFecReg
     c     kmcfv30e      chain     mcfv030e
     c                   if        %found(mcfv030e)
     c                   eval      d_TIPMOV='U'
     c                   exsr      GrbLogA30E
     c                   eval      d_MDSERM = D2MPSER
      *
     c                   Eval      nLong = %len(%trim(D2MPSER))
     c                   If        nLong < 8
     c                   eval      d_MDSERMX= D2MPSER
     c                   Else
     c                   eval      d_MDSERMX=%subst(%TRIM(D2MPSER):
     C                                       nLong-7:8)
     c                   EndIf
      *
     c                   If        nFlgSerAlf = 0
     c                   Eval      d_MDSERMX=*Blanks
     c                   EndIf
     c*                  Eval      D2PSER =%dec(%xlate(d_MDSERMX:letras:'0')
     c*                                    :8:0)
      *
     c                   eval      d_MDTERR = D2MPTERR
     c                   eval      d_MDFEUL = fecAct
     c                   eval      d_MDHOUL = horAct
     c                   update    rmcfv030e
     c                   else
     c                   eval      d_TIPMOV='I'
     c                   eval      d_MDSERM = D2MPSER
     c                   eval      d_MDTERR = D2MPTERR
     c                   eval      d_MDFERE = fecAct
     c                   eval      d_MDHORE = horAct
      *
     c                   Eval      nLong = %len(%trim(D2MPSER))
     c                   If        nLong < 8
     c                   eval      d_MDSERMX= D2MPSER
     c                   Else
     c                   eval      d_MDSERMX=%subst(%TRIM(D2MPSER):
     C                                       nLong-7:8)
     c                   EndIf
      *
     c                   If        nFlgSerAlf = 0
     c                   Eval      d_MDSERMX=*Blanks
     c                   EndIf
      *
     c                   write     rmcfv030e
     c                   endif
     c                   exsr      GrbLogD30E
     c                   Eval      pClave1=%editc(d_MDCOCO:'X')
     c                   Eval      pClave2=%editc(d_MDTIEN:'X')
     c                   Eval      pClave3=%editc(d_MDTERM:'X')
     c                   Eval      pClave4='MCFV030E'
     c                   Eval      pTipMov=d_TIPMOV
     c                   Eval      pTabla1='MCFV030E'
     c                   exsr      sbrGralog
     c                   endif
     c*Actualiza tipo comercio
     c                   If        nActTip = 1
     c     D2CEST        Chain     MCFM027
     c                   If        %Found(MCFM027)
     c                   Eval      co_MECOND = v8codi
     c                   Update    RMCFM027
     c                   EndIf
     c                   EndIf
     c
     c
     c                   endsr
      *---------------------------------------------------*
      *  RUTINA : srGrabNTransaccionales                  *
      *---------------------------------------------------*
     c     srGrabNTran   begsr
     c*                  if        *in82 or *in83
     c                   eval      fecAct = %dec(%date():*ISO)
     c                   eval      horAct = %dec(%time():*HMS)
     c                   eval      f_MRCOCO = D2CEST
     c                   eval      f_MRTIEN = MCTIEN
     c                   eval      f_MRTERM = MCTERM
     c                   Exsr      SbrFecReg
     c     kmcfv30f      chain     mcfv030f
     c                   if        %found(mcfv030f)
     c                   eval      f_TIPMOV='U'
     c                   exsr      GrbLogA30F
     c                   eval      f_MCRSER = D2RSER
     c                   eval      f_MCRMOD = D2RMOD
     c                   eval      f_MCRMRG = D2RMRG
     c                   eval      f_MRFEUL = fecAct
     c                   eval      f_MRHOUL = horAct
     c                   update    rmcfv030f
     c                   else
     c                   eval      f_TIPMOV='I'
     c                   exsr      GrbLogD30F
     c                   eval      f_MCRSER = D2RSER
     c                   eval      f_MCRMOD = D2RMOD
     c                   eval      f_MCRMRG = D2RMRG
     c                   eval      f_MRFERE = fecAct
     c                   eval      f_MRHORE = horAct
     c                   write     rmcfv030f
     c                   endif
     c                   Eval      pClave1=%editc(f_MRCOCO:'X')
     c                   Eval      pClave2=%editc(f_MRTIEN:'X')
     c                   Eval      pClave3=%editc(f_MRTERM:'X')
     c                   Eval      pClave4='MCFV030F'
     c                   Eval      pTipMov=f_TIPMOV
     c                   Eval      pTabla1='MCFV030F'
     c                   exsr      sbrGralog
     c*                  endif
     c                   endsr
     c
      *---------------------------------------------------*
      *  RUTINA : RUTMAW = MUEVE CAMPOS ARCHIVO-PANTALLA  *
      *---------------------------------------------------*
     C     RUTMAW        BEGSR
     C     *IN92         IFEQ      '1'
     C     SLN1          CHAIN     SFL01                              99
     C  N99              Z-ADD     COD           MCCOCO
     C  N99              Z-ADD     TIE           MCTIEN
     C  N99              Z-ADD     TER           MCTERM
     C     KEY1          CHAIN     RMCFV30                            98
     C                   END
     C                   Z-ADD     MCCOCO        d1cest
     C                   Z-ADD     MCTIEN        TIENDA
     C                   Z-ADD     MCTERM        TERMIN
     C                   Z-ADD     MCESTA        ESTADO
     C                   Z-ADD     MCMOCO        MONEDA
     C**                 Z-ADD     MCCOSU        SUCURS
     C**                 Z-ADD     MCCOAG        AGENCI
     C                   Z-ADD     MCCUCO        CUENTA
     C                   Z-ADD     MCFEIN        FECARC
     C                   EXSR      RUTAP
     C                   Z-ADD     FECPAN        FECHAI
     C                   MOVEL     MCNOPS        NOMPOS
     C                   MOVEL     MCLOCA        LOCALI
     C                   MOVEL     MCWRKS        PANTAL
     C                   MOVEL     MCUSUA        USUARI
     C                   MOVE      USUARI        KEYGRU            4 0
     C     KEYGRU        CHAIN     MCFV031                            86
     C  N86              MOVEL     MCDESC        DESGRU
     C   86              CLEAR                   DESGRU
      *
     C                   TIME                    HF
     C                   Z-ADD     F             FECPAN
     C                   EXSR      RUTPA
      *
     C                   Z-ADD     105           MORG
     C                   Z-ADD     1             MREC
     C                   Z-ADD     d1cest        MCTA
     C     d1cest        CHAIN(n)  mcfm019i                           86
     C  N86              MOVEL     medire        DESCOM
     C   86              CLEAR                   DESCOM
      *
     C                   CLEAR                   DESEST
     C                   CLEAR                   DESMON
      *
     c                   select
     C                   when      ESTADO = 1
     C                   MOVEL     'ACTIVO'      DESEST
     C                   when      ESTADO = 2
     C                   MOVEL     'INACTIVO'    DESEST
     C                   ENDSL
      *
     C                   MOVE      MCTVER        D1TVER
     C                   Z-ADD     MCNVER        D1NVER
     C                   MOVEL     MCUVER        D1UVER
     C                   Z-ADD     MCFVER        D1FVER
     C                   Z-ADD     MCHVER        D1HVER
      *
     C                   Z-ADD     MCCESD        D1CESD
     C                   Z-ADD     105           MORG
     C                   Z-ADD     1             MREC
     C                   Z-ADD     MCCESD        MCTA
     C     mccesd        CHAIN(n)  mcfm019i                           86
     C  N86              MOVEL     medire        D1DESD
     C   86              MOVE      *BLANKS       D1DESD
      *
     c                   select
     C                   when      MONEDA = 01
     C                   MOVEL     'SOLES'       DESMON
     C                   when      MONEDA = 02
     C                   MOVEL     'DOLARES'     DESMON
     C                   ENDSL
      ***
     C                   MOVE      MCPLAZ        PLZPLZ
     C                   MOVE      MCCOME        CODMER
     C                   ENDSR
      *---------------------------------------------------*
      *  RUTINA : CLEAR  = LIMPIAR CAMPOS DE PANTALLA     *
      *---------------------------------------------------*
     C     CLEAR         BEGSR
     C   18              Z-ADD     *ZEROS        d1cest
     C   18              Z-ADD     *ZEROS        TIENDA
     C   18              Z-ADD     *ZEROS        TERMIN
     C                   Z-ADD     *ZEROS        ESTADO
     C                   Z-ADD     *ZEROS        MONEDA
     C                   Z-ADD     *ZEROS        SUCURS
     C                   Z-ADD     *ZEROS        AGENCI
     C                   Z-ADD     *ZEROS        CUENTA
     C                   Z-ADD     *ZEROS        PLZPLZ
     C                   Z-ADD     *ZEROS        CODMER
     C                   MOVE      *BLANKS       NOMPOS
     C                   MOVE      *BLANKS       LOCALI
     C                   MOVE      *BLANKS       PANTAL
     C                   MOVE      *BLANKS       USUARI
     C                   MOVE      *BLANKS       DESCOM
     C                   MOVE      *BLANKS       DESEST
     C                   MOVE      *BLANKS       DESMON
     C                   MOVE      *BLANKS       DESSUC
     C                   MOVE      *BLANKS       DESAGE
     C                   MOVE      *BLANKS       DESCTA
     C                   MOVE      *BLANKS       DESGRU
     C                   MOVE      *BLANKS       D1TVER
     C                   MOVE      *ZEROS        D1NVER
     C                   MOVE      *ZEROS        D1CESD
     C                   MOVE      *BLANKS       D1DESD
     C                   MOVE      *BLANKS       D1UVER
     C                   Z-ADD     *ZEROS        D1HVER
     C                   Z-ADD     *ZEROS        D1FVER
     C                   ENDSR
      *---------------------------------------------------*
      *  RUTINA : CLRMSG = LIMPIA VARIABLES               *
      *---------------------------------------------------*
     C     CLRMSG        BEGSR
     C                   CLEAR                   WMSG
     C                   ENDSR
      *---------------------------------------------------*
      *  RUTINA : *PSSR  = ERRORES                        *
      *---------------------------------------------------*
     C     *PSSR         BEGSR
     C                   DUMP
     C                   ENDSR
      *---------------------------------------------------*
      *  RUTINA : RUTAVA = RUTINA DE AVANCE DE PAGINA     *
      *---------------------------------------------------*
     C     RUTAVA        BEGSR
     C                   Z-ADD     0             SFLSIZ            4 0
     C                   MOVE      '1'           *IN54
     C                   WRITE     SFLCTL01
     C                   MOVE      '0'           *IN(54)
     C     KEY1          SETLL     MCFV030
     C                   READ(N)   MCFV030                                80
     C     *IN80         DOWEQ     '0'
     C     SFLSIZ        ANDLT     10
     C                   ADD       1             SFLSIZ
     C                   Z-ADD     SFLSIZ        SLN1
     C                   MOVE      ' '           OPCION
     C                   Z-ADD     MCCOCO        COD
     C                   Z-ADD     MCTIEN        TIE
     C                   Z-ADD     MCTERM        TER
     C                   Z-ADD     MCESTA        EST
     C                   Z-ADD     MCMOCO        MON
     C**                 Z-ADD     MCCOSU        SUC
     C**                 Z-ADD     MCCOAG        AGE
     C                   MOVEL     MCUSUA        USE
     C                   MOVEL     MCWRKS        PAN
     C                   Z-ADD     MCFEIN        FECARC
     C                   EXSR      RUTAP
     C                   Z-ADD     MCFEIN        WZFECAMD8
     C                   Z-ADD     WZFEC8A       WZFEC6A
     C                   Z-ADD     WZFEC8M       WZFEC6M
     C                   Z-ADD     WZFEC8D       WZFEC6D
     C                   Z-ADD     WZFECDMA6     FEC
     C                   MOVEL     MCNOPS        NOM
     C                   Z-ADD     MCNVER        S1NVER
     C                   MOVEL     MCTCOM        S1TCOM
     C                   WRITE     SFL01
     C                   READ(N)   MCFV030                                80
     C                   ENDDO
     C                   ENDSR
      *----------------------------------------------------
      *  RUTINA : RUTRET = RUTINA DE RETROCESO ROLLDOWN
      *----------------------------------------------------
     C     RUTRET        BEGSR
     C                   MOVE      '1'           *IN54
     C                   WRITE     SFLCTL01
     C                   MOVE      '0'           *IN54
     C                   Z-ADD     0             SFLSIZ
     C     KEY1          SETGT     MCFV030
     C                   READP(N)  MCFV030                                80
     C     *IN80         DOWEQ     '0'
     C     SFLSIZ        ANDLT     10
     C     10            SUB       SFLSIZ        SLN1
     C                   Z-ADD     MCCOCO        COD
     C                   Z-ADD     MCTIEN        TIE
     C                   Z-ADD     MCTERM        TER
     C                   Z-ADD     MCESTA        EST
     C                   Z-ADD     MCMOCO        MON
     C**                 Z-ADD     MCCOSU        SUC
     C**                 Z-ADD     MCCOAG        AGE
     C                   MOVEL     MCUSUA        USE
     C                   MOVEL     MCWRKS        PAN
     C                   Z-ADD     MCFEIN        FECARC
     C                   EXSR      RUTAP
     C                   Z-ADD     FECPAN        FEC
     C                   Z-ADD     MCFEIN        WZFECAMD8
     C                   Z-ADD     WZFEC8A       WZFEC6A
     C                   Z-ADD     WZFEC8M       WZFEC6M
     C                   Z-ADD     WZFEC8D       WZFEC6D
     C                   Z-ADD     WZFECDMA6     FEC
     C                   MOVEL     MCNOPS        NOM
     C                   Z-ADD     MCNVER        S1NVER
     C                   MOVEL     MCTCOM        S1TCOM
     C                   WRITE     SFL01
     C                   READP(N)  MCFV030                                80
     C                   ADD       1             SFLSIZ
     C                   ENDDO
     C                   SETOFF                                       02
     C     SFLSIZ        IFNE      10
     C                   SETON                                        02
     C                   Z-ADD     COD           MCCOCO
     C                   Z-ADD     TIE           MCTIEN
     C                   Z-ADD     TER           MCTERM
     C                   EXSR      RUTAVA
     C                   ENDIF
     C                   ENDSR
      *---------------------------------------------------*
      *  SRIMG02: RUTINA PARA DATOS ADICIONALES DEL POS   *
      *---------------------------------------------------*
     C     SRIMG02       BEGSR
     C                   MOVE      '0'           W_EXIT            1
     C                   EXSR      CARIMG02
     c                   eval      codCom = D2CEST
     c                   eval      V8COND = *Blanks
     c                   eval      v8codi = *Blanks
     c                   exsr      srVal_MPos
      *
     C*                  DOW       NOT *IN12 AND NOT *IN90 AND W_EXIT = '0'
     C                   DOW       NOT *IN12 AND               W_EXIT = '0'
     C                   WRITE     HEADER
     C                   WRITE     MSG00
     C                   EXFMT     IMG02
     C                   EXSR      CLRMSG
     c   12              ITER
     C   09              EXSR      SRTERMINALES
     C   04              EXSR      RAYUDA
     C                   EXSR      CHKIMG02
     C   90              ITER
     C                   IF        *IN02 AND NOT *IN90
     C                   MOVE      '1'           W_EXIT
     C                   ENDIF
     C                   ENDDO
     C*
     C   12              SETON                                        90
     C   12              SETOFF                                       12
     C*
     C                   ENDSR
      *---------------------------------------------------*
      *  CARIMG02 CARGAR DATA A PANTALLA IMG02            *
      *---------------------------------------------------*
     C     CARIMG02      BEGSR
     C*
     C                   CLEAR                   IMG02
     C                   MOVEL     TITULO        D2TITU
     C                   Z-ADD     d1cest        D2CEST
     C                   MOVEL     DESCOM        D2NCOM
     C*
     c
     c                   eval      d_MDCOCO = d2cest
     c                   eval      d_MDTIEN = 0
     c                   eval      d_MDTERM = termin
     c                   eval      iExists = *off
     c     kmcfv30e      chain     mcfv030e
     c                   if        %found(mcfv030e)
     C                   eval      D2MPSER = d_MDSERM
     C                   eval      D2MPTERR = d_MDTERR
     c                   eval      iExists = *on
     c                   endif
     C*
     c                   eval      f_MRCOCO = d2cest
     c                   eval      f_MRTIEN = 0
     c                   eval      f_MRTERM = termin
     c     kmcfv30f      chain     mcfv030f
     c                   if        %found(mcfv030f)
     C                   eval      D2RSER = f_MCRSER
     C                   eval      D2RMOD = f_MCRMOD
     C                   eval      D2RMRG = f_MCRMRG
     c                   endif
     C*
     c                   MOVEL     MCPSER        D2PSER
     C                   IF        OPCION = 7
     C                   Z-ADD     0             D2PSER
     C                   ENDIF
     C                   MOVEL     MCPMOD        D2PMOD
     C                   MOVEL     MCPMRG        D2PMRG
     C                   MOVEL     MCISER        D2ISER
     C                   MOVEL     MCIMOD        D2IMOD
     C                   MOVEL     MCIMRG        D2IMRG
     C                   MOVEL     MCKSER        D2KSER
     C                   MOVEL     MCKMOD        D2KMOD
     C                   MOVEL     MCKMRG        D2KMRG
     C*
     C                   MOVEL     MCTCOM        D2TCOM
     C*
     C                   MOVEL     MCSERD        D2MSER
     C                   MOVEL     MCMMRG        D2MMRG
     C                   MOVEL     MCNIPD        D2NIP
     C                   MOVEL     MCEIDD        D2EID
     C                   MOVEL     MCTANT        D2TANT
     C                   MOVEL     MCNCDD        D2CDIG
     C                   MOVEL     MCSPED        D2SPED
     C*
     C                   MOVEL     MCUCRE        D2UADI
     C                   Z-ADD     MCFCRE        D2FADI
     C                   Z-ADD     MCHCRE        D2HADI
     C*
     C                   MOVEL     MCUMOD        D2UMOD
     C                   Z-ADD     MCFMOD        D2FMOD
     C                   Z-ADD     MCHMOD        D2HMOD
     C*
     C                   ENDSR
      *---------------------------------------------------*
      *  CHKIMG02 CONSISTENCIAR DATA DE PANT IMG02        *
      *---------------------------------------------------*
     C     CHKIMG02      BEGSR
     C                   MOVEA     '00000000000' *IN(61)
     C                   MOVEA     '00000000000' *IN(71)
     C                   MOVEA     '0'           *IN(90)
     C*Valida Flg Copia Activo
     c                   eval      sPgTipo = 'COPSER'
     c                   eval      sPgCodi = 'ACTIVO'
     C     key075        chain     MCFV075
     C                   if        %found() and %trim(PGDESC)='1'
     C*Valida Contrato
     c                   Eval      kTipo = 'CONTRA'
     c     kTipo         Setll     mcfv075
     c     kTipo         Reade     mcfv075
     c                   Dow       not %eof()
     c                   If        %trim(PGDESC) = %trim(MENCON)
     C*Copia Serie
     c                   If        D2MPSER <> *Blanks
     c                   Eval      nLong = %len(%trim(D2MPSER))
     c                   If        nLong < 8
     c                   eval      sSerieNew= D2MPSER
     c                   Else
     c                   eval      sSerieNew=%subst(%TRIM(D2MPSER):
     C                                       nLong-7:8)
     c                   EndIf
     c     letras:ceros  xlate     sSerieNew     sSerieNew
     c                   Eval      D2PSER =%dec(sSerieNew:8:0)
     c                   EndIf
     C*
     c                   EndIf
     c     kTipo         Reade     mcfv075
     c                   ENDDO
     c                   EndIf
     C* DATOS DEL POS
     C                   IF        D2PSER <> 0 OR D2PMOD <> *BLANKS OR
     C                             D2PMRG <> *BLANKS
     C
     C                   IF        D2PSER = *ZEROS
     C                   SETON                                        6290
     C                   MOVEL     MSG(35)       WMSG
     C                   ELSE
     C                   MOVE      D1CEST        PCES              9
     C                   MOVE      D2PSER        PSER             12
     C                   MOVE      TERMIN        PTER              4
     C                   MOVE      *BLANK        POES              9
     C                   MOVE      '00'          PMSG              2
     C                   MOVE      ' '           PERR              1
      * ADICION / DUCPLICADO
     C     *IN06         IFEQ      *ON
     C     OPCION        OREQ      7
     C                   MOVE      'A'           PPRO              1
     C                   ENDIF
      * MODIFICACION
     C     OPCION        IFEQ      2
     C                   MOVE      'M'           PPRO              1
     C                   ENDIF
      *
     C                   CALL      'MCPI014'
     C                   PARM                    PCES
     C                   PARM                    PSER
     C                   PARM                    PTER
     C                   PARM                    POES
     C                   PARM                    PPRO
     C                   PARM                    PMSG
     C                   PARM                    PERR
     C                   MOVE      PMSG          IN                2 0
      *
     C                   IF        PERR <> *BLANK
     C                   SETON                                        6290
     C                   MOVEL     MSG(IN)       WMSG
     C                   MOVE      POES          WMSG
     C                   ENDIF
      *
     C                   ENDIF
     C* MODELO DE POS
     C                   IF        D2PMOD <> *BLANKS
     C                   CLEAR                   DZ_KEY
     C                   MOVEL     'POS'         DZ_TTAB
     C                   MOVEL     D2PMOD        DZ_CREG
     C     KEYTAB        CHAIN     MCFV032                            86
     C  N86              MOVEL     EQDESC        D2PMODD
     C   86              SETON                                        6390
     C   86              MOVEL     MSG(36)       WMSG
     C                   ENDIF
     C                   ENDIF
     C* DATOS DEL PRINTER
     C                   IF        D2ISER <> 0 OR D2IMOD <> *BLANKS OR
     C                             D2IMRG <> *BLANKS
     C*
     C                   IF        D2IMOD <> *BLANKS
     C                   CLEAR                   DZ_KEY
     C                   MOVEL     'PRT'         DZ_TTAB
     C                   MOVEL     D2IMOD        DZ_CREG
     C     KEYTAB        CHAIN     MCFV032                            86
     C  N86              MOVEL     EQDESC        D2IMODD
     C   86              SETON                                        9066
     C                   ENDIF
     C                   ENDIF
     C* DATOS DEL PIN PAD
     C                   IF        D2KSER <> 0 OR D2KMOD <> *BLANKS OR
     C                             D2KMRG <> *BLANKS
     C*
     C                   IF        D2KMOD <> *BLANKS
     C                   CLEAR                   DZ_KEY
     C                   MOVEL     'PAD'         DZ_TTAB
     C                   MOVEL     D2KMOD        DZ_CREG
     C     KEYTAB        CHAIN     MCFV032                            86
     C  N86              MOVEL     EQDESC        D2KMODD
     C   86              SETON                                        9069
     C                   ENDIF
     C*
     C                   ENDIF
     C*
     C* TIPO DE COMUNICACION
     C                   IF        D2TCOM <> *BLANKS
     C                   ENDIF
     C*
     C* TIPO DE ANTENA
     C                   IF        D2TANT <> *BLANKS
     C                   ENDIF
     c
     c* Validacion : verIfica si comercio es PPPAAA facilitador
     c*
     c                   Eval      nActTip = 0
     c     D2CEST        CHAIN(n)  mcfm019
     c                   If        %Found(mcfm019)
     c                   Movel     *Blanks       sPgTipo
     c                   Movel     *Blanks       sPgCodi
     c                   Movel     'FID'         sPgTipo
     c                   Move      com_MEPFID    sPgCodi
     c     key075        Chain     MCFV075
     c                   If        %Found(mcfv075) and pgdesc = '1'
     c
     * valida que se ingrese tipo comercio
     c                   If        V8CODI = *Blanks
     c                   eval      *in90 = *on
     c                   eval      WMSG = MSG(66)
     c                   leavesr
     c                   EndIf
     c                   Eval      nActTip = 1
     c
     c                   EndIf
     c                   EndIf
     c
     c* Validar que comercio sea Arisale
     c     D2CEST        Chain     MCFM027
     c                   If        %Found(MCFM027)
     c                   If        co_MEFIL6<>'ARISAL' and D2RSER<>''
     c                   eval      *in90 = *on
     c                   eval      WMSG = MSG(69)
     c                   leavesr
     c                   endif
     c                   endif
     c* Valida que serie no se repita
     c     D2RSER        Chain     MCLV030FA
     c                   If        %Found(MCLV030FA) and D2RSER<>''
     c                   eval      *in90 = *on
     c                   eval      WMSG = MSG(70)
     c                   leavesr
     c                   Endif
     * valida serie para comercios 81
     c                   if        (*in82 or *in83) and
     c                             TERMIN <> TERM_VIRTUAL
     * valida n° de serie
     c                   if        D2MPSER = *blanks or
     c                             %trim(D2MPSER) = *zeros
     c                   eval      *in90 = *on
     c                   eval      WMSG = MSG(60)
     c                   leavesr
     c                   endif
     c
     * valida que exista en el act. fijo
     c                   Call      'MCPI009D'
     c                   parm                    D2MPSER
     c                   parm                    pFlgEnc           1
     c                   If        pFlgEnc = '0'
     c                   eval      *in90 = *on
     c                   eval      WMSG = MSG(61)
     c                   EndIf
     c
     c
     c     keyItem       chain     akfmarti
     c                   if        %found(akfmarti)
     c                   eval      kCodi = %char(ai_artico)
     c                   else
     c                   eval      kCodi = '0'
     c                   endif
     c*
     c*                  if        *in82
     c*                  eval      kTipo = 'TIPMP'
     c*    kmcfv075      chain     mcfv075
     c*                  if        not %found(mcfv075)
     c*                  eval      *in90 = *on
     c*                  eval      WMSG = MSG(62)
     c*                  leavesr
     c*                  endif
     c*                  endif
     c*
     c*                  if        *in83
     c*                  eval      kTipo = 'TIPPP'
     c*    kmcfv075      chain     mcfv075
     c*                  if        not %found(mcfv075)
     c*                  eval      *in90 = *on
     c*                  eval      WMSG = MSG(65)
     c*                  leavesr
     c*                  endif
     c*                  endif
     c
     * valida si mpos ha sido asignado a otro comercio
     c*    D2MPSER       chain     mclv030ea
     c*                  if        %found(mclv030ea) and dl_MDCOCO <> D2CEST
     c*                  eval      *in90 = *on
     c*                  eval      WMSG = %trim(MSG(64)) + ' : ' +
     c*                                   %char(dl_MDCOCO)
     c*                  leavesr
     c*                  endif
     c
     * valida terminal real
     c                   if        D2MPTERR = *zeros
     c                   eval      *in90 = *on
     c                   eval      WMSG = MSG(63)
     c                   endif
     c                   endif
     C                   ENDSR
      *---------------------------------------------------*
      *  RUTINA : AYUDA  = PRESENTA PANTALLA DE AYUDA     *
      *---------------------------------------------------*
     C     RUTAYU        BEGSR
     C                   EXFMT     AYUDA
     C                   EXFMT     AYUDA1
     C                   ENDSR
      *---------------------------------------------------*
      *  RUTINA : RUTAP = FECHA DE ARCHIVO A PANTALLA     *
      *---------------------------------------------------*
     C     RUTAP         BEGSR
     C                   Z-ADD     FECARA        FECPAA
     C                   Z-ADD     FECARM        FECPAM
     C                   Z-ADD     FECARD        FECPAD
     C                   ENDSR
      *---------------------------------------------------*
      *  RUTINA : RUTPA = FECHA DE PANTALLA A ARCHIVO     *
      *---------------------------------------------------*
     C     RUTPA         BEGSR
     C                   Z-ADD     FECPAA        FECARA
     C                   Z-ADD     FECPAM        FECARM
     C                   Z-ADD     FECPAD        FECARD
     C                   ENDSR
     c************************
     c* RAyuda    Ayuda para IMG02
     c************************
     c     RAyuda        Begsr
     c*
     c                   exsr      Rcursor
     c*
     c                   move      *blanks       p9ttab
     c                   move      *blanks       p9creg
     c                   move      *blanks       p9desc
     c* Modelo
     C                   Select
     c                   When      (Nfil=09 and Ncol>=34 and Ncol<=39) or
     c                             (Nfil=10 and Ncol>=34 and Ncol<=39) or
     c                             (Nfil=11 and Ncol>=34 and Ncol<=39)
      *
     c                   Select
     c                   when      Nfil = 09
     c                   move      'POS'         p9ttab
     c                   when      Nfil = 10
     c                   move      'PRT'         p9ttab
     c                   when      Nfil = 11
     c                   move      'PAD'         p9ttab
     c                   Endsl
      *
     c                   call      'MCPI068'     P9
     c                   if        p9creg <> *blanks
     c                   Select
     c                   when      Nfil = 09
     c                   movel     p9creg        d2pmod
     c                   movel     p9desc        d2pmodd
     c                   when      Nfil = 10
     c                   movel     p9creg        d2Imod
     c                   movel     p9desc        d2Imodd
     c                   when      Nfil = 11
     c                   movel     p9creg        d2Kmod
     c                   movel     p9desc        d2Kmodd
     c                   endsl
     c                   endif
      *
     c* Tipo Comunicacion
     c                   When      (Nfil=13 and Ncol>=25 and Ncol<=35)
     c                   move      'TCO'         p9ttab
     c                   call      'MCPI068'     P9
     c                   if        p9creg <> *blanks
     c                   movel     p9creg        d2tcom
     c                   movel     p9desc        d2tcomd
     c                   endif
     c* Antena
     c                   When      (Nfil=16 and Ncol>=66 and Ncol<=74)
     c                   movel     'ANT'         p9ttab
     c                   call      'MCPI068'     P9
     c                   if        p9creg <> *blanks
     c                   movel     p9creg        d2tant
     c                   endif
     c* Speed
     c                   When      (Nfil=17 and Ncol>=44 and Ncol<=50)
     c                   movel     'VEL'         p9ttab
     c                   call      'MCPI068'     P9
     c                   if        p9creg <> *blanks
     c                   movel     p9creg        d2sped
     c                   movel     p9desc        d2spedd
     c                   endif
     c* Tipo Comercio
     c                   When      (Nfil=14 and Ncol>=52 and Ncol<=71)
     c                   call      'MCPI117C'
     c                   parm      'IACOND'      ptipo             6
     c                   parm      '   '         pcodi             6
     c                   parm      '   '         pdesc            35
     c
     c                   if        pcodi <> ' ' and pdesc <> ' '
     c                   movel     pdesc         v8cond
     c                   movel     pcodi         v8codi            6
     c                   endif
     C* Busca modelo equipos no transaccionales
     c                   When      (Nfil=13 and Ncol>=40 and Ncol<=45)
     c                   call      'MCPI117C'
     c                   parm      'NOTRAN'      ptipo             6
     c                   parm      '   '         pcodi             6
     c                   parm      '   '         pdesc            35
     c                   if        pcodi <> ' ' and pdesc <> ' '
     c                   movel     pdesc         d2rmrg
     c                   movel     pcodi         d2rmod
     c                   endif
     c*
     c
     c                   endsl
     c*
     c                   endsr
     c************************
     c* Rcursor  determinar la pos del cursor
     c************************
     c     Rcursor       Begsr
     c                   move      binlin        binary
     c                   z-add     binval        nfil              3 0
     c                   move      binpos        binary
     c                   z-add     binval        ncol              3 0
     c                   endsr
     C*---------------------------------------------------*
      *  MANTENIMIENTO DE TERMINALES CAJ CORRESP. IBK     *
      *---------------------------------------------------*
     C     SRTERMINALES  BEGSR
     C                   CALL      'MCCI170'
     C                   PARM                    PXCEST            9
     C                   PARM                    PXNTER           12
     C                   PARM                    PXSITU            1
     C                   ENDSR
     c
     *---------------------------------------------------*
     *  srVal_MPos: Valida si es un comercio 81          *
     *---------------------------------------------------*
     c     srVal_MPos    begsr
     c
     c                   eval      *in82 = *off
     c                   eval      *in83 = *off
     c                   eval      codComx = %char(codCom)
     c
     * verifica si es PPPAAA
     c                   if        mepfid = PPPAAA
     c                   eval      *in83 = *on
     c                   else
     * verifica si es MPOS PMP
     c                   eval      nPos = %scan(COM_MPOS:%trim(codComx))
     c                   if        nPos = 1
     c                   eval      *in82 = *on
     c                   endif
     c                   endif
      * verifica prefijo y codigo facilitador
     c                   If        (mepfid = 0 or mepfid = 253357)
     c*TR9460
     c                   Eval      nFlgSerAlf = 0
     c                   Eval      kTipo = 'CONTRA'
     c     kTipo         Setll     mcfv075
     c     kTipo         Reade     mcfv075
     c                   Dow       not %eof()
     c                   If        %trim(PGDESC) = %trim(MENCON)
     c                   Eval      *in83 = *on
     c                   Eval      *in82 = *on
     c                   Eval      nFlgSerAlf = 1
     c                   EndIf
     c     kTipo         Reade     mcfv075
     c                   ENDDO
     c                   EndIf
     c
     * obtiene tipo comercio
     c
     c     D2CEST        Chain     MCFM027
     c                   If        %Found(MCFM027)
     c                   Eval      v8codi = co_MECOND
     c
     c                   eval      sPgTipo = 'IACOND'
     c                   eval      sPgCodi = v8codi
     C     key075        chain     MCFV075
     C                   if        %found()
     c                   Eval      v8cond = pgdesc
     c                   EndIf
     c                   EndIf
     c                   endsr
     c
     c
     C*---------------------------------------------------*
      *  RUTINA : *INZSR = INCIALIZACION DE VARIABLES     *
      *---------------------------------------------------*
     C     *INZSR        BEGSR
     C*
     C     *ENTRY        PLIST
     C                   PARM                    PUSE             10
     C*
     C     KEYTAB        KLIST
     C                   KFLD                    DZ_TTAB
     C                   KFLD                    DZ_CREG
     C*
     C     KEY1          KLIST
     C                   KFLD                    MCCOCO
     C                   KFLD                    MCTIEN
     C                   KFLD                    MCTERM
     c
     c     kmcfv30e      klist
     c                   kfld                    d_MDCOCO
     c                   kfld                    d_MDTIEN
     c                   kfld                    d_MDTERM
     c
     c     kmcfv30f      klist
     c                   kfld                    f_MRCOCO
     c                   kfld                    f_MRTIEN
     c                   kfld                    f_MRTERM
     c
     C     kMcfv075      KLIST
     C                   KFLD                    kTipo             6
     C                   KFLD                    kCodi             6
     c
     C     key075        KLIST
     C                   KFLD                    sPgTipo
     C                   KFLD                    sPgCodi
     C
     C     keyItem       KLIST
     C                   KFLD                    af_CCLF1
     C                   KFLD                    af_CCLF2
     C                   KFLD                    af_CCLF3
     C                   KFLD                    af_CCLF4
     c
     C     clav30        KLIST
     C                   KFLD                    MCCOCO
     C                   KFLD                    nTiend            4 0
     C                   KFLD                    numTer            4 0
     C
     C                   MOVEL     PUSE          WUSERW
     C                   TIME                    HF
     C*
ECM  C                   Z-ADD     F             YDATE
     C*
     C                   MOVE      '1'           *IN56
     C                   WRITE     SFLCTL01
     C                   MOVE      '0'           *IN56
     C                   Z-ADD     10            NEXT              2 0
     C*
     C     P9            PLIST
     C                   PARM                    P9TTAB            3
     C                   PARM                    P9CREG            8
     C                   PARM                    P9DESC           30
     C*
     c                   bitoff    '01234567'    Hex00             1
     c                   movel     Hex00         Binary
     C*
     C                   ENDSR
     c*---------------------------------------------------*
     c* Datos registro                                    *
     c*---------------------------------------------------*
     c     SbrFecReg     BegSr
     c                   Eval      dFecha = %date()
     c                   Eval      sFechas= %Char(dFecha)
     c                   Eval      nFecact= %Dec(%Subst(sFechas:1:4) +
     c                                           %Subst(sFechas:6:2) +
     c                                           %Subst(sFechas:9:2)
     c                                       :8:0)
     c                   Eval      thora  = %time()
     c                   Eval      sHoras = %Char(tHora)
     c                   Eval      nhora  = %Dec(%Subst(sHoras:1:2) +
     c                                           %Subst(sHoras:4:2) +
     c                                           %Subst(sHoras:7:2)
     c                                       :6:0)
     c                   Endsr
     c*---------------------------------------------------*
     c* Graba log akfmitem valores originales             *
     c*---------------------------------------------------*
     c     GrabaLogIni   Begsr
     c                   Eval      af_FECMOV = nFecact
     c                   Eval      af_HORMOV = nhora
     c                   Eval      af_DIAMOV = Diaact
     c                   Eval      af_MESMOV = Mesact
     c                   Eval      af_ANOMOV = Anoact
     c                   Eval      af_SERMOV = af_NSEFJ
     c                   Eval      af_ARTMOV = af_CACFJ
     c                   Eval      af_PGMMOV = iopgm
     c                   Eval      af_USUMOV = user
     c                   Write     RAFKLOGI
     c                   Endsr
     c*---------------------------------------------------*
     c* Graba log akfmitem valores finales                *
     c*---------------------------------------------------*
     c     GrabaLogFin   Begsr
     c                   Write     RAFKLOGN
     c                   Endsr
     c*---------------------------------------------------*
     c* Asigna valores para campos de auditoria 1         *
     c*---------------------------------------------------*
     c     AsigValAu1    Begsr
     c                   Eval      FECMOV = nFecact
     c                   Eval      HORMOV = nhora
     c                   Eval      DIAMOV = Diaact
     c                   Eval      MESMOV = Mesact
     c                   Eval      ANOMOV = Anoact
     c                   Eval      PGMMOV = iopgm
     c                   Eval      USUMOV = user
     c                   Eval      PANMOV = WSID
     c                   Endsr
     c*---------------------------------------------------*
     c* Graba log MCFV030 valores originales              *
     c*---------------------------------------------------*
     c     GrbLogA30     Begsr
     c                   exsr      AsigValAu1
     c                   Write     RMCFV30LA
     c                   Endsr
     c*---------------------------------------------------*
     c* Graba log MCFV030 valores modificados             *
     c*---------------------------------------------------*
     c     GrbLogD30     Begsr
     c                   exsr      AsigValAu1
     c                   Write     RMCFV30LD
     c                   Endsr
     c*---------------------------------------------------*
     c* Asigna valores para campos de auditoria 2         *
     c*---------------------------------------------------*
     c     AsigValAu2    Begsr
     c                   Eval      d_FECMOV = nFecact
     c                   Eval      d_HORMOV = nhora
     c                   Eval      d_DIAMOV = Diaact
     c                   Eval      d_MESMOV = Mesact
     c                   Eval      d_ANOMOV = Anoact
     c                   Eval      d_PGMMOV = iopgm
     c                   Eval      d_USUMOV = user
     c                   Eval      d_PANMOV = WSID
     c                   Endsr
     c*---------------------------------------------------*
     c* Asigna valores para campos de auditoria 3         *
     c*---------------------------------------------------*
     c     AsigValAu3    Begsr
     c                   Eval      f_FECMOV = nFecact
     c                   Eval      f_HORMOV = nhora
     c                   Eval      f_DIAMOV = Diaact
     c                   Eval      f_MESMOV = Mesact
     c                   Eval      f_ANOMOV = Anoact
     c                   Eval      f_PGMMOV = iopgm
     c                   Eval      f_USUMOV = user
     c                   Eval      f_PANMOV = WSID
     c                   Endsr
     c*---------------------------------------------------*
     c* Graba log MCFV030e valores originales             *
     c*---------------------------------------------------*
     c     GrbLogA30E    Begsr
     c                   exsr      AsigValAu2
     c                   Write     RMCFV30ELA
     c                   Endsr
     c*---------------------------------------------------*
     c* Graba log MCFV030E valores modificados            *
     c*---------------------------------------------------*
     c     GrbLogD30E    Begsr
     c                   exsr      AsigValAu2
     c                   Write     RMCFV30ELD
     c                   Endsr
     c
     c*---------------------------------------------------*
     c* Graba log MCFV030f valores originales             *
     c*---------------------------------------------------*
     c     GrbLogA30F    Begsr
     c                   exsr      AsigValAu3
     c                   Write     RMCFV30FLA
     c                   Endsr
     c*---------------------------------------------------*
     c* Graba log MCFV030f valores modificados            *
     c*---------------------------------------------------*
     c     GrbLogD30F    Begsr
     c                   exsr      AsigValAu3
     c                   Write     RMCFV30FLD
     c                   Endsr
     c*---------------------------------------------------*
     c* Homlogar terminales datos del terminal 1          *
     c*---------------------------------------------------*
     c     Homologar     Begsr
     c                   Eval      nTiend = 0
     c                   Eval      numTer = 1
     c     clav30        Chain(n)  mcfv030
     c                   If        %Found(mcfv030)
     c                   Eval      comEquiv = MCCESD
     c     mccoco        Setll     mcfv030
     c     mccoco        Reade     mcfv030
     c                   Dow       not %Eof(mcfv030)
     c                   Eval      MCCESD = comEquiv
     c                   Update    RMCFV30
     c     mccoco        Reade     mcfv030
     c                   Enddo
     c*** Actualizar maestros
     c     mccoco        Chain     mcfm019
     c                   If        %Found()
     c                   Eval      MECEMM = comEquiv
     c                   Update    mcfm019f
     c                   Endif
     c     mccoco        Chain     mcfm019i
     c                   If        %Found()
     c                   Eval      MECEMM = comEquiv
     c                   Update    rmcfm019
     c                   Endif
     c     mccoco        Setll     mcft0120
     c     mccoco        Reade     mcft0120
     c                   Dow       not %Eof()
     c                   Eval      aecemm = comEquiv
     c                   Update    rmcft0120
     c     mccoco        Reade     mcft0120
     c                   Enddo
     c     mccoco        Setll     mcft0120e
     c     mccoco        Reade     mcft0120e
     c                   Dow       not %Eof()
     c                   Eval      aecemm = comEquiv
     c                   Update    rmcft0120e
     c     mccoco        Reade     mcft0120e
     c                   Enddo
     c                   Endif
     c                   Endsr
     c*---------------------------------------------------*
     c* Graba log de cambios                              *
     c*---------------------------------------------------*
     c     sbrGralog     Begsr
     c                   Call      'IZPA170'
     c                   parm                    pClave1          30
     c                   parm                    pClave2          30
     c                   parm                    pClave3          30
     c                   parm                    pClave4          30
     c                   parm                    pClave5          30
     c                   parm                    pClave6          30
     c                   parm                    pClave7          30
     c                   parm                    pClave8          30
     c                   parm                    pClave9          30
     c                   parm                    pClave10         30
     c                   parm                    pTabla1          10
     c                   parm                    pTipMov           2
     c                   parm      'MCPI009'     pProgra          10
     c                   Endsr
** DESCRIPCION DE ACCIONES
MATRICULA DE REGISTROS
MODIFICACION DE REGISTROS
CONSULTA DE REGISTROS
DUPLICACION DE REGISTROS
DATOS ADICONALES DEL TERMINAL POS
** MENSAJES DE WORKSTN
Se encuentra en el INICIO de la Lista.......
Se encuentra en el FINAL de la Lista........
ERROR: Las Opciones disponibles son: 2=Actualiza, 4=Elimina, 7=Duplica
Los registros Seleccionados han sido eliminados......
Registro Adicionado al Maestro de Puntos de Venta Instalados en el Bco.
ERROR: Codigo, Tienda y Terminal ya EXISTEN en el Maestro.........
El Reporte del Maestro de Puntos de Venta ha sido generado.......
ERROR: El Estado del P.O.S. debe ser 1=Activo 2=Inactivo......
ERROR: Ingrese el CODIGO del COMERCIO....
ERROR: Ingrese el CODIGO del TERMINAL....
ERROR: Ingrese el CODIGO de  MONEDA (01=Soles y 02=Dolares).....
ERROR: Ingrese el CODIGO de  SUCURSAL.....
ERROR: Ingrese el CODIGO de  AGENCIA........
ERROR: Codigo de Grupo no existe en archivo de Grupos...
ERROR: Ingrese la Fecha de Instalacion del P.O.S.....
ERROR: Ingrese la Ubicacion del P.O.S..............
ERROR: Ingrese la Localidad........................
ERROR: Ingrese el Codigo de la Pantalla Asignada.....
ERROR: Ingrese el Codigo de Grupo .....................
ERROR: Codigo de Comercio no Existe en Maestro.........
ERROR: Codigo de Sucursal no Existe en Maestro de Sucursales.....
ERROR: Codigo de Agencia no Existe en Maestro de Agencias....
ERROR: La Fecha que Usted Ingreso no es valida.......
ERROR: Codigo de Grupo no existe en archivo Maestro de Grupos...
ERROR: El codigo del comercio no es una Cta. de Establecimiento..
ERROR: Codigo de Moneda no Corresponde a la Moneda de la Cta Establec.
ERROR: Codigo de la Agencia no corresponde a la Sucursal
ERROR: Verifique el Codigo Asignado a la Pantalla
ERROR: Verifique el Codigo de Usuario
ERROR: Usuario no autorizado a eliminar registro......................
ERROR: Comercio no autorizado a uso de P.O.S. ........................
ERROR: Category Code no coincide con Merchant Type ...................
ERROR: Comercio es Cadena (No autorizado a Movimientos) ..............
MENSAJES DE LA SEGUNDA PANTALL IMG02
ERROR: Numero de Serie para el POS no valido .........................
36 OR: Codigo de Modelo para   POS no existe .........................
37 OR: Numero de Marquesi para POS no valido .........................
ERROR: Numero de Serie para el PRINTER no valido .....................
ERROR: Codigo de Modelo para   PRINTER no existe .....................
ERROR: Numero de Marquesi para PRINTER no valido .....................
ERROR: Numero de Serie para el PIN PAN no valido .....................
ERROR: Codigo de Modelo para   PIN PAD no existe......................
ERROR: Numero de Marquesi para PIN PAD no valido......................
ERROR: Tipo de Comunicacion no existe, presione <F4> para ayuda.......
ERROR: Numero de Serie para el MODEM no valido .......................
ERROR: Numero de Marguesi para MODEM no valido .......................
ERROR: Numero de IP no valido ........................................
ERROR: Numero de EID no valido .......................................
ERROR: Codigo de Antena no existe, presione <F4> para ayuda...........
ERROR: Circuito digital no Valido.....................................
ERROR: SPEED no existe, Presione <F4> para ayuda .....................
ERROR: Opciones son : I, V, C (Ingenicom/Verifone/Cajas Ripley).......
ERROR: Numero version NO Valido debe ser 000, 100, 200, 400...........
ERROR: Moneda del Cod Comercio Original debe ser Soles ...............
ERROR: Codigo Comercio Equivalente debe ser Dolares ..................
ERROR: Codig Comercio Equiv Dolares no es una Cta de Establecimiento..
ERROR: Número de Serie para el POS ya existe en este Comercio, Terminal
ERROR: Número de Serie para el POS ya existe en otro Comercio.........
ERROR: Número de Serie para el POS esta en este Comercio en el Terminal
ERROR: Ingrese número de serie del MPOS
ERROR: Número de Serie no existe en el Activo Fijo
ERROR: Número de serie no corresponde a un MPOS - PMP
ERROR: Ingrese número de terminal real - MPOS
ERROR: MPOS ya ha sido asignado a otro comercio
ERROR: Número de serie no corresponte a un equipo PPPAAA
ERROR: Ingrese tipo de comercio
ERROR: Cod.Comercio Equiv.Dolares, ya esta asociado a otro comercio
ERROR: Cod.Comercio Equiv.Dolares, no tiene el mismo RUC del comercio
ERROR: Comercio debe estar asociado a Arisale
ERROR: N° de serie de equipo no transaccional asociado a otro comercio
