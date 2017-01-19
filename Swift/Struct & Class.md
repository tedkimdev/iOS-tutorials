#Struct & Class
```swift

enum MilkType {
	case Blueberry
	case Banana
	case EnergeChoco
	case unknown
}

struct Milk {
	let brand : String
	let amount : Int
	let title : String
	let type : MilkType
}

let berryMilk = Milk(brand: "seoul", amount: 1, title: "블루베리우유", type:.Blueberry)

print(berryMilk)
```
```swift
class Milk {
	var brand : String
	var amount : Int
	var title : String
	var type : MilkType
	
	init() {
		brand = ""
		amount = 0
		title = ""
		type = .unknown
	}
}

class ChocoMilk : Milk {
	override init() {
		super.init()
		type = .EnergeChoco
	}
}

class BananaMilk : Milk {
	override init() {
		super.init()
		type = .Banana
	}
}

let bananaMilk = BananaMilk()
let chocoMilk = ChocoMilk()

print(bananaMilk.type)

print(chocoMilk)
```

##Class

```Swift
class Milk {
	// Custom initializer
	init(brand: String, name: String) {
		self.brand = brand
		self.name = name

		Milk.numberOfMilk++
	}

	//*** Properties ***

	// 1. Stored Property
	var brand: String
	var name: String

	// 2. Computed Property
	var fullName: String {
		get {
			return "\(brand) \(name)"
		}
	}

	// 3. Type Property
	static var numberOfMilk = 0

	//*** Methods ***

	// 1. Instance Method
	func print() {
		print ("This is \(self.name)")
	}
	
	// 2. Type Method
	class func printNumberOfMilk() {
		print("Number of milk = \(Milk.numberOfMilk)")
	}
}


// *** Using the Milk Class ***

let bananaMilk = Milk(brand: "Seoul", name: "Banana Milk")

bananaMilk.print()

print("This milk is \(bananaMilk.name)")
print("This milk is \(bananaMilk.fullName)")

Milk.printNumberOfMilk()
```
