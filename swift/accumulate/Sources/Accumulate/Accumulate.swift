extension Array {
  func accumulate(_ fn: ((Element) -> Element)) -> Array<Element> {
    return self.map(fn)
  }

  func accumulate(_ fn: ((Element) -> Array<Element>)) -> Array<[Element]> {
    return self.map(fn)
  }
}
