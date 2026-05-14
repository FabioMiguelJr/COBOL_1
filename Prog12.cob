      ******************************************************************
      * Author:
      * Date:
      * Purpose: PERFORMS ANINHADOS
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROG12.
       DATA DIVISION.
       FILE SECTION.

       WORKING-STORAGE SECTION.

       01  MINHA-MENSAGEM  PIC X(80).
       01  ID-MENSAGEM     PIC 9(2).

       PROCEDURE DIVISION.

       PROGRAM-BEGIN.

      *    INICIALIZA VARIÁVEL
           MOVE 0 TO ID-MENSAGEM.

      *    PRIMEIRA MENSAGEM
           MOVE " MARIA, MARQUE UM REUNIAO COM NOSSOS FORNECEDORES"
           TO MINHA-MENSAGEM.
           PERFORM MOSTRA-ID-MENSAGEM.

      *    SEGUNDA MENSAGEM
           MOVE " PAULO, AGORA VOCE EH RESPONSAVEL PELO SETOR DE VENDAS"
           TO MINHA-MENSAGEM.
           PERFORM MOSTRA-ID-MENSAGEM.

       PROGRAM-DONE.

           STOP RUN.

      *    DECLARANDO OS PERFORMS USADOS NESTE PROGRAMA

      *    ANINHANDO OS PERFORMS
       MOSTRA-ID-MENSAGEM.
           PERFORM AUMENTA-ID.
           PERFORM EXIBE-MENSAGEM.

       AUMENTA-ID.
           ADD 1 TO ID-MENSAGEM.

       EXIBE-MENSAGEM.
           DISPLAY ID-MENSAGEM MINHA-MENSAGEM.


       END PROGRAM PROG12.
