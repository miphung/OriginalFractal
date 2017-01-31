public void setup()
{
	size(500,500);
	background(0);
}
public void draw()
{
	fill(255);
	rect(10, 10, 480, 480);
	myFractal(240,235,500);
}
public void myFractal(int x, int y, int siz)
{
	if(siz>5)
	{
		//fill((int)Math.random()*255, (int)Math.random()*255, (int)Math.random()*255);
		ellipse(x, y, siz, siz);
		myFractal(x+2, y+siz/2, siz/3);
		myFractal(x-2, y-siz/2, siz/3);
		myFractal(x-siz/2, y-2,siz/3);
		myFractal(x+siz/2, y+2,siz/3);
	}
}