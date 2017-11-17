//#-hidden-code
import UIKit
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true //Because concurrent code is used, we must allow Swift to make the playground run indefinitely until the end.

let asyncQueue = DispatchQueue(label: "asyncQueue", attributes: .concurrent) //Start the concurrent code process

asyncQueue.async {
    nicolle.move(distance: 4)
    nicolle.turnLeft()
} //As nicolle moves and turns left...
supervisor.move(distance: 4)
supervisor.turnRight() //The supervisor will move and turn right...
//#-end-hidden-code

//Write your information here in markup.
/*:
# What is a government?
*/
//#-hidden-code
playgroundPrologue() //Builds the world
//#-end-hidden-code

//#-hidden-code
playgroundEpilogue()
//#-end-hidden-code
