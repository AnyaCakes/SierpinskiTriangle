int f=0;
PImage img;
public void setup()
{
	size(800,800);
	img = loadImage("tower.gif");
	for(int i=0; i<800; i++){
		stroke(i*0.5+40,i*0.05+10, i*0.15);
		line(i,0,i,800);
	}

}
public void draw()
{ 
sierpinski(50, 750, 750, 50, f);
}
public void mouseDragged()//optional
{

	
	
}
public void sierpinski(int x, int y, int len, int woah, int r) 
{

		if(len <= woah)
	{
		
		//triangle(x,y,x+(len/2),y-len,x+len,y);
		image(img, x, y, 40,40);
	}
	else
	{
		sierpinski(x,y,len/2, woah, r);
		sierpinski(x+(len/2),y,len/2, woah, r);
		sierpinski(x+(len/4),y-(len/2),len/2,  woah, r);
	}
}