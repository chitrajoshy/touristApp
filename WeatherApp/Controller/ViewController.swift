//
//  ViewController.swift
//  WeatherApp
//
//  Created by Chitra Hari on 28/08/19.
//  Copyright © 2019 Chitra Hari. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    var arrayIndex = 0
    var i : Int = -1
    var imageArray = ["calicut beach","janakikaadu","planatorium","thusharagiri"]
    var newObj = data()
       
    
    
    @IBOutlet weak var imgPlaces: UIImageView!
    
    @IBOutlet weak var txtPlaces: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        i = i+1
        self.imgPlaces.image = UIImage(named: imageArray[i])
        self.txtPlaces.text = imageArray[i]
    }
    
    @IBAction func btnnxt(_ sender: UIButton) {
        if i <= 2{
             print(i)
             i = i + 1
            imgPlaces.image = UIImage(named: imageArray[i])
            txtPlaces.text = imageArray[i]
           
            arrayIndex = i
           
         }
            else {
            i=0
            imgPlaces.image = UIImage(named: imageArray[i])
            txtPlaces.text = imageArray[i]
            arrayIndex = i
        }
//        for i in (0...3){
//            imgPlaces.image = UIImage(named: imageArray[i])
//            txtPlaces.text = imageArray[i]
//        }
        
    }
    @IBAction func btnNext(_ sender: UIButton) {
        performSegue(withIdentifier: "next", sender: self)
   
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "next"){
            let obj = segue.destination as! description_ViewController
            obj.datasave = arrayIndex
            print(arrayIndex)
          
        }
        
    }
//    func nxt () {
//
//    }
}

