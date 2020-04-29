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
    
//    let imageLayer = CALayer()
//    imageLayer.backgroundColor = UIColor.clear.cgColor
//    imageLayer.bounds = CGRect(x: centerPoint.x, y: centerPoint.y , width: 15, height: 15)
//    imageLayer.position = CGPoint(x:centerPoint.x ,y:centerPoint.y)
//        imageLayer.contents = UIImage(named:segment.imageName)?.cgImage
//    self.layer.addSublayer(pieSliceLayer)
//    self.layer.addSublayer(imageLayer)
    
    
    lazy var plane: CALayer = {
        let layer = CALayer()
        layer.backgroundColor = UIColor.clear.cgColor
        layer.bounds = CGRect(x: 100, y: 160, width: 13.92, height: 15.09)
        layer.position = CGPoint(x: 100, y: 160)
        layer.contents = UIImage(named: "palne")?.cgImage
    //    layer.
        return layer
    }()
    
    // frame - рамка необходима для верного позиционирования с помошью anchorPoint и это будет Центр экрана (значения ШхВ должны быть равны размерам объекта)
    // fillColor - красим его в цвет
    // position - ставим позицию слоя
    // path - размеры
    
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
    
    //        let shape = UIBezierPath()shape.move(to: CGPoint(x: 0.45, y: 16.39))
//                                        shape.addCurve(to: CGPoint(x: 115.68, y: 20.54),
                                            //controlPoint1: CGPoint(x: 0.45, y: 16.39),
                                            //controlPoint2: CGPoint(x: 55.09, y: -21.27))
    
    func createArc() {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 100, y: 160))
        path.addCurve(to: CGPoint(x: 236, y: 160),
                      controlPoint1: CGPoint(x: 100, y: 160),
                      controlPoint2: CGPoint(x: 176, y: 116))
        path.lineWidth = 2.5
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
        
        addAnimation()
        
    }
    
    private func addAnimation() {
        
      //  let go = CABasicAnimation(keyPath: "position")
        
        let go = CAKeyframeAnimation(keyPath: "position")
        
//        let checkmarkPath = UIBezierPath()
//        checkmarkPath.move(to: CGPoint(x: bounds.height - padding, y: padding))
//        checkmarkPath.addLine(to: CGPoint(x: 2 * padding, y: bounds.height -  padding))
//        checkmarkPath.addLine(to: CGPoint(x: padding, y: bounds.height / 2))
        
//        let fromPathPlane = UIBezierPath()
//        fromPathPlane.move(to: CGPoint(x: 100, y: 160))
//        fromPathPlane.addCurve(to: CGPoint(x: 236, y: 160),
//                               controlPoint1: CGPoint(x: 100, y: 160),
//                               controlPoint2: CGPoint(x: 176, y: 116))
//
//
//        let toPathPlane = UIBezierPath()
//        toPathPlane.move(to: CGPoint(x: 100, y: 160))
//        toPathPlane.addCurve(to: CGPoint(x: 236, y: 160),
//                      controlPoint1: CGPoint(x: 100, y: 160),
//                      controlPoint2: CGPoint(x: 176, y: 116))
        
        
//        func animate(view : UIView, fromPoint start : CGPoint, toPoint end: CGPoint)
//        {
//            // The animation
//            let animation = CAKeyframeAnimation(keyPath: "position")
//
//            // Animation path
//            let path = UIBezierPath()
//
//            // Move the "cursor" to the start
//            path.move(to: start)
//
//            // Calculate the control points
//            let c1 = CGPoint(x: start.x + 64, y: start.y)
//            let c2 = CGPoint(x: end.x,        y: end.y - 128)
//
//            // Draw a curve towards the end, using control points
//            path.addCurve(to: end, controlPoint1: c1, controlPoint2: c2)
//
//            // Use this path as the animation path (casted to CGPath)
//            animation.path = path.cgPath;
//
//            // The other animations properties
//            animation.fillMode              = kCAFillModeForwards
//            animation.isRemovedOnCompletion = false
//            animation.duration              = 1.0
//            animation.timingFunction        = CAMediaTimingFunction(name:kCAMediaTimingFunctionEaseIn)
//
//            // Apply it
//            view.layer.add(animation, forKey:"trash")
//        }
        
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 100, y: 160))
        let c1 = CGPoint(x: 100, y: 160)
        let c2 = CGPoint(x: 176, y: 116)
        path.addCurve(to: CGPoint(x: 236, y: 160), controlPoint1: c1, controlPoint2: c2)
        go.path = path.cgPath
        
       // go.fromValue = CGPoint(x: 100, y: 160)
       // go.byValue = toPathPlane.cgPath
       // go.toValue = CGPoint(x: 236, y: 160)
       // go.fromValue = CGPoint(x: 100, y: 160)
       // go.toValue = CGPoint(x: 236, y: 160)
        
      // go.byValue = toPathPlane
        
        go.autoreverses = false
        go.duration = 5
        go.repeatCount = .zero
    
        
        
        plane.add(go, forKey: nil)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
