//
//  FactsViewController.swift
//  enviral
//
//  Created by Linda Weng on 7/30/20.
//  Copyright © 2020 Linda Weng. All rights reserved.
//

import UIKit

class FactsViewController: UIViewController {

    @IBOutlet weak var fact1Label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        fact1Label.text = "This is a very important fact about global warming.\nThis is a very important fact about global warming.\nThis is a very important fact about global warming.\nThis is a very important fact about global warming.\nThis is a very important fact about global warming.\nThis is a very important fact about global warming.\nThis is a very important fact about global warming.\nThis is a very important fact about global warming."
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
