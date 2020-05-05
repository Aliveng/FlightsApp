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
    
    lazy var planeInСircle: UIImageView = {
        let view = UIImageView(image: .planeCircle)
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        view.layer.cornerRadius = 19
        return view
    }()
    
    lazy var planeInСircleShadow: UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        view.layer.cornerRadius = 19
        view.layer.shadowColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
        view.layer.shadowRadius = 5
        view.layer.shadowOpacity = 0.4
        view.layer.shadowOffset = CGSize(width: 2, height: 2)
        return view
    }()
    
    lazy var topCardView: UIView = {
        let view = UIView()
        return view
    }()
    
    lazy var bottomCardView: UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        return view
    }()
    
    lazy var backImageView: UIImageView = {
        let view = UIImageView(image: .backFon)
        return view
    }()
    
    lazy var buildingsImageView: UIImageView = {
        let view = UIImageView(image: .buildings)
        return view
    }()
    
    lazy var titleButton: UIButton = {
        let view = UIButton()
        view.isEnabled = true
        view.backgroundColor = .clear
        view.setTitle("Where do you like\nto go?", for: .normal)
        view.setTitleColor(.white, for: .normal)
        view.titleLabel?.numberOfLines = 2
        view.addTarget(self,
                       action: #selector(didTapLabel),
                       for: .touchUpInside)
        return view
    }()
    
    lazy var fromView: LabelsView = {
        let view = LabelsView(caption: "from", title: "EGYPT", subtitle: "NAG")
        return view
    }()
    
    lazy var toView: LabelsView = {
        let view = LabelsView(caption: "to", title: "INDIA", subtitle: "ATZ")
        view.backgroundColor = .fonBottomView
        return view
    }()
    
    lazy var travellerView: LabelsView = {
        let view = LabelsView(caption: "Traveller", title: "1 Adult", subtitle: "")
        return view
    }()
    
    lazy var classView: LabelsView = {
        let view = LabelsView(caption: "Class", title: "Economy", subtitle: "")
        return view
    }()
    
    lazy var stopsView: LabelsView = {
        let view = LabelsView(caption: "Connecting 2 or more stops", title: "Air India, Emirates, Egypt Air", subtitle: "")
        view.titleLabel.font = .boldSystemFont(ofSize: 12)
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.isNavigationBarHidden = true
        view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        
        bottomCardView.addSubview(fromView)
        bottomCardView.addSubview(toView)
        bottomCardView.addSubview(travellerView)
        bottomCardView.addSubview(classView)
        bottomCardView.addSubview(stopsView)
        topCardView.addSubview(backImageView)
        topCardView.addSubview(buildingsImageView)
        topCardView.addSubview(titleButton)
        view.addSubview(topCardView)
        view.addSubview(bottomCardView)
        view.addSubview(planeInСircleShadow)
        view.addSubview(planeInСircle)
        
        planeInСircle.snp.makeConstraints({ item in
            item.top.equalToSuperview().offset(280)
            item.height.equalTo(39)
            item.width.equalTo(39)
            item.right.equalToSuperview().offset(-23)
        })
        
        planeInСircleShadow.snp.makeConstraints({ item in
            item.top.equalToSuperview().offset(280)
            item.height.equalTo(39)
            item.width.equalTo(39)
            item.right.equalToSuperview().offset(-23)
        })
        
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
        
        titleButton.snp.makeConstraints({ item in
            item.top.equalToSuperview().offset(46.42)
            item.height.equalTo(48)
            item.left.equalToSuperview().offset(23)
        })
        
        buildingsImageView.snp.makeConstraints({ item in
            item.bottom.equalToSuperview()
            item.centerX.equalToSuperview()
        })
        
        bottomCardView.snp.makeConstraints({ item in
            item.top.equalTo(topCardView.snp.bottom)
            item.height.equalTo(232)
            item.left.right.equalToSuperview()
        })
        
        fromView.snp.makeConstraints({ item in
            item.top.equalToSuperview()
            item.height.equalTo(85)
            item.width.equalTo(UIScreen.main.bounds.width / 2)
            item.left.equalToSuperview()
        })
        
        toView.snp.makeConstraints({ item in
            item.top.equalToSuperview()
            item.height.equalTo(85)
            item.width.equalTo(UIScreen.main.bounds.width / 2)
            item.right.equalToSuperview()
        })
        
        travellerView.snp.makeConstraints({ item in
            item.top.equalTo(fromView.snp.bottom)
            item.height.equalTo(85)
            item.width.equalTo(UIScreen.main.bounds.width / 2)
            item.left.equalToSuperview()
        })
        
        classView.snp.makeConstraints({ item in
            item.top.equalTo(toView.snp.bottom)
            item.height.equalTo(85)
            item.width.equalTo(UIScreen.main.bounds.width / 2)
            item.right.equalToSuperview()
        })
        
        stopsView.snp.makeConstraints({ item in
            item.top.equalTo(travellerView.snp.bottom)
            item.height.equalTo(85)
            item.width.equalTo(UIScreen.main.bounds.width)
            item.left.equalToSuperview()
        })
    }
    
    @objc
    private func didTapLabel() {
        let controller = AirportOnMapViewController()
        navigationController?.pushViewController(controller, animated: true)
    }
}
