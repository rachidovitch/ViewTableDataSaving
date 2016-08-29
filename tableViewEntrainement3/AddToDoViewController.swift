//
//  AddToDoViewController.swift
//  tableViewEntrainement3
//
//  Created by mac on 29/08/2016.
//  Copyright © 2016 Rachidovitch. All rights reserved.
//

import UIKit

protocol AddtoDoViewControllerDelegate {
    
    func addNew(todo: todoItems)
    
}

class AddToDoViewController: UIViewController {
    
    var delegate: AddtoDoViewControllerDelegate!
    
    
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var phoneNumberTextField: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    
    @IBAction func saveButtonTapped(sender: UIBarButtonItem) {
        
        let txt1 = nameTextField.text
        let txt2 = phoneNumberTextField.text
        
        let todo = todoItems(name: (txt1)!, note: (txt2)!)
        
        delegate.addNew(todo)
     
    }

}
