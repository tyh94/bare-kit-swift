//
//  WorkletTests.swift
//  BareKitSwift
//
//  Created by Татьяна Макеева on 13.04.2026.
//

import Testing
@testable import BareKitSwift

struct WorkletTests {
    @Test
    func worklet_init_default() throws {
        _ = Worklet()
        
        #expect(true)
    }

    @Test
    func worklet_init_custom_config() throws {
        let config = Worklet.Configuration(
            memoryLimit: 1024,
            assets: "test"
        )

        _ = Worklet(configuration: config)
        
        #expect(true)
    }
}
