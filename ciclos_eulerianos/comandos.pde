void jugar(int n, int x[], int y[], int conexion[][], int comparacion[][]) {

  if (aux==0) {
    if (mousePressed ==true) {
      //asignar los primeros dos valores del line (del lapiz)
      for (int a=0; a<x.length; a++) {
        if ((mouseX <x[a]+15)&&(mouseX>x[a]-15)&&(mouseY<y[a]+15 )&&mouseY>y[a]-15) {
          fill(0, 200, 0);
          stroke(5);
          ellipse(x[a], y[a], 30, 30);
          lapiz[0]=x[a];
          lapiz[1]=y[a];
          b=a;
          aux++;
        }
      }
    }
  }


  if (aux==1) {

    if (mousePressed == true) {
      for (int a=0; a<x.length; a++) {
        if ((mouseX <(x[a]+15))&&(mouseX>(x[a]-15))&&(mouseY<(y[a]+15))&&(mouseY>(y[a]-15))) {
          if (comparacion[a][b]==0) {
            lapiz[2]=x[a];
            lapiz[3]=y[a];
            if (conexion[a][b]==1) {
              fill(0, 200, 0);
              stroke(5);
              ellipse(x[a], y[a], 30, 30);

              strokeWeight(5);
              stroke(255, 0, 0);
              line(lapiz[0], lapiz[1], lapiz[2], lapiz[3]);

              lapiz[0]=lapiz[2];
              lapiz[1]=lapiz[3];

              comparacion[a][b]=1;
              comparacion[b][a]=1;
              b=a;

              //Redibujar las elipses
              for (int i=0; i<x.length; i++) {
                fill(255);
                stroke(5);
                ellipse(x[i], y[i], 30, 30);
              }
              cont++;
            }
          }
          if (comparacion[a][b]==1) {
            for (int i=0; i<comparacion.length; i++) {
              for (int j=0; j<comparacion.length; j++) {
                comparacion[i][j]=0;
              }
            }     
            estado+=2;
          }
        }
      }
    }
  }

  if (cont==n) {


    for (int i=0; i<comparacion.length; i++) {
      for (int j=0; j<comparacion.length; j++) {      
        if (comparacion[i][j]!=conexion[i][j]) {
          perder=1;
        }
      }
    }

    if (cont==n&&perder==1) {
      for (int i=0; i<comparacion.length; i++) {
        for (int j=0; j<comparacion.length; j++) {
          comparacion[i][j]=0;
        }
      }
      estado+=2;
    }
    if (cont==n&&perder==0) {
      for (int i=0; i<comparacion.length; i++) {
        for (int j=0; j<comparacion.length; j++) {
          comparacion[i][j]=0;
        }
      }
      estado ++;
    }
  }
}


void keyPressed() {
  if (keyPressed==true &&(key== 'r'|| key == 'R' )) {
    aux=0;
    cont=0;
    estado=2;
    perder=0;
  }
  if (keyPressed==true &&(key== 'm'|| key == 'M' )) {
    aux=0;
    cont=0;
    estado=1;
    perder=0;
  } 
  if (keyPressed==true &&(key== 'q'|| key == 'Q' )) {
    exit();
  }
}