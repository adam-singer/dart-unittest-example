/**
 * Thrown if you attempt to normalize a zero length vector.
 */
class ZeroLengthVectorException implements Exception {
  ZeroLengthVectorException() {}
}

class vector2Implementation implements vector2 {
  final x;
  final y;
  vector2Implementation([this.x,this.y]);
  magnitude() => Math.sqrt(x*x + y*y);
  normalize() {
    double len = magnitude();
    if (len == 0.0) {
      throw new ZeroLengthVectorException();
    }
    return new vector2(x/len, y/len);
  }
  
  operator negate() {
    return new vector2(-x, -y);
  }

  operator -(other) {
    return new vector2(x - other.x, y - other.y);
  }

  cross(other) {
    var xResult = x*other.y; 
    var yResult = y*other.x; 
    return xResult - yResult;
  }


  
  String toString() => "(x=${x},y=${y})";
}
