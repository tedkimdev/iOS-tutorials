#Useful Protocol in Swift

###CustomStringConvertible
 - ```CustomStringConvertible``` protocol can provide their own representation to be used when converting an instance to a string

####usage example
```swift
struct Person: CustomStringConvertible {
  var name: String
  var description: String {
    return "\(self.name)"
  }
}
```

```description``` is a ```CustomStringConvertible``` Protocol property.

When you use ```CustomStringConvertible```, you have to implement ```var description: String { get }```.


###ExpressibleBy...Literal
- ExpressibleByIntegerLiteral, ExpressibleByStringLiteral, ExpressibleByArrayLiteral, ExpressibleByDictionaryLiteral, ...

####usage example
 - ExpressibleByIntegerLiteral
```swift
struct DollarConverter {
  let price = 1_164 //2017.01.25
  var dollars: Int
}

extension DollarConverter: ExpressibleByIntegerLiteral {
  typealias IntegerLiteralType = Int
	
  init(integerLiteral value: IntegerLiteralType) {
    self.dollars = value * self.price
  }
}

let dollarConverter: DollarConverter = 1000
dollarConverter.dollars // 1164000
```
```1164``` is equal to ```1_164```.

```DollarConverter``` conformed to ```ExpressibleByIntegerLiteral``` can be declared like ```= 1000```

 - ExpressibleByArrayLiteral
```swift
struct OddEvenFilter {
    var odds: [Int] = []
    var evens: [Int] = []
}

extension OddEvenFilter : ExpressibleByArrayLiteral {
    typealias Element = Int
    init(arrayLiteral elements: Int...) {
        for element in elements {
            if element % 2 == 0 {
                evens.append(element)
            } else {
                odds.append(element)
            }
        }
    }
}

let oddEvenFilter: OddEvenFilter = [1, 3, 5, 2, 7, 4]
oddEvenFilter.odds  // [1, 3, 5, 7]
oddEvenFilter.evens // [2, 4]
```

####Ref
https://developer.apple.com/reference/swift/customstringconvertible
https://developer.apple.com/reference/swift/expressiblebyarrayliteral
https://fossies.org/diffs/swift-swift/2.2.1-RELEASE_vs_3.0-RELEASE/test/Constraints/array_literal.swift-diff.html
