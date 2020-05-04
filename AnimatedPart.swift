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
    
    // BezierPath from svg
    // let shape = UIBezierPath()shape.move(to: CGPoint(x: 0.45, y: 16.39))
    // shape.addCurve(to: CGPoint(x: 115.68, y: 20.54),
    // controlPoint1: CGPoint(x: 0.45, y: 16.39),
    // controlPoint2: CGPoint(x: 55.09, y: -21.27))
    
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
        
        //  addFlightAnimation()
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
        
        // let anim = CAKeyframeAnimation(keyPath: "transform.scale")
        scale.values = [1, 1.5, 1]
        
        //   scale.valueFunction = CAValueFunction(name: CAValueFunctionName.scale)
        //   scale.fromValue = CATransform3DIdentity
        //   scale.fromValue = self.plane.bounds
        //    scale.toValue = self.plane.bounds.height * 5
        //  scale.fromValue = plane.affineTransform()
        //  scale.fromValue = addScaleAnimation()
        //   scale.toValue = plane.affineTransform
        // scale.toValue =  layer.transform = CATransform3DMakeScale(1.5, 1.5, 0)
        //  scale.toValue = CATransform3DMakeScale(26, 30, 0)
        //  scale.toValue = CATransform3DMakeScale(bounds.size.width * 2, 30, 0)
        
        // scale.fromValue = CGAffineTransform(scaleX: 10, y: 1)
        // scale.toValue = CGAffineTransform(scaleX: 0.1, y: 0.1)
        
        //     scale.duration = 7
        //      scale.repeatCount = 1
        // scale.beginTime = 2
        
        //        let scale = CGAffineTransform(scaleX: 2, y: 2)
        
        //  apathLayer.setAffineTransform(scale)
        //   return apathLayer
        
        let flightAndScale = CAAnimationGroup()
        flightAndScale.animations = [go, scale]
        flightAndScale.duration = 7
        flightAndScale.repeatCount = 1
        
        plane.add(flightAndScale, forKey: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
