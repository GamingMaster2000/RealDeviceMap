// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: POGOProtos/Inventory/LootItem.proto
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

struct POGOProtos_Inventory_LootItem {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var item: POGOProtos_Inventory_Item_ItemId {
    get {return _storage._item}
    set {_uniqueStorage()._item = newValue}
  }

  var stardust: Bool {
    get {return _storage._stardust}
    set {_uniqueStorage()._stardust = newValue}
  }

  var pokecoin: Bool {
    get {return _storage._pokecoin}
    set {_uniqueStorage()._pokecoin = newValue}
  }

  var pokemonCandy: POGOProtos_Enums_PokemonId {
    get {return _storage._pokemonCandy}
    set {_uniqueStorage()._pokemonCandy = newValue}
  }

  var count: Int32 {
    get {return _storage._count}
    set {_uniqueStorage()._count = newValue}
  }

  var experience: Bool {
    get {return _storage._experience}
    set {_uniqueStorage()._experience = newValue}
  }

  var pokemonEgg: POGOProtos_Data_PokemonData {
    get {return _storage._pokemonEgg ?? POGOProtos_Data_PokemonData()}
    set {_uniqueStorage()._pokemonEgg = newValue}
  }
  /// Returns true if `pokemonEgg` has been explicitly set.
  var hasPokemonEgg: Bool {return _storage._pokemonEgg != nil}
  /// Clears the value of `pokemonEgg`. Subsequent reads from it will return its default value.
  mutating func clearPokemonEgg() {_uniqueStorage()._pokemonEgg = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "POGOProtos.Inventory"

extension POGOProtos_Inventory_LootItem: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".LootItem"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "item"),
    2: .same(proto: "stardust"),
    3: .same(proto: "pokecoin"),
    4: .standard(proto: "pokemon_candy"),
    5: .same(proto: "count"),
    6: .same(proto: "experience"),
    7: .standard(proto: "pokemon_egg"),
  ]

  fileprivate class _StorageClass {
    var _item: POGOProtos_Inventory_Item_ItemId = .itemUnknown
    var _stardust: Bool = false
    var _pokecoin: Bool = false
    var _pokemonCandy: POGOProtos_Enums_PokemonId = .missingno
    var _count: Int32 = 0
    var _experience: Bool = false
    var _pokemonEgg: POGOProtos_Data_PokemonData? = nil

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _item = source._item
      _stardust = source._stardust
      _pokecoin = source._pokecoin
      _pokemonCandy = source._pokemonCandy
      _count = source._count
      _experience = source._experience
      _pokemonEgg = source._pokemonEgg
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
        case 1: try decoder.decodeSingularEnumField(value: &_storage._item)
        case 2: try decoder.decodeSingularBoolField(value: &_storage._stardust)
        case 3: try decoder.decodeSingularBoolField(value: &_storage._pokecoin)
        case 4: try decoder.decodeSingularEnumField(value: &_storage._pokemonCandy)
        case 5: try decoder.decodeSingularInt32Field(value: &_storage._count)
        case 6: try decoder.decodeSingularBoolField(value: &_storage._experience)
        case 7: try decoder.decodeSingularMessageField(value: &_storage._pokemonEgg)
        default: break
        }
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if _storage._item != .itemUnknown {
        try visitor.visitSingularEnumField(value: _storage._item, fieldNumber: 1)
      }
      if _storage._stardust != false {
        try visitor.visitSingularBoolField(value: _storage._stardust, fieldNumber: 2)
      }
      if _storage._pokecoin != false {
        try visitor.visitSingularBoolField(value: _storage._pokecoin, fieldNumber: 3)
      }
      if _storage._pokemonCandy != .missingno {
        try visitor.visitSingularEnumField(value: _storage._pokemonCandy, fieldNumber: 4)
      }
      if _storage._count != 0 {
        try visitor.visitSingularInt32Field(value: _storage._count, fieldNumber: 5)
      }
      if _storage._experience != false {
        try visitor.visitSingularBoolField(value: _storage._experience, fieldNumber: 6)
      }
      if let v = _storage._pokemonEgg {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 7)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: POGOProtos_Inventory_LootItem, rhs: POGOProtos_Inventory_LootItem) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._item != rhs_storage._item {return false}
        if _storage._stardust != rhs_storage._stardust {return false}
        if _storage._pokecoin != rhs_storage._pokecoin {return false}
        if _storage._pokemonCandy != rhs_storage._pokemonCandy {return false}
        if _storage._count != rhs_storage._count {return false}
        if _storage._experience != rhs_storage._experience {return false}
        if _storage._pokemonEgg != rhs_storage._pokemonEgg {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
