public let force = "force"
public let evolutionary = "evolutionary"
public let divine = "divine right"
public let contract = "social contract"

public var isThisTheRightGovernmentOrigin = false

/// Creates the scene based upon the government theory type
public func useGovernmentTheory(_ theory: String) {
    switch theory {
    case "force":
        world.place(oldRuler, facing: north, at: Coordinate(column: 4, row: 1))
        world.place(nicolle, facing: east, at: Coordinate(column: 1, row: 1))
        world.place(supervisor, facing: east, at: Coordinate(column: 0, row: 1))
        
        nicolle.move(distance: 2)
        world.removeItems(at: Coordinate(column: 4, row: 1))
        supervisor.move(distance: 2)
        nicolle.moveForward()
        nicolle.turnLeft()
        supervisor.moveForward()
        supervisor.turnRight()
        supervisor.moveForward()
        supervisor.turnLeft()
        supervisor.move(distance: 2)
        supervisor.turnLeft()
        supervisor.moveForward()
        
        world.placeBlocks(at: [Coordinate(column: 5, row: 1)])
        
        for _ in 1 ... 2 {
            world.placeBlocks(at: [Coordinate(column: 4, row: 1)])
        }
        
        world.placeBlocks(at: [Coordinate(column: 3, row: 1)])
        
        world.place(Stair(), facing: east, at: Coordinate(column: 6, row: 1))
        world.place(Stair(), facing: west, at: Coordinate(column: 2, row: 1))
        world.place(Stair(), facing: west, at: Coordinate(column: 3, row: 1))
        
        nicolle.danceLikeNoOneIsWatching()
        supervisor.danceLikeNoOneIsWatching()
        
        isThisTheRightGovernmentOrigin = true
        break
    case "evolutionary":
        world.place(nicolle, at: Coordinate(column: 7, row: 4))
        civilian.turnLeft()
        secondCivilian.turnLeft()
        thirdCivilian.turnLeft()
        fourthCivilian.turnLeft()
        for _ in 1 ... 3 {
            nicolle.turnLeft()
        }
        nicolle.grumbleGrumble()
        secondCivilian.jump()
        thirdCivilian.danceLikeNoOneIsWatching()
        nicolle.danceLikeNoOneIsWatching()
        
        isThisTheRightGovernmentOrigin = false
        break
    case "divine right":
        world.place(nicolle, at: Coordinate(column: 5, row: 2))
        nicolle.moveForward()
        nicolle.turnRight()
        nicolle.moveForward()
        nicolle.turnRight()
        
        for _ in 1 ... 2 {
            world.placeBlocks(at: [Coordinate(column: 4, row: 1)])
        }
        
        nicolle.danceLikeNoOneIsWatching()
        thirdCivilian.danceLikeNoOneIsWatching()
        
        isThisTheRightGovernmentOrigin = false
        break
    case "social contract":
        world.place(nicolle, at: Coordinate(column: 6, row: 3))
        civilian.grumbleGrumble()
        civilian.turnLeft()
        
        secondCivilian.turnLeft()
        secondCivilian.turnLeft()
        secondCivilian.moveForward()
        
        thirdCivilian.turnRight()
        
        fourthCivilian.turnLeft()
        fourthCivilian.moveForward()
        fourthCivilian.turnRight()
        fourthCivilian.move(distance: 2)
        
        fifthCivilian.turnRight()
        fifthCivilian.move(distance: 3)
        fifthCivilian.turnLeft()
        fifthCivilian.moveForward()
        
        nicolle.turnRight()
        nicolle.move(distance: 2)
        nicolle.turnRight()
        nicolle.moveForward()
        
        thirdCivilian.argh()
        secondCivilian.grumbleGrumble()
        nicolle.argh()
        fourthCivilian.grumbleGrumble()
        nicolle.toggleSwitch()
        
        world.removeBlock(atColumn: 4, row: 5)
        world.place(socialContractPresident, at: Coordinate(column: 4, row: 5))
        world.placeGems(at: [Coordinate(column: 4, row: 5)])
        world.place(socialContract, facing: east, at: Coordinate(column: 3, row: 5))
        nicolle.moveForward()
        nicolle.collectGem()
        nicolle.turnLeft()
        socialContract.movePlatforms(up: true, numberOfTimes: 2)
        nicolle.breakItDown()
        secondCivilian.breakItDown()
        
        isThisTheRightGovernmentOrigin = false
        break
    default:
        print("Error, that's not a valid theory")
        civilian.grumbleGrumble()
        secondCivilian.jump()
        thirdCivilian.toggleSwitch()
        
        isThisTheRightGovernmentOrigin = false
        break
    }
}

/// Checks to see if the government origin type matches the government
public func checkIfGovernmentOriginMatches() {
    if (isThisTheRightGovernmentOrigin != true) {
        nicolle.grumbleGrumble()
        nicolle.argh()
    } else {
        nicolle.breakItDown()
    }
}