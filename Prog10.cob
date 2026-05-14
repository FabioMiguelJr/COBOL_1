      ******************************************************************
      * Author:
      * Date:
      * Purpose: USO DE PERFORM 2 (EXIBIR MENSAGENS
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROD10.
       ENVIRONMENT DIVISION.
       DATA DIVISION.

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
       MOSTRA-ID-MENSAGEM.
           ADD 1 TO ID-MENSAGEM.
           DISPLAY ID-MENSAGEM MINHA-MENSAGEM.


      *    SERVIRÁ COMO PROG10 E 11.
