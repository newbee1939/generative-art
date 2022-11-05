// ユークリッドの互除法を実行するプログラム

const execute = (a, b) =>  {
    const first = a % b;
    return first;
}

module.exports = execute;

execute(14803, 12707);
// 答えは131になる想定
// 10と6だと2になる