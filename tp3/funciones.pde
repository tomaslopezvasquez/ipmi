void cuadrados(int paso) {//cuadrados de menor a mayor
  for (int i=0; i<=150; i+=paso) {
    noFill();
    stroke(0);
    strokeWeight(5);
    rect(i, i, 400 - 2 * i, 400 - 2 * i);
  }
}
void lineas() {//crea las lineas que van desde el medio hacia los bordes
  pushMatrix();
  strokeWeight(10);
  stroke(colorRandom);
  translate(200, 200);
  for ( int repite = 0; repite<4; repite++ ) {
    for (int i=0; i<10; i++) {
      line(0, 0, 200, map(i, 0, 9, -200, 200));
    }
    rotate(radians(90));
  }
  popMatrix();
}

void keyPressed() {//cambiar los colores tocando la tecla espacio
  if (key == ' ') {
    colorRandom = generarColorRandom();
  }
  if (key == 'r') {//volver a los colores originales tocando la tecla r
    colorRandom = color(0);
  }
}

color generarColorRandom() {
  return color(random(255), random(255), random(255));
}
