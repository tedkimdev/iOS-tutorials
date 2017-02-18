#ViewController Transition
## 3 Examples

##1. ???
#### Task Edit View Controller
```swift
  @IBAction func doneButtonDidTap() {
		if let title = self.titleInput.text, !title.isEmpty {
			let newTask = Task(title: title)
			
			//자기 자신을 띄운 컨트롤러를 가져온다 -> 네비게이션 뷰 컨트롤러
			if let navigationContoller = self.presentingViewController as? UINavigationController {
				//네비게이션 뷰 컨트롤러가 가지고 있는 가장 첫 번째 뷰 컨트롤러를 가져온다.
				if let taskListViewController = navigationContoller.viewControllers.first as? TaskListViewController {
					taskListViewController.tasks.append(newTask)
					taskListViewController.tableView.reloadData()
					self.dismiss(animated: true, completion: nil)
				}
			}
		}
	}
```

##2. Delegate
#### Task Edit View Controller
```swift
class TaskEditViewController: UIViewController {
	
	@IBOutlet var titleInput: UITextField!
	
	weak var delegate: TaskEditViewControllerDelegate? //강한 참조 대신 약한 참조, weak은 참조타입에만 쓸 수 있다.
  
  override func viewDidAppear(_ animated: Bool) {
		super.viewDidAppear(animated)
		self.titleInput.becomeFirstResponder()
	}
  
	@IBAction func doneButtonDidTap() {
		if let title = self.titleInput.text, !title.isEmpty {
	
		self.delegate?.taskEditViewController(self, didAddTask: newTask)
		self.dismiss(animated: true, completion: nil)
	
		}
	}
  //...
}

// MARK: - TaskEditViewControllerDelegate

protocol TaskEditViewControllerDelegate: class {	//: class 는 참조타입에만 적용된다는 표시
	
	func taskEditViewController(_ taskEditViewController: TaskEditViewController, didAddTask task: Task)
	
}
```

#### Task List View Controller
```swift
class TaskListViewController: UIViewController {
	//...
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		if let navigationController = segue.destination as? UINavigationController,
			let taskEditViewController = navigationController.viewControllers.first as? TaskEditViewController {
			
			taskEditViewController.delegate = self
			
		}
	}
	//...
}
```

##3. Closure

