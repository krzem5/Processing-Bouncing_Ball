PVector pos;
PVector vel;
PVector gravity;
int SIZE = 30;
void setup() {
  size(650, 375);
  pos = new PVector(width/2, height/2);
  vel = new PVector(2, 2.9);
  gravity = new PVector(0, 0.3);
}
void draw() {
  background(0);
  pos.add(vel);
  vel.add(gravity);
  if (pos.x >= width - SIZE || pos.x <= SIZE) {
    vel.x *= -0.9;
  }
  if (pos.y >= height - SIZE || pos.y <= SIZE) {
    vel.y *= -0.9;
  }
  fill(220, 40, 40);
  ellipse(pos.x, pos.y, SIZE*2, SIZE*2);
}
