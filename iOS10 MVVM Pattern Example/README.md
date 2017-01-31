#MVVM Pattern

```Model``` - ```View``` - ```ViewModel```


```View``` <-> ```Controller``` <-> ```ViewModel``` <-> ```Model```


###Person Class
```swift
class Person {
    var firstName: String?
    var lastName: String?
    var birthDate: Date?
    
    init(firstName: String, lastName: String, salutation: String, birthDate: Date) {
        self.firstName = firstName
        self.lastName = lastName
        self.birthDate = birthDate
    }
}
```

### In ViewController

- MVC
```swift
override func viewDidLoad() {
        super.viewDidLoad()
        
        //This is MVC Pattern
        nameLabel.text = "\((person?.firstName)!) \((person?.lastName)!)"
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE MMMM d, yyyy"
        birthDateLabel.text = dateFormatter.string(from: (person?.birthDate)!)
    }
```
- The presentation logic is in a view controller.

###Person View Model Class
```swift
class PersonViewModel {
    private var person: Person
    
    var firstNameText: String? {
        return person.firstName
    }
    
    var lastNameText: String? {
        return person.lastName
    }
    
    var fullNameText: String? {
        return "\(person.firstName!) \(person.lastName!)"
    }
    
    var birthDateText: String? {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE MMMM d, yyyy"
        return dateFormatter.string(from: person.birthDate!)
    }
    
    init(person: Person) {
        self.person = person
    }
}
```
- The presentation logic is in a view model.

### In View controller
- MVVM
```swift
override func viewDidLoad() {
        super.viewDidLoad()
        
        //This is MVVM Pattern
        nameLabel.text = personViewModel?.fullNameText
        birthDateLabel.text = personViewModel?.birthDateText
    }
```
- ```viewDidLoad``` method is now very lightweight.


###Ref
http://candycode.io/a-practical-mvvm-example-in-swift-part-1/

http://www.objc.io/issues/13-architecture/mvvm/
