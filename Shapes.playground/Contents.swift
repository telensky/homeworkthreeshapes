//: A UIKit based Playground for presenting user interface
import UIKit
import PlaygroundSupport
// Required protocol
protocol Polygon
{
    var name: String { get }
    var sides: Int { get }
    func perimeter() -> Float
    func area() -> Float
}
// Triangle Class, Protocol Polygon
class Triangle:Polygon
{
    var a: Float // Side one of a triangle
    var b: Float // Side two of a triangle
    var c: Float // Side three of a triangle.  I believe for this simple program sides 1 and 2 are the length and height.
    var name: String = "Triangle"  // name of triangles
    var sides: Int = 3 // number of sides
    //setting a,b,c to a side
    init(a: Float, b:Float, c: Float)
    {
        self.a = a
        self.b = b
        self.c = c
    }
    // function to get the perimeter
    func perimeter() -> Float
    {
        return a+b+c // self explanatory
    }
    // function for area
    func area() -> Float
    {
        let area = ((a*b)/2) // the height and width work by setting sides 1 and 2 to h and w.
        return area
    }
}
// class Square, protocol Polygon
class Square:Polygon
{
    var a: Float // a = length of side of square
    var name: String = "Square" // name of squares in output
    var sides: Int = 4 // number of sides
    init(a: Float)
    {
        self.a = a // setting a to sides
    }
    // function for Perimeter of Square
    func perimeter() -> Float
    {
        return a*4 // forumla for perimeter of Square
    }
    func area() -> Float
    {
        return a*a // a squared is the formula or a*a
    }
}
// class Rectangle, protocol Polygon
class Rectangle:Polygon
{
    var a: Float // side 1,3
    var b: Float // side 2,4
    var name: String = "Rectangle"
    var sides: Int = 4 // number of sides
    init(a: Float, b: Float)
    {
        self.a = a // setting a to side
        self.b = b // setting b to side
    }
    // Function for perimeter of Rectangle
    func perimeter() -> Float
    {
        return 2*(a+b) // formula is 2(l+w). l and w are a and b
    }
    // Function for area of Rectangle
    func area() -> Float
    {
        return a*b // formula is l*w. l and w are a and b
    }
}

//Create all instances of shapes and sets values
func makeShapes() -> [Polygon]{
    let p1 = Triangle(a:3,b:4,c:5)
    let p2 = Triangle(a:6,b:8,c:10)
    let p3 = Square(a: 15)
    let p4 = Square(a: 25)
    let p5 = Rectangle(a:20,b:13)
    let p6 = Rectangle(a:17,b:50)
    
    return [p1,p2,p3,p4,p5,p6]
}
// making the three shapes
let shapes = makeShapes()
// function for output
func draw (shape: Polygon)
{
    print("\(shape.name) has \(shape.sides) sides. Perimeter is \(shape.perimeter().description) inches. Area is \(shape.area().description) inches squared.")
}

shapes.forEach { shape in
    draw(shape: shape)
}
