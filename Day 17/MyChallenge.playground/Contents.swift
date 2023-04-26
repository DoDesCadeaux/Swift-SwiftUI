/*
 1.		Create a struct called PointStruct and a class called PointClass with the following properties:
		x: Double
		y: Double
 
 2.		Implement initializers for both PointStruct and PointClass that take in x and y coordinates and set their respective properties.
 
 3.		Implement a method called distance(to other: Point) for both types that calculates the distance between the current point and another point passed as an argument. You can use the following formula 	to calculate the distance:
			distance = √((x2 - x1)² + (y2 - y1)²)
 
 4.		Create two instances of PointStruct and two instances of PointClass with different coordinates.
 
 5.		Calculate and print the distance between the two instances of PointStruct and the two instances of PointClass.
 
 6.		Now, create a function called movePoint(point: inout PointStruct, byX x: Double, byY y: Double) that takes an inout PointStruct and modifies its x and y coordinates by the given values.
 
 7.		Create a similar function called movePoint(point: PointClass, byX x: Double, byY y: Double) that takes a PointClass and modifies its x and y coordinates by the given values.
 
 8.		Modify one of the PointStruct instances using the movePoint(point: inout PointStruct, byX x: Double, byY y: Double) function and one of the PointClass instances using the movePoint(point: 	PointClass, byX x: Double, byY y: Double) function.
 
 9.		Calculate and print the new distances between the two instances of PointStruct and the two instances of PointClass.
 
 10.	Finally, compare how value types (structs) and reference types (classes) behave when passed to functions, especially when the instances are modified. Discuss your observations.
 */

import Darwin
import Foundation

struct PointStruct {
	var x: Double
	var y: Double
	
	init(x:Double, y:Double) {
		self.x = x
		self.y = y
	}
	
	func distance(to otherPoints: PointStruct) -> Double {
		let deltaX = otherPoints.x - self.x
		let deltaY = otherPoints.y - self.y
		
		return sqrt((pow(deltaX, 2.0)) + pow(deltaY, 2.0))
	}
}

class PointClass {
	var x: Double
	var y: Double
	
	init(x: Double, y: Double) {
		self.x = x
		self.y = y
	}
	
	func distance(to otherPoints: PointClass) -> Double {
		let deltaX = otherPoints.x - self.x
		let deltaY = otherPoints.y - self.y
		
		return sqrt((pow(deltaX, 2.0)) + pow(deltaY, 2.0))
	}
}

func movePoint(point: inout PointStruct, byX x: Double, byY y: Double) {
	point.x += x
	point.y += y
}

func movePoint(point: inout PointClass, byX x: Double, byY y: Double) {
	point.x += x
	point.y += y
}


var pointStructA = PointStruct(x: 1.0, y: 2.0)
var pointStructB = PointStruct(x: 4.0, y: 6.0)

var pointClassA = PointClass(x: 3.0, y: 4.0)
var pointClassB = PointClass(x: 7.0, y: 8.0)


var distanceBetweenPointStructs = pointStructA.distance(to: pointStructB)
var distanceBetweenPointClasses = pointClassA.distance(to: pointClassB)

print("Before movePoint Distance between pointStructA and pointStructB: \(distanceBetweenPointStructs)")
print("Before movePoint Distance between pointClassA and pointClassB: \(distanceBetweenPointClasses)")

print("Before Point of struct A : x = \(pointStructA.x) y = \(pointStructA.y)")
print("Before Point of struct B : x = \(pointStructB.x) y = \(pointStructB.y)")
print("Before Point of class A : x = \(pointClassA.x) y = \(pointClassA.y)")
print("Before Point of class B : x = \(pointClassB.x) y = \(pointClassB.y)")

movePoint(point: &pointStructA, byX: 1, byY: 1)
movePoint(point: &pointStructB, byX: 2, byY: 2)
movePoint(point: &pointClassA, byX: 1, byY: 1)
movePoint(point: &pointClassB, byX: 2, byY: 2)

distanceBetweenPointStructs = pointStructA.distance(to: pointStructB)
distanceBetweenPointClasses = pointClassA.distance(to: pointClassB)

print("After movePoint Distance between pointStructA and pointStructB: \(distanceBetweenPointStructs)")
print("After movePoint Distance between pointClassA and pointClassB: \(distanceBetweenPointClasses)")

print("After Point of struct A : x = \(pointStructA.x) y = \(pointStructA.y)")
print("After Point of struct B : x = \(pointStructB.x) y = \(pointStructB.y)")
print("After Point of class A : x = \(pointClassA.x) y = \(pointClassA.y)")
print("After Point of class B : x = \(pointClassB.x) y = \(pointClassB.y)")
