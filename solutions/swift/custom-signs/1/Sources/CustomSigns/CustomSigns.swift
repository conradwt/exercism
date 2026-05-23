let birthday = "Birthday"

let valentine = "Valentine's Day"

let anniversary = "Anniversary"

let space: Character = " "

let exclamation: Character = "!"

func buildSign(for occasion: String, name: String) -> String {
  let result = "Happy\(space)\(occasion)\(space)\(name)\(exclamation)"
  return result
}

func graduationFor(name: String, year: Int) -> String {
  let result = "Congratulations\(space)\(name)\(exclamation)\nClass\(space)of\(space)\(year)"
  return result
}

func costOf(sign: String) -> Int {
  let basePrice = 20
  let characterPrice = sign.count * 2
  let totalCost = basePrice + characterPrice
 
  return totalCost
}
