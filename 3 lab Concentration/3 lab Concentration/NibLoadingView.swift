//
//  NibLoadingView.swift
//  3 lab Concentration
//
//  Created by Nikita Hrabovskyi on 24.10.2023.
//

import UIKit

protocol NibRepresentable {
    static var nib: UINib { get }
    static var identifier: String { get }
}

extension UIView: NibRepresentable {
    static var nib: UINib {
        UINib(nibName: identifier, bundle: nil)
    }
    
    @objc class var identifier: String {
        String(describing: self)
    }
}

@IBDesignable class NibLoadingView: UIView {
    
    var view: UIView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        nibSetup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        nibSetup()
    }
    
    private func nibSetup() {
        backgroundColor = .clear
        
        view = loadViewFromNib()
        view.frame = bounds
        view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        view.translatesAutoresizingMaskIntoConstraints = true
        
        addSubview(view)
        
//        NSLayoutConstraint.activate([
//            view.leadingAnchor.constraint(equalTo: leftAnchor),
//            view.trailingAnchor.constraint(equalTo: trailingAnchor),
//            view.topAnchor.constraint(equalTo: topAnchor),
//            view.bottomAnchor.constraint(equalTo: bottomAnchor)
//        ])
    }
    
    private func loadViewFromNib() -> UIView {
        Self.nib.instantiate(withOwner: self).first as! UIView
    }
}
