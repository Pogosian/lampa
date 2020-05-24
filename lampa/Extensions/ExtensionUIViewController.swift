import Foundation
import UIKit

extension UIViewController {
    
    var activityIndicatorTag: Int { return 999999 }
    
    func startActivityIndicator( style: UIActivityIndicatorView.Style = .large, location: CGPoint? = nil) {
//        UIApplication.shared.beginIgnoringInteractionEvents()
        self.view.isUserInteractionEnabled = false
        DispatchQueue.main.async  {
            let loc = location ?? self.view.center
            let activityIndicator = UIActivityIndicatorView(style: style)
            activityIndicator.color = UIColor(named: "ActivityIndicatorColor")
            activityIndicator.tag = self.activityIndicatorTag
            activityIndicator.center = loc
            activityIndicator.hidesWhenStopped = true
            activityIndicator.startAnimating()
            self.view.addSubview(activityIndicator)
        }
    }
    
    func stopActivityIndicator() {
        DispatchQueue.main.async  {
            if let activityIndicator = self.view.subviews.filter(
                { $0.tag == self.activityIndicatorTag}).first as? UIActivityIndicatorView {
                activityIndicator.stopAnimating()
                activityIndicator.removeFromSuperview()
//                UIApplication.shared.endIgnoringInteractionEvents()
                self.view.isUserInteractionEnabled = true
            }
        }
    }
    
    func setImageWhenNoData(image: UIImage?, widthImage: CGFloat, heightImage: CGFloat, textDescroption: String, hidden: Bool, showButton: Bool = false, isPositionInTheCenter: Bool = true) {
        if let defaultImage = self.view.viewWithTag(10) as? UIImageView {
            defaultImage.removeFromSuperview()
        }
        if let defaultlabel = self.view.viewWithTag(20) as? UILabel {
            defaultlabel.removeFromSuperview()
        }
        if let defaultButton = self.view.viewWithTag(30) as? UIButton {
            defaultButton.removeFromSuperview()
        }
        if !hidden {
            let defaultImage : UIImageView = {
                let imageView = UIImageView(image: image)
                imageView.translatesAutoresizingMaskIntoConstraints = false
                return imageView
            }()

            let defaultlabel : UILabel = {
                let label = UILabel()
                label.textAlignment = .center
                label.font = UIFont(name: "Poppins-Regular", size: 14)
                label.text = textDescroption
                label.textColor = UIColor(red: 0.67, green: 0.71, blue: 0.74, alpha: 1)
                label.translatesAutoresizingMaskIntoConstraints = false
                label.numberOfLines = 0
                return label
            }()
            
            let defaultButton : UIButton = {
                let button = UIButton()
                button.titleLabel?.textAlignment = .center
                button.titleLabel?.font = UIFont(name: "Poppins-Regular", size: 14)
                button.setTitle("test", for: .normal)
                button.titleLabel?.textColor = .white
                button.isUserInteractionEnabled = true
                button.translatesAutoresizingMaskIntoConstraints = false
                return button
            }()
            
            print(defaultImage.tag)

            view.translatesAutoresizingMaskIntoConstraints = true
            defaultImage.tag = 10
            defaultlabel.tag = 20
            defaultButton.tag = 30
            self.view.addSubview(defaultImage)
            self.view.addSubview(defaultlabel)
            if showButton {
                self.view.addSubview(defaultButton)
            }
             print(defaultImage.tag)

            if isPositionInTheCenter {
                defaultImage.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
                defaultImage.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -50).isActive = true
                defaultImage.widthAnchor.constraint(equalToConstant: widthImage).isActive = true
                defaultImage.heightAnchor.constraint(equalToConstant: heightImage).isActive = true
                defaultlabel.topAnchor.constraint(equalTo: defaultImage.bottomAnchor, constant: 20).isActive = true
                defaultlabel.centerXAnchor.constraint(equalTo: defaultImage.centerXAnchor).isActive = true
                defaultlabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 16).isActive = true
                defaultlabel.widthAnchor.constraint(equalToConstant: view.frame.width - 32).isActive = true
                if showButton {
                    defaultButton.topAnchor.constraint(equalTo: defaultlabel.bottomAnchor, constant: 20).isActive = true
                    defaultButton.centerXAnchor.constraint(equalTo: defaultlabel.centerXAnchor).isActive = true
                    defaultButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 16).isActive = true
                    defaultButton.widthAnchor.constraint(equalToConstant: view.frame.width - 32).isActive = true
                    defaultButton.heightAnchor.constraint(equalToConstant: 46).isActive = true
                    defaultButton.layer.masksToBounds = true
                    defaultButton.layer.cornerRadius = 10
                }
            } else {
                defaultImage.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 150).isActive = true
                defaultImage.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
                defaultlabel.topAnchor.constraint(equalTo: defaultImage.bottomAnchor, constant: 20).isActive = true
                defaultlabel.centerXAnchor.constraint(equalTo: defaultImage.centerXAnchor).isActive = true
            }
        }
    }
    
}
