PImage inicio, ganas, pierdes, escoge, niveles, hojaPapel;
int estado=0, aux=0, cont=0, nivel, perder=0, b;
int [] lapiz= new int [4];
//nivel1
int n1= 6;//cantidad de lineas por juego
int [][]comparacion1=new int[5][5]; 
int []x1= {100, 900, 500, 100, 900};
int []y1= {100, 100, 250, 500, 500};
int [][] conexion1={
  {0, 1, 1, 1, 0}, //p1 
  {1, 0, 1, 0, 1}, //p2
  {1, 1, 0, 0, 0}, //p3
  {1, 0, 0, 0, 1}, //p4
  {0, 1, 0, 1, 0}, //p5
};
//nivel 2
int n2=12;
int [][]comparacion2=new int[11][11];
int []x2= {500, 200, 300, 700, 800, 450, 550, 300, 450, 550, 700};
int []y2= {100, 200, 200, 200, 200, 350, 350, 500, 500, 500, 500};
int [][] conexion2={
  {0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0}, //p1 
  {1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0}, //p2
  {0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0}, //p3
  {0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 1}, //p4
  {1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0}, //p5
  {0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0}, //p6
  {0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0}, //p7
  {0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0}, //p8
  {0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0}, //p9
  {0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1}, //p10
  {0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0}  //p11 
};

//nivel3 

int n3=13;
int [][]comparacion3=new int[10][10];
int []x3= {100, 500, 900, 500, 400, 600, 500, 100, 500, 900};
int []y3= {100, 100, 100, 200, 300, 300, 400, 500, 500, 500};
int [][] conexion3={
  {0, 1, 0, 0, 0, 0, 0, 1, 0, 0}, //p1 
  {1, 0, 1, 1, 0, 0, 0, 0, 0, 0}, //p2
  {0, 1, 0, 0, 0, 0, 0, 0, 0, 1}, //p3
  {0, 1, 0, 0, 1, 1, 1, 0, 0, 0}, //p4
  {0, 0, 0, 1, 0, 0, 1, 0, 0, 0}, //p5
  {0, 0, 0, 1, 0, 0, 1, 0, 0, 0}, //p6
  {0, 0, 0, 1, 1, 1, 0, 0, 1, 0}, //p7
  {1, 0, 0, 0, 0, 0, 0, 0, 1, 0}, //p8
  {0, 0, 0, 0, 0, 0, 1, 1, 0, 1}, //p9
  {0, 0, 1, 0, 0, 0, 0, 0, 1, 0}  //p10
};  
//nivel4

int n4=10 ;
int [][]comparacion4=new int[6][76];
int []x4= {200, 800, 100, 900, 200, 800};
int []y4= {100, 100, 300, 300, 500, 500};
int [][] conexion4={
  {0, 1, 1, 0, 1, 1}, //p1 
  {1, 0, 0, 1, 1, 1}, //p2
  {1, 0, 0, 0, 1, 0}, //p3
  {0, 1, 0, 0, 0, 1}, //p4
  {1, 1, 1, 0, 0, 1}, //p5
  {1, 1, 0, 1, 1, 0}, //p6
}; 

//nivel5
int n5=14;
int [][]comparacion5=new int[10][10];

int []x5= {500, 100, 350, 650, 900, 100, 350, 650, 900, 500};
int []y5= {100, 200, 200, 200, 200, 400, 400, 400, 400, 500};
int [][] conexion5={
  {0, 0, 1, 1, 0, 0, 0, 0, 0, 0}, //p1 
  {0, 0, 1, 0, 0, 0, 1, 0, 0, 0}, //p2
  {1, 1, 0, 1, 0, 1, 0, 0, 0, 0}, //p3
  {1, 0, 1, 0, 1, 0, 0, 0, 1, 0}, //p4
  {0, 0, 0, 1, 0, 0, 0, 1, 0, 0}, //p5
  {0, 0, 1, 0, 0, 0, 1, 0, 0, 0}, //p6
  {0, 1, 0, 0, 0, 1, 0, 1, 0, 1}, //p7
  {0, 0, 0, 0, 1, 0, 1, 0, 1, 1}, //p8
  {0, 0, 0, 1, 0, 0, 0, 1, 0, 0}, //p9
  {0, 0, 0, 0, 0, 0, 1, 1, 0, 0}  //p10
};  
//nivel6
int n6=16;
int [][]comparacion6=new int[8][8];
int []x6= {400, 600, 200, 800, 200, 800, 400, 600};
int []y6= {100, 100, 230, 230, 360, 360, 490, 490};
int [][] conexion6={
  {0, 1, 1, 0, 0, 1, 1, 0}, //p1 
  {1, 0, 0, 1, 1, 0, 0, 1}, //p2
  {1, 0, 0, 1, 1, 0, 0, 1}, //p3
  {0, 1, 1, 0, 0, 1, 1, 0}, //p4
  {0, 1, 1, 0, 0, 1, 1, 0}, //p5
  {1, 0, 0, 1, 1, 0, 0, 1}, //p6
  {1, 0, 0, 1, 1, 0, 0, 1}, //p7
  {0, 1, 1, 0, 0, 1, 1, 0}, //p8
};
void setup() {
  imageMode(CENTER);
  size(1000, 600);
  inicio=loadImage ("ciclosEulerianos.png");
  hojaPapel=loadImage("hojaPapel.jpg");
  escoge=loadImage ("escoge.png");
  niveles=loadImage ("niveles.png");
  ganas=loadImage("nivelSuperado.jpg");
  pierdes = loadImage("nivelNoSuperado.jpg");
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
      dibujo(x1, y1, conexion1);
    }
    if (nivel==2) {
      dibujo(x2, y2, conexion2);
    }
    if (nivel==3) {
      dibujo(x3, y3, conexion3);
    }
    if (nivel==4) {
      dibujo(x4, y4, conexion4);
    }
    if (nivel==5) {
      dibujo(x5, y5, conexion5);
    }
    if (nivel==6) {
      dibujo(x6, y6, conexion6);
    }
  }
  if (estado==3) {//juego
    if (nivel==1) {
      jugar(n1, x1, y1, conexion1, comparacion1);
    }
    if (nivel==2) {
      jugar(n2, x2, y2, conexion2, comparacion2);
    }
    if (nivel==3) {
      jugar(n3, x3, y3, conexion3, comparacion3);
    }
    if (nivel==4) {
      jugar(n4, x4, y4, conexion4, comparacion4);
    }
    if (nivel==5) {
      jugar(n5, x5, y5, conexion5, comparacion5);
    }
    if (nivel==6) {
      jugar(n6, x6, y6, conexion6, comparacion6);
    }
  } 
  if (estado==4) {//perdiste
    goodGameOver();
  }  
  if (estado==5) {//ganaste

    badGameOver();
  }
}