#Type Casting

1. as
 - Use this to upcast from a child class to its parent or doing something like ```1 as Float```.
 
```swift
  let myView = myTableView as UIView
```

2. as?
 - This is a cautious cast.
 - If the cast fails, it will return ```nil```.
 - Use this to downcast from a parent type to a child type.
 
 ```swift
 if let myTableView = myView as? UITableView {
 
    print("succeeded")
    
 } else {
 
    print("downcast failed")
    
 }
 ```

3. as!
 - If the cast fails, this will crash app.
 
```swift
let myTableView = myView as! UITableView
```
