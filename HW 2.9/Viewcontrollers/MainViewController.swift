//
//  mainViewController.swift
//  HW 2.9
//
//  Created by Zdrenko Zigich on 16.06.2022.
//

import Spring

class MainViewController: UIViewController {
    
    @IBOutlet weak var buttonLabel: SpringButton!
    
    @IBOutlet weak var springAnimationView: SpringView!
    
    @IBOutlet weak var delayValueLabel: UILabel!
    @IBOutlet weak var curveValueLabel: UILabel!
    @IBOutlet weak var presetValueLabel: UILabel!
    @IBOutlet weak var durationValueLabel: UILabel!
    @IBOutlet weak var forceValueLabel: UILabel!
    
    override func viewDidLoad() {
       updateValueLabel()
    }
    
    var animation = Animation.getAnimation()
    
    
    @IBAction func runSpringAnimation(_ sender: SpringButton) {
        updateValueLabel()
        startAnimation()
        animation = Animation.getAnimation()
        buttonLabel.setTitle("Run - \(animation.preset)", for: .normal)
    }
}

extension MainViewController {
    
    func updateValueLabel() {
        presetValueLabel.text = animation.preset
        curveValueLabel.text = animation.curve
        forceValueLabel.text = String(format: "%.2f", animation.force)
        durationValueLabel.text = String(format: "%.2f", animation.duration)
        delayValueLabel.text = String(format: "%.2f", animation.delay)
    }
    
    func startAnimation() {
        springAnimationView.animation = animation.preset
        springAnimationView.curve = animation.curve
        springAnimationView.force = animation.force
        springAnimationView.duration = animation.duration
        springAnimationView.delay = animation.delay
        springAnimationView.animate()
    }
}
