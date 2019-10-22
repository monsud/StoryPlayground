import UIKit
import PlaygroundSupport

 class ViewController : UIViewController {
    var sfondoMainView : UIImageView!
    var sfondo : UIImage!
    var haze: UIImage!
    var nest: UIImage!

    override func loadView() {
        let myView = UIView()
           
        let sfondoMainView = UIImageView()
        sfondoMainView.frame = CGRect(x: 0, y: 0, width: 1100, height: 700)
        sfondo = UIImage(named: "background.jpg")
        sfondoMainView.image = sfondo
        myView.addSubview(sfondoMainView)
  
        //----> Nest
        
        let nestView = UIImageView()
        nestView.frame = CGRect(x: 180, y: 530, width: 100, height: 80)
        nest = UIImage(named: "nest.png")
        nestView.image = nest
        myView.addSubview(nestView)
 
        // ----> Haze
        let hazeView = UIImageView()
        hazeView.frame = CGRect(x: 190, y: 486, width: 100, height: 80)
        haze = UIImage(named: "hazesl.png")
        hazeView.image = haze
        myView.addSubview(hazeView)
        // ------
  
        self.view = myView
    }
}

    let viewController = ViewController()
    PlaygroundPage.current.liveView = viewController
    PlaygroundPage.current.needsIndefiniteExecution = true
