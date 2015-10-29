PShape testsvg;
PShape boo;

float blurRadius = 0;
float threshouldRacio = 1;

Ball[] balls;

boolean applyFilter = true;

void setup() {
  size(500, 500);
  frameRate(30);
  
  int maxSpeed = 10;
  int numBalls = 5;
  
  balls = new Ball[numBalls];
  
  for (int i = 0; i<numBalls; i++) {
    balls[i] = new Ball(
      int(random(100) + 100),
      new PVector(40, 200),
      new PVector(random(-maxSpeed, maxSpeed), random(-maxSpeed, maxSpeed))
      );
  }
}
void draw(){
  background(255);
  
  for (int i = 0; i<balls.length; i++) {
    Ball ball = balls[i];
    
    ball.update();
    ball.draw();
  }
  
  if(applyFilter) {
    filter(BLUR, blurRadius);
    filter(THRESHOLD, threshouldRacio);
  }
}

void mouseClicked() {
  applyFilter = !applyFilter;
}
void mouseMoved() {
  blurRadius      = mouseX * 0.02;
  threshouldRacio = min(mouseY * 0.003, 1);
}