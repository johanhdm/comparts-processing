//Artistic ambition
//Structured randomness. Coherent triangles filling the space.

int i = 0; 
float x = 0, y = 0;
float side = 30;
int heading = 1;

color bg = #FFFFFF;

color[] colors = {#111111, #222222, #333333, #444444, #555555, #666666, #777777, #888888, #999999, #AAAAAA, #BBBBBB, #CCCCCC, #DDDDDD, #EEEEEE};

void setup()
{
  size(900, 600);
  x = width / 2;
  y = height / 2;

  background(bg);
  smooth();
  noStroke();
  noLoop();
}

void draw()
{
  
  while(i < 300){
    heading = -heading;
    
    fill(colors[(int)random(0,14)]);   
    
    
    switch((int)random(0,3))
    {
      case 0:
        if (x < 0)
        {
          x = 0;
        }
        triangle(x, y, x - side, y, x - side / 2, y + -heading * side * sqrt(3)/2);
        x -= side / 2;
        y = y + -heading * side * sqrt(3)/2;
        break;
      case 1:
        if (x > width){
          x = width;
        }
        triangle(x, y, x + side, y, x + side / 2, y + -heading * side * sqrt(3)/2);
        x += side / 2;
        y = y + -heading * side * sqrt(3)/2;
        break;
      case 2:
        if (y < 0) y = 0;
        if (y > height) y = height;
        triangle(x, y, x + side, y, x + side / 2, y + -heading * side * sqrt(3)/2);
        break;
    }
    i++;  
  } 
}
