//
//  ViewController.swift
//  CucumberSwiftSample
//
//  Created by  Rana Javed
//

import UIKit
import Amplify
import Combine

class LoginController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let value = self.fetchCurrentAuthSession()
        print(value)
    }
    
    func fetchCurrentAuthSession() -> AnyCancellable {
        Amplify.Publisher.create {
            try await Amplify.Auth.fetchAuthSession()
        }.sink {
            if case let .failure(authError) = $0 {
                print("Fetch session failed with error \(authError)")
            }
        }
        receiveValue: { session in
            print("Is user signed in - \(session.isSignedIn)")
        }
    }
    
    @IBAction func didPressLoginButton(_ sender: UIButton) {
        Task { @MainActor in
            do{
                let result = try await Amplify.Auth.signIn(username:"test@test.com", password:"testpassword")
                if result != nil{
                    self.performSegue(withIdentifier: "showHealthView", sender: self)
                }
                print(result)
            }
            catch{
                print("Error")
            }
        }
    }
    
}

