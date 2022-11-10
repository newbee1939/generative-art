// setup()の中はProcessingを実行したときに最初に一回だけ実行される
void setup() {
  size(1200, 1200);
}

void draw() {
  // drawの度に塗り潰されるのでリセットされる
  background(192, 192, 192);
  // 枠線は付けない
  noStroke();

  int x = 0;
  int y = 0;

  for (int i = 0; i < 1300; i+=100) {
    drawEye(x + i, y);
    for (int t = 100; t < 1300; t+=100) {
      drawEye(x + i, y + t);
    }
  }
}

void drawEye(int x, int y) {
  // 目ん玉の大きさ
  int width = 100;
  int height = 100;

  // 目ん玉の輪郭
  fill(
    255,
    255,
    255
  );
  ellipse(
    x + random(-1, +1),
    y + random(-1, +1),
    width,
    height
  );

  // 目ん玉の内側
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

  // 目ん玉の内側の内側
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