//
//  ViewController.swift
//  Sample App
//
//  Created by smadhuay on 04/12/18.
//  Copyright © 2018 sagarayi. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate
{
    var imageList: [String] = []
    var nameList: [String] = []
    
    @IBOutlet weak var tableView: UITableView!
    

    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        self.initTableData()
        
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.tableView.tableFooterView = UIView.init(frame: CGRect.zero)
        
    }
    
    func initTableData()
    {
        imageList = ["one","two","three"]
        
        nameList = ["first name", "second name", "third name"]
    }

    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150;
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imageList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:CustomTableViewCell = self.tableView.dequeueReusableCell(withIdentifier: "id") as! CustomTableViewCell
        cell.cellImage.image = UIImage.init(named: imageList[indexPath.row])
        
        cell.cellLabel.text = nameList[indexPath.row];
        
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let detailVC = storyboard.instantiateViewController(withIdentifier: "detail") as! DetailViewController
        
        detailVC.imageName = imageList[indexPath.row]
        detailVC.labelName = nameList[indexPath.row]
        
        self.navigationController?.pushViewController(detailVC, animated: true)
//        present(detailVC, animated: true, completion: nil)
        
    }

}

