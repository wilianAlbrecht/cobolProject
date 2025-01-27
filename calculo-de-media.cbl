       identification DIVISION.
       PROGRAM-ID. calculo-de-media.
       data division.
       WORKING-STORAGE SECTION.
       01 WS-NOTAS.
           03 WS-NOTA-1                PIC 9(2)v9 VALUE ZEROS.
           03 WS-NOTA-2                PIC 9(2)v9 VALUE ZEROS.
           03 WS-NOTA-3                PIC 9(2)v9 VALUE ZEROS.
           03 WS-NOTA-4                PIC 9(2)v9 VALUE ZEROS.
       01 WS-MEDIA                     PIC 9(2)v9 VALUE ZEROS.
       
       procedure division.
       MAIN-PROGRAM.
           display "DIGITE A  PRIMEIRA NOTA "
           accept WS-NOTA-1.
           display "DIGITE A SEGUNDA NOTA "
           accept WS-NOTA-2.
           display "DIGITE A TERCEIRA NOTA "
           accept WS-NOTA-3.
           display "DIGITE A QUARTA NOTA "
           accept WS-NOTA-4.

           COMPUTE WS-MEDIA = (WS-NOTA-1 + WS-NOTA-2 + WS-NOTA-3
               + WS-NOTA-4) / 4

           display "A media do aluno e " WS-MEDIA

           if WS-MEDIA >= 7 then 
               display "Aluno APROVADO "
           ELSE 
               display "Aluno REPROVADO"

           STOP RUN.
       end program calculo-de-media.
