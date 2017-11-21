//
//  SetUp.swift
//
//  Copyright © 2016,2017 Apple Inc. All rights reserved.
//
import UIKit
import Foundation
import PlaygroundSupport

public typealias Character = Actor

public let world = GridWorld(columns: 10, rows: 10)

public let civilian = Character(name: .byte)
public let secondCivilian = Character(name: .byte)
public let thirdCivilian = Character(name: .byte)
public let fourthCivilian = Character(name: .byte)
public let fifthCivilian = Character(name: .byte)
public let nicolle = Character(name: .blu)
public let supervisor = Character(name: .hopper)
public let oldRuler = Character(name: .byte)

public var socialContract = PlatformLock(color: #colorLiteral(red: 0.239215686917305, green: 0.674509823322296, blue: 0.968627452850342, alpha: 1.0))
public var socialContractPresident = Platform(onLevel: 2, controlledBy: socialContract)

public func playgroundPrologue() {
    Display.coordinateMarkers = false
    world.isCharacterPickerEnabled = false
    world.successCriteria = .custom(.ignoreGoals, { return false })
    registerAssessment(world, assessment: assessmentPoint)

    let wholeSide = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
    world.place(civilian, at: Coordinate(column: 2, row: 5))
    world.place(secondCivilian, at: Coordinate(column: 3, row: 3))
    world.place(thirdCivilian, at: Coordinate(column: 5, row: 5))
    world.place(fourthCivilian, at: Coordinate(column: 2, row: 8))
    world.place(fifthCivilian, at: Coordinate(column: 7, row: 7))

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
