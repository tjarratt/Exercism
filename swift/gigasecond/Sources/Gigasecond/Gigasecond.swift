import Foundation

struct Gigasecond {
  public let description : String

  init?(from dateString: String) {
    guard let date = DateFormatter.iso8601.date(from: dateString) else { return nil }

    let gigadate = Date(timeInterval: 1_000_000_000, since: date)
    description = DateFormatter.iso8601.string(from: gigadate)
  }
}

extension DateFormatter {
  static let iso8601: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss"
    formatter.timeZone = TimeZone(secondsFromGMT: 0)

    return formatter
  }()
}
