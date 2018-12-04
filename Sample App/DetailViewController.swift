//
//  DetailViewController.swift
//  Sample App
//
//  Created by smadhuay on 04/12/18.
//  Copyright © 2018 sagarayi. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    var imageName:String = ""
    var labelName:String = ""
    
    @IBOutlet weak var detailImage: UIImageView!
    @IBOutlet weak var detailName: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        detailImage.image = UIImage.init(named: self.imageName)
        detailName.text = self.labelName
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
