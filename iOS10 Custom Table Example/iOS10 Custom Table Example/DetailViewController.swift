//
//  DetailViewController.swift
//  iOS10 Custom Table Example
//
//  Created by aney on 2017. 2. 5..
//  Copyright © 2017년 aney. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var contentData: [String:Any] = [:]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        print(contentData)
        
        titleLabel.text = contentData["title"] as? String
        dateLabel.text = contentData["date"] as? String
        imageView.image = UIImage(named: (contentData["image"] as? String)!)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
