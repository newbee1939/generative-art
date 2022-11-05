// ユークリッドの互除法を実行するプログラム
const execute = (a, b) => {
  // 余り(最初はbが入る)
  let d = b;
  
  while (d > 0) {
    d = a % b;
    a = b;
    b = d;
  }

  return a;
}

module.exports = execute;