//
//  TlvBuilder.swift
//  TangemSdk
//
//  Created by Alexander Osokin on 23.01.2020.
//  Copyright © 2020 Tangem AG. All rights reserved.
//

import Foundation

public class TlvBuilder {
    private var tlvs = [Tlv]()
    private let encoder = TlvEncoder()
    
    @discardableResult
    public func append<T>(_ tag: TlvTag, value: T?) throws -> TlvBuilder {
        tlvs.append(try encoder.encode(tag, value: value))
        return self
    }
    
    public func serialize() -> Data {
        return tlvs.serialize()
    }
}
