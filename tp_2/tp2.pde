PImage portada;
PImage diapo1;
PImage diapo2; 
int ancho = 64;
int alto = 48;
int tamañotexto = 10;
int desplazamiento = 0;
boolean empujar = false;
boolean mostrardiapo2 = false;
int aparece = 0; 
int textoY;
boolean subirtexto = false;
int tiempodiapo2 = 0;

void setup() {
  size(640, 480);
  portada = loadImage("imagen1.jpg");
  diapo1 = loadImage("imagen2.jpg");
  diapo2 = loadImage("imagen3.jpg");
  textAlign(CENTER, CENTER);
  textoY = height + 50;
}

void draw() {
  background(255);

  if (ancho >= width && alto >= height && tamañotexto >= 25) {
    if (!empujar) {
      empujar = true;
      aparece = frameCount;
    }
  }

  if (empujar && desplazamiento < width) {
    desplazamiento += 2;
  }

  if (empujar && !mostrardiapo2) {
    int diapo1X = -diapo1.width + desplazamiento;
    image(diapo1, diapo1X, 0);
    textAlign(LEFT, CENTER);
    fill(255); 
    textSize(32); 
    text("En ella, los visitantes caminan \n bajo una lluvia artificial que se \n detiene justo donde estan, \n sin mojarse",180,height / 2);

    if (frameCount - aparece > 600){
      mostrardiapo2 = true;
      subirtexto = true;
      tiempodiapo2 = frameCount;
    }
  }

  if (mostrardiapo2) {
    image(diapo2,0,0,width, height);
    if (subirtexto) {
      if (textoY > height / 2) {
        textoY -= 2;
      } else {
        textoY = height / 2;
        subirtexto = false;
      }
    }
    fill(255); 
    textSize(25);
    textAlign(CENTER, CENTER);
    text("La obra utiliza sensores de movimiento y cámaras infrarrojas \n para detectar a las personas. un sistema computarizado \n controla las boquillas de agua y crea un espacio \n seco alrededor de cada visitante",width /2,textoY);
  }

  int x = (width - ancho) / 2 + desplazamiento;
  int y = (height - alto) / 2;
  image(portada, x, y, ancho, alto);

  textAlign(CENTER, CENTER);
  fill(255); 
  textSize(tamañotexto);
  text("Rain Room es una instalación artística \n creada por el colectivo random international ", width / 2 + desplazamiento, height / 2);

  if (ancho < width) ancho += 4;
  if (alto < height) alto += 3;
  if (tamañotexto < 25) tamañotexto += 1;

  // Dibujar botón de reinicio
  fill(255, 100);
  rect(width-120, height-60, 100, 40, 10);
  fill(0);
  text("Reiniciar", width-70, height-40);
}

void mousePressed() {
  // Verificar si se hizo clic en el botón de reinicio
  if (mouseX > width-120 && mouseX < width-20 && 
      mouseY > height-60 && mouseY < height-20) {
    // Reiniciar presentación
    ancho = 64;
    alto = 48;
    tamañotexto = 10;
    desplazamiento = 0;
    empujar = false;
    mostrardiapo2 = false;
    aparece = 0;
    textoY = height + 50;
    subirtexto = false;
    tiempodiapo2 = 0;
  }
}
