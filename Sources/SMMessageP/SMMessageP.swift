import UIKit
 let activityIndicator: UIActivityIndicatorView = UIActivityIndicatorView()
var container: UIView = UIView()
var loadingView: UIView = UIView()
 public extension UIViewController {
    func showActivityIndicator(_ title:String) {
        
        let Label : UILabel = UILabel()
        container.frame = view.frame
        container.center = view.center
        container.backgroundColor = #colorLiteral(red: 0.6666666865, green: 0.6666666865, blue: 0.6666666865, alpha: 0.5089798479)
        Label.text = title
        loadingView.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        loadingView.center = view.center
        loadingView.backgroundColor = #colorLiteral(red: 0.6666666865, green: 0.6666666865, blue: 0.6666666865, alpha: 1)
        loadingView.clipsToBounds = true
        loadingView.layer.cornerRadius = 10
        activityIndicator.frame = CGRect(x: 0, y: 0, width: 30.0, height: 30.0)
        activityIndicator.style = UIActivityIndicatorView.Style.whiteLarge
        activityIndicator.center = CGPoint(x: loadingView.frame.size.width / 2, y: loadingView.frame.size.height / 2);
         Label.textAlignment = .center
        Label.frame = CGRect(x: 100, y:100, width: 100.0, height: 50)
         Label.center = CGPoint(x:loadingView.frame.size.width / 2, y: 80);
         loadingView.addSubview(Label)
         loadingView.addSubview(activityIndicator)
        container.addSubview(loadingView)
        view.addSubview(container)
        activityIndicator.startAnimating()
        for subview in container.subviews {
            if subview.tag == 100 {
                print("already added")
                return
            }
        }

      //  container.addSubview(activityIndicator)
    }
    func showActivityIndicatora(_ title:String) {
        let activityIndicatorView: ActivityIndicatorView = ActivityIndicatorView()
        let Label : UILabel = UILabel()
        container.frame = view.frame
        container.center = view.center
        container.backgroundColor = #colorLiteral(red: 0.6666666865, green: 0.6666666865, blue: 0.6666666865, alpha: 0.5089798479)
        Label.text = title
        loadingView.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        loadingView.center = view.center
        loadingView.backgroundColor = #colorLiteral(red: 0.6666666865, green: 0.6666666865, blue: 0.6666666865, alpha: 1)
        loadingView.clipsToBounds = true
        loadingView.layer.cornerRadius = 10
        activityIndicatorView.frame = CGRect(x: 0, y: 0, width:  45, height: 45)
      //  activityIndicator.style = UIActivityIndicatorView.Style.whiteLarge
        activityIndicatorView.center = CGPoint(x: loadingView.frame.size.width / 2, y: 5);
         Label.textAlignment = .center
        Label.frame = CGRect(x: 100, y:100, width: 100.0, height: 50)
         Label.center = CGPoint(x:loadingView.frame.size.width / 2, y: 80);
         loadingView.addSubview(Label)
         loadingView.addSubview(activityIndicatorView)
        container.addSubview(loadingView)
        view.addSubview(container)
       // activityIndicator.startAnimating()
        for subview in container.subviews {
            if subview.tag == 100 {
                print("already added")
                return
            }
        }

      //  container.addSubview(activityIndicator)
    }
    func hideActivityIndicator() {
        let activityIndicator = container.viewWithTag(100) as? UIActivityIndicatorView
        activityIndicator?.stopAnimating()
        container.removeFromSuperview()
 
    }
 }
