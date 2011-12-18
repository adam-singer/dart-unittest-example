interface vector2 factory vector2Implementation {   
  final x;
  final y;
  vector2([x,y]);
  magnitude();
  normalize();
  operator negate();
  operator -(other);
  cross(other);
  String toString();
}
