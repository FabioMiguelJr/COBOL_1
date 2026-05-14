      ******************************************************************
      * Author:
      * Date:
      * Purpose: Programa que demosntra o uso do comando PERFORM
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROG9.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       PROCEDURE DIVISION.


       PROGRAM-BEGIN.

           DISPLAY "A MENSAGEM DO HOJE EH: ".
           PERFORM MINHA-MENSAGEM.
           DISPLAY "VOCE CONCORDA?".
       PROGRAM-DONE.
           STOP RUN.

       MINHA-MENSAGEM.
           DISPLAY "PROGRAMAR EM COBOL EH LEGAL!".
