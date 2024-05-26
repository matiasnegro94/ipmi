PImage img0;
PImage img1;
PImage img2;
PImage img3;
PImage img4;

boolean iniciarSecuencia = false;

boolean diapo0 = false;
boolean diapo1 = false;
boolean diapo2 = false;
boolean diapo3 = false;
boolean diapo4 = false;

void setup() {
  size(640, 480);
  background(0);
  img0 = loadImage("img0.png");
  img1 = loadImage("img1.png");
  img2 = loadImage("img2.png");
  img3 = loadImage("img3.png");
  img4 = loadImage("img4.png");
}

void draw() {
  if (iniciarSecuencia == true)
  {
  if (diapo0) {
    image(img0, 0, 0);
  }

  if (diapo1) {
    image(img1, 0, 0);
    text("VOLVER", width/2, height/2);
  }

  if (diapo2) {
    image(img2, 0, 0);
    text("VOLVER", width/2, height/2);
  }

  if (diapo3) {
    image(img3, 0, 0);
    text("VOLVER", width/2, height/2);
  }

  if (diapo4) {
    image(img4, 0, 0);
    fill(255);
    ellipse(width/2, height/2, 100, 100);
    textFont(createFont("Arial Bold", 16));
    fill(0);
    textAlign(CENTER, CENTER);
    text("VOLVER", width/2, height/2);
  }

  int currentTime = millis();

  if (currentTime >= 0) {
    diapo0 = true;
  }
  if (currentTime >= 1000) {
    diapo1 = true;
  }
  if (currentTime >= 2000) {
    diapo2 = true;
  }
  if (currentTime >= 3000) {
    diapo3 = true;
  }
  if (currentTime >= 4000) {
    diapo4 = true;
  }
}

iniciarSecuencia = true;
}

void mouseClicked() {
  if (diapo4) {
    diapo1 = false;
    diapo2 = false;
    diapo3 = false;
    diapo4 = false;
    diapo0 = false;
    iniciarSecuencia = true;
  }
}
