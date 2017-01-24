#Tuple

```swift
var coffeeInfo = ("latte", 5100)
coffeeInfo.0
coffeeInfo.1
coffeeInfo.1 = 5500

var namedCoffeeInfo = (coffee: "latte", price: 5100)
namedCoffeeInfo.coffee
namedCoffeeInfo.price
namedCoffeeInfo.price = 5500

```

###Type Annotation
```swift
var coffeeInfo: (String, Int)
var namedCoffeeInfo: (coffee: String, price: Int)

```

```swift
let (coffee, price) = ("latte", 5500)
coffee  // latte
price   // 5500
```

### _
```
let (_, size, price) = ("latte", "small", 5500)
size    // small
price   // 5500
```

### return multi values
```swift
func plusAndMinus(a: Int, b: Int) -> (Int, Int) {
  return (a+b, a-b)
}
```

### used like struct
```swift

```

####Ref
https://devxoul.gitbooks.io/ios-with-swift-in-40-hours/content/Chapter-3/tuples.html
