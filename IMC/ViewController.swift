//
//  ViewController.swift
//  IMC
//
//  Created by Usuário Convidado on 05/03/18.
//  Copyright © 2018 FIAP. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tfWeight: UITextField!
    @IBOutlet weak var tfHeight: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Tela 1: viewDidLoad")
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("Tela 1: viewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("Tela 1: viewDidAppear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("Tela 1: viewWillDisappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("Tela 1: viewDidDisapear")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let imc = sender as? Double {
            if let vc = segue.destination as? ResultViewController {
                vc.imc = imc
            }
        }
    }

    @IBAction func calculate(_ sender: Any) {
        let weight = Double(tfWeight.text!)!
        let height = Double(tfHeight.text!)!
        let imc = weight / (height * height)
        print(imc)
        performSegue(withIdentifier: "resultSegue", sender: imc)
    }
    
}

