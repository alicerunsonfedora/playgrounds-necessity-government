//#-hidden-code
import UIKit
import PlaygroundSupport
//#-end-hidden-code
/*:
# What is a government?
- Callout(Definition):
A **government** is defined as an institution that carries out public policies that attempt to reflect the will of its people at the discretion of those in power.

Take a look at the government on the right. This government consists of a supervisor, the ruler, and the citizens (orange characters). The blue character, Ruler 'N', runs the government and the supervisor (green character) assists in writing laws.

While there is no code for you to type in for execution, you can hit the **Run My Code** button to see the leaders proceed in. In the next couple of pages, you'll determine what type of government is best suited for these people.
*/
//#-hidden-code
playgroundPrologue() //Builds the world
let rulerN = nicolle
//#-end-hidden-code
PlaygroundPage.current.needsIndefiniteExecution = true //Because concurrent code is used, we must allow Swift to make the playground run indefinitely until the end.

let asyncQueue = DispatchQueue(label: "asyncQueue", attributes: .concurrent) //Start the concurrent code process

asyncQueue.async {
    rulerN.move(distance: 4)
    rulerN.turnLeft()
} //As Ruler N moves and turns left...
supervisor.move(distance: 4)
supervisor.turnRight() //The supervisor will move and turn right...
//#-editable-code
//#-end-editable-code

//#-hidden-code
playgroundEpilogue()
//#-end-hidden-code
