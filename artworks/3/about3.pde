// 乱数の利用
void setup() {
  size(1200, 1200);
  // 背景色を指定
  background(192, 192, 192);
}

// drawは無限ループ！
void draw() {
  // 線幅をランダムにする
  // random( 最小値 , 最大値 )
  // strokeWeight(random(4, 50));

  // 逆に枠線を塗らない
  noStroke();

  // 変数定義 
  float x = random(0, 1200);
  float y = random(0, 1200);
  int width = 100;
  int height = 100;

  // 目玉の輪郭
  // 中の色を塗る
  fill(
    255,
    255,
    255
  );
  // 円を作成
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

// 参考:https://cocopon.me/zero-pde/random/