#Vectores
x = [1 2 3 4 5 6 7 8 9 0];

#Longitud
length(x)

#Suma y resta
x = [0 3 -1  3 5];
y = [1 2 3 -1 0];

x+y

x-y

# Producto por un escalar
2*x
-2*x
5*x + 7*y

# Producto escalar

function prodEsc = productoEscalar(x,y)
  if length(x) == length(y)
    prodEsc = 0;
    for i = 1:length(x)
      prodEsc = prodEsc + x(i)*y(i);
    endfor
    prodEsc;
  else
    fprintf("Error")
  endif
endfunction

fprintf("El producto escalar entre x e y: %g \n",productoEscalar(x,y))

# Norma

fprintf("Norma de x: %g \n",norm(x))

# Distancia entre dos puntos

function dist = distancia(x,y)
  if length(x) == length(y)
    dist = norm(y-x);
    dist;
  else
    fprintf("Error")
  endif
endfunction

fprintf("La distancia entre el punto x e y es: %g \n",distancia(x,y))

# Ángulo entre dos vectores

function grad = anguloRad(x,y)
  if length(x) == length(y)
    grad = acos(productoEscalar(x,y) / (norm(x) * norm(y)));
    grad;
  else
    fprintf("Error")
  endif
endfunction

fprintf("El ángulo entre los vectores x e y es: %g \n",anguloRad(x,y))

# Ángulo entre dos vectores en grados sexagesimales

function grad = anguloGrad(x,y)
  if length(x) == length(y)
    grad = acos(productoEscalar(x,y) / (norm(x) * norm(y))) * 180/pi;
    grad;
  else
    fprintf("Error")
  endif
endfunction

fprintf("El ángulo entre los vectores x e y es: %g \n",anguloGrad(x,y))

# Proyección ortogonal

function proy = proyeccionOrtogonal(x,y)
  if length(x) == length(y)
    proy = (productoEscalar(x,y) / norm(y)^2) * y;
    proy;
  else
    fprintf("Error")
  endif
endfunction

u = [3;1]
v = [1;2]
proyeccionOrtogonal(v,u)

# Producto vectorial

function prodV = productoVectorial(x,y)
  if length(x) == length(y) && length(x) == 3
    prodV = [x(2)*y(3)-x(3)*y(2), x(3)*y(1)-x(1)*y(3), x(1)*y(2)-x(2)*y(1)];
  else
    fprintf("Error")
  endif
endfunction

productoVectorial([1;2;3], [0;-1;1])

# Producto mixto

function prodM = productoMixto(x,y,z)
  if length(x) == length(y) && length(x) == length(z) && length(x) == 3
    prodM = det([x, y, z]);
  else
    fprintf("Error")
  endif
endfunction

productoMixto([1;2;3], [0;-1;1], [2;0;-3])
