//
//  Expert.swift
//
//  Copyright © 2016,2017 Apple Inc. All rights reserved.
//

import SceneKit

/**
 The type representing the expert; capable of turning locks.
 - localizationKey: Expert
 */
public final class Expert: Actor {
    
    public convenience init() {
        let node = WorldNodeIdentifier.actor.makeNode()
        node.name! += "-" + ActorType.expert.rawValue
        self.init(node: node)!
    }
    
    public required init?(node: SCNNode) {
        super.init(node: node)
    }
    
    @available(*, unavailable, message:"The Expert can't jump 😕. Only the Character type can use the `jump()` method.")
    @discardableResult
    public override func jump() -> Coordinate {
        return coordinate
    }
    
    public override func loadGeometry() {
        guard scnNode.childNodes.isEmpty else { return }
        scnNode.addChildNode(ActorType.expert.createNode())
    }
}

extension Expert {
    
    /**
    Method that turns a lock up, causing all linked platforms to rise by the height of one block.
     - localizationKey: Expert.turnLockUp()
     */
    public func turnLockUp() {
        turnLock(up: true)
    }
    
    /**
     Method that turns a lock down, causing all linked platforms to fall by the height of one block.
     - localizationKey: Expert.turnLockDown()
     */
    public func turnLockDown() {
        turnLock(up: false)
    }
    
    /**
    Method that turns a lock up or down a certain number of times.

     Example usage:
     ````
     turnLock(up: false, numberOfTimes: 3)
     // Turns the lock down three times.
     
     turnLock(up: true, numberOfTimes: 4)
     // Turns the lock up four times.
     ````
     
     - parameters:
        - up: Takes a Boolean specifying whether the lock should be turned up (`true`) or down (`false`).
        - numberOfTimes: Takes an Int specifying the number of times to turn the lock.
     - localizationKey: Expert.turnLock(up:numberOfTimes:)
     */
    public func turnLock(up: Bool, numberOfTimes: Int) {
        for _ in 1...numberOfTimes {
            turnLock(up: up)
        }
    }
    
    func turnLock(up: Bool) {
        let lock = world?.existingItem(ofType: PlatformLock.self, at: nextCoordinateInCurrentDirection)
        
        if let lock = lock, lock.height == height {
            let controller = Controller(identifier: lock.id, kind: .movePlatforms, state: up)

            add(action: .control(controller))
        }
        else {
            add(action: .fail(.missingLock))
        }
    }
}
