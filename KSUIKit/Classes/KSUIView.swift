//
//  KSUIView.swift
//  Pods
//
//  Created by Srinivasan Dodda on 12/07/17.
//
//

import UIKit

class KSUIView: UIView {

    @IBInspectable public var colorType: String? {
        didSet {
            setInspectables()
        }
    }
    
    required public init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        self.setInspectables()
        
    }
    
    override public init(frame: CGRect) {
        super.init(frame: frame)
        self.setInspectables()
    }
    
    override public func draw(_ rect: CGRect) {
        super.draw(rect)
        setInspectables()
    }
    
    override public func prepareForInterfaceBuilder() {
        setInspectables()
    }
    
    override func setInspectables(){
        if let _ = colorType{
         	self.backgroundColor = color(colorType!) ?? UIColor.white   
        }
    }

}