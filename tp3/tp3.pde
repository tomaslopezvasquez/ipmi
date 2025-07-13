//Tomas Lopez Vasquez / Comisiom 3 / IPMI
//https://youtu.be/yfjya5d9Xwc


color colorRandom;  
boolean invertir = false;
PImage foto;
void setup(){
size(800,400);
generarColorRandom();//funcion para generar un color random
colorRandom = color(0);
 translate(0,0);
  foto = loadImage("ilusion.png");
}

void draw(){
  translate(400,0);
  background(255);
cuadrados();//funcion para generar los cuadrados
 image(foto,-400,0,400,400);
}
