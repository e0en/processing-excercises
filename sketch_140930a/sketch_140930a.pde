int phase = 0;
int step = 1;
int canvasSize = 320;
int time_old = 0;

void setup() {
  size(canvasSize, canvasSize);
  frameRate(60);
}

void draw_frame(int phase) {
  fill((int) (255.0 * 0.5 * (1 + sin(2 * 3.1415 * phase / 360))));
  ellipse(canvasSize / 2, canvasSize / 2, 50, 50);
}

void draw() {
  background(0);
  phase = phase % 360;
  draw_frame(phase);
  phase += step;
}
