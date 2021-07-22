//
//  ViewController.swift
//  Receipe
//
//  Created by DCS on 22/07/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private let mylbl : UILabel = {
        let lbl = UILabel()
        lbl.font = .systemFont(ofSize : 35)
        lbl.textColor = .white
        
        lbl.text = "MY RECIPE APP"
        lbl.textAlignment = .center
        
        return lbl
    }()
    private let mybtn: UIButton = {
        let btn = UIButton()
        btn.setTitle("START", for: .normal)
        btn.setTitleColor(.white, for: .normal)
        btn.layer.borderWidth = 5
        
        btn.addTarget(self, action: #selector(nextvc), for: .touchUpInside)
        btn.backgroundColor = .black
        btn.layer.cornerRadius = 45
        return btn
    }()
    @objc func nextvc(){
        
        let vc = MenuVC()
        navigationController? .pushViewController(vc, animated : true)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(mybtn)
        view.addSubview(mylbl)
        self.title = "MY RECIPE APP"
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "bg")!)
    }
    override func viewDidLayoutSubviews() {
        mylbl.frame = CGRect(x: 40,y: 100,width: view.width-40,height: 40)
        mybtn.frame = CGRect(x: 40,y: 600,width: view.width-40,height: 40)
    }
    
}
