//
// GeneratorViewController.swift
//  Bingo App
//
//  Created by Andrew Nomura on 10/3/20.
//

import UIKit

class GeneratorViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBOutlet weak var calledNumber: UILabel!
    
    @IBAction func callPressed(_ sender: UIButton) {
        calledNumber.text = bingoMachine.getNumber()
    }
    
    @IBAction func showBoardPressed(_ sender: UIButton) {
    }
    
    
    @IBAction func resetBoardPressed(_ sender: UIButton) {
    }
    
    @IBAction func back(){
        dismiss(animated: true, completion: nil)
    }

    var bingoMachine = BingoMachine()

}
