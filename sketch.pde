int r;
int g;
int x1;
int y1;
int x2;
int y2;

void setup() {
  size(500, 500);
  noLoop();
  background(0);
}

void draw() {
  background(0);

  r = 0;
  g = 0;
  x1 = 0;
  y1 = 250;
  x2 = 0;
  y2 = 0;
  
  stroke(200);
  strokeWeight(2);
  line(0, 250, 500, 250);
  
  while (x2 < 500) {
    x2 = x1 + (1 + ((int) (Math.random() * 10)));
    y2 = y1 + (10 - ((int) (Math.random() * 21)));
    stroke(255);
    strokeWeight(5);
    line(x1, y1, x2, y2);
    x1 = x2;
    y1 = y2;
  }

  if (y2 <= 250) {
    r = 0;
    g = 255;
  } else {
    r = 255;
    g = 0;
  }
  
  fill(r, g, 0, 200);
  rect(0, 0, 500, 500);
}

void mousePressed() {
  redraw();
}
