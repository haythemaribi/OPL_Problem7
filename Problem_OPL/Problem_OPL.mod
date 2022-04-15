/*********************************************
 * OPL 12.6.0.0 Model
 * Author: Haythem_AR0673349861
 * Creation Date: Apr 13, 2022 at 2:30:59 AM
 *********************************************/
//lire dans un fichier le nb d'objet et le poids max 
int nbObjet = ...; //d�clarer le nombre des Avion
int poidsMax = ...; //d�clarer le nombre de passagers en transfert entre i et j 
range objets_i = 1..nbObjet; //d�clarer un intervalle d'entiers de 1 � nbObjet
range objet_j = 1..nbObjet; //d�clarer un intervalle d'entiers de 1 � nbObjet
//d�clarer des tableaux de donn�es index�s sur les objets, 
//ils seront remplis en lisant le fichier de donn�es
int v[objets_i][objet_j] = ...; 
dvar boolean x[objets_i][objet_j]; // D�clarer les variables de d�cisions
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
