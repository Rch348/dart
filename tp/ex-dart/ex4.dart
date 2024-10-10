/**
 * Exercice 4 :
 *
 * Écrivez un programme qui demande de saisir deux nombres à l’utilisateur et l’informe ensuite si leur produit est négatif ou positif (on laisse de côté le cas où le produit est nul).
 * Attention toutefois : on ne doit pas calculer le produit des deux nombres.
 */



import 'dart:io';

void main()
{

    print('Entrez un premier nombre.');
    final int champNb = int.parse(stdin.readLineSync()!);

    print('Entrez un deuxième nombre.');
    final int champNb2 = int.parse(stdin.readLineSync()!);

    champNb < 0 && champNb2 > 0 || champNb > 0 && champNb2 < 0 ? print('Le produit des deux nombres est négatif.') : print('Le produit des deux nombres est positif.');

    // OU :

    // if (champNb < 0 && champNb2 > 0 || champNb > 0 && champNb2 < 0)
    // {
    //     print('Positif.');
    // }
    // else
    // {
    //     print('Négatif.');
    // }

}