// マウスの位置によって影が移動する。影をランダムになるようにしても面白いかも

void setup() {
  // modeパラメータによって描画方法(レンダラ)を選択。高速な3次元グラフィクス(3D)用のレンダラで、Webでの使用に適しています。画質を犠牲にして速さを重視
  size(640, 360, P3D);
  // 輪郭線を引かない。これがないと、球体内に複数の線が描かれる
  noStroke();
  // 球体の色（月白）
  // fill(246, 247, 248);
  // 球体の色（オレンジ）
  // fill(255, 69, 0);
  // 球体の色（黄色）
  fill(255, 255, 0);
}

void draw() {
  // 背景色（黒）
  background(0); 

  // マウスの位置によって可変になるようにする
  float dirY = (mouseY / float(height) - 0.5) * 2;
  float dirX = (mouseX / float(width) - 0.5) * 2;
  // 光源の位置を指定
  directionalLight(204, 204, 204, -dirX, -dirY, -1); 

  // 座標の移動。画面の真ん中に配置する
  translate(width/2, height/2, 0); 
  // 球体を描画。引数には半径を指定
  sphere(80); 
}

// 参考:https://processing.org/examples/directional.html