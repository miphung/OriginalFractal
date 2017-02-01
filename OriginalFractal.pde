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
	if(siz>1)
	{
		//fill((int)Math.random()*255, (int)Math.random()*255, (int)Math.random()*255);
		ellipse(x, y, siz, siz);
		//bezier(x+20, y+60, x+15, y+70, x+25, y+70, x+20, y+60);
		arc(50, 50, 80, 80, 0, PI+QUARTER_PI, CHORD);
		myFractal(x+2, y+siz/5, siz/3);
		myFractal(x-2, y-siz/5, siz/3);
		//bezier((float)x+50, (float)y+20, (float)x-20, (float)y-30, (float)x-20, (float)y+30, (float)x+50, (float)y+80);
	}
}