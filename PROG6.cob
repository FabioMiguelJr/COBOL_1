      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROG6.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.

       01  NUMERO  PIC 9(2).
       01  NUMERO1 PIC 9(2).

       PROCEDURE DIVISION.

       PROGRAM-BEGIN.

           DISPLAY "INFORME SUA IDADE".
           ACCEPT NUMERO1.
           DISPLAY "A IDADE EH: " NUMERO1.

           ADD 6 TO NUMERO.

           ADD NUMERO TO NUMERO1.

           DISPLAY "DAQUI A " NUMERO " ANOS SUA IDADE SERAH: " NUMERO1.

       PROGRAM-DONE.
