%% Etude de Cas: Commande par observateur/contrôleur du PENDULE INVERSE:
%% Fichiers utilisés:
% * pendule.slx: modèle du pendule en boucle ouverte
% * penduleBF.slx:modèle du pendule en boucle fermé commandé par retour d'état
% discret
%

clear all

%% Linéarisation du modèle sous forme d'état linéaire continue et discrète 

Tech=0.01;                                                                    % Période d'échantionnage en millisecondes
[A,B,C,D]=linmod('pendule',[0,0,0,0]');                                     % Modèle linéaire continu

[size_p,X0_p,Xstring_p]=pendule                                             % Determination de l'ordre du vecteur d'état choisi par Matlab

[Ad,Bd]=c2d(A,B,Tech);                                                 % Modèle linéaire discret    
Cd=C;
Dd=D;

%% Synthèse du regulateur Observateur/Controleur:  cas discret sans rejet de biais constantes (couple de charge et/ou frottement secs)
% * Modèle du pendule: cas discret 
%
% $$ x(k+1)=A_d x(k) + B_d u(k) $$;  
% 
% $$ y(k)= C_d x(k) + D_d u(k) $$
% 
% * $$ x=[\theta,d,\dot{d},\dot{\theta}]^T $$ est l'etat du pendule, où
% $$ \theta $$ est l'angle de la tige et $$ d $$ est la position du chariot sur
% le rail
%
% * $$ y=[\theta,d]^T $$ est la sortie mesurée
%
% * Modèle de l'observateur/contrôleur
%
% $$ x_{o}(k+1)=A_{dc} x_{o}(k)+B_{dc} y(k) $$
% 
% $$ y_{o}(k)=C_{dc}x_{o}(k) + D_{dc} y(k) $$
%
% * $$ x_o=[\theta_o,d_o,\dot{d}_o,\dot{\theta}_o]^T $$ est l'état observé
% du pendule
%
% * $$ y_o=-Kcd*x_o $$ est la commande (scalaire) du pendule à implémenter
%
%**************************************************************************



Pc=[-3,-8,-2.5,-2]                                                         
% Choix des pôles du pendule en boucle fermé: cas continu

%% Partie Synthèse de l'observateur/contrôleur

% Controleur
Kc  = place(A,B,Pc)         % Kc Coeffcient Controleur
Pcd = exp(Pc*Tech)          % Pôle Controleur Discret
Kcd = place(Ad,Bd,Pcd)      % Kcd Coef Controleur Discret

% Observateur
Po  = 4*Pc                  % Pôle Observateur.
% 4*Pc : La partie réelle négative du pole d'observateur doit être plus 
% grande que celle du pole de contrôle. -> reaction plus rapide
Pod = exp(Po*Tech)          % Pôle Observateur Discret
Kod = place(Ad', Cd', Pod)  % Coef Observateur Discret
Kod = Kod'

% Matrices d'état Discret
Adc = Ad-(Bd*Kcd)-(Kod*Cd)
Bdc = Kod
Cdc = Kcd
Ddc = [0,0];
