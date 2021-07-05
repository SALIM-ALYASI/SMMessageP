//
//  Downloadingpictures.swift
//  
//
//  Created by الياسي on 05/07/2021.
//

import Foundation
import UIKit

class Downloadingpictures: UIView {
     let activityIndicator: UIActivityIndicatorView = UIActivityIndicatorView()
    let activityIndicator2: ActivityIndicatorView = ActivityIndicatorView()
   var container: UIView = UIView()
    static let instance = Downloadingpictures()
    let Label : UILabel = UILabel()
 
    override init(frame: CGRect) {
        super.init(frame: frame)
    
//        commonInit()
//        activityIndicator.startAnimating()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func formactivityIndicator() {
        let newView = CustomView()
        newView.backgroundColor = #colorLiteral(red: 0.3333333433, green: 0.3333333433, blue: 0.3333333433, alpha: 1)
        newView.layer.cornerRadius = 10
        container.addSubview(newView)
        newView.translatesAutoresizingMaskIntoConstraints = false
        let horizontalConstraint = newView.centerXAnchor.constraint(equalTo: container.centerXAnchor)
        let verticalConstraint = newView.centerYAnchor.constraint(equalTo: container.centerYAnchor)
        NSLayoutConstraint.activate([horizontalConstraint, verticalConstraint])
        container.backgroundColor = #colorLiteral(red: 0.6666666865, green: 0.6666666865, blue: 0.6666666865, alpha: 0.5089798479)
        Label.font = Label.font.withSize(15)
        activityIndicator.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
       // activityIndicator.color = #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1)
        activityIndicator.style = UIActivityIndicatorView.Style.whiteLarge
        activityIndicator.center = CGPoint(x: 50, y: 40);
        Label.textAlignment = .center
        Label.frame = CGRect(x: 100, y:100, width: 150.0, height: 50)
        Label.center = CGPoint(x: 50, y: 75);
        newView.addSubview(Label)
        newView.addSubview(activityIndicator)
        activityIndicator.startAnimating()
       
        for subview in container.subviews {
            if subview.tag == 100 {
                print("already added")
                return
            }
        }
        container.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        container.autoresizingMask = [.flexibleHeight, .flexibleWidth]
    }
    
    private func cercle() {
        let newView = CustomView()
        newView.backgroundColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        newView.layer.cornerRadius = 10
        container.addSubview(newView)
        newView.translatesAutoresizingMaskIntoConstraints = false
        let horizontalConstraint = newView.centerXAnchor.constraint(equalTo: container.centerXAnchor)
        let verticalConstraint = newView.centerYAnchor.constraint(equalTo: container.centerYAnchor)
        NSLayoutConstraint.activate([horizontalConstraint, verticalConstraint])
        container.backgroundColor = #colorLiteral(red: 0.3333333433, green: 0.3333333433, blue: 0.3333333433, alpha: 0.7010558678)
        Label.font = Label.font.withSize(15)
        activityIndicator2.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
        activityIndicator2.center = CGPoint(x: 50, y: 30);
        Label.textAlignment = .center
        Label.frame = CGRect(x: 100, y:100, width: 150.0, height: 50)
        Label.center = CGPoint(x: 50, y: 75);
        newView.addSubview(Label)
        newView.addSubview(activityIndicator2)
         
        for subview in container.subviews {
            if subview.tag == 100 {
                print("already added")
                return
            }
        }
        container.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        container.autoresizingMask = [.flexibleHeight, .flexibleWidth]
    }
 
    func showAlertFormactivityIndicator(_ title: String) {
    self.Label.text = title
        formactivityIndicator()
    UIApplication.shared.keyWindow?.addSubview(container)
    }

    func showAlertcCercle(title: String) {
    self.Label.text = title
        cercle()
    UIApplication.shared.keyWindow?.addSubview(container)
    }
    func stop() {
        DispatchQueue.main.async {
          self.activityIndicator.stopAnimating()
          self.container.removeFromSuperview()
          }
    }
 
    
    
    
    
    
    
}
class CustomView: UIView {
    
    override var intrinsicContentSize: CGSize {
        return CGSize(width: 100, height:100.0)
    }
    
}
