public class Vector{
  int radio;
  float x,y;
  float g,t;
  
  Vector(int r){
    this.radio = r;
    x = 0;
    y = 0;
    t = 0;
    g = 9.81;
  }
  
  void SetMove(float vel, float ang){
    /*x = vel*(radians(ang))*t;
    y = (vel*(sin(radians(ang)))*t)-((g*0.5)*(t*t));*/
    
    x = vel*(ang)*t;
    y = (vel*(sin(ang))*t)-((g*0.5)*(t*t));
    
    y*=-1;
    x*=-1;
    
    //circle(y ,x + (height),radio);
    triangle(y+20,(x +50) + (height) ,y+20,x+20 + (height), y,x+(height));
    
    // los 1 : el vertice de hasta abajo, 2 : el de arriba, 3 : el de direccion
    //triangle(120,300 ,120,80, 344,150);
    print("/ny: ");
    print(x);
    print("x: ");
    print(y);
  }
  
  void Timer(){
     t = frameCount;
  }
}

Vector ball = new Vector(15);

void setup(){
  size(1800, 800);
  // calcular la posición en x e y del canvas centrado
  /*x = (width - width)/2;
  y = (height - height)/2;*/
  //translate(0,y);
  //background(0);
  frameRate(15);
}

void draw(){
  // Every frame when run
  background(0);
  
  ball.SetMove(1,45);
  ball.t++;
}
