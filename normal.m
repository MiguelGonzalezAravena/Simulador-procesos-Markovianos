function [ var_normal ] = va_normal(media, desv_estandar)
%va_normal Summary of this function goes here
%   Detailed explanation goes here
num_aleatorio = rand(1000, 1);
n = 12;
varianza = desv_estandar^2;
suma = sum(num_aleatorio);
var_normal = (media+varianza*((suma-n/2)/(n/12)^(0.5)));
end

