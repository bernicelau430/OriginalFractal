public void setup()
{
  size(500,500);
  rectMode(CENTER);
}
public void draw() {
  background(0);
  int r = 50;
  int g = 50;
  int b = 50;
  for (int y = 50; y < 500; y += 50) {
    for (int i = 0; i < 550; i += 10) {
      myFractal(i, y, 50); 
      stroke(r, g, b);
      if (b < 256) {
        r += 10;
        g += 25;
        b += 40;
      }
      else {
        r = 50;
        g = 50;
        b = 50;
      }
    }
  }
}
public void myFractal (int x, int y, int siz) {
  fill(255);
  rect(x, y, siz, siz);
  if(siz > 10) {
    myFractal(x-siz/2, y, siz/2);
    myFractal(x-siz/2, y, siz/2);
  }
}
