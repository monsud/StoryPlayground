import UIKit
import PlaygroundSupport

 class ViewController : UIViewController {
    var sfondoMainView : UIImageView!
    var sfondo : UIImage!
    var haze: UIImage!
    var nest: UIImage!
    var sleep:UIImage!

    override func loadView() {
        let myView = UIView()
           
        
        sleep = UIImage(named: "Z.png")
        
        
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
        
        let sleepView1 = UIImageView()
        sleepView1.frame = CGRect(x: 190, y: 410, width: 30, height: 30)
        sleepView1.image = sleep
        myView.addSubview(sleepView1)
        
        let sleepView2 = UIImageView()
        sleepView2.frame = CGRect(x: 180, y: 440, width: 30, height: 30)
        sleepView2.image = sleep
        myView.addSubview(sleepView2)
        
        let sleepView3 = UIImageView()
        sleepView3.frame = CGRect(x: 170, y: 470, width: 30, height: 30)
        sleepView3.image = sleep
        myView.addSubview(sleepView3)
  
        self.view = myView
    }
}

    let viewController = ViewController()
    PlaygroundPage.current.liveView = viewController
    PlaygroundPage.current.needsIndefiniteExecution = true
