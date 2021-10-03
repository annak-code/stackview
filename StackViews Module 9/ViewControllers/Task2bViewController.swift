//
//  Task2aViewController.swift
//  StackViews Module 9
//
//

import UIKit

class Task2bViewController: UIViewController {

    @IBOutlet weak var showAndHideButton: UIButton!
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var heightConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textLabel.text = "afdafjdfjdjflk kldjfkldjfkldjfkdj dsjfkdjsfkdjf kjafkjdfljasklfd jklfjdkjfdjfdljf kldjfldjfk;djfjsa олдолдыовалдыоалофлваоф а фоавлжаолваовф авлла воал выоалдвыао выдлаовылдфаовлдфао вдлфаовыдф аволфа воалвы жаовл фаовлдыавыолао выфлда овфыдл ажволаовфажова "
        // Do any additional setup after loading the view.
    }
    
    @IBAction func showAndHide(_ sender: UIButton) {
        let shouldShowInfo = sender.titleLabel!.text! == "Show"
        
        updateTextLabel(showInfo: shouldShowInfo)
    }
    
    func updateTextLabel(showInfo shouldShowInfo: Bool) {
        let newButtonTitle = shouldShowInfo ? "Hide" : "Show"
        
        if shouldShowInfo {
            self.heightConstraint.constant = 200
            
            UIView.animate(withDuration: 0.3) {
                self.showAndHideButton.setTitle(newButtonTitle, for: .normal)
                self.textLabel.numberOfLines = 5
                self.view.layoutIfNeeded()
            }
        } else {
            self.heightConstraint.constant = 40
            
            UIView.animate(withDuration: 0.3) {
                self.showAndHideButton.setTitle(newButtonTitle, for: .normal)
                self.view.layoutIfNeeded()
            }
        }
    }
    
}
