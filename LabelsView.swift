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
    
    var caption: String = ""
    var title: String = ""
    var subtitle: String = ""
    
    
    
    init(caption: String, title: String, subtitle: String){
        
        super.init(frame: .zero)
        
        self.caption = caption
        self.title = title
        self.subtitle = subtitle
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
