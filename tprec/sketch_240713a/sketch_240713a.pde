color[] borderColors = {color(0), color(255, 204, 0), color(255, 0, 0), color(0, 255, 0), color(138, 43, 226)};
color[] fillColors = {color(255), color(255, 165, 0), color(0, 255, 255), color(255, 0, 255), color(255, 215, 0), color(128, 0, 0), color(0, 0, 139)};
int borderColorIndex = 0;
int fillColorIndex = 0;

float transitionTime = 0.5; // Duración de la transición en segundos
float transitionProgress = 0.0; // Progreso de la transición
boolean mouseOverSquare = false; // Estado para saber si el ratón está sobre un cuadrado

void setup() {
  size(600, 600); // Tamaño del lienzo
  noStroke();
  frameRate(60); // Establecer la tasa de fotogramas a 60 fps
}

void draw() {
  background(255); // Fondo blanco
  
  int gridSize = 2; // Grid de 2x2
  int padding = 20; // Espacio entre los cuadrados
  int squareSize = (width - (gridSize + 1) * padding) / gridSize; // Tamaño de cada cuadrado
  
  color currentBorderColor = borderColors[borderColorIndex];
  color currentFillColor = fillColors[fillColorIndex];
  
  if (mouseOverSquare) {
    currentBorderColor = lerpColor(borderColors[borderColorIndex], borderColors[(borderColorIndex + 1) % borderColors.length], transitionProgress);
    currentFillColor = lerpColor(fillColors[fillColorIndex], fillColors[(fillColorIndex + 1) % fillColors.length], transitionProgress);
    
    int framesPerTransition = int(transitionTime * frameRate);
    transitionProgress += 1.0 / framesPerTransition;
    
    if (transitionProgress >= 1.0) {
      transitionProgress = 0.0;
      borderColorIndex = (borderColorIndex + 1) % borderColors.length;
      fillColorIndex = (fillColorIndex + 1) % fillColors.length;
    }
  } else {
    transitionProgress = 0.0; // Reiniciar el progreso de la transición
  }
  
  for (int i = 0; i < gridSize; i++) {
    for (int j = 0; j < gridSize; j++) {
      float x = padding + i * (squareSize + padding);
      float y = padding + j * (squareSize + padding);
      
      drawSquare(x, y, squareSize, false, currentBorderColor, currentFillColor);
    }
  }
  
  // Cuadrado del centro
  float centerX = width / 2 - squareSize / 2;
  float centerY = height / 2 - squareSize / 2;
  drawSquare(centerX, centerY, squareSize, true, currentBorderColor, currentFillColor);
}

void drawSquare(float x, float y, float size, boolean isCenter, color borderColor, color fillColor) {
  stroke(borderColor);
  strokeWeight(20); // Grosor de los bordes
  
  fill(fillColor);
  rect(x, y, size, size);
  
  float innerSize = size * 0.5;
  float innerX = x + size * 0.25;
  float innerY = y + size * 0.25;
  
  fill(fillColor);
  rect(innerX, innerY, innerSize, innerSize);
  
  if (isCenter) {
    float alphaSize = 20; // Tamaño fijo del cuadrado alfa
    fill(0); // Cuadrado alfa negro
    rect(innerX + innerSize * 0.5 - alphaSize / 2, innerY + innerSize * 0.5 - alphaSize / 2, alphaSize, alphaSize);
  }
}

void mouseMoved() {
  boolean wasMouseOverSquare = mouseOverSquare;
  mouseOverSquare = false;
  
  int gridSize = 2; // Grid de 2x2
  int padding = 20; // Espacio entre los cuadrados
  int squareSize = (width - (gridSize + 1) * padding) / gridSize; // Tamaño de cada cuadrado
  
  // Verificar si el mouse está sobre algún cuadrado
  for (int i = 0; i < gridSize; i++) {
    for (int j = 0; j < gridSize; j++) {
      float x = padding + i * (squareSize + padding);
      float y = padding + j * (squareSize + padding);
      
      if (mouseX > x && mouseX < x + squareSize && mouseY > y && mouseY < y + squareSize) {
        mouseOverSquare = true;
        break;
      }
    }
  }
  
  // Verificar si el mouse está sobre el cuadrado central
  float centerX = width / 2 - squareSize / 2;
  float centerY = height / 2 - squareSize / 2;
  
  if (mouseX > centerX && mouseX < centerX + squareSize && mouseY > centerY && mouseY < centerY + squareSize) {
    mouseOverSquare = true;
  }
  
  // Redibujar solo si el estado del mouse ha cambiado
  if (mouseOverSquare != wasMouseOverSquare) {
    redraw();
  }
}
