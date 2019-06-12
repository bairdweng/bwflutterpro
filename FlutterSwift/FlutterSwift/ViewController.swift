//
//  ViewController.swift
//  FlutterSwift
//
//  Created by Baird-weng on 2019/6/12.
//  Copyright © 2019 bbw. All rights reserved.
//

import UIKit
import Flutter
import FlutterPluginRegistrant
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .red
        // Do any additional setup after loading the view.
    }

    @IBAction func pushFlutterPage(_ sender: Any) {
        let flutter = FlutterViewController()
        self.present(flutter, animated: true, completion: nil)
    }
}

