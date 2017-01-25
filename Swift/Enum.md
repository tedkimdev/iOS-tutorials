#Enum

####1)
```swift
enum Milk: Int {
  case banana = 1
  case choco
  case coffee
  
  func simpleDescription() -> String {
    switch self {
    case .banana:
      return "Banana"
    case .choco:
      return "Choco"
    case .coffee:
      return "Coffee"
  }
}
```

```swift
let coffee = Milk.coffee
print(coffee.simpleDescription())
print(coffee.rawValue)
```

```coffee.simpleDescription()``` return ```Banana```.

```coffee.rawValue``` is ```2```


####2)
```swift
let choco = Milk(rawValue: 2)
print(choco)
```
```choco``` is Optional(Milk.choco).

```Milk(rawValue:)``` is optional. Because the value not defined in enum returns nil.

```Milk(rawValue: 4)``` is ```nil```.


####3) In Swift, raw value in Enum can be other data types
```swift
enum State: String {
  case active = "active"
  case inactive = "inactive"
}
```


####4) Associated Values
```swift
enum NetworkError {
  case invalidParameter(String, String)
  case timeout(String, String)
}

let error: NetworkError = .timout("timeout", "message")

if case .timeout(let field, let message) = error {
  print(field)
  print(message)
}

switch error {
case .timeout(let field, let message):
  print(field)
  print(message)
case .invalidParameter(let field, let message):
  print("invalidparameter")
default:
  break
}  
```


####5) Optional is Enum
```swift
public enum Optional<Wrapped> {
  case none
  case some(Wrapped)
}
```
