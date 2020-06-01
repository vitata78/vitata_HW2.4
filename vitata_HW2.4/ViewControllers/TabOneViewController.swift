//
//  TabOneViewController.swift
//  vitata_HW2.4
//
//  Created by Svetlana Tolstova on 6/1/20.
//  Copyright © 2020 APNET HQ LLC. All rights reserved.
//

import UIKit

class TabOneViewController: UIViewController {

    @IBOutlet weak var welcomeLabel: UILabel!
    
    var welcomeText: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = welcomeText
    }
    

    @IBAction func logOut() {
        performSegue(withIdentifier: "unwindSegue", sender: nil)
    }
    
}
