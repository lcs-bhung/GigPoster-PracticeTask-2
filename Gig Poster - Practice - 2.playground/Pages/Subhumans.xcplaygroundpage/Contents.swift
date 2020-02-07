//: # Gig Poster - Practice Task 2
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport

/*:
 Each image is exactly 400 pixels wide by 600 pixels tall. 
 
 Your goal is to precisely reproduce this image: 
 
 ![subhumans-no-grid](subhumans-no-grid.png "Subhumans")
 ![subhumans-with-grid](subhumans-with-grid.png "Subhumans")

 By precisely reproducing this image, you will demonstrate your understanding of:
 
 * sequence (order of statements in a program)
 * conditionals (making decisions with ``if`` statements)
 * iteration (use of loops to repeat statements)
 * arrays (a list of related objects or values)
 
 You may use the color constants created below to obtain the correct colors.
 
 Remember that you can refer to the [Canvas class documentation](https://www.russellgordon.ca/canvasgraphics/documentation/classes/canvas), as needed.
 */

// Create a new canvas
let canvas = Canvas(width: 400, height: 600)

// COLORS
let yellow = Color(hue: 45, saturation: 99, brightness: 100, alpha: 100)
let purple = Color(hue: 304, saturation: 40, brightness: 64, alpha: 100)
let brown = Color(hue: 38, saturation: 99, brightness: 38, alpha: 100)
let lightRed = Color(hue: 10, saturation: 80, brightness: 80, alpha: 75)

// Begin your solution here...

//Draw the background
canvas.fillColor = yellow
canvas.drawRectangle(at: Point(x: 0, y: 0), width: 400, height: 600)

//Make the arrays for the parrarelagram

for xVal in stride(from: 15, through: 330, by: 315) {
    for yVal in stride(from: 50, through: 325, by: 175){
var shapePoints : [Point] = []
shapePoints.append (Point(x: xVal, y: yVal))
shapePoints.append (Point(x: 50+xVal, y: 100+yVal))
shapePoints.append (Point(x: 200+xVal, y: 100+yVal))
shapePoints.append (Point(x: 150+xVal, y: yVal))
    //Draw the pararellegrams
    canvas.fillColor = purple
    canvas.drawCustomShape(with: shapePoints)
    }
}

for xVal in stride(from:-142 , through: 173, by: 315) {
    for yVal in stride(from: 50, through: 325, by: 175){
var shapePoints : [Point] = []
shapePoints.append (Point(x: xVal, y: yVal))
shapePoints.append (Point(x: 50+xVal, y: 100+yVal))
shapePoints.append (Point(x: 200+xVal, y: 100+yVal))
shapePoints.append (Point(x: 150+xVal, y: yVal))
    //Draw the pararellegrams
    canvas.fillColor = brown
        canvas.drawShapesWithBorders = false
    canvas.drawCustomShape(with: shapePoints)
    }
}

for xVal in stride(from:-142 , through: 473, by: 157) {
var shapePoints : [Point] = []
shapePoints.append (Point(x: xVal, y: 140))
shapePoints.append (Point(x: 50+xVal, y: 240))
shapePoints.append (Point(x: 200+xVal, y: 240))
shapePoints.append (Point(x: 150+xVal, y: 140))
    //Draw the pararellegrams
    canvas.fillColor = lightRed
    canvas.drawShapesWithBorders = false
    canvas.drawCustomShape(with: shapePoints)
    }

//Draw the texts
canvas.drawText(message: "subhumans", at: Point(x: 10, y: 325), size: 48, kerning: 0)

canvas.drawText(message: "no age limit", at: Point(x: 15, y: 396), size: 10, kerning: 0)
canvas.drawText(message: "advance $6.50, door $7.50", at: Point(x: 15, y: 411), size: 10, kerning: 0)
canvas.drawText(message: "friday, april 13 1984", at: Point(x: 15, y: 426), size: 10, kerning: 0)

canvas.drawText(message: "los angeles, california", at: Point(x: 150, y: 396), size: 10, kerning: 0)
canvas.drawText(message: "1801 s. grand ave.", at: Point(x: 150, y: 411), size: 10, kerning: 0)
canvas.drawText(message: "at olypic auditorium", at: Point(x: 150, y: 426), size: 10, kerning: 0)

canvas.drawText(message: "new regime & red scare", at: Point(x: 275, y: 396), size: 10, kerning: 0)
canvas.drawText(message: "milti death corporations", at: Point(x: 275, y: 411), size: 10, kerning: 0)
canvas.drawText(message: "with the tourists", at: Point(x: 275, y: 426), size: 10, kerning: 0)



//draw a grid for refrence
for y in stride(from: 0, through: 600, by: 50) {
    //Draw the grid lines
    canvas.drawLine(from: Point(x: 0, y: y), to: Point(x: 400, y: y))
}

for x in stride(from: 0, through: 400, by: 50) {
    //Draw the grid line
    canvas.drawLine(from: Point(x: x, y: 600), to: Point(x: x, y: 0))
}
/*:
 ## Use Source Control
 
 As this is a practice task, there is no hard deadline. However, completing this practice task – an assessment for learning – prior to attempting an assessment of learning – is strongly recommended.
 
 Be sure to commit your work multiple times as you make progress on completing this task.

 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas


