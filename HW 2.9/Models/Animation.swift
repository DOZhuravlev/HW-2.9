//
//  Animation.swift
//  HW 2.9
//
//  Created by Zdrenko Zigich on 15.06.2022.
//

import Foundation

struct Animation {
    let preset: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double
    
    static func getAnimation() -> Animation {
    
        let someAnimation = Animation(
            preset: DataManager.shared.presets.shuffled().first ?? "",
            curve: DataManager.shared.curves.shuffled().first ?? "",
            force: DataManager.shared.forces.shuffled().first ?? 0,
            duration: DataManager.shared.durations.shuffled().first ?? 0,
            delay: DataManager.shared.delays.shuffled().first ?? 0
        )
        return someAnimation
    }
}
