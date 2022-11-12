void setup() {
  size(1200, 1200);

  int x = 0;
  int y = 0;

  for (int i = 0; i < 1200; i += 10) {
    drawSquare(x + i, y);
    for (int t = 10; t < 1200; t += 10) {
      drawSquare(x + i, y + t);
    }
  }
}

void drawSquare(int x, int y) {
  // TODO:できれば口のようにしたい
  if ((y == 400 && ((x >= 300 && x <= 500) || (x >= 700 && x <= 900))) || (y == 700 && x >= 400 && x <= 800)) {
    fill(
      0,
      0,
      0 
    );
  } else {
    fill(
      random(0, 255),
      random(0, 255),
      random(0, 255)
    );
  }

  // rectで四角形を描ける
  rect(x, y, 10, 10);
}

// https://cocopon.me/zero-pde/color/