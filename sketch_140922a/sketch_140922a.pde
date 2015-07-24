int phase = 0;
int step = 1;
int canvasSize = 320;
int time_old = 0;

void setup() {
  size(canvasSize, canvasSize);
  frameRate(60);
}

void draw_frame(int phase) {
  int background_color = (phase >= 180)? 255: 0;
  int foreground_color = 255 - background_color;
  background(background_color);
  fill(foreground_color);
  
  int phase_half = phase % 180;
  int size = (int) (1.414 * canvasSize * phase_half / 180.0);
  ellipse(canvasSize / 2, canvasSize / 2, size, size);
  println(size);
}

void draw() {
  background(0);
  phase = phase % 360;
  draw_frame(phase);
  phase += step;
}
