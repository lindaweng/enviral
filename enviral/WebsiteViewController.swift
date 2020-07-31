//
//  WebsiteViewController.swift
//  enviral
//
//  Created by Linda Weng on 7/29/20.
//  Copyright © 2020 Linda Weng. All rights reserved.
//

import UIKit
import WebKit

class WebsiteViewController: UIViewController, WKNavigationDelegate {

    var selectedLink: String?
    @IBOutlet weak var webView: WKWebView!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        activityIndicator.layer.cornerRadius = 10
        activityIndicator.clipsToBounds = true

        webView.navigationDelegate = self
        if let link = selectedLink {
            let url = URL(string: link)!
            webView.load(URLRequest(url: url))
        }
          

        let refresh = UIBarButtonItem(barButtonSystemItem: .refresh, target: webView, action: #selector(webView.reload))
        toolbarItems = [refresh]
        navigationController?.isToolbarHidden = false
    }
    
    // MARK: - WebView Functions
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        title = webView.title
        activityIndicator.stopAnimating()
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
