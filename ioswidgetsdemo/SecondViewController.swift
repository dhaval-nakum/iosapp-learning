
import UIKit

class SecondViewController: UIViewController {
    
    

    @IBOutlet weak var cwebView: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        cwebView.loadRequest(URLRequest(url:  URL(string: "https://stackoverflow.com/questions/50928331/how-to-load-image-from-local-image-path-ios-swift-4")!))

        // Do any additional setup after loading the view.
    }
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
