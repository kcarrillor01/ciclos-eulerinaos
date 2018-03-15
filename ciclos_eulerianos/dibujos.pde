void dibujo (int x[], int y[], int conexion[][]) { //dibujo 
  textSize(15);
  fill(0);
  textAlign(CENTER, CENTER);
  text("Para jugar presione click en un punto y luego click en el siguiente, hasta terminar la figura, siga las lineas y no repita ninguna.", width/2, 20);
  text("Si desea reiniciar presione R.     Si desea salir presione Q.", width/2, 40);

  for (int i=0; i<x.length; i++) {//filas
    for (int j=0; j<x.length; j++) {//columnas
      if (conexion[i][j]==1) {
        strokeWeight(5);
        stroke(100);
        line(x[i], y[i], x[j], y[j]);
      }
    }
  }
  //Dibujar las elipses
  for (int i=0; i<x.length; i++) {//dibuja elipses para cada coordenada x,y
    fill(255);
    stroke(5);
    ellipse(x[i], y[i], 30, 30);
  }
  estado++;
}