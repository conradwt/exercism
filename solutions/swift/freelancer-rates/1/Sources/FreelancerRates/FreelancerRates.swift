let hoursPerDay: Double = 8;
let daysPerMonth: Double = 22;

func dailyRateFrom(hourlyRate: Int) -> Double {
  return Double(hourlyRate) * hoursPerDay
}

func monthlyRateFrom(hourlyRate: Int, withDiscount discount: Double) -> Double {
  let monthlyFlat = dailyRateFrom(hourlyRate: hourlyRate) * daysPerMonth
  let discounted = monthlyFlat * (1 - discount / 100)
  
  return discounted.rounded()
}

func workdaysIn(budget: Double, hourlyRate: Int, withDiscount discount: Double) -> Double {
  let discountedRate = Double(hourlyRate) * (1.0 - (discount / 100.0))
  let hours = budget / discountedRate
  let days = hours / hoursPerDay
  
  return days.rounded(.down)
}
