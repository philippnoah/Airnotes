//
//  ViewController.swift
//  Airnotes
//
//  Created by Philipp Eibl on 8/8/16.
//  Copyright © 2016 Philipp Eibl. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var textView: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        textView.becomeFirstResponder()
        textView.layer.cornerRadius = 5
        textView.textContainerInset = UIEdgeInsetsMake(10, 5, 10, 5);
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

