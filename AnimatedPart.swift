//
//  AnimatedPart.swift
//  FlightsApp
//
//  Created by Татьяна Севостьянова on 26.04.2020.
//  Copyright © 2020 Татьяна Севостьянова. All rights reserved.
//

import UIKit
import SnapKit


class AnimatedPart: UIView {
    
    lazy var plane: CALayer = {
        let layer = CALayer()
        layer.backgroundColor = UIColor.clear.cgColor
        layer.frame = CGRect(x: 100, y: 160, width: 13.92, height: 15.09)
        layer.position = CGPoint(x: 100, y: 160)
        layer.contents = UIImage(named: "palne")?.cgImage
        return layer
    }()
    
    lazy var pointEgypt: CAShapeLayer = {
        let layer = CAShapeLayer()
        layer.frame = CGRect(x: 0 , y: 0 , width: 5.8, height: 5.8)
        layer.fillColor = UIColor.yellowPath.cgColor
        layer.position = CGPoint(x: 236, y:  160)
        layer.path = UIBezierPath(ovalIn: CGRect(x: 0, y: 0, width: 5.8, height: 5.8)).cgPath
        layer.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        return layer
    }()
    
    lazy var pointIndia: CAShapeLayer = {
        let layer = CAShapeLayer()
        layer.frame = CGRect(x: 0 , y: 0 , width: 5.8, height: 5.8)
        layer.fillColor = UIColor.yellowPath.cgColor
        layer.position = CGPoint(x: 100, y: 160)
        layer.path = UIBezierPath(ovalIn: CGRect(x: 0, y: 0, width: 5.8, height: 5.8)).cgPath
        layer.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        return layer
    }()
    
    func createArc() {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 100, y: 160))
        path.addCurve(to: CGPoint(x: 236, y: 160),
                      controlPoint1: CGPoint(x: 100, y: 160),
                      controlPoint2: CGPoint(x: 176, y: 116))
        path.lineWidth = 1.5
        UIColor.yellowPath.setStroke()
        path.stroke()
        path.close()
    }
    
    override func draw(_ rect: CGRect) {
        self.createArc()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        layer.addSublayer(pointEgypt)
        layer.addSublayer(pointIndia)
        layer.addSublayer(plane)
        addScaleAndFligAnimation()
    }
    
    private func addScaleAndFligAnimation() {
        let go = CAKeyframeAnimation(keyPath: "position")
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 100, y: 160))
        path.addCurve(to: CGPoint(x: 236, y: 160),
                      controlPoint1: CGPoint(x: 100, y: 160),
                      controlPoint2: CGPoint(x: 176, y: 116))
        go.path = path.cgPath
        go.autoreverses = false
        go.rotationMode = .rotateAuto
        
        let scale = CAKeyframeAnimation(keyPath: "transform.scale")
        scale.values = [0.5, 0.8, 1, 1.1, 1.2, 1.1, 1, 0.8, 0.5, 0.4]
        
        let flightAndScale = CAAnimationGroup()
        flightAndScale.animations = [go, scale]
        flightAndScale.duration = 7
        flightAndScale.repeatCount = 1
        
        flightAndScale.fillMode = CAMediaTimingFillMode.forwards
        flightAndScale.isRemovedOnCompletion = false
        
        plane.add(flightAndScale, forKey: nil)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
