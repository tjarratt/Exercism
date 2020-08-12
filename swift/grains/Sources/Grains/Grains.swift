import Foundation

struct Grains {

  static let total: UInt = 18_446_744_073_709_551_615

  static func square(_ number: Int) throws -> UInt {
    guard number >= 1 else {
      throw GrainsError.inputTooLow(errorMessageFor(input: number))
    }
    guard number <= 64 else {
      throw GrainsError.inputTooHigh(errorMessageFor(input: number))
    }

    let firstValue = UInt(1)
    return (1..<number).reduce(firstValue) { acc, _ in acc * 2 }
  }

  enum GrainsError: Error {
    case inputTooLow(String)
    case inputTooHigh(String)
  }

  private static func errorMessageFor(input: Int) -> String {
    return "Input[\(input)] invalid. Input should be between 1 and 64 (inclusive)"
  }
}
