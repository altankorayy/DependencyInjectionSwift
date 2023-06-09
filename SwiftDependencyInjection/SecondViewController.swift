//
//  SecondViewController.swift
//  SwiftDependencyInjection
//
//  Created by Altan on 5.06.2023.
//

import UIKit

class SecondViewController: UIViewController {
    
    private let providerProtocol: BackgroundProvider?
    
    init(providerProtocol: BackgroundProvider?) {
        self.providerProtocol = providerProtocol
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = providerProtocol?.backgroundColor ?? .white
    }
    
    

}
