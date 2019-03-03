clc ;
clear all ;
close all ;

theta1 = 2 * pi / 3 ;
theta2 = 4 * pi / 3 ;
omega = -pi : 0.01 : pi ;

% valorile lui r 
r1 = 0.1 ;
r2 = 0.3 ;
r3 = 0.6 ;
r4 = 0.8 ; 
r5 = 0.9 ;

j = sqrt( -1 ) ;

% functiile de transfer ale filtrului
% theta -> 2 * pi / 3
h1 = [ 1 ( - r1 * exp( j * theta1 ) ) ] ;
h2 = [ 1 ( - r2 * exp( j * theta1 ) ) ] ;
h3 = [ 1 ( - r3 * exp( j * theta1 ) ) ] ;
h4 = [ 1 ( - r4 * exp( j * theta1 ) ) ] ;
h5 = [ 1 ( - r5 * exp( j * theta1 ) ) ] ;

H1 = abs( freqz( h1, 1, omega ) ) ;
H2 = abs( freqz( h2, 1, omega ) ) ;
H3 = abs( freqz( h3, 1, omega ) ) ;
H4 = abs( freqz( h4, 1, omega ) ) ;
H5 = abs( freqz( h5, 1, omega ) ) ;

% theta -> 4 * pi / 3
h6  = [ 1 ( - r1 * exp( j * theta2 ) ) ] ;
h7  = [ 1 ( - r2 * exp( j * theta2 ) ) ] ;
h8  = [ 1 ( - r3 * exp( j * theta2 ) ) ] ;
h9  = [ 1 ( - r4 * exp( j * theta2 ) ) ] ;
h10 = [ 1 ( - r5 * exp( j * theta2 ) ) ] ;

H6  = abs( freqz(  h6, 1, omega ) ) ;
H7  = abs( freqz(  h7, 1, omega ) ) ;
H8  = abs( freqz(  h8, 1, omega ) ) ;
H9  = abs( freqz(  h9, 1, omega ) ) ;
H10 = abs( freqz( h10, 1, omega ) ) ;

% theta = 2 * pi / 3 
figure
freqz( h1, 1, omega ) ; 
hold on
freqz( h2, 1, omega ) ;
hold on
freqz( h3, 1, omega ) ;
hold on
freqz( h4, 1, omega ) ;
hold on
freqz( h5, 1, omega ) ;
title( 'Reprezentare in frecventa, theta = 2 * pi / 3' ) ;


figure
plot( omega, H1, 'r' ) ;
hold on
plot( omega, H2, 'y' ) ;
hold on
plot( omega, H3, 'm' ) ;
hold on
plot( omega, H4, 'g' ) ;
hold on
plot( omega, H5, 'b' ) ;
title( 'Axe liniare, theta = 2 * pi / 3' ) ;
legend( 'H1', 'H2', 'H3', 'H4', 'H5' ) ;

figure
zplane( h1, 1 ) ;
hold on
zplane( h2, 1 ) ;
hold on
zplane( h3, 1 ) ;
hold on
zplane( h4, 1 ) ;
hold on
zplane( h5, 1 ) ;
hold on
title( 'Poli, theta = 2 * pi / 3' ) ;
axis( [ -1 1 -1 1 ] ) ;


% theta = 4 * pi / 3 
figure
freqz(  h6, 1, omega ) ; 
hold on
freqz(  h7, 1, omega ) ;
hold on
freqz(  h8, 1, omega ) ;
hold on
freqz(  h9, 1, omega ) ;
hold on
freqz( h10, 1, omega ) ;
title( 'Reprezentare in frecventa, theta = 4 * pi / 3' ) ;


figure
plot( omega,  H6, 'r' ) ;
hold on
plot( omega,  H7, 'y' ) ;
hold on
plot( omega,  H8, 'm' ) ;
hold on
plot( omega,  H9, 'g' ) ;
hold on
plot( omega, H10, 'b' ) ;
title( 'Axe liniare, theta = 4 * pi / 3' ) ;
legend( 'H6', 'H7', 'H8', 'H9', 'H10' ) ;

figure
zplane(  h6, 1 ) ;
hold on
zplane(  h7, 1 ) ;
hold on
zplane(  h8, 1 ) ;
hold on
zplane(  h9, 1 ) ;
hold on
zplane( h10, 1 ) ;
title( 'Poli, theta = 4 * pi / 3' ) ;
axis( [ -1 1 -1 1 ] ) ;


