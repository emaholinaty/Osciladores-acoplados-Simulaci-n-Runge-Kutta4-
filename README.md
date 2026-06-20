# Osciladores-acoplados-Simulaci-n-Runge-Kutta4- (2021)
Simulación numérica de un sistema de dos bloques acoplados por muelles mediante el método de Runge-Kutta (RK4) implementado en C++ y visualizado en MATLAB. (2021)

Este proyecto resuelve las ecuaciones de movimiento de un sistema físico compuesto por dos masas (m1​ y m2​) acopladas por muelles con constantes elásticas k1​ y k2​. El objetivo principal es determinar el desplazamiento (elongación) y la velocidad de ambos bloques en función del tiempo.

ESPECIFICACIONES TÉCNICAS

Método Numérico: Se ha transformado un sistema de dos ecuaciones diferenciales de segundo orden en un sistema de cuatro ecuaciones diferenciales de primer orden para facilitar su resolución mediante el algoritmo de Runge-Kutta de cuarto orden (RK4).
    
Implementación:
- C++: Se utiliza para realizar el cálculo numérico y generar un archivo externo (oscilaciones.txt) con los resultados.
- MATLAB: Se emplea para procesar los datos y generar las gráficas de velocidad y elongación.
  
Parámetros de Simulación:
- Masas: m1​=2kg, m2​=3.5kg.
- Constantes elásticas: k1​=2.5N/m, k2​=3.5N/m.
- Rango temporal: De 0 a 100s con un paso de integración h=0.1.

RESULTADOS Y OBSERVACIONES
- Validación: Las gráficas obtenidas confirman el cumplimiento de las condiciones de contorno iniciales: velocidades iniciales en cero (reposo) y elongaciones de 3m y 4m respectivamente.
- Comportamiento Físico: Se observa un movimiento oscilatorio coherente con la naturaleza de los muelles. El bloque 1 presenta variaciones de amplitud más marcadas y una curva de velocidad más "peculiar" debido a su disposición en el sistema acoplado.
