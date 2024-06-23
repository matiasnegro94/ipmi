void setup() {
  size(500, 500); // Tamaño del lienzo
  background(#f0d3b6); // Color de fondo #f0f0f0
  translate(width / 2, height / 2); // Trasladar el origen al centro del lienzo
  rotate(-HALF_PI); // Rotar 90 grados en sentido antihorario
  drawColoredSpirals(0, 0, 200, 10); // Dibujar espirales de colores
  drawConcentricCircles(0, 0, 200, 10); // Dibujar círculos concéntricos
  noLoop(); // Para que se dibuje solo una vez
}

void drawColoredSpirals(float centerX, float centerY, float maxRadius, int numCircles) {
  float radiusIncrement = maxRadius / numCircles;
  float lineWidth = radiusIncrement / 2;

  for (int i = 0; i < numCircles; i++) {
    float radius = (i + 1) * radiusIncrement;
    drawHalfSpiral(centerX, centerY + 5, radius, lineWidth, color(255, 0, 0), true); // Rojo, desplazado hacia abajo
    drawHalfSpiral(centerX, centerY - 5, radius, lineWidth, color(255, 255, 0), false); // Amarillo, desplazado hacia arriba
  }
}

void drawConcentricCircles(float centerX, float centerY, float maxRadius, int numCircles) {
  float radiusIncrement = maxRadius / numCircles;
  float lineWidth = radiusIncrement / 2;

  for (int i = 0; i < numCircles; i++) {
    float radius = (i + 1) * radiusIncrement;
    drawCircle(centerX, centerY, radius, lineWidth);
  }
}

void drawCircle(float x, float y, float radius, float lineWidth) {
  strokeWeight(lineWidth);
  stroke(0); // Color negro para el círculo
  noFill(); // Sin relleno
  ellipse(x, y, radius * 2, radius * 2); // Dibujar el círculo
}

void drawHalfSpiral(float x, float y, float radius, float lineWidth, color c, boolean isLeft) {
  strokeWeight(lineWidth);
  stroke(c);
  noFill();
  if (isLeft) {
    arc(x, y, radius * 2, radius * 2, 0, PI); // Lado izquierdo
  } else {
    arc(x, y, radius * 2, radius * 2, PI, TWO_PI); // Lado derecho
  }
}
