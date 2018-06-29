//
//  ViewController.swift
//  GithubSearch
//
//  Created by Abd-ElRahman Shalaby on 6/28/18.
//  Copyright © 2018 Shalaby Apps. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet var query: UITextField!
    
    @IBOutlet var WV: UIWebView!
    @IBAction func search(_ sender: UIButton) {
        var q = query.text;
        WV.scalesPageToFit = true;
        WV.loadRequest(URLRequest(url: URL(string:"https://github.com/search?q="+q!)!));
    }
    

}

