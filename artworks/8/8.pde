// 長方形の正方形による分割
//ユークリッドの互除法により得た長方形の分割に対し、その横幅が縦と同じになるように縮小・拡大すると、長方形による正方形分割ができる
// 最も小さい長方形の長辺が最大公約数に対応する

// 横縦比がnumA:numBの長方形によって正方形の描画ウインドウを分割
int numA = 10;
int numB = 6;
float ratio = (float) numB / numA; // 比率
float xPos = 0; 
float yPos = 0; 
int itr = 0; 

// 描画
size(500, 500); // 描画ウインドウサイズ
colorMode(HSB, 1);
float wd = width; // 描画ウインドウサイズの横幅サイズを初期とする

// 繰り返し処理
while (wd > 0.1) { // 幅が許容誤差より大きければ以下を実行する
  itr++;
  if (itr % 2 == 1) { // 縦幅がwdの長方形をx軸方向へ加える
    while(xPos + wd * ratio < width + 0.1){
      // 幅を足したとき、横幅がウインドウを超えなければ以下を実行
      fill(color(random(1), 1, 1)); // 色相のみを01区間でランダムに変えて塗りつぶす
      rect(xPos, yPos, wd * ratio, wd); // 縦幅wd, 縦横比がnumA:numBの長方形
      xPos += wd * ratio; // x位置を更新
    }
    wd = width - xPos; // 幅を更新
  } else { // 横幅がwdの長方形をy軸方向へ加える
    while(yPos + wd / ratio < width + 0.1){
      // 幅を足したとき、縦幅がウインドウを超えなければ以下を実行
      fill(color(random(1), 1, 1)); // ランダムに色を指定
      rect(xPos, yPos, wd, wd / ratio); // 横幅wd, 縦横比がnumA:numBの長方形
      yPos += wd / ratio; // y位置を更新
    }
    wd = width - yPos;
  }
}

// ※