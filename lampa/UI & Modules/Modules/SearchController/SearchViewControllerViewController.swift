
import UIKit

class SearchViewControllerViewController: UIViewController, SearchViewControllerViewProtocol {

	var presenter: SearchViewControllerPresenterProtocol?

    @IBOutlet weak var searchBar: UISearchBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
