
void jugar(int n, int x[], int y[], int conexion[][], int usuario[][]) {

  if (aux==0) {
    if (mousePressed ==true) {
      //asignar los primeros dos valores del line (del lapiz)
      for (int a=0; a<x.length; a++) {
        if ((mouseX <x[a]+15)&&(mouseX>x[a]-15)&&(mouseY<y[a]+15 )&&mouseY>y[a]-15) {
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
          lapiz[2]=x[a];
          lapiz[3]=y[a];
          if (conexion[a][b]==1) {
            strokeWeight(5);
            stroke(255, 0, 0);

            line(lapiz[0], lapiz[1], lapiz[2], lapiz[3]);
            lapiz[0]=lapiz[2];
            lapiz[1]=lapiz[3];
            b=a;
            usuario[a][b]=1;
            usuario[b][a]=1;
            //Redibujar las elipses
            for (int i=0; i<x.length; i++) {
              fill(255);
              stroke(5);
              ellipse(x[i], y[i], 30, 30);
            }
            cont++;
          }
        }
      }
    }
  }
  condicion(n, usuario, conexion);
  
}

void condicion(int n, int usuario[][],int conexion[][]) {
if (cont==n) {
     

    for (int i=0; i<usuario.length; i++) {
      for (int j=0; j<usuario.length; j++) {      
        if (usuario[i][j]!=conexion[i][j]) {
          perder=1;
        }
      }
    }
  }
  if (cont==n&&perder==0) {
    estado+=2;
  }
  if (cont==n&&perder==1) {
    estado ++;
  }
}










void keyPressed() {
  if (keyPressed==true &&(key== 'r'|| key == 'R' )) {
    aux=0;
    cont=0;
    estado=0;
    perder=0;
  }
  if (keyPressed==true &&(key== 'q'|| key == 'Q' )) {
    exit();
  }
}