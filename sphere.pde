
class Sphere {
  float x;
  float y;
  float z;
  float t;
  color c;
  float a1,a2,a3;
  
  Sphere(float x,float y,float z,float t,color c){
    this.x=x;
    this.y=y;
    this.z=z;
    this.t=t;
    this.c=c;
    a1=a2=a3=0;
  }
  
  public void setT(float t){
    this.t=t;
  }
  
  void Display(){
    pushMatrix();
    translate(x,y,z);
    rotateX(radians(a1));
    rotateY(radians(a2));
    rotateZ(radians(a3));
    fill(c);
    sphere(t);
    popMatrix();
  }
  void Rotate(float angle){
  this.a1+=angle;
  this.a2+=angle;
  this.a3+=angle;
  }
  void Scale(float k){
    this.t*=sin(k);
  }
}
Sphere maSphere;
float vitesse=2;
void setup(){
  size(1000,1000,P3D);
  maSphere= new Sphere(500,500,0,500,#FF0000);
 
}
void draw(){
  background(255);
  lights();
  maSphere.Display();
  maSphere.Rotate(10);
  maSphere.Scale(30);
  
}
