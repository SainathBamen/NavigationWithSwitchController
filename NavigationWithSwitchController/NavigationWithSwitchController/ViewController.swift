//
//  ViewController.swift
//  NavigationWithSwitchController
//
//  Created by mac on 12/30/23.
//

import UIKit

class ViewController: UIViewController {
    enum NavigationDestination: String{
        case home
        case profile
        case settings
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func navigateTo(destination: NavigationDestination){
        switch destination{
        case .home:
            navigationController?.pushViewController(HomeViewController(), animated: true)
        case .profile:
            navigationController?.pushViewController(ProfileViewController(), animated: true)
        case .settings:
            navigationController?.pushViewController(SettingsViewController(), animated: true)
        }
    }
    
    
    @IBAction func homeBtn(_ sender: UIButton) {
        navigateTo(destination: .home)
        print("hello")
    }
    
    @IBAction func profileBtn(_ sender: UIButton) {
        navigateTo(destination: .profile)
    }
    
    @IBAction func Settings(_ sender: UIButton) {
        navigateTo(destination: .settings)
    }
    
}
