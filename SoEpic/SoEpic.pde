int x = 10;
int y = 20;
PImage Hexagon;
PImage OrangeHex;
float rot = 0;
float[] Xs = new float [50];
float[] Ys = new float [50];
String[] Thing = new String [5];
import processing.sound.*;
SoundFile file;

void setup()
{
  size (600,600);
  noStroke();
  for(int i=0; i < 50; i++)
  {
   Xs[i] = random(width); 
   Ys[i] = random(height);
  }
  file = new SoundFile(this,"Future Vibes (Uplink Remix).mp3");
  file.play();
  file.amp(0.5);
  imageMode(CENTER);
  Hexagon = loadImage("Hexagon.png");
  OrangeHex = loadImage("OrangeHex.png");
}

void draw()
{
  background(0,255,255);
  DrawIt();
  RotateIt();
}

void DrawIt()
{
 for(int i=0; i < 50; i++)
 {
   pushMatrix();
   translate(Xs[i], Ys[i]);
   rotate(rot);
   image(OrangeHex, 0, 0, 30, 30);
   popMatrix();
   rot+=PI/25;
   Xs[i]+=15;
   if(Xs[i] > width)
   {
     Xs[i] = -50;
     Ys[i] = random(height);
   }
 }
}

void RotateIt()
{
  pushMatrix();
  translate(300,300);
  rotate(rot);
  image(Hexagon, 0, 0, 328, 322);
  popMatrix();
  
  rot+=PI/25;
}