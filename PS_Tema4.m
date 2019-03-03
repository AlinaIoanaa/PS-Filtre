clc ; 
close all ;
clear all ;

omega = -pi : 0.1 : pi ;
 
zero = [ 1 0 0 1 ] ;
pol = [ -0.45 -0.50 -0.10 ] ;

figure
freqz( zero, pol, omega ) ; 
title( 'Reprezentarea in frecventa' ) ;

[ H, omega ] = freqz( zero, pol, omega ) ;

figure
plot( omega, H ) ; 
title( 'H(omega)' ) ;

figure
pzmap( zero, pol ) ;
title( 'Poli - zerouri' ) ;

figure
zplane( zero, pol ) ;
title( 'Poli - zerouri' ) ;