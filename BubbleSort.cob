       IDENTIFICATION DIVISION.
       PROGRAM-ID. BUBBLE-SORT-1000.
       AUTHOR. GEMINI-AI.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  WS-VARIAVEIS-CONTROLE.
           05  WS-I              PIC 9(04) COMP.
           05  WS-J              PIC 9(04) COMP.
           05  WS-TEMP           PIC 9(06).
           05  WS-TROCOU         PIC X(01).
               88  TEVE-TROCA    VALUE 'S'.
               88  SEM-TROCA     VALUE 'N'.

       01  WS-TABELA-DADOS.
           05  WS-ELEMENTO      PIC 9(06) OCCURS 1000 TIMES.

       PROCEDURE DIVISION.
       PERFORM 000-MAIN.

       000-MAIN.
           PERFORM 100-CARREGAR-DADOS
           PERFORM 101-EXIBIR-DADOS
           PERFORM 200-ORDENAR-DADOS
           PERFORM 300-EXIBIR-RESULTADO
           STOP RUN.

       100-CARREGAR-DADOS.
      *    Preenchendo com valores decrescentes para testar o pior caso
           PERFORM VARYING WS-I FROM 1 BY 1 UNTIL WS-I > 1000
               COMPUTE WS-ELEMENTO(WS-I) = 1001 - WS-I
           END-PERFORM.
       
       101-EXIBIR-DADOS.
           DISPLAY "PRIMEIRO ELEMENTO: " WS-ELEMENTO(1)
           DISPLAY "ULTIMO ELEMENTO:   " WS-ELEMENTO(1000).
           
       200-ORDENAR-DADOS.
      *    Lógica do Bubble Sort
           PERFORM VARYING WS-I FROM 1 BY 1 UNTIL WS-I > 1000
             SET SEM-TROCA TO TRUE
             
             COMPUTE WS-J = 1000 - WS-I
             PERFORM VARYING WS-J FROM 1 BY 1 UNTIL WS-J > (1000 - WS-I)
                 
                 IF WS-ELEMENTO(WS-J) > WS-ELEMENTO(WS-J + 1)
                     *> Troca de valores (Swap)
                     MOVE WS-ELEMENTO(WS-J)     TO WS-TEMP
                     MOVE WS-ELEMENTO(WS-J + 1) TO WS-ELEMENTO(WS-J)
                     MOVE WS-TEMP               TO WS-ELEMENTO(WS-J + 1)
                     SET TEVE-TROCA TO TRUE
                 END-IF
                 
             END-PERFORM
               
           *> Otimização: se não houve troca, o array já está ordenado
               IF SEM-TROCA
                   EXIT PERFORM
               END-IF
           END-PERFORM.

       300-EXIBIR-RESULTADO.
           DISPLAY "PRIMEIRO ELEMENTO: " WS-ELEMENTO(1)
           DISPLAY "ULTIMO ELEMENTO:   " WS-ELEMENTO(1000).