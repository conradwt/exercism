struct Year {
  let calendarYear: Int
  
  var isLeapYear: Bool {
    let isDivisibleBy: (Int) -> Bool = { self.calendarYear % $0 == 0 }
    
    // A year is a leap year if it is divisible by 400,
    // OR (divisible by 4 AND NOT divisible by 100).
    return isDivisibleBy(400) || (isDivisibleBy(4) && !isDivisibleBy(100))
  }
}
