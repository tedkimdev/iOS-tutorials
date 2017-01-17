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
