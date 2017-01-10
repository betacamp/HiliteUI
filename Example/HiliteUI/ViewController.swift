//
//  ViewController.swift
//  HiliteUI
//
//  Created by Preston Pope on 01/07/2017.
//  Copyright (c) 2017 Preston Pope. All rights reserved.
//

import UIKit
import HiliteUI

class ViewController: BaseViewController {

    var button: Button!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        view.backgroundColor = UIColor.lightGray
        
        button = Button.greenButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(button)
        
        button.attachLeftToLeftOfView(view, offset: 30)
            .attachTopToTopOfView(view, offset: 30)
            .attachWidth(200)
            .attachHeight(50)
            .addConstraintsToView(view)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

