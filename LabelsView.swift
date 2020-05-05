//
//  LabelsView.swift
//  FlightsApp
//
//  Created by Татьяна Севостьянова on 22.04.2020.
//  Copyright © 2020 Татьяна Севостьянова. All rights reserved.
//

import UIKit
import SnapKit


class LabelsView: UIView {
    
    var caption: String = "" {
        didSet {
            captionLabel.text = caption
        }
    }
    
    var title: String = ""
    var subtitle: String = ""
    
    lazy var captionLabel: UILabel = {
        let view = UILabel()
        view.textAlignment = .left
        view.textColor = .fontSmall
        view.font = .boldSystemFont(ofSize: 10)
        view.text = "From"
        return view
    }()
    
    lazy var titleLabel: UILabel = {
        let view = UILabel()
        view.textAlignment = .left
        view.textColor = .fontBig
        view.font = .boldSystemFont(ofSize: 17)
        view.text = "EGYPT"
        return view
    }()
    
    lazy var subtitleLabel: UILabel = {
        let view = UILabel()
        view.textAlignment = .left
        view.textColor = .fontBig
        view.font = .boldSystemFont(ofSize: 12)
        view.text = "NAG"
        return view
    }()
    
    init(caption: String, title: String, subtitle: String){
        
        super.init(frame: .zero)
        
        self.caption = caption
        self.title = title
        self.subtitle = subtitle
        
        captionLabel.text = caption
        titleLabel.text = title
        subtitleLabel.text = subtitle
        
        addSubview(captionLabel)
        addSubview(titleLabel)
        addSubview(subtitleLabel)
        
        captionLabel.snp.makeConstraints({ item in
            item.top.equalToSuperview().offset(19)
            item.left.equalToSuperview().offset(24)
            item.right.equalToSuperview()
        })
        
        titleLabel.snp.makeConstraints({ item in
            item.top.equalTo(captionLabel.snp.bottom).offset(1.94)
            item.left.equalToSuperview().offset(24)
            item.right.equalToSuperview()
        })
        
        subtitleLabel.snp.makeConstraints({ item in
            item.top.equalTo(titleLabel.snp.bottom).offset(2.66)
            item.left.equalToSuperview().offset(24)
            item.right.equalToSuperview()
        })
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
