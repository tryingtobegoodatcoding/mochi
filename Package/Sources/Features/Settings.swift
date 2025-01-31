//
//  Settings.swift
//  
//
//  Created by ErrorErrorError on 10/5/23.
//  
//

struct Settings: Feature {
    var dependencies: any Dependencies {
        Architecture()
        Build()
        SharedModels()
        Styling()
        ViewComponents()
        UserSettingsClient()
        ComposableArchitecture()
        NukeUI()
    }
}
