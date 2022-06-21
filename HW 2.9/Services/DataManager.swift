//
//  DataManager.swift
//  HW 2.9
//
//  Created by Zdrenko Zigich on 15.06.2022.
//

class DataManager {
    
    static let shared = DataManager()
    
    let presets = ["shake", "pop", "morph", "swing", "zoomIn"]
    let curves = ["spring", "linear", "easeIn", "easeOut", "easeInOut"]
    let forces = [0.3, 0.5, 0.6, 0.7]
    let durations = [0.5, 0.6, 0.7, 0.8]
    let delays = [0.03, 0.04, 0.05, 0.06, 0.07]
    
    private init() {}
}
