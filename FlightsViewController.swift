//
//  ViewController.swift
//  FlightsApp
//
//  Created by Татьяна Севостьянова on 10.03.2020.
//  Copyright © 2020 Татьяна Севостьянова. All rights reserved.
//

import UIKit
import SnapKit


class FlightsViewController: UIViewController {
    
    lazy var topCardView: UIView = {
        let view = UIView()
        return view
    }()
    
    lazy var backImageView: UIImageView = {
        let view = UIImageView(image: .backFon)
        return view
    }()
    
    lazy var fonImageView: UIImageView = {
        let view = UIImageView(image: .buildings)
        return view
    }()
    
    lazy var titleLabel: UILabel = {
        let view = UILabel()
        view.textColor = .white
        view.text = "Where do you like\nto go?"
        view.font = UIFont(name: "Sansation-Bold", size: 19.33)
        view.textAlignment = .left
        view.numberOfLines = 2
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.isNavigationBarHidden = true
        
        view.backgroundColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
        view.addSubview(topCardView)
        topCardView.addSubview(backImageView)
        topCardView.addSubview(fonImageView)
        topCardView.addSubview(titleLabel)
        
        
        topCardView.snp.makeConstraints({ item in
            item.top.equalToSuperview()
            item.height.equalTo(300)
            item.left.right.equalToSuperview()
        })
        
        backImageView.snp.makeConstraints({ item in
            item.top.equalToSuperview()
            item.height.equalTo(300)
            item.left.right.equalToSuperview()
        })
        
        titleLabel.snp.makeConstraints({ item in
            item.top.equalToSuperview().offset(46.42)
            item.height.equalTo(48)
            item.left.equalToSuperview().offset(23)
        })
        
        fonImageView.snp.makeConstraints({ item in
            item.bottom.equalToSuperview()
            item.centerX.equalToSuperview()
        })
        
        
    }
    
}

