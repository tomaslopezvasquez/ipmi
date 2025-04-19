PImage mifoto; 
mifoto = loadImage("WhatsApp Image 2025-04-19 at 18.37.01.jpg");
size(800,400);
background(255);
image( mifoto,0,0,400,400);
translate(350,0);
noStroke();
fill(206,168,146);
ellipse(180,170,80,75);//oreja izq
ellipse(320,170,78,75);//oreja der
ellipse(250,200,200,250);//forma cara
fill(250);
stroke(0);
ellipse(200,310/2,45,45/2);//ojo izq
ellipse(300,310/2,45,45/2);//ojo der
fill(72,40,1);
noStroke();
ellipse(200,310/2,20,20);
ellipse(300,310/2,20,20);
fill(0);
ellipse(200,310/2,10,10);
ellipse(300,310/2,10,10);
noFill();
stroke(0);
strokeWeight(5);
arc(200,275/2,45,10,-PI,0);//ceja izq
arc(300,275/2,45,10,-PI,0);//ceja der
strokeWeight(1);
line(230,220,245,170);//nariz
line(230,220,250,220);//nariza linea abajo
fill(0);
ellipse(250,90,50,50);//pelo
ellipse(220,90,50,50);
ellipse(200,90,50,50);
ellipse(180,100,50,50);
ellipse(270,90,50,50);
ellipse(290,90,50,50);
ellipse(310,100,50,50);
ellipse(250,70,50,50);
ellipse(220,80,50,50);
ellipse(270,80,50,50);
fill(252,205,184);
ellipse(250,270,60,20);//labios
line(220,270,280,270);
noStroke();
fill(206,168,146);
rect(210,310,80,80);
fill(0);
rect(150,340,200,80,25);
