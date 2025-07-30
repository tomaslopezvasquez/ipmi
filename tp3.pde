//Tomas Lopez Vasquez / Comisiom 3 / IPMI


color colorRandom2;
color colorRandom;
boolean invertir = false;
PImage foto;
void setup() {
  size(800, 400);
  colorRandom = color(0);
  translate(0, 0);
  foto = loadImage("ilusion.png");
}

void draw() {
  translate(400, 0);
  background(255);
  cuadrados(30);//funcion para generar los cuadrados
  lineas();
  image(foto, -400, 0, 400, 400);
  strokeWeight(5);
  translate(0, 0);
  fill(255);
  rect(150, 150, 100, 100);
}
