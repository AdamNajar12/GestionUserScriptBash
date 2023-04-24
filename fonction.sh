#!/bin/bash


function show_usage(){
  echo "gestion_user.sh: [-h] [-T] [-t] [-n] [-N] [-d] [-m] [-s] chemin.." ;

}
 
function tester(){
	if [[ $1 == "-h" || $1 == "-T" ||  $1 == "-t" ||  $1 == "-n" || $1  == "-N" || $1 == "-d" || $1 == "-m" || $1 == "-s" ]]
		then echo "1"
		else 
			show_usage;
	fi
			
}
 
function Help()
{ cat /home/adam/help.txt; }


function verrouiller()
{
    echo "Donner le nom de l'utilisateur a verrouiller :"
    read user
    echo $user >> liste_user_v.txt
    sudo passwd -l "$user"
}


function deverrouiller()
{
    echo "Donner le nom de l'utilisateur a deverrouiller :"
    read user
    grep -v "$user" liste_user_v.txt > temp.txt
    
    mv temp.txt liste_user_v.txt

    sudo passwd -u "$user"
}




function modifier()
{
     echo "Donner le nom de l'utilisateur a modifier le repertoire :"
    read user
     echo "Donner la nouvelle repertoire de l'utilisateur:"
    read dir
    sudo usermod -m -d "$dir" $user
}







