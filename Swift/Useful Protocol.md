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
struct DollarConverter: ExpressibleByIntegerLiteral {
  typealias IntegerLiteralType = Int
  
  let price = 1_164 //2017.01.25
  var dollars: Int
  
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
struct OddEvenFilter: ExpressibleByArrayLiteral {
  
}
```

####Ref
https://developer.apple.com/reference/swift/customstringconvertible
