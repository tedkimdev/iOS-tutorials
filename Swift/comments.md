#Comment

###주석 달 때
```swift

/// 'Done' 버튼이 선택된 경우 호출되는 메서드입니다.
///
/// - parameter Hello: first parameter
/// - parameter World: second parameter
/// - return 어쩌고 저쩌고
func funcName(Hello: String, World: String) -> {

}

```

###MARK
```swift
//MARK: 어쩌고 저쩌고
//MARK:- 어쩌고 저쩌고


// MARK: - TaskEditViewControllerDelegate
```

###Delegate: class
```: class```
```swift

protocol TaskEditViewControllerDelegate: class {	//: class 는 참조타입에만 적용된다는 표시
	
	func taskEditViewController(_ taskEditViewController: TaskEditViewController, didAddTask task: Task)
	
}

```


####Ref
http://useyourloaf.com/blog/swift-documentation-quick-guide/
