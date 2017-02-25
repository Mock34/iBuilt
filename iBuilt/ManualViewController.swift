//
//  ManualViewController.swift
//  iBuilt
//
//  Created by Pat Needham on 2/25/17.
//  Copyright © 2017 Apprentice. All rights reserved.
//

import UIKit

class ManualViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var viewPDFButton: UIButton!
    
    var theManual = [String: AnyObject]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = theManual["name"] as? String
        descriptionLabel.text = theManual["description"] as? String
        viewPDFButton.setTitle("View Instructions", for: .normal)
    }
    
    @IBAction func viewPDFClicked(_ sender: Any) {
        let url = URL(string: theManual["pdf_url"] as! String)
        UIApplication.shared.open(url!, options: [:], completionHandler: nil)
    }
}