int cubeX = 200;
int cubeY = 200;
int sideLength = 150;
int perspectiveSide = sideLength*5/6;
void setup()
{
  size(400,400);
}
void draw()
{
  whiteSide();
  redSide();
  greenSide();
}
void whiteSide()
{
	fill(255);
	quad(cubeX,cubeY,cubeX,cubeY+sideLength,cubeX-perspectiveSide,cubeY+sideLength*2/3,cubeX-perspectiveSide,cubeY-sideLength*1/3);
	line(158,183,158,333);
	line(117,167,117,317);
	line(75,200,200,250);
	line(75,250,200,300);
}
void greenSide()
{
	fill(0,255,0);
	quad(200,200,200,350,325,300,325,150);
	line(242,183,242,333);
	line(283,167,283,317);
	line(325,200,200,250);
	line(325,250,200,300);
}
void redSide()
{
	fill(255,0,0);
	quad(200,200,75,150,200,100,325,150);
	line(158,183,283,133);
	line(117,167,242,117);
	line(242,183,117,133);
	line(283,167,158,117);
}
