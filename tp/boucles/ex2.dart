/// Exercice 2 :
///
/// Écrire un programme qui affiche la table de multiplication pour un nombre donné.
/// 1. Demandez à l'utilisateur d'entrer un nombre.
/// 2. Affichez la table de multiplication pour ce nombre jusqu'à 10.

// import 'dart:io';



void main() 
{
  // 1.
  print('Entrez un nombre N.');
//   final int n = int.parse(stdin.readLineSync()!);



  // 2.
  // for (int i = 1; i <= 10; i++) 
  // {
  //   print('$n x $i = ${n * i}');
  // }

   for (int n = 1; n <= 10; n++) 
   {
      for (int j = 1; j <= 10; j++) 
      {
         print('$n x $j = ${n * j}');
      }
   }

}