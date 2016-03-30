//
//  CustomView.swift
//  GraphicsShadows
//
//  Created by Nam (Nick) N. HUYNH on 3/30/16.
//  Copyright (c) 2016 Enclave. All rights reserved.
//

import UIKit

class CustomView: UIView {

    override func drawRect(rect: CGRect) {
        
        backgroundColor = UIColor.whiteColor()
        let currentContext = UIGraphicsGetCurrentContext()
        let offset = CGSizeMake(10, 10)
        CGContextSetShadowWithColor(currentContext, offset, 20, UIColor.grayColor().CGColor)
        
        CGContextSaveGState(currentContext)
        
        let firstPath = CGPathCreateMutable()
        let firstRect = CGRectMake(55, 60, 150, 150)
        CGPathAddRect(firstPath, nil, firstRect)
        CGContextAddPath(currentContext, firstPath)
        UIColor(red: 0.2, green: 0.6, blue: 0.8, alpha: 1.0).setFill()
        CGContextDrawPath(currentContext, kCGPathFill)
        
        CGContextRestoreGState(currentContext)
        let secondPath = CGPathCreateMutable()
        let secondRect = CGRectMake(150, 250, 100, 100)
        CGPathAddRect(secondPath, nil, secondRect)
        CGContextAddPath(currentContext, secondPath)
        UIColor.purpleColor().setFill()
        CGContextDrawPath(currentContext, kCGPathFill)

    }

}
