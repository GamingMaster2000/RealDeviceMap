// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: POGOProtos/Settings/UpsightLoggingSettings.proto
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

struct POGOProtos_Settings_UpsightLoggingSettings {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var useVerboseLogging: Bool = false

  var loggingPercentage: Int32 = 0

  var disableLogging: Bool = false

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "POGOProtos.Settings"

extension POGOProtos_Settings_UpsightLoggingSettings: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".UpsightLoggingSettings"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "use_verbose_logging"),
    2: .standard(proto: "logging_percentage"),
    3: .standard(proto: "disable_logging"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularBoolField(value: &self.useVerboseLogging)
      case 2: try decoder.decodeSingularInt32Field(value: &self.loggingPercentage)
      case 3: try decoder.decodeSingularBoolField(value: &self.disableLogging)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.useVerboseLogging != false {
      try visitor.visitSingularBoolField(value: self.useVerboseLogging, fieldNumber: 1)
    }
    if self.loggingPercentage != 0 {
      try visitor.visitSingularInt32Field(value: self.loggingPercentage, fieldNumber: 2)
    }
    if self.disableLogging != false {
      try visitor.visitSingularBoolField(value: self.disableLogging, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: POGOProtos_Settings_UpsightLoggingSettings, rhs: POGOProtos_Settings_UpsightLoggingSettings) -> Bool {
    if lhs.useVerboseLogging != rhs.useVerboseLogging {return false}
    if lhs.loggingPercentage != rhs.loggingPercentage {return false}
    if lhs.disableLogging != rhs.disableLogging {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
