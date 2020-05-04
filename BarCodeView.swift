//
//  BarCodeView.swift
//  FlightApp
//
//  Created by Кирилл Худяков on 20.02.2020.
//  Copyright © 2020 adeveloper. All rights reserved.
//

import UIKit


final class BarCodeView: UIView {
    var color: UIColor = UIColor(hex: "656263")
    private var codes: [Int] = [
                                 1, 0, 1, 1, 1, 0, 1, 1, 0, 1,
                                 1, 0, 0, 1, 1, 0, 0, 1, 0, 1,
                                 1, 0, 0, 1, 1, 1, 0, 1, 0, 1,
                                 1, 1, 0, 0, 1, 1, 1, 0, 1, 0,
                                 0, 0, 1, 1, 0, 0, 1, 1, 0, 1,
                                 0, 1, 1, 0, 1, 0, 0, 1, 0, 1,
                                 1, 0, 0, 1, 1, 1, 0, 1, 0, 1,
                                 1, 0, 1, 1, 1, 0, 1, 1, 0, 1,
                                 1, 0, 0, 0, 0, 1, 0, 1, 0, 0,
                                 0, 1, 1, 0, 1, 0, 0, 1, 0, 1,
                                 0, 0, 1, 1, 1, 0, 1, 0, 1, 1
                                ]
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .white
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
    }
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)

        let offset: CGFloat = 10
        let size: CGFloat = 3 // CGFloat(rect.width) / CGFloat(codes.count)
        
        codes.enumerated().forEach { v in
            let x: CGFloat = offset + (CGFloat(v.offset) * size)
            if v.element > 0 {
                let bar = UIBezierPath(rect: CGRect(x: offset + x, y: 0, width: size, height: rect.height))
                color.setFill()
                bar.fill()
            }
        }
        
    }
}
