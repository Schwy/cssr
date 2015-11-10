%% Etude de Cas: Commande par observateur/contr�leur du PENDULE INVERSE:
%% Fichiers utilis�s:
% * pendule.slx: mod�le du pendule en boucle ouverte
% * penduleBF.slx:mod�le du pendule en boucle ferm� command� par retour d'�tat
% discret
%

clear all

%% Lin�arisation du mod�le sous forme d'�tat lin�aire continue et discr�te 

Tech=0.01;                                                                    % P�riode d'�chantionnage en millisecondes
[A,B,C,D]=linmod('pendule',[0,0,0,0]');                                     % Mod�le lin�aire continu

[size_p,X0_p,Xstring_p]=pendule                                             % Determination de l'ordre du vecteur d'�tat choisi par Matlab

[Ad,Bd]=c2d(A,B,Tech);                                                 % Mod�le lin�aire discret    
Cd=C;
Dd=D;

%% Synth�se du regulateur Observateur/Controleur:  cas discret sans rejet de biais constantes (couple de charge et/ou frottement secs)
% * Mod�le du pendule: cas discret 
%
% $$ x(k+1)=A_d x(k) + B_d u(k) $$;  
% 
% $$ y(k)= C_d x(k) + D_d u(k) $$
% 
% * $$ x=[\theta,d,\dot{d},\dot{\theta}]^T $$ est l'etat du pendule, o�
% $$ \theta $$ est l'angle de la tige et $$ d $$ est la position du chariot sur
% le rail
%
% * $$ y=[\theta,d]^T $$ est la sortie mesur�e
%
% * Mod�le de l'observateur/contr�leur
%
% $$ x_{o}(k+1)=A_{dc} x_{o}(k)+B_{dc} y(k) $$
% 
% $$ y_{o}(k)=C_{dc}x_{o}(k) + D_{dc} y(k) $$
%
% * $$ x_o=[\theta_o,d_o,\dot{d}_o,\dot{\theta}_o]^T $$ est l'�tat observ�
% du pendule
%
% * $$ y_o=-Kcd*x_o $$ est la commande (scalaire) du pendule � impl�menter
%
%**************************************************************************



Pc=[-3,-8,-2.5,-2]                                                         
% Choix des p�les du pendule en boucle ferm�: cas continu

%% Partie Synth�se de l'observateur/contr�leur

% Controleur
Kc  = place(A,B,Pc)         % Kc Coeffcient Controleur
Pcd = exp(Pc*Tech)          % P�le Controleur Discret
Kcd = place(Ad,Bd,Pcd)      % Kcd Coef Controleur Discret

% Observateur
Po  = 4*Pc                  % P�le Observateur.
% 4*Pc : La partie r�elle n�gative du pole d'observateur doit �tre plus 
% grande que celle du pole de contr�le. -> reaction plus rapide
Pod = exp(Po*Tech)          % P�le Observateur Discret
Kod = place(Ad', Cd', Pod)  % Coef Observateur Discret
Kod = Kod'

% Matrices d'�tat Discret
Adc = Ad-(Bd*Kcd)-(Kod*Cd)
Bdc = Kod
Cdc = Kcd
Ddc = [0,0];
