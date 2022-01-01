//
//  ViewController.swift
//  CoreDataApp2
//
//  Created by Eugene on 20.12.2021.
//

import UIKit
import CoreData

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    var dataStoreManager = DataStoreManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let user = dataStoreManager.obtainMainUser()
        
        nameLabel.text = user.name! + "" + (user.company?.name ?? "")
        ageLabel.text = String(user.age)
        
        nameLabel.sizeToFit()
        ageLabel.sizeToFit()
        
    }
    

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        //закрываем клавиатуру при нажатии на return
        textField.resignFirstResponder()
        return true
    }
    
    func updateMainUser(whith name: String){
        //чтобы достать модель из контекста необходимо использовать NSFetchRequest
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "User")
        
        
    }

}

