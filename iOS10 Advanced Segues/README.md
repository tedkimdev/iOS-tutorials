## Table View

- Viewcontroller should adopt the UITableViewDataSource, UITableViewDelegate

### Conforming to protocol ```UITableViewDataSource```

```swift
public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {        
  return 4
}
```

```swift
public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
  let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "Cell")
  cell.textLabel?.text = "Row \(indexPath.row)"
        
  return cell
}
```


### when you select table view cell, 
```swift
func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
  activeRow = indexPath.row
  performSegue(withIdentifier: "toSecondViewController", sender: nil)        
}
```

## Segue
```swift
override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     
        if segue.identifier == "toSecondViewController" {
            
            let secondViewController = segue.destination as! SecondViewController
            
            secondViewController.activeRow = activeRow
            
        }
    }
```
