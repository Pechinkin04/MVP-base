//
//  ViewController.swift
//  MVP-Level One
//
//  Created by Александр Печинкин on 03.05.2024.
//

import UIKit

class MainViewController: UIViewController {
    // MARK: - IBOutlet
    @IBOutlet weak var greetingLabel: UILabel!
    
    var presenter: MainViewPresenterProtocol!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    // MARK: - IBOutlet
    @IBAction func didTapButtonAction(_ sender: Any) {
        self.presenter.showGreeting()
    }

}

extension MainViewController: MainViewProtocol { // Binding
    
    func setGreeting(greeting: String) {
        self.greetingLabel.text = greeting
    }
}
