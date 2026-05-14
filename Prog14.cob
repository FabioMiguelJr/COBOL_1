      ******************************************************************
      * Author:
      * Date:
      * Purpose: PERGUNTA SE O USUÁRIO GOSTA DE CHURRASCO.
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROG14.

       ENVIRONMENT DIVISION.

       DATA DIVISION.
       FILE SECTION.

       WORKING-STORAGE SECTION.

       01  RESPOSTA PIC X.

       PROCEDURE DIVISION.

       PROGRAM-BEGIN.

           PERFORM PERGUNTA.
           PERFORM CONVERTE-PARA-MAIUSCULO.
           PERFORM EXIBE-RESPOSTA.


       PROGRAM-DONE.
           STOP RUN.

       PERGUNTA.
           DISPLAY "VOCE GOSTA DE CHURRASCO, SIM OU NAO? (S/N)".
           ACCEPT RESPOSTA.

       CONVERTE-PARA-MAIUSCULO.

           IF RESPOSTA IS EQUAL "s"
               MOVE "S" TO RESPOSTA.

           IF RESPOSTA IS EQUAL "n"
               MOVE "N" TO RESPOSTA.

       EXIBE-RESPOSTA.
           IF RESPOSTA IS EQUAL "S"
               DISPLAY "REALMENTE EH MUITO BOM.".
           IF RESPOSTA IS EQUAL "N"
               DISPLAY "QUE PENA! VOCE EH VEGETARIANO?".

       END PROGRAM PROG14.
