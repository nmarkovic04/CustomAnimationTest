//
//  CustomAnimationAnimator.swift
//  CustomAnimationTest
//
//  Created by Nikola Markovic on 10/13/15.
//  Copyright © 2015 XD. All rights reserved.
//

import UIKit

class CustomAnimationAnimator: NSObject, UIViewControllerAnimatedTransitioning {

    func transitionDuration(transitionContext: UIViewControllerContextTransitioning?) -> NSTimeInterval{
        return 1.0
    }
    
    func animateTransition(transitionContext: UIViewControllerContextTransitioning){
        let toViewController = transitionContext.viewControllerForKey(UITransitionContextToViewControllerKey)
        
        transitionContext.containerView()?.addSubview(toViewController!.view)
        toViewController!.view.alpha = 0.0
        
        UIView.animateWithDuration(0.5, animations: {
            toViewController!.view.alpha = 1.0
        }, completion: { (completed: Bool) -> Void in
            transitionContext.completeTransition(!transitionContext.transitionWasCancelled())
        })
    }
    
}
