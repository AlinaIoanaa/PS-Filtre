clc ;
clear all ;
close all ;

theta = pi / 3 ;
omega = -pi : 0.01 : pi ;

% valorile lui r
r1 = 0.2 ;
r2 = 0.4 ;
r3 = 0.7 ;
r4 = 0.8 ;
r5 = 0.9 ; 

% functiile de transfer ale filtrului
h1 = [ 1 ( -2 ) * r1 * cos( theta ) r1 ^ 2 ] ;
h2 = [ 1 ( -2 ) * r2 * cos( theta ) r2 ^ 2 ] ;
h3 = [ 1 ( -2 ) * r3 * cos( theta ) r3 ^ 2 ] ;
h4 = [ 1 ( -2 ) * r4 * cos( theta ) r2 ^ 2 ] ;
h5 = [ 1 ( -2 ) * r5 * cos( theta ) r3 ^ 2 ] ;

H1 = abs( freqz( h1, 1, omega ) ) ;
H2 = abs( freqz( h2, 1, omega ) ) ;
H3 = abs( freqz( h3, 1, omega ) ) ;
H4 = abs( freqz( h4, 1, omega ) ) ;
H5 = abs( freqz( h5, 1, omega ) ) ;

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
title( 'Reprezentare in frecventa( ord. II )' ) ;


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
title( 'Axe liniare( ord. II )' ) ;
legend( 'H1', 'H2', 'H3', 'H3', 'H5' ) ;

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
title( 'Poli( ord. II )' ) ;
axis( [ -1 1 -1 1 ] ) ;
