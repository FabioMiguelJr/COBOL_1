       IDENTIFICATION DIVISION.
       PROGRAM-ID. Prog21.
      *    UTILIZACAO DO "PERFORM UNTIL"
      *    PROGRAMA PARA FAZER UMA TABUADA
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.

       01 NUMERO           PIC 99.
       01 MULTIPLICADOR    PIC 999.
       01 PRODUTO          PIC 9(4).

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

       EXIBIR-TABUADA.
           DISPLAY " A taduada de multiplicação de " NUMERO " eh ".
           PERFORM CALCULA-E-EXIBE UNTIL MULTIPLICADOR >= 5.
       
       CALCULA-E-EXIBE.
           ADD 1 TO MULTIPLICADOR.
           COMPUTE PRODUTO = NUMERO * MULTIPLICADOR.
           DISPLAY " * " MULTIPLICADOR " = " PRODUTO.
