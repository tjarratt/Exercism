struct Year {
  private let calendarYear : Int

  init(calendarYear: Int) {
    self.calendarYear = calendarYear
  }

  var isLeapYear: Bool {
    let isMultipleOf100 = calendarYear % 100 == 0
    let isMultipleOf400 = calendarYear % 400 == 0
    if isMultipleOf100 { return isMultipleOf400 }

    return calendarYear % 4 == 0
  }
}
