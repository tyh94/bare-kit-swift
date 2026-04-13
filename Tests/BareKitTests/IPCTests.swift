//
//  IPCTests.swift
//  BareKitSwift
//
//  Created by Татьяна Макеева on 13.04.2026.
//

import Testing
@testable import BareKitSwift

struct IPCTests {
    @Test
    func ipc_init() throws {
        let worklet = Worklet()
        _ = IPC(worklet: worklet)
        
        #expect(true)
    }

    @Test
    func ipc_close() throws {
        let worklet = Worklet()
        let ipc = IPC(worklet: worklet)

        ipc.close()

        #expect(true)
    }

}
