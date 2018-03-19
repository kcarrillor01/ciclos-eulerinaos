void menu() {
  background(hojaPapel);
  image(inicio, width/2, height/2);
  if (keyPressed == true && (key=='k'||key =='K')) {
    estado++;
  }
}
void nivel() {
  background(hojaPapel);
  image(escoge, width/2, height/2-200);
  image(niveles, width/2, height/2+100);
  if (keyPressed==true&&key=='1') {
    nivel=1;
    estado++;
  }
  if (keyPressed==true&&key=='2') {
    nivel=2;
    estado++;
  }
  if (keyPressed==true&&key=='3') {
    nivel=3;
    estado++;
  }
  if (keyPressed==true&&key=='4') {
    nivel=4;
    estado++;
  }
  if (keyPressed==true&&key=='5') {
    nivel=5;
    estado++;
  }
  if (keyPressed==true&&key=='6') {
    nivel=6;
    estado++;
  }
}


void goodGameOver() {
  image(ganas, width/2, height/2);
  if (keyPressed==true&&(key=='S'||key=='s')) {
    if (nivel==6) {
      nivel=1;
      cont=0;
      aux=0;
      perder=0;
      estado=2;
    } else {
      nivel++;
      cont=0;
      aux=0;
      perder=0;
      estado=2;
    }
  }
}

void badGameOver() {
  image(pierdes, width/2, height/2);
}