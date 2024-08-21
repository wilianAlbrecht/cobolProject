       identification division.
       program-id. sections.
       data division.
       file section.
       working-storage section.
       77 ws-mostra            pic x(20) values spaces.
       procedure division.
       
      *-------------------------sections-------------------------------*

           main-proc section.
           p001-proc1.
               move 'p001-proc1'           to ws-mostra
               display ws-mostra
               perform sec-proc.

           p001-proc2.
                 if ws-mostra not equal  'p002-proc2' then
                     move 'p001-proc2'           to ws-mostra
                     display ws-mostra
                     perform sec-proc
                 end-if.
           p001-proc3.
                if ws-mostra not equal  'p002-proc3' then
                    move 'p001-proc3'           to ws-mostra
                    display ws-mostra
                    perform p002-proc3
                else 
                     perform fim-proc
                end-if.
             
        
           sec-proc section.
           p002-proc1.
               if ws-mostra not equal  'p001-proc2' then
                   move 'p002-proc2'             to ws-mostra
                   display ws-mostra
                   perform p001-proc2
               end-if.
                   
           p002-proc2.
               move 'p002-proc2'           to ws-mostra
               display ws-mostra
               perform p001-proc2.
           p002-proc3.
               move 'p002-proc2'           to ws-mostra
               display ws-mostra
               perform p001-proc3.
        
           fim-proc section.
               move "fim-proc"             to ws-mostra
               display ws-mostra
        
           goback.

       end program sections.
      
      