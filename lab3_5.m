clear all; close all; clc;
% Define the numerator and denominator coefficients of the transfer function
numerator = [1, 0, -2, 2, -2]; % Example coefficients
denominator = [1, -0.2, -0.2, -0.05, -0.0125]; % Example coefficients
% Calculate the partial fraction expansion using residuez
[residues, poles, direct_terms] = residuez(numerator, denominator);
% Display the partial fraction expansion
disp('Residues:'),disp(residues);
disp('Poles:'),disp(poles);
disp('Direct Terms:'),disp(direct_terms);
