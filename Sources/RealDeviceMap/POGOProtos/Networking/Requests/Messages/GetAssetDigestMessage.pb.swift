// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: POGOProtos/Networking/Requests/Messages/GetAssetDigestMessage.proto
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

struct POGOProtos_Networking_Requests_Messages_GetAssetDigestMessage {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var platform: POGOProtos_Enums_Platform = .unset

  var deviceManufacturer: String = String()

  var deviceModel: String = String()

  var locale: String = String()

  var appVersion: UInt32 = 0

  var paginate: Bool = false

  var pageOffset: Int32 = 0

  var pageTimestamp: UInt64 = 0

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "POGOProtos.Networking.Requests.Messages"

extension POGOProtos_Networking_Requests_Messages_GetAssetDigestMessage: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".GetAssetDigestMessage"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "platform"),
    2: .standard(proto: "device_manufacturer"),
    3: .standard(proto: "device_model"),
    4: .same(proto: "locale"),
    5: .standard(proto: "app_version"),
    6: .same(proto: "paginate"),
    7: .standard(proto: "page_offset"),
    8: .standard(proto: "page_timestamp"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularEnumField(value: &self.platform)
      case 2: try decoder.decodeSingularStringField(value: &self.deviceManufacturer)
      case 3: try decoder.decodeSingularStringField(value: &self.deviceModel)
      case 4: try decoder.decodeSingularStringField(value: &self.locale)
      case 5: try decoder.decodeSingularUInt32Field(value: &self.appVersion)
      case 6: try decoder.decodeSingularBoolField(value: &self.paginate)
      case 7: try decoder.decodeSingularInt32Field(value: &self.pageOffset)
      case 8: try decoder.decodeSingularUInt64Field(value: &self.pageTimestamp)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.platform != .unset {
      try visitor.visitSingularEnumField(value: self.platform, fieldNumber: 1)
    }
    if !self.deviceManufacturer.isEmpty {
      try visitor.visitSingularStringField(value: self.deviceManufacturer, fieldNumber: 2)
    }
    if !self.deviceModel.isEmpty {
      try visitor.visitSingularStringField(value: self.deviceModel, fieldNumber: 3)
    }
    if !self.locale.isEmpty {
      try visitor.visitSingularStringField(value: self.locale, fieldNumber: 4)
    }
    if self.appVersion != 0 {
      try visitor.visitSingularUInt32Field(value: self.appVersion, fieldNumber: 5)
    }
    if self.paginate != false {
      try visitor.visitSingularBoolField(value: self.paginate, fieldNumber: 6)
    }
    if self.pageOffset != 0 {
      try visitor.visitSingularInt32Field(value: self.pageOffset, fieldNumber: 7)
    }
    if self.pageTimestamp != 0 {
      try visitor.visitSingularUInt64Field(value: self.pageTimestamp, fieldNumber: 8)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: POGOProtos_Networking_Requests_Messages_GetAssetDigestMessage, rhs: POGOProtos_Networking_Requests_Messages_GetAssetDigestMessage) -> Bool {
    if lhs.platform != rhs.platform {return false}
    if lhs.deviceManufacturer != rhs.deviceManufacturer {return false}
    if lhs.deviceModel != rhs.deviceModel {return false}
    if lhs.locale != rhs.locale {return false}
    if lhs.appVersion != rhs.appVersion {return false}
    if lhs.paginate != rhs.paginate {return false}
    if lhs.pageOffset != rhs.pageOffset {return false}
    if lhs.pageTimestamp != rhs.pageTimestamp {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
