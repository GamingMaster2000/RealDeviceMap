// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: POGOProtos/Data/Gym/GymDefender.proto
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

struct POGOProtos_Data_Gym_GymDefender {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var motivatedPokemon: POGOProtos_Map_Pokemon_MotivatedPokemon {
    get {return _storage._motivatedPokemon ?? POGOProtos_Map_Pokemon_MotivatedPokemon()}
    set {_uniqueStorage()._motivatedPokemon = newValue}
  }
  /// Returns true if `motivatedPokemon` has been explicitly set.
  var hasMotivatedPokemon: Bool {return _storage._motivatedPokemon != nil}
  /// Clears the value of `motivatedPokemon`. Subsequent reads from it will return its default value.
  mutating func clearMotivatedPokemon() {_uniqueStorage()._motivatedPokemon = nil}

  var deploymentTotals: POGOProtos_Data_Gym_GymDefender.DeploymentTotals {
    get {return _storage._deploymentTotals ?? POGOProtos_Data_Gym_GymDefender.DeploymentTotals()}
    set {_uniqueStorage()._deploymentTotals = newValue}
  }
  /// Returns true if `deploymentTotals` has been explicitly set.
  var hasDeploymentTotals: Bool {return _storage._deploymentTotals != nil}
  /// Clears the value of `deploymentTotals`. Subsequent reads from it will return its default value.
  mutating func clearDeploymentTotals() {_uniqueStorage()._deploymentTotals = nil}

  var trainerPublicProfile: POGOProtos_Data_Player_PlayerPublicProfile {
    get {return _storage._trainerPublicProfile ?? POGOProtos_Data_Player_PlayerPublicProfile()}
    set {_uniqueStorage()._trainerPublicProfile = newValue}
  }
  /// Returns true if `trainerPublicProfile` has been explicitly set.
  var hasTrainerPublicProfile: Bool {return _storage._trainerPublicProfile != nil}
  /// Clears the value of `trainerPublicProfile`. Subsequent reads from it will return its default value.
  mutating func clearTrainerPublicProfile() {_uniqueStorage()._trainerPublicProfile = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  struct DeploymentTotals {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    var timesFed: Int32 = 0

    var battlesWon: Int32 = 0

    var battlesLost: Int32 = 0

    var deploymentDurationMs: Int64 = 0

    var unknownFields = SwiftProtobuf.UnknownStorage()

    init() {}
  }

  init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "POGOProtos.Data.Gym"

extension POGOProtos_Data_Gym_GymDefender: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".GymDefender"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "motivated_pokemon"),
    2: .standard(proto: "deployment_totals"),
    3: .standard(proto: "trainer_public_profile"),
  ]

  fileprivate class _StorageClass {
    var _motivatedPokemon: POGOProtos_Map_Pokemon_MotivatedPokemon? = nil
    var _deploymentTotals: POGOProtos_Data_Gym_GymDefender.DeploymentTotals? = nil
    var _trainerPublicProfile: POGOProtos_Data_Player_PlayerPublicProfile? = nil

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _motivatedPokemon = source._motivatedPokemon
      _deploymentTotals = source._deploymentTotals
      _trainerPublicProfile = source._trainerPublicProfile
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
        case 1: try decoder.decodeSingularMessageField(value: &_storage._motivatedPokemon)
        case 2: try decoder.decodeSingularMessageField(value: &_storage._deploymentTotals)
        case 3: try decoder.decodeSingularMessageField(value: &_storage._trainerPublicProfile)
        default: break
        }
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if let v = _storage._motivatedPokemon {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
      }
      if let v = _storage._deploymentTotals {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
      }
      if let v = _storage._trainerPublicProfile {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: POGOProtos_Data_Gym_GymDefender, rhs: POGOProtos_Data_Gym_GymDefender) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._motivatedPokemon != rhs_storage._motivatedPokemon {return false}
        if _storage._deploymentTotals != rhs_storage._deploymentTotals {return false}
        if _storage._trainerPublicProfile != rhs_storage._trainerPublicProfile {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension POGOProtos_Data_Gym_GymDefender.DeploymentTotals: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = POGOProtos_Data_Gym_GymDefender.protoMessageName + ".DeploymentTotals"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "times_fed"),
    2: .standard(proto: "battles_won"),
    3: .standard(proto: "battles_lost"),
    4: .standard(proto: "deployment_duration_ms"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularInt32Field(value: &self.timesFed)
      case 2: try decoder.decodeSingularInt32Field(value: &self.battlesWon)
      case 3: try decoder.decodeSingularInt32Field(value: &self.battlesLost)
      case 4: try decoder.decodeSingularInt64Field(value: &self.deploymentDurationMs)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.timesFed != 0 {
      try visitor.visitSingularInt32Field(value: self.timesFed, fieldNumber: 1)
    }
    if self.battlesWon != 0 {
      try visitor.visitSingularInt32Field(value: self.battlesWon, fieldNumber: 2)
    }
    if self.battlesLost != 0 {
      try visitor.visitSingularInt32Field(value: self.battlesLost, fieldNumber: 3)
    }
    if self.deploymentDurationMs != 0 {
      try visitor.visitSingularInt64Field(value: self.deploymentDurationMs, fieldNumber: 4)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: POGOProtos_Data_Gym_GymDefender.DeploymentTotals, rhs: POGOProtos_Data_Gym_GymDefender.DeploymentTotals) -> Bool {
    if lhs.timesFed != rhs.timesFed {return false}
    if lhs.battlesWon != rhs.battlesWon {return false}
    if lhs.battlesLost != rhs.battlesLost {return false}
    if lhs.deploymentDurationMs != rhs.deploymentDurationMs {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
