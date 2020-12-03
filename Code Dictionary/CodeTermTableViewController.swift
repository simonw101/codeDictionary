//
//  CodeTermTableViewController.swift
//  Code Dictionary
//
//  Created by Simon Wilson on 03/12/2020.
//

import UIKit

class CodeTermTableViewController: UITableViewController {
    
    var codeTerms = ["Array", "Boolean", "Int", "String", "Double"]

    override func viewDidLoad() {
        super.viewDidLoad()

       
    }


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return codeTerms.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()

        cell.textLabel?.text = codeTerms[indexPath.row]
        

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let selectedTerm = codeTerms[indexPath.row]
        
        performSegue(withIdentifier: "goToDefination", sender: selectedTerm)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let termVC = segue.destination as! DetaiViewController
        
        let selectedTerm = sender as! String
        
        termVC.term = selectedTerm
        
    }
    
    

}
