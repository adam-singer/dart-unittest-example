#import('dart:html');
#import('../../src/vector.dart');

class vector2Sample {
  vector2 v1;
  vector2 v2;
  vector2 v3;
  
  InputElement inputv1x;
  InputElement inputv1y;
  InputElement inputv2x; 
  InputElement inputv2y;
  
  ButtonElement subButton;
  
  LabelElement labelv3;
  
  vector2Sample() {
  }

  void run() {
    
    inputv1x = document.query('#v1x');
    inputv1y = document.query('#v1y');
    inputv2x = document.query('#v2x');
    inputv2y = document.query('#v2y');
    subButton = document.query('#subvector');
    labelv3 = document.query('#v3');
    
    subButton.on.click.add((Event e) {
      //Expect.isNotNull(inputv1x);
      num n1 = inputv1x.valueAsNumber;
      num n2 = inputv1y.valueAsNumber;
      v1 = new vector2(n1,n2);
      n1 = inputv2x.valueAsNumber;
      n2 = inputv2y.valueAsNumber;
      v2 = new vector2(n1,n2);
      v3 = v1 - v2;
      labelv3.innerHTML = v3.toString();
    });
    
    document.query('#status').remove();
  }
}

void main() {
  new vector2Sample().run();
}
