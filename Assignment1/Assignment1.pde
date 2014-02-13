/*
Artistic ambition: Create a playful hommage to the classical hello world. Playing with shapes and showing love for triangles.   
*/

size(600, 200);
background(#2A2C25);
smooth();

stroke(#FF03B4);
strokeWeight(10);
//H
line(30, 100, 30,60);
line(60, 100, 60,60);
line(0, 80, 95,80);
//E
noFill();
arc(100, 80, 40, 40, 1.57, 4.71);
//L
line(115, 60, 115, 100);
line(116, 100, 135, 100);
//L
line(150, 60, 150, 100);
line(150, 100, 170, 100);
//O
ellipse(200, 80, 40, 40);

//W
fill(#FF03B4);
triangle(260, 50, 320, 50, 290, 100);
triangle(280, 50, 340, 50, 310, 100);
//O
strokeWeight(65);
point(370,80);
//R
strokeWeight(10);
triangle(415, 60, 415, 110, 455, 110);
triangle(415, 50, 415, 85, 445, 65);
//L 
triangle(475, 60, 475, 110, 505, 110);

//D
triangle(520, 45, 520, 110, 555, 80);

//fancy stuff
fill(#2A2C25);
stroke(#2A2C25);
strokeWeight(0);
triangle(532, 70, 532, 90, 545, 80);
triangle(490, 60, 490, 100, 545, 80);
triangle(430, 90, 420, 120, 440, 120);

triangle(377, 78, 367, 78, 377, 88);

triangle(280, 40, 300, 40, 290, 53);
triangle(300, 40, 320, 40, 310, 53);
