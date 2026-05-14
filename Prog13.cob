      ******************************************************************
      * Author:
      * Date:
      * Purpose: PERGUNTA SE O USUÁRIO GOSTA DE CHURRASCO.
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROG13.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       FILE SECTION.

       WORKING-STORAGE SECTION.

       01  RESPOSTA PIC X.

       PROCEDURE DIVISION.

       PROGRAM-BEGIN.

           PERFORM PERGUNTA.
           PERFORM EXIBE-RESPOSTA.

       PROGRAM-DONE.
           STOP RUN.

       PERGUNTA.
           DISPLAY "VOCE GOSTA DE CHURRASCO, SIM OU NAO? (S/N)".
           ACCEPT RESPOSTA.

       EXIBE-RESPOSTA.
           IF RESPOSTA IS EQUAL "S"
               DISPLAY "REALMENTE EH MUITO BOM.".
           IF RESPOSTA IS EQUAL "N"
               DISPLAY "QUE PENA! VOCE EH VEGETARIANO?".

       END PROGRAM PROG13.
