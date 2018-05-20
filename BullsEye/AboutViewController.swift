//
//  AboutViewController.swift
//  BullsEye
//
//  Created by IJke Botman on 14/10/2017.
//  Copyright © 2017 Overscope. All rights reserved.
//

import UIKit
import WebKit

class AboutViewController: UIViewController {
    
    @IBOutlet weak var webView: WKWebView!
    
    //Load the HTML file into the webView.
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let url = Bundle.main.url(forResource: "BullsEye", withExtension: "html") {
            if let htmlData = try? Data(contentsOf: url) {
                let baseURL = URL(fileURLWithPath: Bundle.main.bundlePath)
                webView.load(htmlData, mimeType: "text/html", characterEncodingName: "UTF-8", baseURL: baseURL)
            }
        }
    }
    
    //Close the AboutViewController
    @IBAction func close() {
        dismiss(animated: true, completion: nil)
    }
}
