//
//  AirportOnMapViewController.swift
//  FlightsApp
//
//  Created by Татьяна Севостьянова on 21.04.2020.
//  Copyright © 2020 Татьяна Севостьянова. All rights reserved.
//

import UIKit
import SnapKit


class AirportOnMapViewController: UIViewController {
    
    lazy var topCardView: UIView = {
        let view = UIView()
        return view
    }()
    
    lazy var fromAirportLabel: UILabel = {
        let view = UILabel()
        view.textColor = .white
        view.text = "NAG"
        view.font = UIFont(name: "Sansation-Bold", size: 19.33)
        view.textAlignment = .left
        return view
    }()
    
    lazy var smallPlaneImageView: UIImageView = {
        let view = UIImageView(image: .smallPlane)
        return view
    }()
    
    lazy var toAirportLabel: UILabel = {
        let view = UILabel()
        view.textColor = .white
        view.text = "ATZ"
        view.font = UIFont(name: "Sansation-Bold", size: 19.33)
        view.textAlignment = .left
        return view
    }()
    
    lazy var timeOfDepartureLabel: UILabel = {
        let view = UILabel()
        view.textAlignment = .left
        view.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        view.font = .boldSystemFont(ofSize: 9)
        view.text = "18 h 10 min +"
        return view
    }()
    
    lazy var timeOfArrivalLabel: UILabel = {
        let view = UILabel()
        view.textAlignment = .left
        view.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        view.font = .boldSystemFont(ofSize: 9)
        view.text = "Boarding: 1:10 PM"
        return view
    }()
    
    lazy var backImageView: UIImageView = {
        let view = UIImageView(image: .backFon)
        view.layer.opacity = 0.97
        return view
    }()
    
    lazy var mapImageView: UIImageView = {
        let view = UIImageView(image: .mapImg)
        return view
    }()
    
    lazy var bottomCardView: UIView = {
        let view = UIView()
        view.backgroundColor = .fonBottomView
        return view
    }()
    
    lazy var infoCardView: UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        view.layer.shadowColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
                  view.layer.shadowRadius = 15
                  view.layer.shadowOpacity = 0.7
                  view.layer.shadowOffset = CGSize(width: 3, height: 3)
//view.layer.borderColor = #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)
   //     view.layer.borderWidth = 1
        view.accessibilityLabel = "infoCardView"
        view.addSubview(passengerLabel)
        view.addSubview(nameLabel)
        return view
    }()

    
    lazy var passengerLabel: UILabel = {
        let view = UILabel()
        view.textAlignment = .left
        view.textColor = .fontSmall
        view.font = .boldSystemFont(ofSize: 10)
        view.text = "Passenger"
        return view
    }()
    
    lazy var nameLabel: UILabel = {
        let view = UILabel()
        view.textAlignment = .left
        view.textColor = .fontBig
        view.font = .boldSystemFont(ofSize: 17)
        view.text = "Peter Johnson"
        return view
    }()
    
    lazy var barcodeCardView: UIView = {
            let view = UIView()
        view.backgroundColor = .fonBottomView
        view.addSubview(bottomViewImg)
        view.accessibilityLabel = "barcodeCardView"
            return view
        }()
    
    lazy var bottomViewImg: UIImageView = {
        let view = UIImageView(image: .bottomViewImg)
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.isNavigationBarHidden = true
        
        view.backgroundColor = .fonBottomView
        view.addSubview(topCardView)
        view.addSubview(bottomCardView)
        topCardView.addSubview(mapImageView)
        topCardView.addSubview(backImageView)
        topCardView.addSubview(fromAirportLabel)
        topCardView.addSubview(smallPlaneImageView)
        topCardView.addSubview(toAirportLabel)
        topCardView.addSubview(timeOfDepartureLabel)
        topCardView.addSubview(timeOfArrivalLabel)
       
       
        bottomCardView.addSubview(barcodeCardView)
       
        bottomCardView.addSubview(infoCardView)
        
       
        
        topCardView.snp.makeConstraints({ item in
            item.top.equalToSuperview()
            item.height.equalTo(300)
            item.left.right.equalToSuperview()
        })
        
        mapImageView.snp.makeConstraints({ item in
            item.top.equalToSuperview()
            item.height.equalTo(350)
            item.left.equalToSuperview().offset(12)
            item.right.equalToSuperview()
        })
        
        backImageView.snp.makeConstraints({ item in
            item.top.equalToSuperview()
            item.height.equalTo(300)
            item.left.right.equalToSuperview()
        })
        
        fromAirportLabel.snp.makeConstraints({ item in
            item.top.equalToSuperview().offset(46.42)
            item.height.equalTo(48)
            item.left.equalToSuperview().offset(23)
        })
        
        timeOfDepartureLabel.snp.makeConstraints({ item in
            item.top.equalTo(fromAirportLabel.snp.bottom).offset(2.66)
            item.left.equalToSuperview().offset(23)
           // item.right.equalToSuperview()
        })
        
        timeOfArrivalLabel.snp.makeConstraints({ item in
            item.top.equalTo(toAirportLabel.snp.bottom).offset(2.66)
            item.left.equalTo(timeOfDepartureLabel.snp.right).offset(15.44)
        })
        
        smallPlaneImageView.snp.makeConstraints({ item in
            item.top.equalToSuperview().offset(46.42)
            item.centerY.equalTo(fromAirportLabel.snp.centerY)
            item.height.equalTo(15.09)
            item.left.equalTo(fromAirportLabel.snp.right).offset(11.59)
        })
        
        toAirportLabel.snp.makeConstraints({ item in
            item.top.equalToSuperview().offset(46.42)
            item.centerY.equalTo(fromAirportLabel.snp.centerY)
            item.left.equalTo(smallPlaneImageView.snp.right).offset(11.59)
        })
        
        bottomCardView.snp.makeConstraints({ item in
            item.top.equalTo(topCardView.snp.bottom)
            item.height.equalTo(232)
            item.left.right.equalToSuperview()
        })
        
        infoCardView.snp.makeConstraints({ item in
            item.top.equalToSuperview()
            item.height.equalTo(140)
            item.left.right.equalToSuperview()
        })
        
        barcodeCardView.snp.makeConstraints({ item in
            item.top.equalTo(infoCardView.snp.bottom)
            item.height.equalTo(100)
//item.centerX.equalToSuperview()
        item.left.right.equalToSuperview()
        })
        
        bottomViewImg.snp.makeConstraints({ item in
            item.top.equalToSuperview().offset(-9)
            item.height.equalTo(100)
            item.centerX.equalToSuperview()
            item.left.right.equalToSuperview()
        })
        
        passengerLabel.snp.makeConstraints({ item in
            item.top.equalToSuperview().offset(19)
            item.left.equalToSuperview().offset(24)
            item.right.equalToSuperview()
        })
        
        nameLabel.snp.makeConstraints({ item in
            item.top.equalTo(passengerLabel.snp.bottom).offset(1.94)
            item.left.equalToSuperview().offset(24)
            item.right.equalToSuperview()
        })
        
    }
    
}
