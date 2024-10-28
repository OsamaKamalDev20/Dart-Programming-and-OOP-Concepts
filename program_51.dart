void main() {
  Area area = Area();
  area.length = 145;
  area.width = 186;
  area.calculateRectangleArea();

  Area area2 = Area();
  area2.length2 = 586;
  area2.calculateSquareArea();

  Area area3 = Area();
  area3.height = 866;
  area3.breadth = 786;
  area3.calculateTriangleArea();
}

class Area {
  double? length;
  double? width;
  double? length2;
  double? height;
  double? breadth;

  // Method to calculate area of Rectangle
  void calculateRectangleArea() {
    double areaOfRectangle = length! * width!;
    print("The area of Rectangle is equal to = $areaOfRectangle cm");
  }

  // Method to calculate area of Square
  void calculateSquareArea() {
    double areaOfSquare = length2! * length2!;
    print("The area of Square is equal to = $areaOfSquare cm");
  }

  // Method to calculate area of Square
  void calculateTriangleArea() {
    double areaOfTriangle = (height! * breadth!) / 2.0;
    print("The area of Triangle is equal to = $areaOfTriangle cm");
  }
}
