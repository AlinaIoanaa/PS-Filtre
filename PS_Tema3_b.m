clc ;
clear all ;
close all ;

theta = pi / 3 ;
omega = -pi : 0.01 : pi ;

% valorile lui r 
r1 = 0.4 ;
r2 = 0.7 ;
r3 = 0.9 ; 

% functiile de transfer ale filtrului
s = tf( 's' ) ;
h1 = [ 1 ( -2 ) * r1 * cos( theta ) r1 ^ 2 ] ;
h2 = [ 1 ( -2 ) * r2 * cos( theta ) r2 ^ 2 ] ;
h3 = [ 1 ( -2 ) * r3 * cos( theta ) r3 ^ 2 ] ;

H1 = abs( freqz( 1 + ( -2 ) * r1 * cos( theta ) + r1 ^ 2, h1, omega ) ) ;
H2 = abs( freqz( 1 + ( -2 ) * r2 * cos( theta ) + r2 ^ 2, h2, omega ) ) ;
H3 = abs( freqz( 1 + ( -2 ) * r3 * cos( theta ) + r3 ^ 2, h3, omega ) ) ;

figure
freqz( 1 + ( -2 ) * r1 * cos( theta ) + r1 ^ 2, h1, omega ) ; 
hold on
freqz( 1 + ( -2 ) * r2 * cos( theta ) + r2 ^ 2, h2, omega ) ;
hold on
freqz( 1 + ( -2 ) * r3 * cos( theta ) + r3 ^ 2, h3, omega ) ;
title( 'Reprezentare in frecventa( ord. II )' ) ;


figure
plot( omega, H1, 'r' ) ;
hold on
plot( omega, H2, 'y' ) ;
hold on
plot( omega, H3, 'm' ) ;
title( 'Axe liniare( ord. II )' ) ;
legend( 'H1', 'H2', 'H3' ) ;

figure
zplane( 1 + ( -2 ) * r1 * cos( theta ) + r1 ^ 2, h1 ) ;
hold on
zplane( 1 + ( -2 ) * r2 * cos( theta ) + r2 ^ 2, h2 ) ;
hold on
zplane( 1 + ( -2 ) * r3 * cos( theta ) + r3 ^ 2, h3 ) ;
hold on
title( 'Poli( ord. II )' ) ;
axis( [ -1 1 -1 1 ] ) ;

% G(0) = 1 / ( 1 + ( -2 ) * r * cos( theta ) + r ^ 2 ) care este constanta
% prin urmare G( z ) / G( 0 ) rep. functia G( z ) + o amplificare ;
% graficul va arata la fel, dar va fi pozitionat mai sus pe axe