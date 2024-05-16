import 'dart:io';

List<Map<String, dynamic>> chambres = [];

// Fonction pour créer un certain nombre de chambres en leur attribuant un numéro et un statut
void initialiserChambres() {
  print('Création de chambres : Combien de chambre voulez-vous créer ?');
  int champNumero = int.parse(stdin.readLineSync()!);
  for (int i = 1; i <= champNumero; i++) {
    chambres += [
      {'Numéro': i, 'Statut': 'disponible', 'Nuit': 0}
    ];
  }
  return;
}

// Fonction pour afficher les chambres avec leur numéro et leur statut
void afficherEtatChambres() {
  print('Liste des chambres :');
  for (var item in chambres) {
    print('Chambre n°${item['Numéro']} : ${item['Statut']} (${item['Nuit']} nuits)');
  }
}

// Fonction pour réserver une chambre avec vérification de leur disponibilité
void reserverChambre() {
  afficherEtatChambres();
  print('Saisir le numéro de la chambre à réserver :');
  int champNumero = (int.parse(stdin.readLineSync()!)) - 1;
  while (champNumero == chambres[champNumero]['Numéro'] &&
      chambres[champNumero]['Statut'] == 'réservée') {
    afficherEtatChambres();
    print(
        'Attention, cette chambre est réservée ! Veuillez saisir le numéro d\'une chambre disponible :');

    champNumero = int.parse(stdin.readLineSync()!);
  }
  chambres[champNumero]['Statut'] = 'réservée';
  print('Pour combien de nuit souhaitez-vous réserver ?');
  int champNuit = int.parse(stdin.readLineSync()!);
  chambres[champNumero]['Nuit'] = champNuit;
  print('Chambre ${chambres[champNumero]['Numéro']} réservée !');
}

// Fonction pour annuler une réservation en vérifiant que la chambre en question est bien réservée
void annulerReservation() {
  afficherEtatChambres();
  print('Saisir le numéro de la chambre dont la réservation est à annuler :');
  int champNumero = (int.parse(stdin.readLineSync()!)) - 1;
  while (champNumero == chambres[champNumero]['Numéro'] && chambres[champNumero]['Statut'] == 'disponible') {
    afficherEtatChambres();
    print('Attention, cette chambre est disponible ! Veuillez saisir le numéro d\'une chambre réservée :');
    champNumero = int.parse(stdin.readLineSync()!);
  }
  chambres[champNumero]['Statut'] = 'disponible';
  chambres[champNumero]['Nuit'] = 0;
  print('Réservation de la chambre ${chambres[champNumero]['Numéro']} annulée !');
}

void main() {
  while (true) {
    print('Menu principal :');
    print('1) Créer des chambres.');
    print('2) Afficher le statut des chambres.');
    print('3) Réserver une chambre.');
    print('4) Annuler une réservation.');
    print('5) Quitter.');
    print('Sélectionnez une option (de 1 à 5) :');

    int choix = int.parse(stdin.readLineSync()!);

    switch (choix) {
      case 1:
        initialiserChambres();
        break;
      case 2:
        afficherEtatChambres();
        break;
      case 3:
        reserverChambre();
        break;
      case 4:
        annulerReservation();
      case 5:
        exit(0);
      default:
        print('Saisie invalide, veuillez saisir une option valide (entre 1 et 6) :');
    }
  }
}
