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

extension Importexport {

    public struct ListJobsInput: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil
        public var marker: String? = nil
        public var maxJobs: Int32? = nil
        public var aPIVersion: String? = nil

        public init() {}

        public init(marker: String? = nil, maxJobs: Int32? = nil, aPIVersion: String? = nil) {
            self.marker = marker
            self.maxJobs = maxJobs
            self.aPIVersion = aPIVersion
        }

        public init(dictionary: [String: Any]) throws {
            self.marker = dictionary["Marker"] as? String
            self.maxJobs = dictionary["MaxJobs"] as? Int32
            self.aPIVersion = dictionary["APIVersion"] as? String
        }
    }

    public struct CreateJobInput: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil
        public var jobType: String = ""
        public var manifestAddendum: String? = nil
        public var manifest: String = ""
        public var aPIVersion: String? = nil
        public var validateOnly: Bool = false

        public init() {}

        public init(jobType: String, manifestAddendum: String? = nil, manifest: String, aPIVersion: String? = nil, validateOnly: Bool) {
            self.jobType = jobType
            self.manifestAddendum = manifestAddendum
            self.manifest = manifest
            self.aPIVersion = aPIVersion
            self.validateOnly = validateOnly
        }

        public init(dictionary: [String: Any]) throws {
            guard let jobType = dictionary["JobType"] as? String else { throw InitializableError.missingRequiredParam("JobType") }
            self.jobType = jobType
            self.manifestAddendum = dictionary["ManifestAddendum"] as? String
            guard let manifest = dictionary["Manifest"] as? String else { throw InitializableError.missingRequiredParam("Manifest") }
            self.manifest = manifest
            self.aPIVersion = dictionary["APIVersion"] as? String
            guard let validateOnly = dictionary["ValidateOnly"] as? Bool else { throw InitializableError.missingRequiredParam("ValidateOnly") }
            self.validateOnly = validateOnly
        }
    }

    public struct GetShippingLabelInput: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil
        public var stateOrProvince: String? = nil
        public var city: String? = nil
        public var postalCode: String? = nil
        public var name: String? = nil
        public var phoneNumber: String? = nil
        public var street3: String? = nil
        public var jobIds: [String] = []
        public var aPIVersion: String? = nil
        public var street2: String? = nil
        public var street1: String? = nil
        public var company: String? = nil
        public var country: String? = nil

        public init() {}

        public init(stateOrProvince: String? = nil, city: String? = nil, postalCode: String? = nil, name: String? = nil, phoneNumber: String? = nil, street3: String? = nil, jobIds: [String], aPIVersion: String? = nil, street2: String? = nil, street1: String? = nil, company: String? = nil, country: String? = nil) {
            self.stateOrProvince = stateOrProvince
            self.city = city
            self.postalCode = postalCode
            self.name = name
            self.phoneNumber = phoneNumber
            self.street3 = street3
            self.jobIds = jobIds
            self.aPIVersion = aPIVersion
            self.street2 = street2
            self.street1 = street1
            self.company = company
            self.country = country
        }

        public init(dictionary: [String: Any]) throws {
            self.stateOrProvince = dictionary["stateOrProvince"] as? String
            self.city = dictionary["city"] as? String
            self.postalCode = dictionary["postalCode"] as? String
            self.name = dictionary["name"] as? String
            self.phoneNumber = dictionary["phoneNumber"] as? String
            self.street3 = dictionary["street3"] as? String
            guard let jobIds = dictionary["jobIds"] as? [String] else { throw InitializableError.missingRequiredParam("jobIds") }
            self.jobIds = jobIds
            self.aPIVersion = dictionary["APIVersion"] as? String
            self.street2 = dictionary["street2"] as? String
            self.street1 = dictionary["street1"] as? String
            self.company = dictionary["company"] as? String
            self.country = dictionary["country"] as? String
        }
    }

    public struct GetStatusInput: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil
        public var jobId: String = ""
        public var aPIVersion: String? = nil

        public init() {}

        public init(jobId: String, aPIVersion: String? = nil) {
            self.jobId = jobId
            self.aPIVersion = aPIVersion
        }

        public init(dictionary: [String: Any]) throws {
            guard let jobId = dictionary["JobId"] as? String else { throw InitializableError.missingRequiredParam("JobId") }
            self.jobId = jobId
            self.aPIVersion = dictionary["APIVersion"] as? String
        }
    }

    public struct CreateJobOutput: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil
        public var jobType: String? = nil
        public var artifactList: [Artifact]? = nil
        public var signatureFileContents: String? = nil
        public var warningMessage: String? = nil
        public var signature: String? = nil
        public var jobId: String? = nil

        public init() {}

        public init(jobType: String? = nil, artifactList: [Artifact]? = nil, signatureFileContents: String? = nil, warningMessage: String? = nil, signature: String? = nil, jobId: String? = nil) {
            self.jobType = jobType
            self.artifactList = artifactList
            self.signatureFileContents = signatureFileContents
            self.warningMessage = warningMessage
            self.signature = signature
            self.jobId = jobId
        }

        public init(dictionary: [String: Any]) throws {
            self.jobType = dictionary["JobType"] as? String
            if let artifactList = dictionary["ArtifactList"] as? [[String: Any]] {
                self.artifactList = try artifactList.map({ try Artifact(dictionary: $0) })
            }
            self.signatureFileContents = dictionary["SignatureFileContents"] as? String
            self.warningMessage = dictionary["WarningMessage"] as? String
            self.signature = dictionary["Signature"] as? String
            self.jobId = dictionary["JobId"] as? String
        }
    }

    public struct GetShippingLabelOutput: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil
        public var warning: String? = nil
        public var shippingLabelURL: String? = nil

        public init() {}

        public init(warning: String? = nil, shippingLabelURL: String? = nil) {
            self.warning = warning
            self.shippingLabelURL = shippingLabelURL
        }

        public init(dictionary: [String: Any]) throws {
            self.warning = dictionary["Warning"] as? String
            self.shippingLabelURL = dictionary["ShippingLabelURL"] as? String
        }
    }

    public struct UpdateJobOutput: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil
        public var success: Bool? = nil
        public var warningMessage: String? = nil
        public var artifactList: [Artifact]? = nil

        public init() {}

        public init(success: Bool? = nil, warningMessage: String? = nil, artifactList: [Artifact]? = nil) {
            self.success = success
            self.warningMessage = warningMessage
            self.artifactList = artifactList
        }

        public init(dictionary: [String: Any]) throws {
            self.success = dictionary["Success"] as? Bool
            self.warningMessage = dictionary["WarningMessage"] as? String
            if let artifactList = dictionary["ArtifactList"] as? [[String: Any]] {
                self.artifactList = try artifactList.map({ try Artifact(dictionary: $0) })
            }
        }
    }

    public struct UpdateJobInput: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil
        public var jobType: String = ""
        public var aPIVersion: String? = nil
        public var manifest: String = ""
        public var jobId: String = ""
        public var validateOnly: Bool = false

        public init() {}

        public init(jobType: String, aPIVersion: String? = nil, manifest: String, jobId: String, validateOnly: Bool) {
            self.jobType = jobType
            self.aPIVersion = aPIVersion
            self.manifest = manifest
            self.jobId = jobId
            self.validateOnly = validateOnly
        }

        public init(dictionary: [String: Any]) throws {
            guard let jobType = dictionary["JobType"] as? String else { throw InitializableError.missingRequiredParam("JobType") }
            self.jobType = jobType
            self.aPIVersion = dictionary["APIVersion"] as? String
            guard let manifest = dictionary["Manifest"] as? String else { throw InitializableError.missingRequiredParam("Manifest") }
            self.manifest = manifest
            guard let jobId = dictionary["JobId"] as? String else { throw InitializableError.missingRequiredParam("JobId") }
            self.jobId = jobId
            guard let validateOnly = dictionary["ValidateOnly"] as? Bool else { throw InitializableError.missingRequiredParam("ValidateOnly") }
            self.validateOnly = validateOnly
        }
    }

    public struct Job: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil
        public var jobType: String? = nil
        public var creationDate: Date? = nil
        public var jobId: String? = nil
        public var isCanceled: Bool? = nil

        public init() {}

        public init(jobType: String? = nil, creationDate: Date? = nil, jobId: String? = nil, isCanceled: Bool? = nil) {
            self.jobType = jobType
            self.creationDate = creationDate
            self.jobId = jobId
            self.isCanceled = isCanceled
        }

        public init(dictionary: [String: Any]) throws {
            self.jobType = dictionary["JobType"] as? String
            self.creationDate = dictionary["CreationDate"] as? Date
            self.jobId = dictionary["JobId"] as? String
            self.isCanceled = dictionary["IsCanceled"] as? Bool
        }
    }

    public struct GetStatusOutput: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil
        public var carrier: String? = nil
        public var artifactList: [Artifact]? = nil
        public var signature: String? = nil
        public var progressMessage: String? = nil
        public var creationDate: Date? = nil
        public var currentManifest: String? = nil
        public var trackingNumber: String? = nil
        public var progressCode: String? = nil
        public var jobId: String? = nil
        public var logKey: String? = nil
        public var signatureFileContents: String? = nil
        public var locationMessage: String? = nil
        public var jobType: String? = nil
        public var errorCount: Int32? = nil
        public var logBucket: String? = nil
        public var locationCode: String? = nil

        public init() {}

        public init(carrier: String? = nil, artifactList: [Artifact]? = nil, signature: String? = nil, progressMessage: String? = nil, creationDate: Date? = nil, currentManifest: String? = nil, trackingNumber: String? = nil, progressCode: String? = nil, jobId: String? = nil, logKey: String? = nil, signatureFileContents: String? = nil, locationMessage: String? = nil, jobType: String? = nil, errorCount: Int32? = nil, logBucket: String? = nil, locationCode: String? = nil) {
            self.carrier = carrier
            self.artifactList = artifactList
            self.signature = signature
            self.progressMessage = progressMessage
            self.creationDate = creationDate
            self.currentManifest = currentManifest
            self.trackingNumber = trackingNumber
            self.progressCode = progressCode
            self.jobId = jobId
            self.logKey = logKey
            self.signatureFileContents = signatureFileContents
            self.locationMessage = locationMessage
            self.jobType = jobType
            self.errorCount = errorCount
            self.logBucket = logBucket
            self.locationCode = locationCode
        }

        public init(dictionary: [String: Any]) throws {
            self.carrier = dictionary["Carrier"] as? String
            if let artifactList = dictionary["ArtifactList"] as? [[String: Any]] {
                self.artifactList = try artifactList.map({ try Artifact(dictionary: $0) })
            }
            self.signature = dictionary["Signature"] as? String
            self.progressMessage = dictionary["ProgressMessage"] as? String
            self.creationDate = dictionary["CreationDate"] as? Date
            self.currentManifest = dictionary["CurrentManifest"] as? String
            self.trackingNumber = dictionary["TrackingNumber"] as? String
            self.progressCode = dictionary["ProgressCode"] as? String
            self.jobId = dictionary["JobId"] as? String
            self.logKey = dictionary["LogKey"] as? String
            self.signatureFileContents = dictionary["SignatureFileContents"] as? String
            self.locationMessage = dictionary["LocationMessage"] as? String
            self.jobType = dictionary["JobType"] as? String
            self.errorCount = dictionary["ErrorCount"] as? Int32
            self.logBucket = dictionary["LogBucket"] as? String
            self.locationCode = dictionary["LocationCode"] as? String
        }
    }

    public struct ListJobsOutput: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil
        public var jobs: [Job]? = nil
        public var isTruncated: Bool? = nil

        public init() {}

        public init(jobs: [Job]? = nil, isTruncated: Bool? = nil) {
            self.jobs = jobs
            self.isTruncated = isTruncated
        }

        public init(dictionary: [String: Any]) throws {
            if let jobs = dictionary["Jobs"] as? [[String: Any]] {
                self.jobs = try jobs.map({ try Job(dictionary: $0) })
            }
            self.isTruncated = dictionary["IsTruncated"] as? Bool
        }
    }

    public struct Artifact: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil
        public var uRL: String? = nil
        public var description: String? = nil

        public init() {}

        public init(uRL: String? = nil, description: String? = nil) {
            self.uRL = uRL
            self.description = description
        }

        public init(dictionary: [String: Any]) throws {
            self.uRL = dictionary["URL"] as? String
            self.description = dictionary["Description"] as? String
        }
    }

    public struct CancelJobInput: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil
        public var jobId: String = ""
        public var aPIVersion: String? = nil

        public init() {}

        public init(jobId: String, aPIVersion: String? = nil) {
            self.jobId = jobId
            self.aPIVersion = aPIVersion
        }

        public init(dictionary: [String: Any]) throws {
            guard let jobId = dictionary["JobId"] as? String else { throw InitializableError.missingRequiredParam("JobId") }
            self.jobId = jobId
            self.aPIVersion = dictionary["APIVersion"] as? String
        }
    }

    public struct CancelJobOutput: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil
        public var success: Bool? = nil

        public init() {}

        public init(success: Bool? = nil) {
            self.success = success
        }

        public init(dictionary: [String: Any]) throws {
            self.success = dictionary["Success"] as? Bool
        }
    }

}