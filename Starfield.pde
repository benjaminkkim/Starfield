Particle [] stars = new Particle[10000];
OddballParticle [] weird = new OddballParticle[1000];
void setup(){
  size(1000,1000);
  for(int i = 0; i < stars.length; i++){
    stars[i] = new Particle();
  }
  for(int i = 0; i < weird.length; i++){
    weird[i] = new OddballParticle();
  }
}

void draw(){
  background(0);
  for(int i = 0; i < stars.length; i++){
      stars[i].show();
      stars[i].move();
  }
  for(int i = 0; i < weird.length; i++){
      weird[i].show();
      weird[i].move();
  }
}

void mouseClicked(){
  for(int i = 0; i < stars.length; i++){
    stars[i] = new Particle();
  }
  for(int i = 0; i < weird.length; i++){
    weird[i] = new OddballParticle();
  }
}

void keyPressed(){
  for(int i = 0; i < stars.length; i++){
    stars[i] = new Particle();
  }
  for(int i = 0; i < weird.length; i++){
    weird[i] = new OddballParticle();
  }
}

class Particle{
  double myX, myY, Speed, Angle, mySize;
  int Color;
  Particle(){
  myX = width/2;
  myY = height/2;
  Angle = Math.random()*2*Math.PI;
  Speed = Math.random()*10+1;
  Color = color((int)(Math.random()*255), (int)(Math.random()*0), (int)(Math.random()*255));
  mySize = 2;
  }
  void show(){
    fill(Color);
    noStroke();
    ellipse((float)myX,(float)myY,(float)mySize,(float)mySize);
    mySize = 2 - dist((float)myX,(float)myY,width/2,height/2)/50;
  }
  void move(){
    myX = myX + Math.cos(Angle)*Speed/10;
    myY = myY + Math.sin(Angle)*Speed/10;
  }
}

class OddballParticle extends Particle{
  double myX, myY, Speed, Angle, mySize;
  int Color, endX, endY;
  OddballParticle(){
  myX = width/2;
  myY = height/2;
  Angle = Math.random()*2*Math.PI;
  Speed = Math.random()*10+1;
  Color = color((int)(Math.random()*255), (int)(Math.random()*0), (int)(Math.random()*255));
  mySize = 2;
  }
  void move(){
   myX = myX + Math.cos(Angle)*Speed;
   myY = myY + Math.sin(Angle)*Speed;
  }
  void show(){
    fill(255,255,255);
    ellipse((float)myX,(float)myY,(float)mySize,(float)mySize);
  }
}
  
