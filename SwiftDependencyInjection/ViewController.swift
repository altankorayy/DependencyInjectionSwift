//
//  ViewController.swift
//  SwiftDependencyInjection
//
//  Created by Altan on 5.06.2023.
//

import UIKit
import Swinject

class ViewController: UIViewController {

    //Swinject
    let container: Container = {
       let container = Container()
        container.register(BackgroundProviding.self) { resolver in
            return BackgroundProviding()
        }
        
        container.register(SecondViewController.self) { resolver in
            let vc = SecondViewController(providerProtocol: resolver.resolve(BackgroundProviding.self))
            return vc
        }
        
        return container
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBlue
        
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 250, height: 250))
        button.setTitle("Open another VC", for: .normal)
        button.center = view.center
        button.addTarget(self, action: #selector(buttonClicked), for: .touchUpInside)
        view.addSubview(button)
    }
    
    @objc private func buttonClicked() {
        if let viewController = container.resolve(SecondViewController.self) {
            present(viewController,animated: true)
        }
    }


}

