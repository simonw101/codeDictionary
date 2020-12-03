//
//  DetaiViewController.swift
//  Code Dictionary
//
//  Created by Simon Wilson on 03/12/2020.
//

import UIKit

class DetaiViewController: UIViewController {
    
    @IBOutlet weak var definationtermLabel: UILabel!
    
    var term = ""

    override func viewDidLoad() {
        super.viewDidLoad()

        title = term
        
        if term == "Array" {
            
            definationtermLabel.text = "A collection structure"
            
        } else if term == "Boolean" {
            
            definationtermLabel.text = "A type with only true and false"
            
        } else if term == "Int" {
            
            definationtermLabel.text = "A Whole number"
            
        } else if term == "String" {
            
            definationtermLabel.text = "A type for varying length characters"
            
        } else if term == "Double" {
            
            definationtermLabel.text = "A type for decimals"
            
        }
        
        
    }
    
    
    
}
