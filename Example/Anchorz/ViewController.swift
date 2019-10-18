//
//  ViewController.swift
//  Anchorz
//
//  Created by Michalis Karagiorgos on 10/18/2019.
//  Copyright (c) 2019 Michalis Karagiorgos. All rights reserved.
//

import UIKit
import Anchorz

class ViewController: UIViewController {

    let redView: UIView = {
        let view = UIView()
        view.backgroundColor = .red
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(redView)
        redView.constraint(
            .top(view.topAnchor, constant: 10),
            .bottom(view.bottomAnchor, constant: 10),
            .leading(view.leadingAnchor, constant: 10),
            .trailing(view.trailingAnchor, constant: 10)
        )
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

