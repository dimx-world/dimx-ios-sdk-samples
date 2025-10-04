//
//  ViewController.swift
//  sample1
//
//  Created by user on 01.10.2025.
//

import UIKit
import DimxCore

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction
    func showARScreen(){
        print("Click showARScreen")
        let url = "https://go.dimx.world/?dim=3382710084&loc=3225571613&live=1&place=1"
        let showARScreen = {
            Context.inst().showARScreen(url, "", "")
        }
        
        if !Context.inst().permissionsGranted() {
            Context.inst().validatePermissions { success in
                showARScreen()
            }
        } else {
            showARScreen()
        }
    }
    
    @IBAction
    func showWebScreen(){
        print("Click showWebScreen")
        let url = "https://go.dimx.world/?dim=3382710084"
        Context.inst().showWebScreen(url)
    }
}

