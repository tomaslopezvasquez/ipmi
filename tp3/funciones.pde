void cuadrados(){//cuadrados de menor a mayor
 for (int i=0; i<=150;i+=30){
 boolean negro = ((i / 30) % 2 == 0);
if (invertir) {
   negro = !negro; 
 }
 if (negro) {
   fill(colorRandom);
   } else {
    fill(255);
    }
    rect(i, i, 400 - 2 * i, 400 - 2 * i);
 }
 }
color generarColorRandom() {
 return colorRandom = color(random(255), random(255), random(255));
}
void keyPressed() {//cambiar los colores tocando la tecla espacio
  if (key == ' ') {
    generarColorRandom();
   
  }
  if(key == 'r'){//volver a los colores originales tocando la tecla r
colorRandom = color(0);
}
}
void mouseDragged() {//invertir los colores moviendo el mouse con el click apretado
  invertir = !invertir;
}
