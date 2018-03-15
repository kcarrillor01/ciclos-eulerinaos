void menu(){
  background(255);
  textSize(50);
  fill(0);
  textAlign(CENTER, CENTER);
  text("BIENVENIDO", width/2, height/2);
  text("presione K para comenzar", width/2, height/2 +100 );
  if (keyPressed == true && (key=='k'||key =='K')) {
    estado++;

  }

}
void nivel(){
background(255);
    textSize(50);
    fill(0);
    textAlign(CENTER, CENTER);
    text("Seleccione un nivel", width/2, height/2);
    text("1. 2. 3. 4. 5. 6.", width/2, height/2 +100 );
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
  background(255);
  textSize(50);
  fill(0);
  textAlign(CENTER, CENTER);
  text("¿GANASTE?", width/2, height/2);
  text("presione R para reinciar", width/2, height/2 +100 );
  text("presione Q para salir", width/2, height/2 +200 );
}

void badGameOver() {
  background(255);
  textSize(50);
  fill(0);
  textAlign(CENTER, CENTER);
  text("PERDISTE", width/2, height/2);
  text("presione R para reinciar", width/2, height/2 +100 );
  text("presione Q para salir", width/2, height/2 +200 );
  
}