/**
 * Exercice 2 :
 *
 * Écrivez un programme qui demande à l'utilisateur de saisir une valeur entière et afficher son
double si cette valeur donnée est inférieure à un seuil donné.
 * seuil = 20.
 */



import 'dart:io';

void main()
{

    const int seuil = 20;
    
    print('Entrez un nombre.');
    int champNb = int.parse(stdin.readLineSync()!);

    print('Le nombre saisi est $champNb.');

    if (champNb < seuil)
    {
        int result = champNb * 2;
        //print("Le double de $champNb est $result.");
        print("Le double de $champNb est ${ result * 2 }.");
    }
    else
    {
        print("Entrez un nombre inférieur à 20.");
    }

}