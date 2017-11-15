//
//  SetUp.swift
//
//  Copyright © 2016,2017 Apple Inc. All rights reserved.
//
import Foundation

// MARK: Globals
public let world = GridWorld(columns: 10, rows: 10)
let actor = Acotr()

public func playgroundPrologue() {
    Display.coordinateMarkers = true

    world.isCharacterPickerEnabled = true
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
