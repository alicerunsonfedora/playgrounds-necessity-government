//#-hidden-code
//
//  Contents.swift
//
//  Copyright © 2016,2017 Apple Inc. All rights reserved.
//
//#-end-hidden-code
/*:#localized(key: "FirstProseBlock")
Use this playground to create any puzzle world you want!

*/
//#-hidden-code
playgroundPrologue()
typealias Character = Actor
//#-end-hidden-code
//#-code-completion(everything, hide)
//#-code-completion(literal, show, color, array)
//#-code-completion(currentmodule, show)
//#-code-completion(description, show, "[Int]")
//#-code-completion(identifier, show, isOnOpenSwitch, if, func, for, while, moveForward(), turnLeft(), turnRight(), collectGem(), toggleSwitch(), isBlocked, north, south, east, west, Water, Expert, Character, (, ), (), turnLockUp(), turnLockDown(), isOnClosedSwitch, var, let, ., =, <, >, ==, !=, +=, +, -, isBlocked, move(distance:), Character, Expert, (, ), (), Portal, color:, (color:), Block, Gem, Stair, Switch, Platform, (onLevel:controlledBy:), onLevel:controlledBy:, PlatformLock, jump(), true, false, turnLock(up:numberOfTimes:), world, place(_:facing:at:), place(_:between:and:), removeBlock(atColumn:row:), isBlockedLeft, &&, ||, !, isBlockedRight, Coordinate, column:row:), (column:row:), column:row:, place(_:at:), remove(at:), insert(_:at:), removeItems(at:), append(_:), count, column(_:), row(_:), removeFirst(), removeLast(), randomInt(from:to:), removeAll(), allPossibleCoordinates, danceLikeNoOneIsWatching(), turnUp(), breakItDown(), grumbleGrumble(), argh(), coordinates(inRows:), coordinates(inColumns:intersectingRows:), name:, (name:), byte, blu, hopper, randomBool(), height(at:), movePlatforms(up:numberOfTimes:), height(at:), coordinates(inColumns:), existingGems(at:), existingSwitches(at:), existingCharacters(at:), existingExperts(at:), existingBlocks(at:), existingWater(at:), placeBlocks(at:), placeWater(at:), placeGems(at:), CharacterName, numberOfBlocks(at:), column, row)
//#-editable-code Tap to enter code
let coords = world.coordinates(inColumns: [7, 8, 9], intersectingRows: [7, 8, 9])
for coor in coords {
    for i in 1...3 {
        world.place(Block(), at: coor)
    }
}

world.place(Block(), at: Coordinate(column: 9, row: 9))
world.place(Stair(), at: Coordinate(column: 9, row: 8))
world.place(Gem(), at: Coordinate(column: 9, row: 9))

let portal = Portal(color: #colorLiteral(red: 0.4028071761, green: 0.7315050364, blue: 0.2071235478, alpha: 1))
world.place(portal, atStartColumn: 1, startRow: 1, atEndColumn: 7, endRow: 9)


let hopper = Character(name: .hopper)
world.place(hopper, at: Coordinate(column: 1, row: 3))

hopper.move(distance: 4)
hopper.collectGem()
hopper.turnLeft()
hopper.move(distance: 2)
hopper.turnLeft()
hopper.move(distance: 2)
hopper.collectGem()

//#-end-editable-code
//#-hidden-code
playgroundEpilogue()
//#-end-hidden-code
