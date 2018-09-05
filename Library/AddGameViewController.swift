//
//  AddGameViewController.swift
//  Library
//
//  Created by Jordan on 9/5/18.
//  Copyright © 2018 Jordan Jones. All rights reserved.
//

import UIKit

protocol AddGameViewControllerDelegate: class {
    
    func addGameViewControllerDidCancel(_ controller: AddGameViewController)
    
    func addGameViewController(_ controller: AddGameViewController, didFinishAdding item: Game)
}

class AddGameViewController: UITableViewController {
    
    @IBOutlet weak var gameName: UITextField!
    @IBOutlet weak var platformName: UITextField!
    weak var delegate: AddGameViewControllerDelegate?


    override func viewDidLoad() {
        super.viewDidLoad()
        
        gameName.becomeFirstResponder()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    
    @IBAction func cancel(_ sender: UIBarButtonItem) {
        delegate?.addGameViewControllerDidCancel(self)
    }
    
    @IBAction func done(_ sender: UIBarButtonItem) {
        let game = Game(name: gameName.text! , platform: platformName.text!)
        delegate?.addGameViewController(self, didFinishAdding: game)
    }
    
    override func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath? {
        return nil
    }
    
}
