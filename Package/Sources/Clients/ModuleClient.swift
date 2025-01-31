//
//  ModuleClient.swift
//  
//
//  Created by ErrorErrorError on 10/5/23.
//  
//

import Foundation

struct ModuleClient: Client {
    var dependencies: any Dependencies {
        DatabaseClient()
        FileClient()
        SharedModels()
        WasmInterpreter()
        Tagged()
        ComposableArchitecture()
        SwiftSoup()
        Semaphore()
    }
}
