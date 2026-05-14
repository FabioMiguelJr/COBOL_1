      ******************************************************************
      * Author:
      * Date:
      * Purpose: OPERADORES DE COMPARAÇÃO LÓGICA
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROG15.

       ENVIRONMENT DIVISION.

       DATA DIVISION.
       FILE SECTION.

       WORKING-STORAGE SECTION.

       01  VALOR01 PIC 9(2).
       01  VALOR02 PIC 9(2).

       PROCEDURE DIVISION.

       PROGRAM-BEGIN.

           DISPLAY "INFORME O PRIMEIRO VALOR 1: ".
           ACCEPT VALOR01.
           DISPLAY "INFORME O PRIMEIRO VALOR 2: ".
           ACCEPT VALOR02.

           IF VALOR01 < VALOR02
               DISPLAY "OUTRA INSTRUCAO".
               DISPLAY "O VALOR 1 EH MENOR QUE O VALOR 2".
           IF VALOR01 > VALOR02
               DISPLAY "O VALOR 1 EH MAIOR QUE O VALOR 2".
           IF VALOR01 = VALOR02
               DISPLAY "O VALOR 1 EH IGUAL AO VALOR 2".

       PROGRAM-DONE.
           STOP RUN.

       END PROGRAM PROG15.
