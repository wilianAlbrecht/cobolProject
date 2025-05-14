       IDENTIFICATION DIVISION.
       PROGRAM-ID. arrays.
       
       ENVIRONMENT DIVISION.
       
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-DIAS-DA-SEMANA.
          03 FILLER              PIC X(09) VALUE '01DOMINGO'.
          03 FILLER              PIC X(09) VALUE '02SEGUNDA'.
          03 FILLER              PIC X(09) VALUE '03TERCA'.
          03 FILLER              PIC X(09) VALUE '04QUARTA'.
          03 FILLER              PIC X(09) VALUE '05QUINTA'.
          03 FILLER              PIC X(09) VALUE '06SEXTA'.
          03 FILLER              PIC X(09) VALUE '07SABADO'.

       01 FILLER REDEFINES WS-DIAS-DA-SEMANA OCCURS 7 TIMES.
          03 WS-NUMERO-DIA       PIC 9(02).
          03 WS-NOME-DIA         PIC X(07).    

       77 WS-COUNT                PIC 9(02) VALUE ZEROS.

       PROCEDURE DIVISION.
           
           INITIALIZE WS-COUNT.

           PERFORM VARYING WS-COUNT FROM 1 BY 1 UNTIL WS-COUNT GREATER 7
               DISPLAY "DIA " WS-COUNT " - " WS-NOME-DIA(WS-COUNT)
           END-PERFORM.
       
       
       END PROGRAM arrays.