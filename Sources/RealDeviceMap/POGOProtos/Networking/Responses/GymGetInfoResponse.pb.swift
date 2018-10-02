// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: POGOProtos/Networking/Responses/GymGetInfoResponse.proto
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

struct POGOProtos_Networking_Responses_GymGetInfoResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var gymStatusAndDefenders: POGOProtos_Data_Gym_GymStatusAndDefenders {
    get {return _storage._gymStatusAndDefenders ?? POGOProtos_Data_Gym_GymStatusAndDefenders()}
    set {_uniqueStorage()._gymStatusAndDefenders = newValue}
  }
  /// Returns true if `gymStatusAndDefenders` has been explicitly set.
  var hasGymStatusAndDefenders: Bool {return _storage._gymStatusAndDefenders != nil}
  /// Clears the value of `gymStatusAndDefenders`. Subsequent reads from it will return its default value.
  mutating func clearGymStatusAndDefenders() {_uniqueStorage()._gymStatusAndDefenders = nil}

  var name: String {
    get {return _storage._name}
    set {_uniqueStorage()._name = newValue}
  }

  var url: String {
    get {return _storage._url}
    set {_uniqueStorage()._url = newValue}
  }

  var result: POGOProtos_Networking_Responses_GymGetInfoResponse.Result {
    get {return _storage._result}
    set {_uniqueStorage()._result = newValue}
  }

  var description_p: String {
    get {return _storage._description_p}
    set {_uniqueStorage()._description_p = newValue}
  }

  var secondaryURL: String {
    get {return _storage._secondaryURL}
    set {_uniqueStorage()._secondaryURL = newValue}
  }

  var awardedGymBadge: POGOProtos_Data_Badge_AwardedGymBadge {
    get {return _storage._awardedGymBadge ?? POGOProtos_Data_Badge_AwardedGymBadge()}
    set {_uniqueStorage()._awardedGymBadge = newValue}
  }
  /// Returns true if `awardedGymBadge` has been explicitly set.
  var hasAwardedGymBadge: Bool {return _storage._awardedGymBadge != nil}
  /// Clears the value of `awardedGymBadge`. Subsequent reads from it will return its default value.
  mutating func clearAwardedGymBadge() {_uniqueStorage()._awardedGymBadge = nil}

  var checkinImageURL: String {
    get {return _storage._checkinImageURL}
    set {_uniqueStorage()._checkinImageURL = newValue}
  }

  var eventInfo: POGOProtos_Data_Raid_EventInfo {
    get {return _storage._eventInfo ?? POGOProtos_Data_Raid_EventInfo()}
    set {_uniqueStorage()._eventInfo = newValue}
  }
  /// Returns true if `eventInfo` has been explicitly set.
  var hasEventInfo: Bool {return _storage._eventInfo != nil}
  /// Clears the value of `eventInfo`. Subsequent reads from it will return its default value.
  mutating func clearEventInfo() {_uniqueStorage()._eventInfo = nil}

  var displayWeather: POGOProtos_Map_Weather_DisplayWeather {
    get {return _storage._displayWeather ?? POGOProtos_Map_Weather_DisplayWeather()}
    set {_uniqueStorage()._displayWeather = newValue}
  }
  /// Returns true if `displayWeather` has been explicitly set.
  var hasDisplayWeather: Bool {return _storage._displayWeather != nil}
  /// Clears the value of `displayWeather`. Subsequent reads from it will return its default value.
  mutating func clearDisplayWeather() {_uniqueStorage()._displayWeather = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  enum Result: SwiftProtobuf.Enum {
    typealias RawValue = Int
    case unset // = 0
    case success // = 1
    case errorNotInRange // = 2
    case errorGymDisabled // = 3
    case UNRECOGNIZED(Int)

    init() {
      self = .unset
    }

    init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .unset
      case 1: self = .success
      case 2: self = .errorNotInRange
      case 3: self = .errorGymDisabled
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    var rawValue: Int {
      switch self {
      case .unset: return 0
      case .success: return 1
      case .errorNotInRange: return 2
      case .errorGymDisabled: return 3
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

#if swift(>=4.2)

extension POGOProtos_Networking_Responses_GymGetInfoResponse.Result: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  static var allCases: [POGOProtos_Networking_Responses_GymGetInfoResponse.Result] = [
    .unset,
    .success,
    .errorNotInRange,
    .errorGymDisabled,
  ]
}

#endif  // swift(>=4.2)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "POGOProtos.Networking.Responses"

extension POGOProtos_Networking_Responses_GymGetInfoResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".GymGetInfoResponse"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "gym_status_and_defenders"),
    2: .same(proto: "name"),
    3: .same(proto: "url"),
    4: .same(proto: "result"),
    5: .same(proto: "description"),
    6: .standard(proto: "secondary_url"),
    7: .standard(proto: "awarded_gym_badge"),
    8: .standard(proto: "checkin_image_url"),
    9: .standard(proto: "event_info"),
    10: .standard(proto: "display_weather"),
  ]

  fileprivate class _StorageClass {
    var _gymStatusAndDefenders: POGOProtos_Data_Gym_GymStatusAndDefenders? = nil
    var _name: String = String()
    var _url: String = String()
    var _result: POGOProtos_Networking_Responses_GymGetInfoResponse.Result = .unset
    var _description_p: String = String()
    var _secondaryURL: String = String()
    var _awardedGymBadge: POGOProtos_Data_Badge_AwardedGymBadge? = nil
    var _checkinImageURL: String = String()
    var _eventInfo: POGOProtos_Data_Raid_EventInfo? = nil
    var _displayWeather: POGOProtos_Map_Weather_DisplayWeather? = nil

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _gymStatusAndDefenders = source._gymStatusAndDefenders
      _name = source._name
      _url = source._url
      _result = source._result
      _description_p = source._description_p
      _secondaryURL = source._secondaryURL
      _awardedGymBadge = source._awardedGymBadge
      _checkinImageURL = source._checkinImageURL
      _eventInfo = source._eventInfo
      _displayWeather = source._displayWeather
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
        case 1: try decoder.decodeSingularMessageField(value: &_storage._gymStatusAndDefenders)
        case 2: try decoder.decodeSingularStringField(value: &_storage._name)
        case 3: try decoder.decodeSingularStringField(value: &_storage._url)
        case 4: try decoder.decodeSingularEnumField(value: &_storage._result)
        case 5: try decoder.decodeSingularStringField(value: &_storage._description_p)
        case 6: try decoder.decodeSingularStringField(value: &_storage._secondaryURL)
        case 7: try decoder.decodeSingularMessageField(value: &_storage._awardedGymBadge)
        case 8: try decoder.decodeSingularStringField(value: &_storage._checkinImageURL)
        case 9: try decoder.decodeSingularMessageField(value: &_storage._eventInfo)
        case 10: try decoder.decodeSingularMessageField(value: &_storage._displayWeather)
        default: break
        }
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if let v = _storage._gymStatusAndDefenders {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
      }
      if !_storage._name.isEmpty {
        try visitor.visitSingularStringField(value: _storage._name, fieldNumber: 2)
      }
      if !_storage._url.isEmpty {
        try visitor.visitSingularStringField(value: _storage._url, fieldNumber: 3)
      }
      if _storage._result != .unset {
        try visitor.visitSingularEnumField(value: _storage._result, fieldNumber: 4)
      }
      if !_storage._description_p.isEmpty {
        try visitor.visitSingularStringField(value: _storage._description_p, fieldNumber: 5)
      }
      if !_storage._secondaryURL.isEmpty {
        try visitor.visitSingularStringField(value: _storage._secondaryURL, fieldNumber: 6)
      }
      if let v = _storage._awardedGymBadge {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 7)
      }
      if !_storage._checkinImageURL.isEmpty {
        try visitor.visitSingularStringField(value: _storage._checkinImageURL, fieldNumber: 8)
      }
      if let v = _storage._eventInfo {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 9)
      }
      if let v = _storage._displayWeather {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 10)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: POGOProtos_Networking_Responses_GymGetInfoResponse, rhs: POGOProtos_Networking_Responses_GymGetInfoResponse) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._gymStatusAndDefenders != rhs_storage._gymStatusAndDefenders {return false}
        if _storage._name != rhs_storage._name {return false}
        if _storage._url != rhs_storage._url {return false}
        if _storage._result != rhs_storage._result {return false}
        if _storage._description_p != rhs_storage._description_p {return false}
        if _storage._secondaryURL != rhs_storage._secondaryURL {return false}
        if _storage._awardedGymBadge != rhs_storage._awardedGymBadge {return false}
        if _storage._checkinImageURL != rhs_storage._checkinImageURL {return false}
        if _storage._eventInfo != rhs_storage._eventInfo {return false}
        if _storage._displayWeather != rhs_storage._displayWeather {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension POGOProtos_Networking_Responses_GymGetInfoResponse.Result: SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "UNSET"),
    1: .same(proto: "SUCCESS"),
    2: .same(proto: "ERROR_NOT_IN_RANGE"),
    3: .same(proto: "ERROR_GYM_DISABLED"),
  ]
}
