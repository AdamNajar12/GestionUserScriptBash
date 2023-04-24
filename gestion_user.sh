 #!/bin/bash

source fonction.sh;   
  
   PS3="Votre choix :"

   select item in "- affichage d aide   -" "-  verrouiller un compte -"  "- deverrouiller un compte -" "- modifier un compte un compte -"
      do
          echo "Vous avez choisi l'item $REPLY : $item"
	

         case $REPLY in
                  1)
                        
                           Help
                        ;;
                  2)
                         
                       verrouiller
                        ;;
                  3)
                      
                         deverrouiller
                       ;;
                  
                  4)
                  
                 modifier
                  ;;
                  
                  *)
                        echo "Choix incorrect"
                        ;;
              esac

      done
