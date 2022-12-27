//
//  ViewController.swift
//  Protocol and Delegate
//
//  Created by shoeb on 27/12/22.
//

import UIKit

class ViewController: UIViewController, DataPass {

    @IBOutlet weak var nameLBL: UILabel!
    @IBOutlet weak var relationshipLBL: UILabel!
    @IBOutlet weak var contactLBL: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func gotoBTN(_ sender: Any) {
        let secondCV = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController")
        as! SecondViewController
        secondCV.delegate = self
        self.navigationController?.pushViewController(secondCV, animated: true)
    }
    func dataPassing(name: String, relationship: String, contact: String) {
        nameLBL.text = name
        relationshipLBL.text = relationship
        contactLBL.text = contact
    }
}

