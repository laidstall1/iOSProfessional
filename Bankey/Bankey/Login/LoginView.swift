//
//  LoginView.swift
//  Bankey
//
//  Created by DIGITAL VENTURES on 05/03/2022.
//

import UIKit

class LoginView: UIView {
    let verticalStackView = UIStackView()
    
    let usernameTextfield = UITextField()
    let passwordTextfield = UITextField()
    let divider = UIView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        style()
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
//    override var intrinsicContentSize: CGSize {
//        return CGSize(width: 200, height: 200)
//    }
}

extension LoginView {
    func style() {
        translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = .secondarySystemBackground
        
        divider.translatesAutoresizingMaskIntoConstraints = false
        divider.backgroundColor = .secondarySystemFill
        
        verticalStackView.translatesAutoresizingMaskIntoConstraints = false
        verticalStackView.axis = .vertical
        verticalStackView.spacing = 8
        
        usernameTextfield.translatesAutoresizingMaskIntoConstraints = false
        usernameTextfield.placeholder = "Username"
        usernameTextfield.delegate = self
        
        passwordTextfield.translatesAutoresizingMaskIntoConstraints = false
        passwordTextfield.placeholder = "Password "
        passwordTextfield.isSecureTextEntry = true
        passwordTextfield.delegate = self
        
        layer.cornerRadius = 5
        clipsToBounds = true
    }
    
    func layout() {
        verticalStackView.addArrangedSubview(usernameTextfield)
        verticalStackView.addArrangedSubview(divider)
        verticalStackView.addArrangedSubview(passwordTextfield)
       
        addSubview(verticalStackView)
        
        NSLayoutConstraint.activate([
            verticalStackView.topAnchor.constraint(equalToSystemSpacingBelow: topAnchor, multiplier: 1),
            verticalStackView.leadingAnchor.constraint(equalToSystemSpacingAfter: leadingAnchor, multiplier: 1),
            trailingAnchor.constraint(equalToSystemSpacingAfter: verticalStackView.trailingAnchor, multiplier: 1),
            bottomAnchor.constraint(equalToSystemSpacingBelow: verticalStackView.bottomAnchor, multiplier: 1),
            
            divider.heightAnchor.constraint(equalToConstant: 1)
        ])
    }
}

extension LoginView: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        usernameTextfield.endEditing(true)
        passwordTextfield.endEditing(true)
        return true
    }
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
            return true
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        
    }
}
