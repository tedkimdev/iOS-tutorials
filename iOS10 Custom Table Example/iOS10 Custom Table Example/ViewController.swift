//
//  ViewController.swift
//  iOS10 Custom Table Example
//
//  Created by aney on 2017. 2. 5..
//  Copyright © 2017년 aney. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var jsonArray : JsonArray = JsonArray()
    let jsonData = ("[{\"title\":\"green\",\"image\":\"01.jpg\",\"date\":\"20150116\"}," +
                        "{\"title\":\"roses\",\"image\":\"02.jpg\",\"date\":\"20160505\"}," +
                        "{\"title\":\"leaves\",\"image\":\"03.jpg\",\"date\":\"20141212\"}," +
                        "{\"title\":\"stairs\",\"image\":\"04.jpg\",\"date\":\"20140301\"}," +
                        "{\"title\":\"bricks\",\"image\":\"05.jpg\",\"date\":\"20150101\"}," +
                        "{\"title\":\"sea\",\"image\":\"06.jpg\",\"date\":\"20150707\"}," +
                        "{\"title\":\"bugs\",\"image\":\"07.jpg\",\"date\":\"20140815\"}," +
                        "{\"title\":\"trees\",\"image\":\"08.jpg\",\"date\":\"20161231\"}," +
                        "{\"title\":\"gray\",\"image\":\"09.jpg\",\"date\":\"20150102\"}," +
                        "{\"title\":\"butterfly\",\"image\":\"10.jpg\",\"date\":\"20141225\"}]").data(using: .utf8)
    
    var contentData: [String:Any] = [:]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        jsonArray.makeJsonArray(jsonData: jsonData!)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

//MARK:UITableViewDataSource
extension ViewController: UITableViewDataSource {
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return jsonArray.array.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CustomTableViewCell
        let content: [String:Any] = jsonArray.array[indexPath.row]
        
        cell.titleLabel?.text = content["title"] as! String?
        cell.titleLabel.textColor = UIColor.white
        
        cell.detailLabel?.text = content["date"] as! String?
        cell.detailLabel.textColor = UIColor.cyan
        
        cell.backgroundImageView?.image = UIImage(named: content["image"] as! String)
        cell.backgroundImageView.contentMode = UIViewContentMode.center
        
        return cell
    }

    /*
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return " header "
    }
     */
}

//MARK:UITableViewDelegate
extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("cell selected")
        contentData = jsonArray.array[indexPath.row]
        performSegue(withIdentifier: "detailSegue", sender: nil)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
}

//MARK:Segue
extension ViewController {
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "detailSegue" {
            let destinationVC = segue.destination as! DetailViewController
            destinationVC.contentData = self.contentData
        }
    }
}
