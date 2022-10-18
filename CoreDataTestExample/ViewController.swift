//
//  ViewController.swift
//  CoreDataTestExample
//
//  Created by LaxmiPrasad Sahu on 10/10/22.
//

import UIKit

class ViewController: UIViewController {
    
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    func createData() {
        let note = Note(context: context)
        note.body = "Body"
        note.title = "Title"
//        note.img = NS
        
        do{
            try context.save()
        } catch {
            
        }
    }

}

