/*********************************************
 * OPL 12.6.0.0 Model
 * Author: Haythem_AR0673349861
 * Creation Date: Apr 13, 2022 at 2:30:59 AM
 *********************************************/
//lire dans un fichier le nb d'objet et le poids max 
int nbObjet = ...; //déclarer le nombre des Avion
int poidsMax = ...; //déclarer le nombre de passagers en transfert entre i et j 
range objets_i = 1..nbObjet; //déclarer un intervalle d'entiers de 1 à nbObjet
range objet_j = 1..nbObjet; //déclarer un intervalle d'entiers de 1 à nbObjet
//déclarer des tableaux de données indexés sur les objets, 
//ils seront remplis en lisant le fichier de données
int v[objets_i][objet_j] = ...; 
dvar boolean x[objets_i][objet_j]; // Déclarer les variables de décisions
// function objectif
minimize sum(i in objets_i) sum(j in objet_j)v[i][j] * x[i][j]; 
// contraintes
subject to {
 SUPPLYCONS:
 forall(i in objets_i) 
 sum(i in objets_i)x[i][poidsMax]== 1;
 DEMANDCONS:
 forall(j in objet_j)
   sum(i in objet_j)x[i][j] == 1;
 
 }
