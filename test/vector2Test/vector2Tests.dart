class vector2Tests {
  _tests() {
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
    
    group('Vector2 magnitude Tests::', () {
      test('Test 1', () {
        vector2 v = new vector2(5,6);
        var m = v.magnitude();
        Expect.equals(Math.sqrt(5*5+6*6), m);
      });
      
      test('Test 2', () {
        vector2 v = new vector2(0,0);
        var m = v.magnitude();
        Expect.equals(0, m);
      });
      
      test('Test 3', () {
        vector2 v = new vector2(-5,6);
        var m = v.magnitude();
        Expect.equals(Math.sqrt(-5*-5+6*6), m);
      });
      
      test('Test 4', () {
        vector2 v = new vector2(5,-6);
        var m = v.magnitude();
        Expect.equals(Math.sqrt(5*5+(-6)*-6), m);
      });
      
      test('Test 5', () {
        vector2 v = new vector2(-5,-6);
        var m = v.magnitude();
        Expect.equals(Math.sqrt((-5)*(-5)+(-6)*(-6)), m);
      });
    });
    
    group('Vector2 normalize Tests::', () {
      test('Test 1', () {
        vector2 v = new vector2(3,4);
        var n = v.normalize();
        Expect.equals("(x=0.6,y=0.8)", n.toString());
      });
      
      test('Test 2', () {
        vector2 v = new vector2(0,0);
        Expect.throws(v.normalize,
          (e) { return e is ZeroLengthVectorException;});
      });
    });
    
    group('Vector2 negate Tests::', () {
      test('Test 1', () {
        vector2 v = new vector2(3,4);
        var n = -v;
        Expect.equals("(x=-3,y=-4)", n.toString());
      });
      
      test('Test 2', () {
        vector2 v = new vector2(-3,-4);
        var n = -v;
        Expect.equals("(x=3,y=4)", n.toString());
      });
      
      test('Test 3', () {
        vector2 v = new vector2(3,-4);
        var n = -v;
        Expect.equals("(x=-3,y=4)", n.toString());
      });
      
      test('Test 4', () {
        vector2 v = new vector2(-3,4);
        var n = -v;
        Expect.equals("(x=3,y=-4)", n.toString());
      });
    });
    
    group('Vector2 - Tests::', () {
      test('Test 1', () {
        vector2 v1 = new vector2(2,4);
        vector2 v2 = new vector2(1,2);
        vector2 v3 = v1 - v2;
        Expect.equals("(x=1,y=2)", v3.toString());
      });
      
      test('Test 2', () {
        vector2 v1 = new vector2(2,-4);
        vector2 v2 = new vector2(-1,2);
        vector2 v3 = v1 - v2;
        Expect.equals("(x=3,y=-6)", v3.toString());
      });
      
      test('Test 3', () {
        vector2 v1 = new vector2(0,0);
        vector2 v2 = new vector2(-1,2);
        vector2 v3 = v1 - v2;
        Expect.equals("(x=1,y=-2)", v3.toString());
      });
      
      test('Test 4', () {
        vector2 v1 = new vector2(1,5);
        vector2 v2 = new vector2(0,0);
        vector2 v3 = v1 - v2;
        Expect.equals("(x=1,y=5)", v3.toString());
      });
      
      test('Test 5', () {
        vector2 v1 = new vector2(0,0);
        vector2 v2 = new vector2(0,0);
        vector2 v3 = v1 - v2;
        Expect.equals("(x=0,y=0)", v3.toString());
      });
    });
    
    group('Vector2 cross Tests::', () {
      test('Test 1', () {
        vector2 v1 = new vector2(0,0);
        vector2 v2 = new vector2(0,0);
        Expect.equals(0, v1.cross(v2));
      });
      
      test('Test 2', () {
        vector2 v1 = new vector2(2,2);
        vector2 v2 = new vector2(5,4);
        Expect.equals(-2, v1.cross(v2));
      });
      
      test('Test 3', () {
        vector2 v1 = new vector2(2,2);
        vector2 v2 = new vector2(-5,4);
        Expect.equals(18, v1.cross(v2));
      });
      
      test('Test 4', () {
        vector2 v1 = new vector2(-1,2);
        vector2 v2 = new vector2(5,4);
        Expect.equals(-14, v1.cross(v2));
      });
    });
  }
  
  run() {
    _tests();
  }
}
