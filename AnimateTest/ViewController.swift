//
//  ViewController.swift
//  AnimateTest
//
//  Created by Nasser Lamei on 25/09/2024.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var loginButtonTopConstraints: NSLayoutConstraint!

    @IBOutlet weak var loadingSpinear: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadingSpinear.isHidden = true
        hideViews()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        animateView()
    }

    func hideViews(){
        let scaleDownTransform = CGAffineTransform(scaleX: 0, y: 0)
        imageView.transform = scaleDownTransform
        
        let scaleLeftTotransform = CGAffineTransform(translationX: -UIScreen.main.bounds.width, y: 0)
        userNameTextField.transform = scaleLeftTotransform
        
        let scaleRightTotransform = CGAffineTransform(translationX: UIScreen.main.bounds.width, y: 0)
        passwordTextField.transform = scaleRightTotransform
        
    }
    
    func animateView(){
        DispatchQueue.main.async {
            UIView.animate(withDuration: 1) {
                self.imageView.transform = .identity
                self.userNameTextField.transform = .identity
                self.passwordTextField.transform = .identity
            }
           
        }
        
    }
    
    @IBAction func logInTapped(_ sender: Any) {
        animateLogin()
    }
    func animateLogin(){
        DispatchQueue.main.async {}
        self.loginButtonTopConstraints.constant = 100
        UIView.animate(withDuration: 0.6) {
            self.view.layoutIfNeeded()
        }
        self.loadingSpinear.isHidden = false
        self.loadingSpinear.startAnimating()
        
    }

}

