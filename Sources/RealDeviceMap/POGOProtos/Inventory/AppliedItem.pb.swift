// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: POGOProtos/Inventory/AppliedItem.proto
//
// For information on using the generated types, please see the documenation:
//   https://github.com/apple/swift-protobuf/

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that your are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

struct POGOProtos_Inventory_AppliedItem {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var itemID: POGOProtos_Inventory_Item_ItemId = .itemUnknown

  var itemType: POGOProtos_Inventory_Item_ItemType = .none

  var expireMs: Int64 = 0

  var appliedMs: Int64 = 0

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "POGOProtos.Inventory"

extension POGOProtos_Inventory_AppliedItem: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".AppliedItem"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "item_id"),
    2: .standard(proto: "item_type"),
    3: .standard(proto: "expire_ms"),
    4: .standard(proto: "applied_ms"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularEnumField(value: &self.itemID)
      case 2: try decoder.decodeSingularEnumField(value: &self.itemType)
      case 3: try decoder.decodeSingularInt64Field(value: &self.expireMs)
      case 4: try decoder.decodeSingularInt64Field(value: &self.appliedMs)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.itemID != .itemUnknown {
      try visitor.visitSingularEnumField(value: self.itemID, fieldNumber: 1)
    }
    if self.itemType != .none {
      try visitor.visitSingularEnumField(value: self.itemType, fieldNumber: 2)
    }
    if self.expireMs != 0 {
      try visitor.visitSingularInt64Field(value: self.expireMs, fieldNumber: 3)
    }
    if self.appliedMs != 0 {
      try visitor.visitSingularInt64Field(value: self.appliedMs, fieldNumber: 4)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: POGOProtos_Inventory_AppliedItem, rhs: POGOProtos_Inventory_AppliedItem) -> Bool {
    if lhs.itemID != rhs.itemID {return false}
    if lhs.itemType != rhs.itemType {return false}
    if lhs.expireMs != rhs.expireMs {return false}
    if lhs.appliedMs != rhs.appliedMs {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
