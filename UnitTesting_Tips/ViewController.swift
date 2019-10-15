//
//  ViewController.swift
//  UnitTesting_Tips
//
//  Created by Abuzeid Ibrahim on 12/21/18.
//  Copyright © 2018 abuzeid. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var shapes = [String](){
        didSet{
            tableView.reloadData()
        }
    }
    
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func addAction(_ sender: UIBarButtonItem) {
        shapes.append(textField.text!)
        clear()
    }
    
    func clear(){
        textField.text = nil
    }
    @IBAction func resetAction(_ sender: UIBarButtonItem) {
        shapes.removeAll()
        clear()
    }
    @IBAction func saveAction(_ sender: UIBarButtonItem) {
        clear()
    }
}


extension ViewController:UITableViewDataSource{
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "shapeCell") as! ItemTableViewCell
        cell.nameLbl.text = shapes[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return shapes.count
    }
}
