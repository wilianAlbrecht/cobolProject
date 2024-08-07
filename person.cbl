       identification division.
       program-id. person.
       data division.
       working-storage section.
       77 nome         pic x(10).
       77 sexo         pic x.
       01 endereco.
           02 rua      pic x(10).
           02 numero   pic z(10).
           02 bairro   pic x(10).
               66 full-endereco renames rua thru numero.
       procedure division.
           display "Nome:"
           accept nome
           display "sexo"
           accept sexo
           display "rua"
           accept rua
           display "numero"
           accept numero
           display "bairro"
           accept bairro

           display "nome: " nome
      -    " sexo: " sexo " endereco: " full-endereco " " bairro
      *-    " endereco: " rua " " numero " " bairro
       stop run.
    
       