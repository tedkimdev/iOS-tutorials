```swift

class ViewController: UIViewController {

    override func awakeFromNib() {
        super.awakeFromNib()
        NotificationCenter.default.addObserver(self, selector: #selector(customFunction), name: .eventName, object: nil)
    }
    
    func customFunction(_ notification: Notification){
        //Notification handler is able to have one parameter.
        //Notification instance has a userInfo.
        guard let myValue = notification.userInfo?["myKey"] as? String else { return }
        
        print("customEvent !!!");
        print(myValue)
        
    }

}
```

```swift

extension Notification.Name {
    static var eventName: Notification.Name { // in extension, there is not stored properties
        return Notification.Name.init("eventName")
    }
    
//    static var customFunction: Notification.Name { return .init("customFunction") }
    
}

class AnotherViewController: UIViewController {
    
    @IBAction func didMoveBackButtonTap() {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func didNotificationButtonTap() {
        NotificationCenter.default.post(name: .eventName, object: self, userInfo: ["myKey": "myValue@@@"])
        
        //NSNotification.Name is an inner struct in extension NSNotification
        //NotificationCenter.default.post(name: .UIApplicationDidEnterBackground, object: nil, userInfo: nil)
    }
}
```
