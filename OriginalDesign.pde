int cubeX = 200;
int cubeY = 200;
int sideLength = 150;
void setup()
{
  size(800,400);
}
void draw()
{
  whiteSide();
  redSide();
  greenSide();
  for(int x = 0; x < 3; x = x + 1)
  {
  	for(int y = 0; y < 3; y = y + 1)
  	{
  		whiteQuad(600-x*sideLength*5/18,y*sideLength/3+200-x*sideLength/9);
  	}
  }
  for(int a = 0; a < 3; a = a + 1)
  {
  	for(int b = 0; b < 3; b = b + 1)
  	{
  		greenQuad(600+a*sideLength*5/18,b*sideLength/3+200-a*sideLength/9);
  	}
  }
  for(int j = 0; j < 3; j = j + 1)
  {
  	for(int k = 0; k < 3; k = k + 1)
  	{
  		redQuad(k*sideLength*5/18+600-j*sideLength*5/18,200-j*sideLength/9-k*sideLength/9);
  	}
  }
}
void whiteSide()
{
	fill(255);
	quad(cubeX,cubeY,cubeX,cubeY+sideLength,cubeX-sideLength*5/6,cubeY+sideLength*2/3,cubeX-sideLength*5/6,cubeY-sideLength*1/3);
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

void whiteQuad(int xPos,int yPos)
{
	fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
	quad(xPos,yPos,xPos,yPos+sideLength/3,xPos-sideLength*5/18,yPos+sideLength*2/9,xPos-sideLength*5/18,yPos-sideLength/9);
}
void greenQuad(int xPosg,int yPosg)
{
	fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
	quad(xPosg,yPosg,xPosg,yPosg+sideLength/3,xPosg+sideLength*5/18,yPosg+sideLength*2/9,xPosg+sideLength*5/18,yPosg-sideLength/9);
}
void redQuad(int xPosr,int yPosr)
{
	fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
	quad(xPosr,yPosr,xPosr-sideLength*5/18,yPosr-sideLength/9,xPosr,yPosr-sideLength*2/9,xPosr+sideLength*5/18,yPosr-sideLength/9);
}