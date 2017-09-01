int x = 0;
int r = 0;
int g = 0;
int b = 0;
void setup()
{
  size(500,100);
  frameRate(10);
}
void draw()
{
  pacMan();
  food();
}
void pacMan()
{
  strokeWeight(5);
  fill(250,243,15);
  arc(50, 50, 80, 80,  QUARTER_PI, PI+HALF_PI+QUARTER_PI, 0);
  fill(0);
 
}
void food()
{
  fill(r,g,b);
  ellipse(85+x,50,10,10);
  b = b + 10;
  g = g + 5;
  r = r + 7;
  if(r > 255)
  {
    r = 0;
  }
  if(g > 255)
  {
    g = 0;
  }
  if(b > 255)
  {
    g = 0;
  }
  x = x - 20;
  if(x < 0)
  {  
    noStroke();
    fill(205);
    rect(78,20,1000,70);
    x = 500;
  }
}