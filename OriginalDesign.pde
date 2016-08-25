int cubeX = 200; 
int cubeY = 200;
int discoCubeX = 600;
int discoCubeY = 200;
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

  for(int x = 0; x < 3; x += 1)
  {
  	for(int y = 0; y < 3; y += 1)
  	{
  		whiteQuad(discoCubeX-x*sideLength*5/18,y*sideLength/3+discoCubeY-x*sideLength/9);
  	}
  }
  for(int a = 0; a < 3; a += 1)
  {
  	for(int b = 0; b < 3; b += 1)
  	{
  		greenQuad(discoCubeX+a*sideLength*5/18,b*sideLength/3+discoCubeY-a*sideLength/9);
  	}
  }
  for(int j = 0; j < 3; j += 1)
  {
  	for(int k = 0; k < 3; k += 1)
  	{
  		redQuad(k*sideLength*5/18+discoCubeX-j*sideLength*5/18,discoCubeY-j*sideLength/9-k*sideLength/9);
  	}
  }
}
void whiteSide()
{
	fill(255);
	quad(cubeX,cubeY,cubeX,cubeY+sideLength,cubeX-sideLength*5/6,cubeY+sideLength*2/3,cubeX-sideLength*5/6,cubeY-sideLength/3);
	line(cubeX-sideLength*5/18,cubeY-sideLength/9,cubeX-sideLength*5/18,cubeY+sideLength*8/9);
	line(cubeX-sideLength*5/9,cubeY-sideLength*2/9,cubeX-sideLength*5/9,cubeY+sideLength*7/9);
	line(cubeX-sideLength*5/6,cubeY,cubeX,cubeY+sideLength/3);
	line(cubeX-sideLength*5/6,cubeY+sideLength/3,cubeX,cubeY+sideLength*2/3);
}
void greenSide()
{
	fill(0,255,0);
	quad(cubeX,cubeY,cubeX,cubeY+sideLength,cubeX+sideLength*5/6,cubeY+sideLength*2/3,cubeX+sideLength*5/6,cubeY-sideLength/3);
	line(cubeX+sideLength*5/18,cubeY-sideLength/9,cubeX+sideLength*5/18,cubeY+sideLength*8/9);
	line(cubeX+sideLength*5/9,cubeY-sideLength*2/9,cubeX+sideLength*5/9,cubeY+sideLength*7/9);
	line(cubeX+sideLength*5/6,cubeY,cubeX,cubeY+sideLength/3);
	line(cubeX+sideLength*5/6,cubeY+sideLength/3,cubeX,cubeY+sideLength*2/3);
}
void redSide()
{
	fill(255,0,0);
	quad(cubeX,cubeY,cubeX-sideLength*5/6,cubeY-sideLength/3,cubeX,cubeY-sideLength*2/3,cubeX+sideLength*5/6,cubeY-sideLength/3);
	line(cubeX-sideLength*5/18,cubeY-sideLength/9,cubeX+sideLength*5/9,cubeY-sideLength*4/9);
	line(cubeX-sideLength*5/9,cubeY-sideLength*2/9,cubeX+sideLength*5/18,cubeY-sideLength*5/9);
	line(cubeX+sideLength*5/18,cubeY-sideLength/9,cubeX-sideLength*5/9,cubeY-sideLength*4/9);
	line(cubeX+sideLength*5/9,cubeY-sideLength*2/9,cubeX-sideLength*5/18,cubeY-sideLength*5/9);
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