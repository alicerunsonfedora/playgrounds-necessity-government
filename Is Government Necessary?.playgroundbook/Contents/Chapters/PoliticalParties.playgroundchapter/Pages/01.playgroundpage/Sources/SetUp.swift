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
    
    world.isCharacterPickerEnabled = false
    world.successCriteria = .custom(.ignoreGoals, { return false })
    registerAssessment(world, assessment: assessmentPoint)
	
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
