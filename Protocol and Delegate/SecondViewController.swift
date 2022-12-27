//
//  SecondViewController.swift
//  Protocol and Delegate
//
//  Created by shoeb on 27/12/22.
//

import UIKit

protocol DataPass{
    func dataPassing(name:String, relationship:String, contact:String)
}

class SecondViewController: UIViewController {

    @IBOutlet weak var nameTXT: UITextField!
    @IBOutlet weak var relationshipTXT: UITextField!
    @IBOutlet weak var contactTXT: UITextField!
    var delegate:DataPass!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func saveBTN(_ sender: Any) {
        delegate.dataPassing(name: nameTXT.text!, relationship: relationshipTXT.text!, contact: contactTXT.text!)
    }
}
