public void setup()
{
	size(500,500);
	background(0);
}
public void draw()
{
	fill(255);
	//rect(10, 10, 480, 480);
	//fill((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
	myFractal(250,250,500);
}
public void myFractal(int x, int y, int siz)
{
	if(siz>1)
	{
		ellipse(x, y, siz, siz);
		int smile = (int)(.8*siz);
		stroke(50,50,50);
		myFractal(x+2, y+siz/5, siz/3);
		myFractal(x-2, y-siz/5, siz/3);
		arc(x, y, smile, smile, (float)PI/3, (float)PI/3, CHORD);

	}
}