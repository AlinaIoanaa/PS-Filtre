clc ;
clear all ;
close all ;

theta = pi / 3 ;
omega = -pi : 0.01 : pi ;

% valorile lui r - r este raza cercului unitare => r = 0 : 1
r1 = 0.1 ;
r2 = 0.3 ;
r3 = 0.6 ;
r4 = 0.8 ; 
r5 = 0.9 ;

j = sqrt( -1 ) ;

% functiile de transfer ale filtrului
h1 = [ 1 ( - r1 * exp( j * theta ) ) ] ;
h2 = [ 1 ( - r2 * exp( j * theta ) ) ] ;
h3 = [ 1 ( - r3 * exp( j * theta ) ) ] ;
h4 = [ 1 ( - r4 * exp( j * theta ) ) ] ;
h5 = [ 1 ( - r5 * exp( j * theta ) ) ] ;

H1 = abs( freqz( h1, 1, omega ) ) ;
H2 = abs( freqz( h2, 1, omega ) ) ;
H3 = abs( freqz( h3, 1, omega ) ) ;
H4 = abs( freqz( h4, 1, omega ) ) ;
H5 = abs( freqz( h5, 1, omega ) ) ;

% figure
% subplot( 2, 1, 1 )
% plot( sqrt( 1 + r1 ^ 2 - 2 * r1 * cos( omega - theta ) ) + sqrt( 1 + r1 ^ 2 - 2 * r1 * cos( omega + theta ) ) ) ;
% hold on 
% plot( sqrt( 1 + r2 ^ 2 - 2 * r2 * cos( omega - theta ) ) + sqrt( 1 + r2 ^ 2 - 2 * r2 * cos( omega + theta ) ) ) ;
% hold on
% plot( sqrt( 1 + r3 ^ 2 - 2 * r3 * cos( omega - theta ) ) + sqrt( 1 + r3 ^ 2 - 2 * r3 * cos( omega + theta ) ) ) ;
% hold on
% plot( sqrt( 1 + r4 ^ 2 - 2 * r4 * cos( omega - theta ) ) + sqrt( 1 + r4 ^ 2 - 2 * r4 * cos( omega + theta ) ) ) ;
% hold on
% plot( sqrt( 1 + r5 ^ 2 - 2 * r5 * cos( omega - theta ) ) + sqrt( 1 + r5 ^ 2 - 2 * r5 * cos( omega + theta ) ) ) ;
% subplot( 2, 1, 2 )


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
title( 'Reprezentare in frecventa' ) ;
% Apropierea lui r de valoarea unitara produce atenuari din ce in ce mai
% mari in jurul frecventei omega = theta 


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
title( 'Axe liniare' ) ;
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
title( 'Poli' ) ;
axis( [ -1 1 -1 1 ] ) ;

% atenuari orientate in sus => filtru de tip AC