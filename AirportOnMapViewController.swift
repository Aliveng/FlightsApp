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
    
    lazy var animatedView: AnimatedPart = {
        let view = AnimatedPart()
        view.backgroundColor = .clear
        return view
    }()
    
    lazy var topCardView: UIView = {
        let view = UIView()
        return view
    }()
    
    lazy var bottomCardView: UIView = {
        let view = UIView()
        view.backgroundColor = .fonBottomView
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
    
    lazy var titleView: UIView = {
        let view = UIView()
        view.addSubview(departureView)
        view.addSubview(smallPlaneImageView)
        view.addSubview(boardingView)
        return view
    }()
    
    lazy var departureView: LabelsView = {
        let view = LabelsView(caption: "", title: "NAG", subtitle: "18 h 10 min +")
        view.titleLabel.font = .boldSystemFont(ofSize: 15)
        view.titleLabel.textColor = .white
        view.subtitleLabel.font = .boldSystemFont(ofSize: 9)
        view.subtitleLabel.textColor = .white
        return view
    }()
    
    lazy var smallPlaneImageView: UIImageView = {
        let view = UIImageView(image: .smallPlane)
        return view
    }()
    
    lazy var boardingView: LabelsView = {
        let view = LabelsView(caption: "", title: "ATZ", subtitle: "Boarding: 1:10 PM")
        view.titleLabel.font = .boldSystemFont(ofSize: 15)
        view.titleLabel.textColor = .white
        view.subtitleLabel.font = .boldSystemFont(ofSize: 9)
        view.subtitleLabel.textColor = .white
        return view
    }()
    
    lazy var infoCardView: UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        view.layer.shadowColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        view.layer.shadowRadius = 10
        view.layer.shadowOpacity = 0.6
        view.layer.shadowOffset = CGSize(width: 3, height: 3)
        view.accessibilityLabel = "infoCardView"
        return view
    }()
    
    lazy var passengerView: LabelsView = {
        let view = LabelsView(caption: "Passenger", title: "Peter Johnson", subtitle: "")
        return view
    }()
    
    lazy var flightView: LabelsView = {
        let view = LabelsView(caption: "Flight", title: "VX", subtitle: "221")
        view.backgroundColor = .clear
        view.subtitleLabel.font = .boldSystemFont(ofSize: 17)
        return view
    }()
    
    
    lazy var seatView: LabelsView = {
        let view = LabelsView(caption: "Seat", title: "22", subtitle: "A")
        view.backgroundColor = .clear
        view.subtitleLabel.font = .boldSystemFont(ofSize: 17)
        return view
    }()
    
    lazy var cabinView: LabelsView = {
        let view = LabelsView(caption: "Cabin", title: "First", subtitle: "")
        view.backgroundColor = .clear
        return view
    }()
    
    lazy var barcodeCardView: UIView = {
        let view = UIView()
        view.backgroundColor = .fonBottomView
        view.addSubview(bottomImgView)
        view.accessibilityLabel = "barcodeCardView"
        return view
    }()
    
    lazy var bottomImgView: UIImageView = {
        let view = UIImageView(image: .bottomViewImg)
        return view
    }()
    
    lazy var barcodeImgView: UIImageView = {
        let view = UIImageView(image: .barcodeImg)
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.isNavigationBarHidden = true
        
        view.backgroundColor = .fonBottomView
        view.addSubview(topCardView)
        topCardView.addSubview(mapImageView)
        topCardView.addSubview(backImageView)
        topCardView.addSubview(titleView)
        view.addSubview(bottomCardView)
        infoCardView.addSubview(passengerView)
        infoCardView.addSubview(flightView)
        infoCardView.addSubview(seatView)
        infoCardView.addSubview(cabinView)
        bottomCardView.addSubview(barcodeCardView)
        barcodeCardView.addSubview(barcodeImgView)
        bottomCardView.addSubview(infoCardView)
        view.addSubview(animatedView)
        
        animatedView.snp.makeConstraints({ item in
            item.top.equalToSuperview().offset(30)
            item.height.equalToSuperview().offset(30)
            item.left.right.equalToSuperview().offset(20)
        })
        
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
        
        titleView.snp.makeConstraints({ item in
            item.top.equalToSuperview()
            item.left.equalToSuperview()
        })
        
        departureView.snp.makeConstraints({ item in
            item.top.equalToSuperview().offset(46.42)
            item.height.equalTo(48)
            item.left.equalToSuperview()
        })
        
        smallPlaneImageView.snp.makeConstraints({ item in
            item.top.equalToSuperview().offset(70)
            item.height.equalTo(15)
            item.width.equalTo(15)
            item.left.equalTo(departureView.snp.right).offset(-7)
        })
        
        boardingView.snp.makeConstraints({ item in
            item.top.equalToSuperview().offset(46.42)
            item.centerY.equalTo(departureView.snp.centerY)
            item.left.equalTo(smallPlaneImageView.snp.right).offset(-10)
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
            item.height.equalTo(120)
            item.left.right.equalToSuperview()
        })
        
        bottomImgView.snp.makeConstraints({ item in
            item.top.equalToSuperview().offset(-5)
            item.height.equalTo(120)
            item.centerX.equalToSuperview()
            item.left.right.equalToSuperview()
        })
        
        barcodeImgView.snp.makeConstraints({ item in
            item.top.equalToSuperview().offset(35)
            item.height.equalTo(60.07)
            item.width.equalTo(110.49)
            item.centerX.equalToSuperview().offset(10)
            item.left.equalToSuperview().offset(71.92)
          
        })
        
        passengerView.snp.makeConstraints({ item in
            item.top.equalToSuperview()
            item.left.equalToSuperview()
            item.right.equalToSuperview()
        })
        
        flightView.snp.makeConstraints({ item in
            item.top.equalToSuperview().offset(45)
            item.width.equalTo(UIScreen.main.bounds.width / 3)
            item.left.equalToSuperview()
            item.right.equalToSuperview()
        })
        
        seatView.snp.makeConstraints({ item in
            item.top.equalToSuperview().offset(45)
            item.width.equalTo(UIScreen.main.bounds.width / 3)
            item.left.equalToSuperview().offset(110)
            item.right.equalToSuperview()
        })
        
        cabinView.snp.makeConstraints({ item in
            item.top.equalToSuperview().offset(45)
            item.width.equalTo(UIScreen.main.bounds.width / 3)
            item.left.equalToSuperview().offset(198)
            item.right.equalToSuperview()
        })
    }
}
