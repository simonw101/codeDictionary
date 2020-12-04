//
//  DetaiViewController.swift
//  Code Dictionary
//
//  Created by Simon Wilson on 03/12/2020.
//

import UIKit

class DetaiViewController: UIViewController {
    
    @IBOutlet weak var definationtermLabel: UILabel!
    
    var term = Term()

    override func viewDidLoad() {
        super.viewDidLoad()

        title = term.name
        definationtermLabel.text = term.defination
        
        if term.isType {
            definationtermLabel.textColor = .cyan
        }
        
    }
    
    
}
