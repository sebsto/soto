// THIS FILE IS AUTOMATICALLY GENERATED. DO NOT EDIT.
/**
The MIT License (MIT)

Copyright (c) 2017 Yuki Takei(noppoMan)

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

*/

import Foundation
import Core

extension Dataiot {

    public struct GetThingShadowRequest: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil
        public static var pathParams: [String: String] {
            return ["thingName": "thingName"]
        }
        /// The name of the thing.
        public var thingName: String = ""

        public init() {}

        public init(thingName: String) {
            self.thingName = thingName
        }

        public init(dictionary: [String: Any]) throws {
            guard let thingName = dictionary["thingName"] as? String else { throw InitializableError.missingRequiredParam("thingName") }
            self.thingName = thingName
        }
    }

    public struct DeleteThingShadowRequest: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil
        public static var pathParams: [String: String] {
            return ["thingName": "thingName"]
        }
        /// The name of the thing.
        public var thingName: String = ""

        public init() {}

        public init(thingName: String) {
            self.thingName = thingName
        }

        public init(dictionary: [String: Any]) throws {
            guard let thingName = dictionary["thingName"] as? String else { throw InitializableError.missingRequiredParam("thingName") }
            self.thingName = thingName
        }
    }

    public struct DeleteThingShadowResponse: AWSShape {
        /// The key for the payload
        public static let payload: String? = "payload"
        /// The state information, in JSON format.
        public var payload: Data = Data()

        public init() {}

        public init(payload: Data) {
            self.payload = payload
        }

        public init(dictionary: [String: Any]) throws {
            guard let payload = dictionary["payload"] as? Data else { throw InitializableError.missingRequiredParam("payload") }
            self.payload = payload
        }
    }

    public struct PublishRequest: AWSShape {
        /// The key for the payload
        public static let payload: String? = "payload"
        public static var queryParams: [String: String] {
            return ["qos": "qos"]
        }
        public static var pathParams: [String: String] {
            return ["topic": "topic"]
        }
        /// The Quality of Service (QoS) level.
        public var qos: Int32? = nil
        /// The state information, in JSON format.
        public var payload: Data? = nil
        /// The name of the MQTT topic.
        public var topic: String = ""

        public init() {}

        public init(qos: Int32? = nil, payload: Data? = nil, topic: String) {
            self.qos = qos
            self.payload = payload
            self.topic = topic
        }

        public init(dictionary: [String: Any]) throws {
            self.qos = dictionary["qos"] as? Int32
            self.payload = dictionary["payload"] as? Data
            guard let topic = dictionary["topic"] as? String else { throw InitializableError.missingRequiredParam("topic") }
            self.topic = topic
        }
    }

    public struct GetThingShadowResponse: AWSShape {
        /// The key for the payload
        public static let payload: String? = "payload"
        /// The state information, in JSON format.
        public var payload: Data? = nil

        public init() {}

        public init(payload: Data? = nil) {
            self.payload = payload
        }

        public init(dictionary: [String: Any]) throws {
            self.payload = dictionary["payload"] as? Data
        }
    }

    public struct UpdateThingShadowResponse: AWSShape {
        /// The key for the payload
        public static let payload: String? = "payload"
        /// The state information, in JSON format.
        public var payload: Data? = nil

        public init() {}

        public init(payload: Data? = nil) {
            self.payload = payload
        }

        public init(dictionary: [String: Any]) throws {
            self.payload = dictionary["payload"] as? Data
        }
    }

    public struct UpdateThingShadowRequest: AWSShape {
        /// The key for the payload
        public static let payload: String? = "payload"
        public static var pathParams: [String: String] {
            return ["thingName": "thingName"]
        }
        /// The state information, in JSON format.
        public var payload: Data = Data()
        /// The name of the thing.
        public var thingName: String = ""

        public init() {}

        public init(payload: Data, thingName: String) {
            self.payload = payload
            self.thingName = thingName
        }

        public init(dictionary: [String: Any]) throws {
            guard let payload = dictionary["payload"] as? Data else { throw InitializableError.missingRequiredParam("payload") }
            self.payload = payload
            guard let thingName = dictionary["thingName"] as? String else { throw InitializableError.missingRequiredParam("thingName") }
            self.thingName = thingName
        }
    }

}