//
//  ViewController.swift
//  madlibs
//
//  Created by Grant Brooks on 9/12/17.
//  Copyright © 2017 Grant Brooks. All rights reserved.
//

import UIKit

class ViewController: UIViewController, WordInputDelegate {

    var sentenceWords: [String]?
    var sentences: [String]?

    
    @IBOutlet weak var sentenceLabel: UILabel!
    
    
    func addToArray(word: [String]) {
        sentenceWords = word
        print(sentenceWords!)
        sentences = ["We are having a perfectly \(sentenceWords![0]) time now. Later we will \(sentenceWords![1]) and \(sentenceWords![2]) in the \(sentenceWords![3])", "We had a \(sentenceWords![0]) day. Next we will \(sentenceWords![1]) and \(sentenceWords![2]) to the \(sentenceWords![3])"]
        sentenceLabel.text = String(describing: sentences![Int(arc4random_uniform(UInt32(sentences!.count)))])
        dismiss(animated: true, completion: nil)

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let x = segue.destination as! WordInputTableViewController
        x.delegate = self
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        sentenceLabel.text = "..."
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

