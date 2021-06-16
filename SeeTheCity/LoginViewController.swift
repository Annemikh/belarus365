

import UIKit
import TwitterKit

class LoginViewController: UIViewController {

    // MARK: Properties
    
    @IBOutlet weak var signInTwitterButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    private func navigateToMainAppScreen() {
        performSegueWithIdentifier("citySegue", sender: self)
    }
    
     // MARK: IBActions
    
    @IBAction func signInWithTwitter(sender: UIButton) {
        Twitter.sharedInstance().logInWithCompletion { session, error in
            if session != nil {
                
                // Navigate to the main app screen to select a city.
                self.navigateToMainAppScreen()

            }
        }
    }
    
    @IBAction func skipSignInButton(sender: UIButton) {

        self.navigateToMainAppScreen()
    }

}
