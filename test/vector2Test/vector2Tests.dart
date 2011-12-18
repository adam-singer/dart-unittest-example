class vector2Tests {
  constructorTest() {
    group('Vector2 Constructor Tests::', () {
      test('Vector2 not null', () {
        vector2 v = new vector2(0,0);
        Expect.isNotNull(v);
      });
      
      test('Vector2 get x', () {
        vector2 v = new vector2(5,6);
        Expect.equals(5, v.x);
      });
      
      test('Vector2 get y', () {
        vector2 v = new vector2(5,6);
        Expect.equals(6, v.y);
      });
      
      test('Vector2 toString()', () {
        vector2 v = new vector2(5,6);
        Expect.equals('(x=5,y=6)', v.toString());
      });
    });
  }
  
  run() {
    constructorTest();
  }
}
