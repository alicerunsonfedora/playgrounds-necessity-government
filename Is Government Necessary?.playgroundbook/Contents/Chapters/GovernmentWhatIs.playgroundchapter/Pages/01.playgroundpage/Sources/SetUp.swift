//
//  SetUp.swift
//
//  Copyright © 2016,2017 Apple Inc. All rights reserved.
//
import UIKit
import Foundation
import PlaygroundSupport

typealias Character = Actor //Whenever someone wants to create a character, it can be done using "Character" instead of "Actor"

/* Globals
If you have any objects or items that need to be publicly accessible in the playground page, declare it here. Declaring it in the function playgroundPrologue() will result in a non-local scope error.
*/
public let world = GridWorld(columns: 10, rows: 10) //Create a world with the size of 10 x 10.
let actor = Actor() //Create the actor to be placed in the scene. Any functions requiring the actor to move or do something should be publicized in the Commands.swift file. This page does NOT require the actor to be used, so this line should be discarded.
let civilian = Character(name: .byte)
let secondCivilian = Character(name: .byte)
let thirdCivilian = Character(name: .byte)
let fourthCivilian = Character(name: .byte)
let fifthCivilian = Character(name: .byte)

//Only nicolle and supervisor are made public so the playground world can freely access it.
public let nicolle = Character(name: .blu)
public let supervisor = Character(name: .hopper)

public func playgroundPrologue() {
    Display.coordinateMarkers = false //Determines if the coordinates should be displayed in the world.
    world.isCharacterPickerEnabled = true //Determines if the player should be able to choose the avatar. This should ONLY apply in the first world.
    world.successCriteria = .custom(.ignoreGoals, { return false })
    registerAssessment(world, assessment: assessmentPoint)

    //Create your array literals for coordinates here.
    let wholeSide = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]

    //Place your world generation here.
    world.placeBlocks(at: [Coordinate(column: 5, row: 1)])

    for _ in 1 ... 2 {
        world.placeBlocks(at: [Coordinate(column: 4, row: 1)])
    }

    world.placeBlocks(at: [Coordinate(column: 3, row: 1)])

    world.place(Stair(), facing: east, at: Coordinate(column: 6, row: 1))
    world.place(Stair(), facing: west, at: Coordinate(column: 2, row: 1))
    world.place(Stair(), facing: west, at: Coordinate(column: 3, row: 1))

    //Place gem and switch insertions here.

    /* Finally, place the actor in the scene here. There are many characters in this scene, so each of them will be placed in accordingly. Usually, you'll initialize the actor here as so:

    world.place(actor, at: Coordinate(column: 1, row: 1))
    */
    world.place(civilian, at: Coordinate(column: 2, row: 5))
    world.place(secondCivilian, at: Coordinate(column: 3, row: 3))
    world.place(thirdCivilian, at: Coordinate(column: 5, row: 5))
    world.place(fourthCivilian, at: Coordinate(column: 2, row: 8))
    world.place(fifthCivilian, at: Coordinate(column: 7, row: 7))
    world.place(nicolle, facing: east, at: Coordinate(column: 0, row: 1))
    world.place(supervisor, facing: west, at: Coordinate(column: 9, row: 1 ))

    //// ----
    // Any items added or removed after this call will be animated.
    finalizeWorldBuilding(for: world)
    //// ----

    //Any other pieces of code that aren't essential to the world generation itself but is crucial for the world to work should be done in the hidden code section of the Contents.swift file.
}

public func presentWorld() {
    setUpLiveViewWith(world)
}

// MARK: Epilogue

public func playgroundEpilogue() {
    sendCommands(for: world)
}
