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
    for i = 1; length(x)
      prodEsc = prodEsc + x(i)*y(i);
    endfor
    prodEsc;
  else
    fprintf("Error")
  endif
endfunction

productoEscalar(x,y)

