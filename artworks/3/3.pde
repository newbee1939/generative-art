void setup() {
  size(1200, 1200);
  background(192, 192, 192);
}

void draw() {
  noStroke();

  float x = random(0, 1200);
  float y = random(0, 1200);
  int width = 100;
  int height = 100;

  // 目玉の輪郭
  fill(
    255,
    255,
    255
  );
  ellipse(
    x + random(-10, +10),
    y + random(-10, +10),
    width,
    height
  );

  // 目玉の内側
  fill(
    random(0, 255),
    random(0, 255),
    random(0, 255)
  );
  ellipse(
    x + random(-5, +5),
    y + random(-5, +5),
    width / 2,
    height / 2
  );

  // 目玉の内側の内側
  fill(
    0,
    0,
    0
  );
  ellipse(
    x + random(-1, +1),
    y + random(-1, +1),
    width / 4,
    height / 4 
  );
}