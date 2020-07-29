//
//  NewsViewController.swift
//  enviral
//
//  Created by Linda Weng on 7/29/20.
//  Copyright © 2020 Linda Weng. All rights reserved.
//

import UIKit

class NewsViewController: UIViewController {

    var link = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if let webVC = segue.destination as? WebsiteViewController {
            webVC.selectedLink = link
        }
    }

    @IBAction func ennLinkTapped(_ sender: Any) {
        link = "https://www.enn.com/"
    }
    
    @IBAction func nytClimate(_ sender: UIButton) {
        link = "https://www.nytimes.com/section/climate"
    }
    
    @IBAction func bbcButton(_ sender: UIButton) {
        link = "https://www.bbc.com/news/science_and_environment"
    }
    
    @IBAction func nbcButton(_ sender: UIButton) {
        link = "https://www.nbcnews.com/science/environment"
    }
}
