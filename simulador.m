function [] = simulador(ke, c_max, t_final, MonteCarlo, p, estadoInicial, paquetes, desviacion_est, clientes_hora, histograma, cambioEstados, capacidadServidor, media, desv_est)
  % Parámetros del problema
  paquetes = paquetes / 1000;
  desviacion_est = desviacion_est / 1000;
  alpha = [0.6 0.3 0.1];
  lambda = [clientes_hora (1-clientes_hora)/2 (1-clientes_hora)/2];
  mu = [paquetes paquetes*2 paquetes*3];
  sigma = [desviacion_est desviacion_est*2 desviacion_est*3];
  epsilon = 10^-6;
  C_final = [];

  % Iniciar MonteCarlo
  for k = 1 : MonteCarlo
    % Variables de inicio
    j_values = [];
    time = [0];
    n = 2;
    x(1) = estadoInicial;
    c = [x];
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
      x_izq = max( 0, x(n - 1) - ke * ( t_izq - t(n - 1) ) );
      x_aux = max( 0, x(n - 1) - ke * ( t(n) - t(n - 1) ) ) + d(n);
      % Si x(n) es mayor que la capacidad máxima, baja a la mitad,
      % sino, queda igual.
      if (x_aux < c_max)
        x(n) = x_aux;
      else
        x(n) = ( x_aux - d(n) ) / 2;
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
    C_final = [C_final c(n - 1)];

    if(k == 1)
      %figure(1);
      axes(capacidadServidor);
      % Graficar tiempo y capacidad del servidor en el tiempo de una iteración.
      plot(time, c)
      % Delimitar gráfico.
      axis([0 t_final 0 c_max * 1.5]);

      % Título del gráfico.
      title('Capacidad del servidor.');
      % Título de eje x.
      xlabel('Tiempo');
      % Título de eje y.
      ylabel('Concentracion de Ct');

      % Dibujar línea de capacidad máxima del servidor.
      line([0 t_final], [c_max c_max], 'Color', 'r');

      %figure(2);
      axes(cambioEstados);
      % Graficar valores de j
      plot(time, j_values)
      % Delimitar gráfico.
      axis([0 t_final 0 4.5]);

      % Título del gráfico.
      title('Cambio de estados.');
      % Título de eje x.
      xlabel('Tiempo');
      % Título de eje y.
      ylabel('Espacio de estado de  de vt');
    end
  end

  %figure(3);
  axes(histograma);
  % Histograma
  hist(C_final);

  % Título del histograma.
  title('Histograma.');

  % Calcular media.
  set(media, 'string', num2str(mean(C_final)));

  % Calcular desviación estándar.
  set(desv_est, 'string', num2str(std(C_final)));
end