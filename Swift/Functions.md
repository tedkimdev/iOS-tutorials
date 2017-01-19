#Functions

```swift
func sayHello(to person: String, and anotherPerson: String) -> String {
    return "Hello \(person) and \(anotherPerson)!"
}
```
- ```to``` + ```and``` are the external parameter names
- ```person``` + ```anotherPerson``` are the local parameter names


```swift
let greeting: String = sayHello(to: "Bill", and: "Ted")
```
- Calls this function using the "external" parameter names
