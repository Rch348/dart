/**
 * Exercice 3
 *
 * Écrire un programme qui vérifie si un nombre est premier
 * 1. Demandez à l'utilisateur d'entrer un nombre.
 * 2. Vérifiez si le nombre est premier.
 * 3. Affichez le résultat
 */

import 'dart:io';



void main() 
{
  // 1.
  // print('Entrez un nombre :');
  // int n = int.parse(stdin.readLineSync()!);

  // bool estPrem = true;

  // for (int i = 2; i < n; i++) 
  // {
  //   if (n % i == 0) 
  //   {
  //     estPrem = false;
  //     break;
  //   }
  // }

  // if (estPrem) 
  // {
  //   print('$n est premier.');
  // } 
  // else 
  // {
  //   print('$n n\'est pas premier.');
  // }


  // 1.
  print('Entrez un nombre n.');
  final int n = int.parse(stdin.readLineSync()!);
  
  bool estNbPrem = true;

  // 2.
  for (int i = 2; i < n; i++) 
  {
    
    if (n % i == 0) 
    {
  
      print('$n n\'est pas un nombre premier.');
      estNbPrem = false;
      break;
  
    }
  
  }

  // 3.
  if (estNbPrem) 
  {
    
    print('$n est un nombre premier.');
  
  }

}
