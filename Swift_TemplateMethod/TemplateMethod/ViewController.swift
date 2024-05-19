//
//  ViewController.swift
//  TemplateMethod
//
//  Created by Leo on 5/19/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let processor = JSONDataProcessor()
        processor.process()
        
        //processor.fetchData()
        //  -> This method should not be called directly. Use process() instead.
    }
}

