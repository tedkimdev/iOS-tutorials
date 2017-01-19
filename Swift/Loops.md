#Loops

```
for var i = 0; i < 3; i++ {
    print("Hello")
}
```

```
for _ in 0..<3 {
    print("Hello")
}
```

```
let names = ["Aney", "Yena", "Tom", "Jack"]

for name in names {
    print("Hello, \(name)!")
}
```
```
let names = ["Aney", "Yena", "Tom", "Jack"]

for (index, value) in names.enumerate() {
    print("Item \(index + 1): \(value)")
}
```
