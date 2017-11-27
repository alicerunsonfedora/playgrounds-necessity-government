public let force = "force"
public let evolutionary = "evolutionary"
public let divine = "divine right"
public let contract = "social contract"

public let unitary = "unitary"
public let federal = "federal"
public let confederate = "confederate"
public let presidential = "presidential"
public let parliamentary = "parliamentary"
public let dictatorship = "dictatorship"
public let anarchy = "anarchy"

public let allGovernmentTypes = [unitary, federal, confederate, presidential, parliamentary, dictatorship, anarchy]

public let allCitizens = [citizen, secondCitizen, thirdCitizen, fourthCitizen, fifthCitizen]

public var isThisTheRightGovernmentOrigin = false

public class Government {

  //Global variables of government specifics
  var governmentType: String
  var defaultGovernmentType = anarchy

  var governmentRuler = nicolle

  var peopleRunsGovernment: Bool
  var peopleRunsGovernmentDefaultValue = false

  var rulerRunsGovernment: Bool
  var rulerRunsGovernmentDefaultValue = true

  public func setRulerAsLeader() {
    rulerRunsGovernment = true
    peopleRunsGovernment = false
    governmentRuler = nicolle
  }

  public func setPeopleAsLeader() {
    rulerRunsGovernment = false
    peopleRunsGovernment = true
    governmentRuler = allCitizens
  }

  public func setGovernmentType(_ newGovernmentType: String) {
    governmentType = newGovernmentType
  }
  init() {
      governmentType = defaultGovernmentType
      peopleRunsGovernment = peopleRunsGovernmentDefaultValue
      rulerRunsGovernment = rulerRunsGovernmentDefaultValue
  }
}
