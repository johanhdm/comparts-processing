int i = 0, x = 0, y = 0;
color bg = #9CF5FC;


void setup()
{
  size(900, 600);
  x = width / 2;
  y = height /2;

  background(bg);
  smooth();
  noStroke();
}

void draw()
{
  
  float side = random(20,100);
  
  triangle(x, y, x + side, y, x, y+side);
  
  i++;
 
}
