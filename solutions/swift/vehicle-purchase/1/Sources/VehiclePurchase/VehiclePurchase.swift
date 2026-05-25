func canIBuy(vehicle: String, price: Double, monthlyBudget: Double) -> String {
  // The monthly payment is the cars total price divided by
  // the number of months under the five year period.
  let monthlyPayment = price / (12 * 5)
  var message = ""
  
  // If the monthly payment of the vehicle is less than
  // or equal to the monthly budget, return the message
  if (monthlyPayment <= monthlyBudget) {
    message = "Yes! I'm getting a \(vehicle)"
  }
  
  // If the monthly payment of the vehicle is above your
  // monthly budget by up to 10% (inclusive), return the message
  if (monthlyPayment > monthlyBudget) {
    message = "I'll have to be frugal if I want a \(vehicle)"
  }
  
  // If the monthly payment of the vehicle is more than
  // 10% above your monthly budget, return the message
  if (monthlyPayment > monthlyBudget * 1.10) {
    message = "Darn! No \(vehicle) for me"
  }
  
  return message
}

func licenseType(numberOfWheels wheels: Int) -> String {
  switch wheels {
    case 2, 3:
      "You will need a motorcycle license for your vehicle"
      
    case 4, 6:
      "You will need an automobile license for your vehicle"
      
    case 18:
      "You will need a commercial trucking license for your vehicle"
      
    default:
      "We do not issue licenses for those types of vehicles"
  }
}

func calculateResellPrice(originalPrice: Int, yearsOld: Int) -> Int {
  switch yearsOld {
    case 0..<3:
      Int(Double(originalPrice) * 0.80)
      
    case 3..<10:
      Int(Double(originalPrice) * 0.70)
    
    default:
      Int(Double(originalPrice) * 0.50)
  }
}
