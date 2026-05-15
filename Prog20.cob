       IDENTIFICATION DIVISION.
       PROGRAM-ID. Prog20.
      *    UTILIZACAO DO "PERFORM N TIMES"
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
           DISPLAY " A taduada de multiplicação de " NUMERO " eh ".
           PERFORM CALCULA-E-EXIBE QUANTOS TIMES.
       
       CALCULA-E-EXIBE.
           ADD 1 TO MULTIPLICADOR.
           COMPUTE PRODUTO = NUMERO * MULTIPLICADOR.
           DISPLAY " * " MULTIPLICADOR " = " PRODUTO.
