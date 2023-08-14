float pacManX = 0;        // Coordenada x de Pac-Man
float pacManY = 200;      // Coordenada y de Pac-Man
float pacManSpeed = 2;    // Velocidad de movimiento de Pac-Man
color pacManColor = color(255, 255, 0);  // Color amarillo para Pac-Man
float pacManMouth = PI / 4;  // Ángulo de apertura de la boca de Pac-Man

void setup() {
  size(400, 400);  // Tamaño de la ventana
}

void draw() {
  background(0);  // Fondo negro

  // Mover Pac-Man horizontalmente
  pacManX += pacManSpeed;

  // Si Pac-Man alcanza el borde derecho, reiniciar en el borde izquierdo
  if (pacManX > width) {
    pacManX = 0;
  }

  // Dibujar Pac-Man
  fill(pacManColor);
  arc(pacManX, pacManY, 50, 50, pacManMouth / 2, TWO_PI - pacManMouth / 2);

  // Actualizar el ángulo de apertura de la boca para crear el efecto de movimiento
  pacManMouth += 0.1;

  // Restringir el ángulo de apertura de la boca dentro de ciertos límites
  pacManMouth = constrain(pacManMouth, 0, PI / 2);
}
