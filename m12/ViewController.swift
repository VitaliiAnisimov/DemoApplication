//
//  ViewController.swift
//  m12
//
//  Created by admin on 24.04.22.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - Views
    
    private lazy var imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = Constants.Image.star
        return imageView
    }()
    
    private lazy var label1: UILabel = {
       let label = UILabel()
        label.text = Constants.Text.label1
        label.textColor = Constants.Colors.red
        label.font = Constants.Fonts.ui14Semi
        return label
    }()
    
    private lazy var label2: UILabel = {
       let label = UILabel()
        label.text = Constants.Text.label2
        label.textColor = Constants.Colors.blue
        label.font = Constants.Fonts.ui14Medium
        return label
    }()
    
    private lazy var label3: UILabel = {
       let label = UILabel()
        label.text = Constants.Text.label3
        label.textColor = Constants.Colors.black
        label.font = Constants.Fonts.ui14Regular
        return label
    }()
    
    private lazy var label4: UILabel = {
        let label = UILabel()
        let string = "Hello, world"
        let attributedString: NSMutableAttributedString = NSMutableAttributedString(string: string)
        if let commaIndex = string.firstIndex(of: ",") {
            attributedString.addAttribute(
                .font,
                value: UIFont.systemFont(ofSize: 16),
                range: NSRange(string.startIndex ..< commaIndex, in: string)
            )
            attributedString.addAttribute(
                .font,
                value: UIFont.systemFont(ofSize: 24),
                range: NSRange(commaIndex ..< string.endIndex, in: string)
            )
            
        }
        label.attributedText = attributedString
        return label
    }()
    
    private lazy var stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.spacing = 16
        stackView.addArrangedSubview(imageView)
        stackView.addArrangedSubview(label1)
        stackView.addArrangedSubview(label2)
        stackView.addArrangedSubview(label3)
        stackView.addArrangedSubview(label4)
        return stackView
    }()
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        setupConstraints()
    }

    // MARK: - Private

    private func setupViews() {
        view.addSubview(stackView)
    }
    
    private func setupConstraints() {
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        stackView.widthAnchor.constraint(equalToConstant: 250).isActive = true
    }


}


