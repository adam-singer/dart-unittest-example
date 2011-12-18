#import('dart:html');
#import('../../third_party/unittest/unittest_dartest.dart');
#import('../../third_party/dartest/dartest.dart');
#import('../../src/vector.dart');
//#import('/Users/adam/dart_bleeding/dart/client/testing/unittest/unittest_dartest.dart');
//#import('/Users/adam/dart_bleeding/dart/client/testing/dartest/dartest.dart');
#source('vector2Tests.dart');

class vector2Test {

  vector2Test() {
  }

  void run() {
    write("Hello World!");
  }

  void write(String message) {
    // the HTML library defines a global "document" variable
    document.query('#status').innerHTML = message;
  }
}

// dummy test methods to ensure things work
fakeTests() {
  group('Failing Tests::', () {
    test('Int Test', () {
      Expect.equals(1,2);
    });

    test('String Test', () {
      Expect.equals(""," ");
    });

    test('Divide by Zero', (){
      Expect.equals(0, 1/0);
    });
  });
  
  group('Errorneous Tests::' , () {
    test('IndexOutOfRange', (){
      List<int> intList = new List<int>();
      Expect.equals(0, intList[0]);
    });

    test('NullPointer', (){
      List<int> intList;
      Expect.equals(0, intList.length);
    });
  });

  group('Passing Tests::', () {
    test('One equals One', () {
      Expect.equals(1, 1);
    });

    test('Object equals Object', (){
      Object o1 = new Object();
      Object o2 = o1;
      Expect.equals(o1, o2);
    });
  }); 
}

testFormat() {
  bool testData; 
  // Initialize the data to be tested. 
  setUpData() {
    testData = false;
  }
  // A collection of unit tests
  group('Test Group Name', () {  
    // Define a test
    test('Test Name 1', () {
      setUpData();
      // Test some data
      Expect.isFalse(testData);
      testData = true; 
      Expect.isTrue(testData);
    });
    // Define another test
    test('Test Name 2', () {
      setUpData();
      // Test some data
      Expect.isTrue(testData);
    });
  });
}

void main() {
  new vector2Test().run();
  
  fakeTests();
  testFormat();
  new vector2Tests().run();
  // Run DARTest
  new DARTest().run();
}
