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
//public let oldRuler = Character(name: .byte)

public func playgroundPrologue() {
    //TODO: Create new world and place characters accordingly.
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
