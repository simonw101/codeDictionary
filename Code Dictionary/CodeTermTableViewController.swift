//
//  CodeTermTableViewController.swift
//  Code Dictionary
//
//  Created by Simon Wilson on 03/12/2020.
//

import UIKit

class CodeTermTableViewController: UITableViewController {
    
    //Array", "Boolean", "Int", "String", "Double"
    
    var codeTerms : [Term] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let term1 = Term()
        term1.name = "Boolean"
        term1.defination = "A true or false situation"
        term1.isType = true
        codeTerms.append(term1)
        
        let term2 = Term()
        term1.name = "Int"
        term1.defination = "A Whole number"
        term1.isType = true
        codeTerms.append(term2)
        
        let term3 = Term()
        term1.name = "if statement"
        term1.defination = "code which goes one way or another"
        term1.isType = false
        codeTerms.append(term3)
        
        let term4 = Term()
        term1.name = "String"
        term1.defination = "A String"
        term1.isType = true
        codeTerms.append(term4)
        
        let term5 = Term()
        term1.name = "Array"
        term1.defination = "A list of other types"
        term1.isType = true
        codeTerms.append(term5)

       
    }


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return codeTerms.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()

        if codeTerms[indexPath.row].isType {
            
            cell.textLabel?.text = codeTerms[indexPath.row].name + " - Type"
            
        } else {
            
            cell.textLabel?.text = codeTerms[indexPath.row].name
        
        }
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let selectedTerm = codeTerms[indexPath.row]
        
        performSegue(withIdentifier: "goToDefination", sender: selectedTerm)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        
        
        if let termVC = segue.destination as? DetaiViewController {
        
            if let selectedTerm = sender as? Term {
            
                termVC.term = selectedTerm
                
            }
            
        }
        
    }
    
    

}
