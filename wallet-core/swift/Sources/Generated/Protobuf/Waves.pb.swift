// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: Waves.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that you are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

///Transfer transaction
public struct TW_Waves_Proto_TransferMessage {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var amount: Int64 = 0

  public var asset: String = String()

  /// minimum 0.001 Waves (100000 Wavelets) for now
  public var fee: Int64 = 0

  public var feeAsset: String = String()

  public var to: String = String()

  /// any 140 bytes payload, will be displayed to the client as utf-8 string
  public var attachment: Data = SwiftProtobuf.Internal.emptyData

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

///Lease transaction
public struct TW_Waves_Proto_LeaseMessage {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var amount: Int64 = 0

  public var to: String = String()

  /// minimum 0.001 Waves (100000 Wavelets) for now
  public var fee: Int64 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

///Lease transaction
public struct TW_Waves_Proto_CancelLeaseMessage {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var leaseID: String = String()

  public var fee: Int64 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// Input data necessary to create a signed transaction.
public struct TW_Waves_Proto_SigningInput {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// in millis
  public var timestamp: Int64 = 0

  public var privateKey: Data = SwiftProtobuf.Internal.emptyData

  public var messageOneof: TW_Waves_Proto_SigningInput.OneOf_MessageOneof? = nil

  public var transferMessage: TW_Waves_Proto_TransferMessage {
    get {
      if case .transferMessage(let v)? = messageOneof {return v}
      return TW_Waves_Proto_TransferMessage()
    }
    set {messageOneof = .transferMessage(newValue)}
  }

  public var leaseMessage: TW_Waves_Proto_LeaseMessage {
    get {
      if case .leaseMessage(let v)? = messageOneof {return v}
      return TW_Waves_Proto_LeaseMessage()
    }
    set {messageOneof = .leaseMessage(newValue)}
  }

  public var cancelLeaseMessage: TW_Waves_Proto_CancelLeaseMessage {
    get {
      if case .cancelLeaseMessage(let v)? = messageOneof {return v}
      return TW_Waves_Proto_CancelLeaseMessage()
    }
    set {messageOneof = .cancelLeaseMessage(newValue)}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public enum OneOf_MessageOneof: Equatable {
    case transferMessage(TW_Waves_Proto_TransferMessage)
    case leaseMessage(TW_Waves_Proto_LeaseMessage)
    case cancelLeaseMessage(TW_Waves_Proto_CancelLeaseMessage)

  #if !swift(>=4.1)
    public static func ==(lhs: TW_Waves_Proto_SigningInput.OneOf_MessageOneof, rhs: TW_Waves_Proto_SigningInput.OneOf_MessageOneof) -> Bool {
      switch (lhs, rhs) {
      case (.transferMessage(let l), .transferMessage(let r)): return l == r
      case (.leaseMessage(let l), .leaseMessage(let r)): return l == r
      case (.cancelLeaseMessage(let l), .cancelLeaseMessage(let r)): return l == r
      default: return false
      }
    }
  #endif
  }

  public init() {}
}

/// Transaction signing output.
public struct TW_Waves_Proto_SigningOutput {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var signature: Data = SwiftProtobuf.Internal.emptyData

  public var json: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "TW.Waves.Proto"

extension TW_Waves_Proto_TransferMessage: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".TransferMessage"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "amount"),
    2: .same(proto: "asset"),
    3: .same(proto: "fee"),
    4: .standard(proto: "fee_asset"),
    5: .same(proto: "to"),
    6: .same(proto: "attachment"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularInt64Field(value: &self.amount)
      case 2: try decoder.decodeSingularStringField(value: &self.asset)
      case 3: try decoder.decodeSingularInt64Field(value: &self.fee)
      case 4: try decoder.decodeSingularStringField(value: &self.feeAsset)
      case 5: try decoder.decodeSingularStringField(value: &self.to)
      case 6: try decoder.decodeSingularBytesField(value: &self.attachment)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.amount != 0 {
      try visitor.visitSingularInt64Field(value: self.amount, fieldNumber: 1)
    }
    if !self.asset.isEmpty {
      try visitor.visitSingularStringField(value: self.asset, fieldNumber: 2)
    }
    if self.fee != 0 {
      try visitor.visitSingularInt64Field(value: self.fee, fieldNumber: 3)
    }
    if !self.feeAsset.isEmpty {
      try visitor.visitSingularStringField(value: self.feeAsset, fieldNumber: 4)
    }
    if !self.to.isEmpty {
      try visitor.visitSingularStringField(value: self.to, fieldNumber: 5)
    }
    if !self.attachment.isEmpty {
      try visitor.visitSingularBytesField(value: self.attachment, fieldNumber: 6)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: TW_Waves_Proto_TransferMessage, rhs: TW_Waves_Proto_TransferMessage) -> Bool {
    if lhs.amount != rhs.amount {return false}
    if lhs.asset != rhs.asset {return false}
    if lhs.fee != rhs.fee {return false}
    if lhs.feeAsset != rhs.feeAsset {return false}
    if lhs.to != rhs.to {return false}
    if lhs.attachment != rhs.attachment {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension TW_Waves_Proto_LeaseMessage: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".LeaseMessage"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "amount"),
    2: .same(proto: "to"),
    3: .same(proto: "fee"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularInt64Field(value: &self.amount)
      case 2: try decoder.decodeSingularStringField(value: &self.to)
      case 3: try decoder.decodeSingularInt64Field(value: &self.fee)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.amount != 0 {
      try visitor.visitSingularInt64Field(value: self.amount, fieldNumber: 1)
    }
    if !self.to.isEmpty {
      try visitor.visitSingularStringField(value: self.to, fieldNumber: 2)
    }
    if self.fee != 0 {
      try visitor.visitSingularInt64Field(value: self.fee, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: TW_Waves_Proto_LeaseMessage, rhs: TW_Waves_Proto_LeaseMessage) -> Bool {
    if lhs.amount != rhs.amount {return false}
    if lhs.to != rhs.to {return false}
    if lhs.fee != rhs.fee {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension TW_Waves_Proto_CancelLeaseMessage: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".CancelLeaseMessage"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "lease_id"),
    2: .same(proto: "fee"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.leaseID)
      case 2: try decoder.decodeSingularInt64Field(value: &self.fee)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.leaseID.isEmpty {
      try visitor.visitSingularStringField(value: self.leaseID, fieldNumber: 1)
    }
    if self.fee != 0 {
      try visitor.visitSingularInt64Field(value: self.fee, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: TW_Waves_Proto_CancelLeaseMessage, rhs: TW_Waves_Proto_CancelLeaseMessage) -> Bool {
    if lhs.leaseID != rhs.leaseID {return false}
    if lhs.fee != rhs.fee {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension TW_Waves_Proto_SigningInput: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".SigningInput"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "timestamp"),
    2: .standard(proto: "private_key"),
    3: .standard(proto: "transfer_message"),
    4: .standard(proto: "lease_message"),
    5: .standard(proto: "cancel_lease_message"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularInt64Field(value: &self.timestamp)
      case 2: try decoder.decodeSingularBytesField(value: &self.privateKey)
      case 3:
        var v: TW_Waves_Proto_TransferMessage?
        if let current = self.messageOneof {
          try decoder.handleConflictingOneOf()
          if case .transferMessage(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.messageOneof = .transferMessage(v)}
      case 4:
        var v: TW_Waves_Proto_LeaseMessage?
        if let current = self.messageOneof {
          try decoder.handleConflictingOneOf()
          if case .leaseMessage(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.messageOneof = .leaseMessage(v)}
      case 5:
        var v: TW_Waves_Proto_CancelLeaseMessage?
        if let current = self.messageOneof {
          try decoder.handleConflictingOneOf()
          if case .cancelLeaseMessage(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.messageOneof = .cancelLeaseMessage(v)}
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.timestamp != 0 {
      try visitor.visitSingularInt64Field(value: self.timestamp, fieldNumber: 1)
    }
    if !self.privateKey.isEmpty {
      try visitor.visitSingularBytesField(value: self.privateKey, fieldNumber: 2)
    }
    switch self.messageOneof {
    case .transferMessage(let v)?:
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    case .leaseMessage(let v)?:
      try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
    case .cancelLeaseMessage(let v)?:
      try visitor.visitSingularMessageField(value: v, fieldNumber: 5)
    case nil: break
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: TW_Waves_Proto_SigningInput, rhs: TW_Waves_Proto_SigningInput) -> Bool {
    if lhs.timestamp != rhs.timestamp {return false}
    if lhs.privateKey != rhs.privateKey {return false}
    if lhs.messageOneof != rhs.messageOneof {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension TW_Waves_Proto_SigningOutput: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".SigningOutput"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "signature"),
    2: .same(proto: "json"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularBytesField(value: &self.signature)
      case 2: try decoder.decodeSingularStringField(value: &self.json)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.signature.isEmpty {
      try visitor.visitSingularBytesField(value: self.signature, fieldNumber: 1)
    }
    if !self.json.isEmpty {
      try visitor.visitSingularStringField(value: self.json, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: TW_Waves_Proto_SigningOutput, rhs: TW_Waves_Proto_SigningOutput) -> Bool {
    if lhs.signature != rhs.signature {return false}
    if lhs.json != rhs.json {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
