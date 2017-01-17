#ArrayPractice
```
struct ArrayPractice{
	func printArray(array : Array<Array<Int>>) {
		for innerArray in array {
			for item in innerArray {
				print(item, terminator:" ")
			}
			print()
		}
	}
	
	
	func printArray(array : Array<Array<Bool>>, newChar : Character) {
		for innerArray in array {
			for item in innerArray {
				if item == true {
					print(newChar, terminator:" ")
				} else if item == false {
					print(" ", terminator:" ")	
				}	
			}
			print()
		}
	}
	
	func tempArray(lines:Int) -> Array<Array<Int>> {
		var resultArray = Array<Array<Int>>()
		for _ in 1...lines {
			var tempArray = Array<Int>()
			for xLoop in 1...lines {
				tempArray.append(xLoop)
			}
			resultArray.append(tempArray)
		}
		return resultArray
	}
	
	func fillArray(lines:Int) -> Array<Array<Int>> {
		var resultArray = Array<Array<Int>>()	
		var value = 0
		for i in 1...lines {
			value = lines * (i-1)
			var tempArray = Array<Int>()
			for xLoop in 1...i {
				value += 1
				tempArray.append(value)
			}
			resultArray.append(tempArray)
		}
		return resultArray
	}
	
	func setBoolArray(lines:Int) -> Array<Array<Bool>> {
		var resultArray = Array<Array<Bool>>()
		
		for i in 1...lines {
			var tempArray = Array<Bool>()
			for xLoop in 1...lines {
				if xLoop >= lines+1-i {
					tempArray.append(true)
				} else {
					tempArray.append(false)
				}
			}
			resultArray.append(tempArray)
		}
		return resultArray
	}	
}

var arrayPractice = ArrayPractice()

arrayPractice.printArray(array: arrayPractice.tempArray(lines:5))

print()

arrayPractice.printArray(array: arrayPractice.fillArray(lines:5))

print()

arrayPractice.printArray(array: arrayPractice.setBoolArray(lines:5), newChar: "$")
```
