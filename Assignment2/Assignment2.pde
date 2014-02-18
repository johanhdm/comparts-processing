int i = 0; 
float x = 0, y = 0;
float side = 100;
int heading = 1;

color bg = #FFFFFF;

color[] colors = {#222222, #444444, #666666, #888888, #AAAAAA, #CCCCCC, #EEEEEE};

void setup()
{
  size(900, 600);
  x = width / 2;
  y = height / 2;

  background(bg);
  smooth();
  noStroke();
}

void draw()
{
  println(i % 2);

  heading = -heading;
  
  fill(colors[(int)random(0,i)]);   
  
  switch(random(2))
  {
    case 0:
      println("go left");
      triangle(x, y, x - side, y, x + side / 2, y + heading * side * sqrt(3)/2);
      x += side;
      y += side;
      
      break;
    case 1:
      println("go right");    
      triangle(x, y, x + side, y, x + side / 2, y + -heading * side * sqrt(3)/2);
      x += side / 2;
      y = y + -heading * side * sqrt(3)/2;

      break;
    case 2:
      println("go up/down");
      triangle(x, y, x + side, y, x + side / 2, y + heading * side * sqrt(3)/2);
      x += side;
      y += side;
      
      break;
  }
  


//above
//  fill(colors[(int)random(0,6)]);  
//  triangle(x, y, x + side, y, x + side / 2, y + -side * sqrt(3)/2);
 
//right
/*  x += side / 2;
  y += side * sqrt(3)/2;
  fill(colors[(int)random(0,6)]);   
  triangle(x, y, x + side, y, x + side / 2, y + side * sqrt(3)/2);
*/
  i++;  
 
}
