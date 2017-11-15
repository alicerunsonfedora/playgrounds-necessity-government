//
//  SetUp.swift
//
//  Copyright © 2016,2017 Apple Inc. All rights reserved.
//
import Foundation

/* Globals
If you have any objects or items that need to be publicly accessible in the playground page, declare it here. Declaring it in the function playgroundPrologue() will result in a non-local scope error.
*/
public let world = GridWorld(columns: 10, rows: 10) //Create a world with the size of 10 x 10.
let actor = Actor() //Create the actor to be placed in the scene. Any functions requiring the actor to move or do something should be publicized in the Commands.swift file.

public func playgroundPrologue() {
    Display.coordinateMarkers = false //Determines if the coordinates should be displayed in the world.
    world.isCharacterPickerEnabled = true //Determines if the player should be able to choose the avatar. This should ONLY apply in the first world.
    world.successCriteria = .custom(.ignoreGoals, { return false })
    registerAssessment(world, assessment: assessmentPoint)

    //Create your array literals for coordinates here.

    //Place your world generation here.

    //Place gem and switch insertions here.

    //Finally, place the actor in the scene here.
    world.place(actor, facing: north, at: Coordinate(column: 1, row: 1))

    //// ----
    // Any items added or removed after this call will be animated.
    finalizeWorldBuilding(for: world)
    //// ----
}

public func presentWorld() {
    setUpLiveViewWith(world)
}

// MARK: Epilogue

public func playgroundEpilogue() {
    sendCommands(for: world)
}
