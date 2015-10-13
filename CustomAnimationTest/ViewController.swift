//
//  ViewController.swift
//  CustomAnimationTest
//
//  Created by Nikola Markovic on 10/13/15.
//  Copyright © 2015 XD. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UINavigationControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.translucent = false
        self.navigationController?.delegate = self
    }

    @IBAction func didTouchUpInsideButtonShowSecondVC(sender: AnyObject) {
        let secondVC = UIStoryboard(name: "Main", bundle: NSBundle.mainBundle()).instantiateViewControllerWithIdentifier("vc2")
        self.navigationController?.pushViewController(secondVC, animated: true)
    }
    
    func navigationController(navigationController: UINavigationController, animationControllerForOperation operation: UINavigationControllerOperation, fromViewController fromVC: UIViewController, toViewController toVC: UIViewController) -> UIViewControllerAnimatedTransitioning?{
        if(operation == .Push && fromVC == self){
            return CustomAnimationAnimator()
        }else{
            return nil
        }
    }

}

