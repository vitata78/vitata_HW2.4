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
