//
//  HostModuleInterop+Json.swift
//
//
//  Created by ErrorErrorError on 5/9/23.
//
//

import Foundation
import WasmInterpreter

// MARK: JSON Imports

// swiftlint:disable closure_parameter_position
extension ModuleClient.Instance {
    func jsonImports() -> WasmInstance.Import {
        WasmInstance.Import(namespace: "json") {
            WasmInstance.Function("json_parse") { [self] (
                bufPtr: RawPtr,
                bufLen: Int32
            ) -> Int32 in
                hostBindings.json_parse(buf_ptr: bufPtr, buf_len: bufLen)
            }
        }
    }
}
