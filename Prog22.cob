       IDENTIFICATION DIVISION.
       PROGRAM-ID. Prog22.
      *    UTILIZACAO DO "PERFORM VARYING FROM"
      *    PROGRAMA PARA FAZER UMA TABUADA
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.

       01 NUMERO           PIC 99.
       01 MULTIPLICADOR    PIC 999.
       01 PRODUTO          PIC 9(4).
       01 QUANTOS          PIC 99. 

       PROCEDURE DIVISION.

           PERFORM PROGRAM-BEGIN.
           PERFORM PROGRAM-DONE.
             
           STOP RUN.

       PROGRAM-BEGIN.
           PERFORM INICIALIZACAO-PROGRAMA.
           PERFORM PEGA-TABUADA.
           PERFORM EXIBIR-TABUADA.
       
       PROGRAM-DONE.
           DISPLAY "DONE.".

       INICIALIZACAO-PROGRAMA.
           MOVE 0 TO MULTIPLICADOR.

       PEGA-TABUADA.
           DISPLAY "Qual a tabuada de multiplicacao(01-99)?".
           ACCEPT NUMERO.
           DISPLAY "Qual o tamanho da tabuada?".
           ACCEPT QUANTOS.

       EXIBIR-TABUADA.
           DISPLAY " A taduada de multiplicacao de " NUMERO " eh ".
           PERFORM CALCULA-E-EXIBE 
               VARYING MULTIPLICADOR
               FROM 1 BY 1
           UNTIL MULTIPLICADOR > QUANTOS. 
       
       CALCULA-E-EXIBE.
      *    ADD 1 TO MULTIPLICADOR. (Comando não é necessário)
           COMPUTE PRODUTO = NUMERO * MULTIPLICADOR.
           DISPLAY " * " MULTIPLICADOR " = " PRODUTO.
