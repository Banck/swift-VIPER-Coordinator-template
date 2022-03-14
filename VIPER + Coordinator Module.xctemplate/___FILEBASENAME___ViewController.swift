//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//
//  Template generated by Sakhabaev Egor @Banck
//  https://github.com/Banck/swift-VIPER-Coordinator-template
//

import UIKit

class ___VARIABLE_productName:identifier___ViewController: UIViewController {

    // MARK: - Properties
	var presenter: ___VARIABLE_productName:identifier___PresenterInterface?

    // MARK: - Lifecycle -
	override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
        presenter?.viewDidLoad()
    }
}

// MARK: - UI Configuration
extension ___VARIABLE_productName:identifier___ViewController {

    private func configureUI() {

    }
}

// MARK: - ___VARIABLE_productName:identifier___View
extension ___VARIABLE_productName:identifier___ViewController: ___VARIABLE_productName:identifier___View {

}
