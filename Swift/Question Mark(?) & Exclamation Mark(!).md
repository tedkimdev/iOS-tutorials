#Question Mark

###defining a type as optional
```swift
var name: String? = "aney"
```
- name can either have a value or be nil

###optional chaining
```swift
let x = myInstance?.count
```
- x = ```nil``` or ```myInstance.count```
- if the chain is nil, it returns nil

###type casting
https://github.com/00aney/iOS-tutorials/blob/master/Swift/Type%20Casting.md

###nil coalescing operator(```??```)
```swift
let nickName: String? = nil  // nickName is an optional that might be nil
let fullName: String = "Aney Kim"

// prints the nickName if it is NOT nil, otherwise prints fullName
let informalGreeting = "Hi \(nickName ?? fullName)"   // Prints "Hi Aney Kim"
```

- It is used to provide a default value


#Exclamation Mark (!)
###unwrapping an optional
```swift
let name: String? = "Aney Kim"

let forcedString: String = name!
```
 - When ```name``` is ```nil```, ```forcedString``` will crash app.
 
###downcasting
```swift
let myTableView = myView as! UITableView
```

###implicitly unwrapped optionals
```swift
let assumedString: String! = "An implicitly unwrapped optional string."

let implicitString: String = assumedString
```
- It is no need for an exclamation mark.
- ```ssumedString``` is an implicitly unwrapped optional
