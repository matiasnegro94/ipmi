/*
Trabajo Práctico 2
25/5/2024
Negro, Matías Edgardo
Comisión 3
Profesor David Bedoian
N de Legajo 119100/5
DNI 38146917
*/

PImage img0; // Imagen de la primera diapositiva
PImage img1; // Imagen de la segunda diapositiva
PImage img2; // Imagen de la tercera diapositiva
PImage img3; // Imagen de la cuarta diapositiva
PImage img4; // Imagen de la quinta diapositiva

boolean iniciarSecuencia = false; // Indica si la secuencia de diapositivas debe iniciarse

int indiceSecuenciaActual = 0; // Índice de la diapositiva actual
int tiempoInicio; // Tiempo en milisegundos cuando la secuencia comenzó
int duracionDiapositiva = 8000; // Duración de cada diapositiva en milisegundos

void setup() {
  size(640, 480);
  background(0);
  img0 = loadImage("img0.png"); // Cargar la imagen de la primera diapositiva
  img1 = loadImage("img1.png"); // Cargar la imagen de la segunda diapositiva
  img2 = loadImage("img2.png"); // Cargar la imagen de la tercera diapositiva
  img3 = loadImage("img3.png"); // Cargar la imagen de la cuarta diapositiva
  img4 = loadImage("img4.png"); // Cargar la imagen de la quinta diapositiva
  iniciarSecuencia = true; // Iniciar la secuencia de diapositivas
  tiempoInicio = millis(); // Registrar el tiempo de inicio
}

void draw() {
  if (iniciarSecuencia) {
    int tiempoTranscurrido = millis() - tiempoInicio; // Calcular el tiempo transcurrido
    indiceSecuenciaActual = tiempoTranscurrido / duracionDiapositiva; // Calcular el índice de la diapositiva actual

    if (indiceSecuenciaActual > 4) { // Limitar el índice al número de diapositivas disponibles
      indiceSecuenciaActual = 4;
    }

    // Punto medio de la duración de la diapositiva
    int puntoMedio = duracionDiapositiva / 2;
    // Calcular cuánto tiempo ha pasado desde el punto medio
    int tiempoDesdePuntoMedio = max(0, tiempoTranscurrido % duracionDiapositiva - puntoMedio);
    
    // Desvanecer el texto y el rectángulo si ha pasado la mitad del tiempo de la diapositiva
    float alpha = 255;
    if (tiempoDesdePuntoMedio > 0) {
      alpha = map(tiempoDesdePuntoMedio, 0, puntoMedio, 255, 0);
    }

    // Mostrar la diapositiva correspondiente según el índice actual
    if (indiceSecuenciaActual == 0) {
      image(img0, 0, 0); // Mostrar la primera diapositiva
      // Hacer que el texto y el rectángulo aparezcan gradualmente desde el principio hasta la mitad de la diapositiva
      float alphaInicial = map(tiempoTranscurrido % duracionDiapositiva, 0, puntoMedio, 0, 128);
      stroke(255, 255, 255, alphaInicial); // Aplicar opacidad al borde del rectángulo
      strokeWeight(5);
      fill(255, 255, 255, alphaInicial); // Aplicar opacidad al rectángulo
      rect(110, 190, 430, 125);
      textAlign(CENTER);
      textFont(createFont("Arial Bold", 48));
      fill(0, 0, 0, alphaInicial); // Aplicar opacidad al texto
      text("Megatron Matrix, \n de Nam June Paik", width / 2, height / 2);
    } else if (indiceSecuenciaActual == 1) {
      image(img1, 0, 0); // Mostrar la segunda diapositiva
      stroke(255, 255, 255, alpha); // Aplicar opacidad al borde del rectángulo
      strokeWeight(1);
      fill(255, 0, 100, 50 * (alpha / 255.0)); // Aplicar opacidad al rectángulo
      rect(10, 370, 620, 100);
      textSize(20);
      fill(255, 255, 255, alpha); // Aplicar opacidad al texto
      text("Megatron Matrix está compuesto por 215 monitores. \n El video mezcla imagenes de los Juegos Olímpicos de Seoul \n con bailes folklóricos coreanos y danza moderna.", width / 2, 400);
    } else if (indiceSecuenciaActual == 2) {
      image(img2, 0, 0); // Mostrar la tercera diapositiva
      stroke(255, 255, 255, alpha); // Aplicar opacidad al borde del rectángulo
      strokeWeight(1);
      fill(0, 0, 100, 125 * (alpha / 255.0)); // Aplicar opacidad al rectángulo
      rect(40, 365, 550, 110);
      fill(255, 255, 255, alpha); // Aplicar opacidad al texto
      text("Paik dividió a los monitores en dos secciones: \n Megatron muestra el gran alcance de los medios, \n mientras que Matrix enfatiza el impacto\n en cada uno de nosotros.", width / 2, 390);
    } else if (indiceSecuenciaActual == 3) {
      image(img3, 0, 0); // Mostrar la cuarta diapositiva
      stroke(255, 255, 255, alpha); // Aplicar opacidad al borde del rectángulo
      strokeWeight(1);
      fill(255, 0, 100, 50 * (alpha / 255.0)); // Aplicar opacidad al rectángulo
      rect(10, 365, 610, 110);
      fill(255, 255, 255, alpha); // Aplicar opacidad al texto
      text("Pequeños clips se reproducen a la vez en múltiples monitores, \n  mientras que animaciones más grandes \n se mueven traspasando los límites de las pantallas, \n sugiriendo un mundo sin fronteras en la era electrónica.", width / 2, 390);
    } else if (indiceSecuenciaActual == 4) {
      image(img4, 0, 0); // Mostrar la quinta diapositiva
      float alphaInicial = map(tiempoTranscurrido % duracionDiapositiva, 0, puntoMedio, 0, 128);
      fill(255, 255, 255, alpha); // Aplicar opacidad al elipse
      ellipse(width / 2, height / 2, 100, 100);
      textFont(createFont("Arial Bold", 16));
      fill(0, 0, 0, alpha); // Aplicar opacidad al texto
      textAlign(CENTER, CENTER);
      text("VOLVER", width / 2, height / 2);
      
      // Detectar si el mouse está sobre el círculo
      if (dist(mouseX, mouseY, width / 2, height / 2) < 50) {
        cursor(HAND);
      } else {
        cursor(ARROW);
      }
    } else {
      cursor(ARROW); // Restaurar el cursor por defecto si no está sobre el círculo
    }
  }
}

void mouseClicked() {
  if (indiceSecuenciaActual == 4) { // Si estamos en la última diapositiva
    // Reiniciar la secuencia solo si el clic fue dentro del círculo
    if (dist(mouseX, mouseY, width / 2, height / 2) < 50) {
      iniciarSecuencia = true; // Reiniciar la secuencia de diapositivas
      tiempoInicio = millis(); // Registrar el nuevo tiempo de inicio
      indiceSecuenciaActual = 0; // Reiniciar el índice de la diapositiva actual
    }
  }
}
