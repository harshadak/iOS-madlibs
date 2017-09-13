//
//  WordInputTableViewController.swift
//  madlibs
//
//  Created by Grant Brooks on 9/12/17.
//  Copyright © 2017 Grant Brooks. All rights reserved.
//

import UIKit

class WordInputTableViewController: UITableViewController {

    weak var delegate: WordInputDelegate?
    
    @IBOutlet var textData: [UITextField]!
    
    
    @IBAction func submitButtonPressed(_ sender: UIButton) {
        var newarr = [String]()
        for x in textData{
            newarr.append(x.text!)}
        
        delegate?.addToArray(word: newarr)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
}
