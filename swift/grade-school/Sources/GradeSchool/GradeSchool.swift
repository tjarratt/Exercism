
class GradeSchool {
  var roster: [Int: [String]] = [:]
  var sortedRoster: [Int: [String]] = [:]

  func addStudent(_ name: String, grade: Int) {
    var classRoster = studentsInGrade(grade)
    classRoster.append(name)

    roster[grade] = classRoster
    sortedRoster[grade] = classRoster.sorted()
  }

  func studentsInGrade(_ grade: Int) -> [String] {
    guard let result = roster[grade] else {
      roster[grade] = []
      return []
    }

    return result
  }
}
