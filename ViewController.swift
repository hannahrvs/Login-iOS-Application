// Project: SepnioHannah-HW2
// EID: hvs337
// Course: CS329E

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var userID: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var statusLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // add code to dismiss keyboard
    func textFieldShouldReturn(_ textField:UITextField) -> Bool {
            textField.resignFirstResponder()
            return true
        }
        
        // Called when the user clicks on the view outside of the UITextField

        override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
            self.view.endEditing(true)
        }
    
    @IBAction func buttonPressed(_ sender: Any) {
        // retrieve the text contained in the text field
        let name = userID.text!
        let password = password.text!
        
        if name.isEmpty || password.isEmpty {
            statusLabel.text = "Invalid login"
        } else {
            statusLabel.text = "\(name) logged in"
        }
    }
    
}

