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
      //  view.layer.cornerRadius = 6
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
    
    lazy var leftButton : UIButton = {
        let view = UIButton()
        view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        return view
    }()
    
    lazy var fromLBLLabel: UILabel = {
        let view = UILabel()
        view.textAlignment = .left
        view.textColor = .fontSmall
        view.font = .boldSystemFont(ofSize: 10)
        view.text = "From"
        return view
    }()
    
    lazy var mainLBLLabel: UILabel = {
        let view = UILabel()
        view.textAlignment = .left
        view.textColor = .fontBig
        view.font = .boldSystemFont(ofSize: 17)
        view.text = "EGYPT"
        return view
    }()
    
    lazy var airportLBLabel: UILabel = {
        let view = UILabel()
        view.textAlignment = .left
        view.textColor = .fontBig
        view.font = .boldSystemFont(ofSize: 12)
        view.text = "NAG"
        return view
    }()
    
    lazy var rightButton : UIButton = {
        let view = UIButton()
        view.backgroundColor = #colorLiteral(red: 0.9802979827, green: 0.9805260301, blue: 0.9761922956, alpha: 1) //светло серый
        view.addTarget(self,
                       action: #selector(didTapRightButton),
                       for: .touchUpInside)
        return view
    }()
    
    lazy var toRBLabel: UILabel = {
        let view = UILabel()
        view.textAlignment = .left
        view.textColor = .fontSmall
        view.font = .boldSystemFont(ofSize: 9)
        view.text = "To"
        return view
    }()
    
    lazy var mainRBLabel: UILabel = {
        let view = UILabel()
        view.textAlignment = .left
        view.textColor = .fontBig
        view.font = .boldSystemFont(ofSize: 16)
        view.text = "INDIA"
        return view
    }()
    
    lazy var airportRBLabel: UILabel = {
        let view = UILabel()
        view.textAlignment = .left
        view.textColor = .fontBig
        view.font = .boldSystemFont(ofSize: 11)
        view.text = "ATZ"
        return view
    }()
    
    lazy var travellerButton : UIButton = {
        let view = UIButton()
        view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        return view
    }()
    
    lazy var travellerLabel: UILabel = {
        let view = UILabel()
        view.textAlignment = .left
        view.textColor = .fontSmall
        view.font = .boldSystemFont(ofSize: 10)
        view.text = "Traveller"
        return view
    }()
    
    lazy var typeTravellerLabel: UILabel = {
        let view = UILabel()
        view.textAlignment = .left
        view.textColor = .fontBig
        view.font = .boldSystemFont(ofSize: 17)
        view.text = "1 Adult"
        return view
    }()
    
    lazy var classButton : UIButton = {
        let view = UIButton()
        view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        return view
    }()
    
    lazy var classLabel: UILabel = {
        let view = UILabel()
        view.textAlignment = .left
        view.textColor = .fontSmall
        view.font = .boldSystemFont(ofSize: 10)
        view.text = "Class"
        return view
    }()
    
    lazy var typeClassLabel: UILabel = {
        let view = UILabel()
        view.textAlignment = .left
        view.textColor = .fontBig
        view.font = .boldSystemFont(ofSize: 17)
        view.text = "Economy"
        return view
    }()
    
    lazy var stopsButton : UIButton = {
        let view = UIButton()
        view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        return view
    }()
    
    lazy var stopsLabel: UILabel = {
        let view = UILabel()
        view.textAlignment = .left
        view.textColor = .fontSmall
        view.font = .boldSystemFont(ofSize: 10)
        view.text = "Connecting 2 or more stops"
        return view
    }()
    
    lazy var nameStopsLabel: UILabel = {
        let view = UILabel()
        view.textAlignment = .left
        view.textColor = .fontBig
        view.font = .boldSystemFont(ofSize: 14)
        view.text = "Air India, Emirates, Egypt Air"
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.isNavigationBarHidden = true
        
        view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        view.addSubview(topCardView)
        topCardView.addSubview(backImageView)
        topCardView.addSubview(fonImageView)
        topCardView.addSubview(titleLabel)
        view.addSubview(bottomCardView)
        view.addSubview(planeInСircleShadow)
        view.addSubview(planeInСircle)
        bottomCardView.addSubview(leftButton)
        leftButton.addSubview(fromLBLLabel)
        leftButton.addSubview(mainLBLLabel)
        leftButton.addSubview(airportLBLabel)
        bottomCardView.addSubview(rightButton)
        rightButton.addSubview(toRBLabel)
        rightButton.addSubview(mainRBLabel)
        rightButton.addSubview(airportRBLabel)
        bottomCardView.addSubview(travellerButton)
        travellerButton.addSubview(travellerLabel)
        travellerButton.addSubview(typeTravellerLabel)
        bottomCardView.addSubview(classButton)
        classButton.addSubview(classLabel)
        classButton.addSubview(typeClassLabel)
        bottomCardView.addSubview(stopsButton)
        stopsButton.addSubview(stopsLabel)
        stopsButton.addSubview(nameStopsLabel)
        
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
        
        titleLabel.snp.makeConstraints({ item in
            item.top.equalToSuperview().offset(46.42)
            item.height.equalTo(48)
            item.left.equalToSuperview().offset(23)
        })
        
        fonImageView.snp.makeConstraints({ item in
            item.bottom.equalToSuperview()
            item.centerX.equalToSuperview()
        })
        
        bottomCardView.snp.makeConstraints({ item in
            item.top.equalTo(topCardView.snp.bottom)
            item.height.equalTo(232)
            item.left.right.equalToSuperview()
        })
        
        leftButton.snp.makeConstraints({ item in
            item.top.equalToSuperview()
            item.height.equalTo(85)
            item.width.equalTo(UIScreen.main.bounds.width / 2)
            item.left.equalToSuperview()
        })
        
        fromLBLLabel.snp.makeConstraints({ item in
            item.top.equalToSuperview().offset(19)
            item.left.equalToSuperview().offset(24)
            item.right.equalToSuperview()
        })
        
        mainLBLLabel.snp.makeConstraints({ item in
            item.top.equalTo(fromLBLLabel.snp.bottom).offset(1.94)
            item.left.equalToSuperview().offset(24)
            item.right.equalToSuperview()
        })
        
        airportLBLabel.snp.makeConstraints({ item in
            item.top.equalTo(mainLBLLabel.snp.bottom).offset(2.66)
            item.left.equalToSuperview().offset(24)
            item.right.equalToSuperview()
        })
        
        rightButton.snp.makeConstraints({ item in
            item.top.equalToSuperview()
            item.height.equalTo(85)
            item.width.equalTo(UIScreen.main.bounds.width / 2)
            item.right.equalToSuperview()
        })
        
        toRBLabel.snp.makeConstraints({ item in
            item.top.equalToSuperview().offset(19)
            item.left.equalToSuperview().offset(24)
            item.right.equalToSuperview()
        })
        
        mainRBLabel.snp.makeConstraints({ item in
            item.top.equalTo(fromLBLLabel.snp.bottom).offset(1.94)
            item.left.equalToSuperview().offset(24)
            item.right.equalToSuperview()
        })
        
        airportRBLabel.snp.makeConstraints({ item in
            item.top.equalTo(mainLBLLabel.snp.bottom).offset(2.66)
            item.left.equalToSuperview().offset(24)
            item.right.equalToSuperview()
        })
        
        travellerButton.snp.makeConstraints({ item in
            item.top.equalTo(leftButton.snp.bottom)
            item.height.equalTo(85)
            item.width.equalTo(UIScreen.main.bounds.width / 2)
            item.left.equalToSuperview()
        })
        
        travellerLabel.snp.makeConstraints({ item in
            item.top.equalToSuperview().offset(23.22)
            item.left.equalToSuperview().offset(24)
            item.right.equalToSuperview()
        })
        
        typeTravellerLabel.snp.makeConstraints({ item in
            item.top.equalTo(travellerLabel.snp.bottom).offset(1.94)
            item.left.equalToSuperview().offset(24)
            item.right.equalToSuperview()
        })
        
        classButton.snp.makeConstraints({ item in
            item.top.equalTo(rightButton.snp.bottom)
            item.height.equalTo(85)
            item.width.equalTo(UIScreen.main.bounds.width / 2)
            item.right.equalToSuperview()
        })
        
        classLabel.snp.makeConstraints({ item in
            item.top.equalToSuperview().offset(23.22)
            item.left.equalToSuperview().offset(24)
            item.right.equalToSuperview()
        })
        
        typeClassLabel.snp.makeConstraints({ item in
            item.top.equalTo(classLabel.snp.bottom).offset(1.94)
            item.left.equalToSuperview().offset(24)
            item.right.equalToSuperview()
        })
        
        stopsButton.snp.makeConstraints({ item in
            item.top.equalTo(travellerButton.snp.bottom)
            item.height.equalTo(85)
            item.width.equalTo(UIScreen.main.bounds.width)
            item.left.equalToSuperview()
        })
        
        stopsLabel.snp.makeConstraints({ item in
            item.top.equalToSuperview().offset(23.22)
            item.left.equalToSuperview().offset(24)
            item.right.equalToSuperview()
        })
        
        nameStopsLabel.snp.makeConstraints({ item in
            item.top.equalTo(stopsLabel.snp.bottom).offset(1.94)
            item.left.equalToSuperview().offset(24)
            item.right.equalToSuperview()
        })
        
    }
    
    @objc
    private func didTapRightButton() {
        
        let controller = AirportOnMapViewController()
        navigationController?.pushViewController(controller, animated: true)
        
        print("Переход на карту")
    }
    
}

