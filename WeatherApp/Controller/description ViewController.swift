//
//  description ViewController.swift
//  WeatherApp
//
//  Created by Chitra Hari on 28/08/19.
//  Copyright © 2019 Chitra Hari. All rights reserved.
//

import UIKit

class description_ViewController: UIViewController {
    var datasave = 0
    var i : Int = 0
    
    var obj = data()
    
   
    @IBOutlet weak var lblDescript: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblDescript.text = obj.imageArrayData[datasave]
      
  
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
