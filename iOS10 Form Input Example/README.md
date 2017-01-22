#iOS10 Form Input Example

Static Forms

- static cells - no need to write cellForRowAtIndexPath(_:)

- segue represents a transition from one scene to another.

###Create Unwind segue
Add the unwind methods at the end of a class.


```swift
//in ViewController.swift

@IBAction func didSavePreferences(segue: UIStoryboardSegue){
    if let prefsVC = segue.source as? PreferencesTableTableViewController {
        self.preferences = prefsVC.preferencesFromTableData()
        
        print("Save button is tapped.")
        updateLabels()
    }
}

@IBAction func didCancelPreferences(segue:UIStoryboardSegue) {
    print("Cancel button is tapped.")
}
```

###in TableView Scene

Hook up the Cancel and Save buttons to their respective action methods.
Ctrl-drag form the bar button to the exit object.


###didSet in Swift
After properties values are changed, you can do something what you want to do

```swift
var preferences: Preferences = Preferences() {
  didSet {
    updateLabels()
  }
}
```

##Ref
https://medium.com/ios-development-with-swift/%ED%94%84%EB%A1%9C%ED%8D%BC%ED%8B%B0-get-set-didset-willset-in-ios-a8f2d4da5514#.2x38xhegh
