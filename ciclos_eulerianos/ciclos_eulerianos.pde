int estado=0, aux=0, cont=0, nivel, perder=0, b;
int [] lapiz= new int [4];

void setup() {
  size(1000, 600);
}

void draw() {
  //(estado);
  if (estado==0) {//menu
    menu();
  }
  if (estado==1) {
    nivel();//escojer un nivel
  }
  if (estado==2) {
    if (nivel==1) {
      nivel1();
    }
    if (nivel==2) {
      nivel2();
    }
    if (nivel==3) {
      nivel3();
    }
    if (nivel==4) {
      nivel4();
    }
    if (nivel==5) {
      nivel5();
    }
    if (nivel==6) {
      nivel6();
    }
  }
  if (estado==3) {//juego
    if (nivel==1) {
      juego1();
    }
    if (nivel==2) {
      juego2();
    }
    if (nivel==3) {
      juego3();
    }
    if (nivel==4) {
      juego4();
    }
    if (nivel==5) {
      juego5();
    }
    if (nivel==6) {
      juego6();
    }
  } 
  if (estado==4) {//mostrar que gano
    goodGameOver();
  }  
  if (estado==5) {//mostrar que perdio
  
    badGameOver();
  }
}
