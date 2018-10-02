// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: POGOProtos/Data/Capture/CaptureAward.proto
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

struct POGOProtos_Data_Capture_CaptureAward {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var activityType: [POGOProtos_Enums_ActivityType] = []

  var xp: [Int32] = []

  var candy: [Int32] = []

  var stardust: [Int32] = []

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "POGOProtos.Data.Capture"

extension POGOProtos_Data_Capture_CaptureAward: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".CaptureAward"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "activity_type"),
    2: .same(proto: "xp"),
    3: .same(proto: "candy"),
    4: .same(proto: "stardust"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeRepeatedEnumField(value: &self.activityType)
      case 2: try decoder.decodeRepeatedInt32Field(value: &self.xp)
      case 3: try decoder.decodeRepeatedInt32Field(value: &self.candy)
      case 4: try decoder.decodeRepeatedInt32Field(value: &self.stardust)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.activityType.isEmpty {
      try visitor.visitPackedEnumField(value: self.activityType, fieldNumber: 1)
    }
    if !self.xp.isEmpty {
      try visitor.visitPackedInt32Field(value: self.xp, fieldNumber: 2)
    }
    if !self.candy.isEmpty {
      try visitor.visitPackedInt32Field(value: self.candy, fieldNumber: 3)
    }
    if !self.stardust.isEmpty {
      try visitor.visitPackedInt32Field(value: self.stardust, fieldNumber: 4)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: POGOProtos_Data_Capture_CaptureAward, rhs: POGOProtos_Data_Capture_CaptureAward) -> Bool {
    if lhs.activityType != rhs.activityType {return false}
    if lhs.xp != rhs.xp {return false}
    if lhs.candy != rhs.candy {return false}
    if lhs.stardust != rhs.stardust {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
