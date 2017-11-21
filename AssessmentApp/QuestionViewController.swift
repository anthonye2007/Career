//
//  QuestionViewController.swift
//  AssessmentApp
//
//  Created by Zachary Hardin on 11/21/17.
//  Copyright © 2017 Benjamin Walton. All rights reserved.
//

import UIKit

class QuestionViewController: UIViewController {
    @IBOutlet weak var firstQuestion: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstQuestion.text = "bluh"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
