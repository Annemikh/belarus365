

import UIKit
import TwitterKit

class AttractionTwitterTimelineViewController: TWTRTimelineViewController {
    
    var handle: String!
    
    override func viewDidLoad() {
        
        let client = TWTRAPIClient()
        
        super.viewDidLoad()

        self.dataSource = TWTRSearchTimelineDataSource(searchQuery: "@\(handle)", APIClient: client)

        self.showTweetActions = true
    }

}
