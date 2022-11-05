const execute = require('./2');

describe('2.js', () => {
  describe.each([
    [9, 6, 3],
    [15, 6, 3],
    [21, 17, 1],
    [20, 18, 2],
    [6, 10, 2],
    [12707, 14803, 131]
  ])('%iと%iの最大公約数は、', (a, b, expected) => {
    test(`${expected}になる`, () => {
      expect(execute(a, b)).toBe(expected);
    })
  })
});

// about data provider:https://jestjs.io/ja/docs/api#testeachtablename-fn-timeout