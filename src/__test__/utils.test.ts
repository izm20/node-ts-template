import { helloWord } from '../utils';

describe('helloWorld', () => {
  it('should say hello world', () => {
    expect(helloWord()).toEqual('Hello World!');
  });
});
