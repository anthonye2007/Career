[![Build Status](https://travis-ci.org/walton713/Career.svg?branch=master)](https://travis-ci.org/walton713/Career)

# Career
Assessment driven career planning

# Lessons Learned
## Unit testing view controllers
You need to instantiate the view controller from the storyboard, *not* via `ViewController()``

```
import XCTest
@testable import AssessmentApp

class ViewControllerTests: XCTestCase {

    var vcLogin: ViewController!

    override func setUp() {
        super.setUp()

        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc: ViewController = storyboard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        vcLogin = vc
        _ = vcLogin.view // To call viewDidLoad
    }

    func testViewControllerLoads() {
        XCTAssertNotNil(vcLogin)
    }
}
```

### Build Settings
You need to set the Host Application for the test target. See the General tab of the target settings.
Then go to the Build Settings tab and look at `Bundle Loader`. Delete any existing values, then enter `$(TEST_HOST)` for the value. The Debug and Release values should update and be different from each other.
