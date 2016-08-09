//
//  ViewController.swift
//  Airnotes
//
//  Created by Philipp Eibl on 8/8/16.
//  Copyright © 2016 Philipp Eibl. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextViewDelegate {
    @IBOutlet var textView: UITextView!
    
    let iCloudKeyStore: NSUbiquitousKeyValueStore? = NSUbiquitousKeyValueStore()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        textView.becomeFirstResponder()
        textView.layer.cornerRadius = 5
        textView.textContainerInset = UIEdgeInsetsMake(50, 5, 200, 5)
        textView.text = Data.data
        textView.delegate = self
        NSNotificationCenter.defaultCenter().addObserver(self, selector:"keyboardWillAppear:", name: UIKeyboardWillShowNotification, object: nil)
        NSNotificationCenter.defaultCenter().addObserver(self, selector:"keyboardWillAppear:", name: UIKeyboardWillHideNotification, object: nil)
        
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        textView.endEditing(true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textViewDidChange(textView: UITextView) {
        Data.data = textView.text
    }
    
    func keyboardWillAppear(notification: NSNotification){
        // Do something here
        textView.textContainerInset = UIEdgeInsetsMake(50, 5, 200, 5)
    }
    
    func keyboardWillDisppear(notification: NSNotification){
        // Do something here
        textView.textContainerInset = UIEdgeInsetsMake(50, 5, 20, 5)
    }
}

