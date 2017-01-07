% Limpiar
clear all;

% Parámetros para variar
ke = 5;
c_max = 800;

% Parámetros del problema
alpha = [0.6 0.3 0.1];
lambda = [0.2 0.4 0.4];
mu = [0.1 0.4 0.5];
sigma = [0.3 0.4 0.3];
epsilon = 10^-6;
t_final = 1000;
C_final = [];
j_values = [];

% Variables de inicio
time = [0];
n = 2;
x(1) = c_max / 2;
c = [x];
p = 0.3;
q = [1-p p/2 p/2; p/2 1-p p/2; p/2 p/2 1-p];

% Definir estado inicial
t(1) = 0;
j(1) = discreta(alpha);
j_values = [j_values, j(1)];
s(1) = exponencial( lambda( j(1) ) );


% Mientras no se llegue al tiempo final.
while (t(n - 1) < t_final)
  % Generar valores para la iteración n
  j(n) = discreta( q(j(n - 1), :) );
  s(n) = exponencial( lambda( j(n) ) );
  t(n) = t(n - 1) + s(n - 1);
  d(n) = normal( mu( j(n) ), sigma( j(n) ) );

  % Guardar valores antes del n.
  t_izq = t(n) - epsilon;
  x_izq = max( 1, x(n - 1) - ke * ( t_izq - t(n - 1) ) );
  x(n) = max( 1, x(n - 1) - ke * ( t(n) - t(n - 1) ) ) + d(n);
  % Si x(n) es mayor que la capacidad máxima, baja a la mitad,
  % sino, queda igual.
  if (x(n) >= c_max)
    x(n) = x(n) / 2;
  end

  % Guardar un arreglo de tiempos con t(n) y t(n) a la izquierda.
  time = [time t_izq t(n)];
  c = [c x_izq x(n)];

  % Guardar valores de j.
  j_values = [j_values j(n) j(n)];

  % Seguir iterando hasta t_final
  n = n + 1;
end

% Guardar valor de C final
C_final = [C_final c(n)]

figure(1);
% Graficar tiempo y capacidad del servidor en el tiempo de una iteración.
plot(time, c)
% Delimitar gráfico.
axis([0 t_final 0 c_max * 1.5]);

% Título del gráfico.
title('Figura 1: Trayectoria del proceso.');
% Título de eje x.
xlabel('Tiempo');
% Título de eje y.
ylabel('Concentracion de Ct');

% Dibujar línea de capacidad máxima del servidor.
line([0 t_final], [c_max c_max], 'Color', 'r');

figure(2);
% Graficar valores de j
plot(time, j_values)
% Delimitar gráfico.
axis([0 t_final 0 4.5]);

% Título del gráfico.
title('Figura 2: Trayectoria del proceso.');
% Título de eje x.
xlabel('Tiempo');
% Título de eje y.
ylabel('Espacio de estado de  de vt');