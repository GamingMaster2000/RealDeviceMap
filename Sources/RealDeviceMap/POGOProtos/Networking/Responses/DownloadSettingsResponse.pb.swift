// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: POGOProtos/Networking/Responses/DownloadSettingsResponse.proto
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

struct POGOProtos_Networking_Responses_DownloadSettingsResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var error: String {
    get {return _storage._error}
    set {_uniqueStorage()._error = newValue}
  }

  var hash: String {
    get {return _storage._hash}
    set {_uniqueStorage()._hash = newValue}
  }

  var settings: POGOProtos_Settings_GlobalSettings {
    get {return _storage._settings ?? POGOProtos_Settings_GlobalSettings()}
    set {_uniqueStorage()._settings = newValue}
  }
  /// Returns true if `settings` has been explicitly set.
  var hasSettings: Bool {return _storage._settings != nil}
  /// Clears the value of `settings`. Subsequent reads from it will return its default value.
  mutating func clearSettings() {_uniqueStorage()._settings = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "POGOProtos.Networking.Responses"

extension POGOProtos_Networking_Responses_DownloadSettingsResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".DownloadSettingsResponse"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "error"),
    2: .same(proto: "hash"),
    3: .same(proto: "settings"),
  ]

  fileprivate class _StorageClass {
    var _error: String = String()
    var _hash: String = String()
    var _settings: POGOProtos_Settings_GlobalSettings? = nil

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _error = source._error
      _hash = source._hash
      _settings = source._settings
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1: try decoder.decodeSingularStringField(value: &_storage._error)
        case 2: try decoder.decodeSingularStringField(value: &_storage._hash)
        case 3: try decoder.decodeSingularMessageField(value: &_storage._settings)
        default: break
        }
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if !_storage._error.isEmpty {
        try visitor.visitSingularStringField(value: _storage._error, fieldNumber: 1)
      }
      if !_storage._hash.isEmpty {
        try visitor.visitSingularStringField(value: _storage._hash, fieldNumber: 2)
      }
      if let v = _storage._settings {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: POGOProtos_Networking_Responses_DownloadSettingsResponse, rhs: POGOProtos_Networking_Responses_DownloadSettingsResponse) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._error != rhs_storage._error {return false}
        if _storage._hash != rhs_storage._hash {return false}
        if _storage._settings != rhs_storage._settings {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
