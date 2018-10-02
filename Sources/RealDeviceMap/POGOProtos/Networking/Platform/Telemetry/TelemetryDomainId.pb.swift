// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: POGOProtos/Networking/Platform/Telemetry/TelemetryDomainId.proto
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

enum POGOProtos_Networking_Platform_Telemetry_TelemetryDomainId: SwiftProtobuf.Enum {
  typealias RawValue = Int
  case telemetryNoDomainID // = 0
  case telemetryDitto // = 1
  case telemetryGame // = 2
  case UNRECOGNIZED(Int)

  init() {
    self = .telemetryNoDomainID
  }

  init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .telemetryNoDomainID
    case 1: self = .telemetryDitto
    case 2: self = .telemetryGame
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  var rawValue: Int {
    switch self {
    case .telemetryNoDomainID: return 0
    case .telemetryDitto: return 1
    case .telemetryGame: return 2
    case .UNRECOGNIZED(let i): return i
    }
  }

}

#if swift(>=4.2)

extension POGOProtos_Networking_Platform_Telemetry_TelemetryDomainId: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  static var allCases: [POGOProtos_Networking_Platform_Telemetry_TelemetryDomainId] = [
    .telemetryNoDomainID,
    .telemetryDitto,
    .telemetryGame,
  ]
}

#endif  // swift(>=4.2)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

extension POGOProtos_Networking_Platform_Telemetry_TelemetryDomainId: SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "TELEMETRY_NO_DOMAIN_ID"),
    1: .same(proto: "TELEMETRY_DITTO"),
    2: .same(proto: "TELEMETRY_GAME"),
  ]
}
