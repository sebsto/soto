// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore

extension MigrationHub {

    public struct DescribeMigrationTaskRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "MigrationTaskName", required: true, type: .string), 
            AWSShapeMember(label: "ProgressUpdateStream", required: true, type: .string)
        ]
        /// The identifier given to the MigrationTask.
        public let migrationTaskName: String
        /// The name of the ProgressUpdateStream. 
        public let progressUpdateStream: String

        public init(migrationTaskName: String, progressUpdateStream: String) {
            self.migrationTaskName = migrationTaskName
            self.progressUpdateStream = progressUpdateStream
        }

        private enum CodingKeys: String, CodingKey {
            case migrationTaskName = "MigrationTaskName"
            case progressUpdateStream = "ProgressUpdateStream"
        }
    }

    public struct ListDiscoveredResourcesRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "NextToken", required: false, type: .string), 
            AWSShapeMember(label: "MaxResults", required: false, type: .integer), 
            AWSShapeMember(label: "MigrationTaskName", required: true, type: .string), 
            AWSShapeMember(label: "ProgressUpdateStream", required: true, type: .string)
        ]
        /// If a NextToken was returned by a previous call, there are more results available. To retrieve the next page of results, make the call again using the returned token in NextToken.
        public let nextToken: String?
        /// The maximum number of results returned per page.
        public let maxResults: Int32?
        /// The name of the MigrationTask.
        public let migrationTaskName: String
        /// The name of the ProgressUpdateStream.
        public let progressUpdateStream: String

        public init(nextToken: String? = nil, maxResults: Int32? = nil, migrationTaskName: String, progressUpdateStream: String) {
            self.nextToken = nextToken
            self.maxResults = maxResults
            self.migrationTaskName = migrationTaskName
            self.progressUpdateStream = progressUpdateStream
        }

        private enum CodingKeys: String, CodingKey {
            case nextToken = "NextToken"
            case maxResults = "MaxResults"
            case migrationTaskName = "MigrationTaskName"
            case progressUpdateStream = "ProgressUpdateStream"
        }
    }

    public struct DeleteProgressUpdateStreamRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ProgressUpdateStreamName", required: true, type: .string), 
            AWSShapeMember(label: "DryRun", required: false, type: .boolean)
        ]
        /// The name of the ProgressUpdateStream. 
        public let progressUpdateStreamName: String
        /// Optional boolean flag to indicate whether any effect should take place. Used to test if the caller has permission to make the call.
        public let dryRun: Bool?

        public init(progressUpdateStreamName: String, dryRun: Bool? = nil) {
            self.progressUpdateStreamName = progressUpdateStreamName
            self.dryRun = dryRun
        }

        private enum CodingKeys: String, CodingKey {
            case progressUpdateStreamName = "ProgressUpdateStreamName"
            case dryRun = "DryRun"
        }
    }

    public struct ListDiscoveredResourcesResult: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "DiscoveredResourceList", required: false, type: .list), 
            AWSShapeMember(label: "NextToken", required: false, type: .string)
        ]
        /// Returned list of discovered resources associated with the given MigrationTask.
        public let discoveredResourceList: [DiscoveredResource]?
        /// If there are more discovered resources than the max result, return the next token to be passed to the next call as a bookmark of where to start from.
        public let nextToken: String?

        public init(discoveredResourceList: [DiscoveredResource]? = nil, nextToken: String? = nil) {
            self.discoveredResourceList = discoveredResourceList
            self.nextToken = nextToken
        }

        private enum CodingKeys: String, CodingKey {
            case discoveredResourceList = "DiscoveredResourceList"
            case nextToken = "NextToken"
        }
    }

    public struct DescribeMigrationTaskResult: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "MigrationTask", required: false, type: .structure)
        ]
        /// Object encapsulating information about the migration task.
        public let migrationTask: MigrationTask?

        public init(migrationTask: MigrationTask? = nil) {
            self.migrationTask = migrationTask
        }

        private enum CodingKeys: String, CodingKey {
            case migrationTask = "MigrationTask"
        }
    }

    public struct NotifyMigrationTaskStateResult: AWSShape {

    }

    public struct NotifyApplicationStateRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ApplicationId", required: true, type: .string), 
            AWSShapeMember(label: "Status", required: true, type: .enum), 
            AWSShapeMember(label: "DryRun", required: false, type: .boolean)
        ]
        /// The configurationId in ADS that uniquely identifies the grouped application.
        public let applicationId: String
        /// Status of the application - Not Started, In-Progress, Complete.
        public let status: ApplicationStatus
        /// Optional boolean flag to indicate whether any effect should take place. Used to test if the caller has permission to make the call.
        public let dryRun: Bool?

        public init(applicationId: String, status: ApplicationStatus, dryRun: Bool? = nil) {
            self.applicationId = applicationId
            self.status = status
            self.dryRun = dryRun
        }

        private enum CodingKeys: String, CodingKey {
            case applicationId = "ApplicationId"
            case status = "Status"
            case dryRun = "DryRun"
        }
    }

    public struct AssociateCreatedArtifactRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "CreatedArtifact", required: true, type: .structure), 
            AWSShapeMember(label: "DryRun", required: false, type: .boolean), 
            AWSShapeMember(label: "MigrationTaskName", required: true, type: .string), 
            AWSShapeMember(label: "ProgressUpdateStream", required: true, type: .string)
        ]
        /// An ARN of the AWS resource related to the migration (e.g., AMI, EC2 instance, RDS instance, etc.) 
        public let createdArtifact: CreatedArtifact
        /// Optional boolean flag to indicate whether any effect should take place. Used to test if the caller has permission to make the call.
        public let dryRun: Bool?
        /// Unique identifier that references the migration task.
        public let migrationTaskName: String
        /// The name of the ProgressUpdateStream. 
        public let progressUpdateStream: String

        public init(createdArtifact: CreatedArtifact, dryRun: Bool? = nil, migrationTaskName: String, progressUpdateStream: String) {
            self.createdArtifact = createdArtifact
            self.dryRun = dryRun
            self.migrationTaskName = migrationTaskName
            self.progressUpdateStream = progressUpdateStream
        }

        private enum CodingKeys: String, CodingKey {
            case createdArtifact = "CreatedArtifact"
            case dryRun = "DryRun"
            case migrationTaskName = "MigrationTaskName"
            case progressUpdateStream = "ProgressUpdateStream"
        }
    }

    public struct CreateProgressUpdateStreamResult: AWSShape {

    }

    public struct ResourceAttribute: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Value", required: true, type: .string), 
            AWSShapeMember(label: "Type", required: true, type: .enum)
        ]
        /// Value of the resource type.
        public let value: String
        /// Type of resource.
        public let `type`: ResourceAttributeType

        public init(value: String, type: ResourceAttributeType) {
            self.value = value
            self.`type` = `type`
        }

        private enum CodingKeys: String, CodingKey {
            case value = "Value"
            case `type` = "Type"
        }
    }

    public enum ApplicationStatus: String, CustomStringConvertible, Codable {
        case notStarted = "NOT_STARTED"
        case inProgress = "IN_PROGRESS"
        case completed = "COMPLETED"
        public var description: String { return self.rawValue }
    }

    public struct DisassociateCreatedArtifactResult: AWSShape {

    }

    public struct AssociateDiscoveredResourceRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "DiscoveredResource", required: true, type: .structure), 
            AWSShapeMember(label: "DryRun", required: false, type: .boolean), 
            AWSShapeMember(label: "MigrationTaskName", required: true, type: .string), 
            AWSShapeMember(label: "ProgressUpdateStream", required: true, type: .string)
        ]
        /// Object representing a Resource.
        public let discoveredResource: DiscoveredResource
        /// Optional boolean flag to indicate whether any effect should take place. Used to test if the caller has permission to make the call.
        public let dryRun: Bool?
        /// The identifier given to the MigrationTask.
        public let migrationTaskName: String
        /// The name of the ProgressUpdateStream.
        public let progressUpdateStream: String

        public init(discoveredResource: DiscoveredResource, dryRun: Bool? = nil, migrationTaskName: String, progressUpdateStream: String) {
            self.discoveredResource = discoveredResource
            self.dryRun = dryRun
            self.migrationTaskName = migrationTaskName
            self.progressUpdateStream = progressUpdateStream
        }

        private enum CodingKeys: String, CodingKey {
            case discoveredResource = "DiscoveredResource"
            case dryRun = "DryRun"
            case migrationTaskName = "MigrationTaskName"
            case progressUpdateStream = "ProgressUpdateStream"
        }
    }

    public struct Task: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Status", required: true, type: .enum), 
            AWSShapeMember(label: "StatusDetail", required: false, type: .string), 
            AWSShapeMember(label: "ProgressPercent", required: false, type: .integer)
        ]
        /// Status of the task - Not Started, In-Progress, Complete.
        public let status: Status
        /// Details of task status as notified by a migration tool. A tool might use this field to provide clarifying information about the status that is unique to that tool or that explains an error state.
        public let statusDetail: String?
        /// Indication of the percentage completion of the task.
        public let progressPercent: Int32?

        public init(status: Status, statusDetail: String? = nil, progressPercent: Int32? = nil) {
            self.status = status
            self.statusDetail = statusDetail
            self.progressPercent = progressPercent
        }

        private enum CodingKeys: String, CodingKey {
            case status = "Status"
            case statusDetail = "StatusDetail"
            case progressPercent = "ProgressPercent"
        }
    }

    public struct ListProgressUpdateStreamsResult: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ProgressUpdateStreamSummaryList", required: false, type: .list), 
            AWSShapeMember(label: "NextToken", required: false, type: .string)
        ]
        /// List of progress update streams up to the max number of results passed in the input.
        public let progressUpdateStreamSummaryList: [ProgressUpdateStreamSummary]?
        /// If there are more streams created than the max result, return the next token to be passed to the next call as a bookmark of where to start from.
        public let nextToken: String?

        public init(progressUpdateStreamSummaryList: [ProgressUpdateStreamSummary]? = nil, nextToken: String? = nil) {
            self.progressUpdateStreamSummaryList = progressUpdateStreamSummaryList
            self.nextToken = nextToken
        }

        private enum CodingKeys: String, CodingKey {
            case progressUpdateStreamSummaryList = "ProgressUpdateStreamSummaryList"
            case nextToken = "NextToken"
        }
    }

    public struct AssociateDiscoveredResourceResult: AWSShape {

    }

    public struct DescribeApplicationStateResult: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ApplicationStatus", required: false, type: .enum), 
            AWSShapeMember(label: "LastUpdatedTime", required: false, type: .timestamp)
        ]
        /// Status of the application - Not Started, In-Progress, Complete.
        public let applicationStatus: ApplicationStatus?
        /// The timestamp when the application status was last updated.
        public let lastUpdatedTime: TimeStamp?

        public init(applicationStatus: ApplicationStatus? = nil, lastUpdatedTime: TimeStamp? = nil) {
            self.applicationStatus = applicationStatus
            self.lastUpdatedTime = lastUpdatedTime
        }

        private enum CodingKeys: String, CodingKey {
            case applicationStatus = "ApplicationStatus"
            case lastUpdatedTime = "LastUpdatedTime"
        }
    }

    public struct DisassociateDiscoveredResourceResult: AWSShape {

    }

    public struct ListMigrationTasksResult: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "MigrationTaskSummaryList", required: false, type: .list), 
            AWSShapeMember(label: "NextToken", required: false, type: .string)
        ]
        /// Lists the migration task's summary which includes: MigrationTaskName, ProgressPercent, ProgressUpdateStream, Status, and the UpdateDateTime for each task.
        public let migrationTaskSummaryList: [MigrationTaskSummary]?
        /// If there are more migration tasks than the max result, return the next token to be passed to the next call as a bookmark of where to start from.
        public let nextToken: String?

        public init(migrationTaskSummaryList: [MigrationTaskSummary]? = nil, nextToken: String? = nil) {
            self.migrationTaskSummaryList = migrationTaskSummaryList
            self.nextToken = nextToken
        }

        private enum CodingKeys: String, CodingKey {
            case migrationTaskSummaryList = "MigrationTaskSummaryList"
            case nextToken = "NextToken"
        }
    }

    public struct DisassociateDiscoveredResourceRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ConfigurationId", required: true, type: .string), 
            AWSShapeMember(label: "DryRun", required: false, type: .boolean), 
            AWSShapeMember(label: "MigrationTaskName", required: true, type: .string), 
            AWSShapeMember(label: "ProgressUpdateStream", required: true, type: .string)
        ]
        /// ConfigurationId of the ADS resource to be disassociated.
        public let configurationId: String
        /// Optional boolean flag to indicate whether any effect should take place. Used to test if the caller has permission to make the call.
        public let dryRun: Bool?
        /// The identifier given to the MigrationTask.
        public let migrationTaskName: String
        /// The name of the ProgressUpdateStream.
        public let progressUpdateStream: String

        public init(configurationId: String, dryRun: Bool? = nil, migrationTaskName: String, progressUpdateStream: String) {
            self.configurationId = configurationId
            self.dryRun = dryRun
            self.migrationTaskName = migrationTaskName
            self.progressUpdateStream = progressUpdateStream
        }

        private enum CodingKeys: String, CodingKey {
            case configurationId = "ConfigurationId"
            case dryRun = "DryRun"
            case migrationTaskName = "MigrationTaskName"
            case progressUpdateStream = "ProgressUpdateStream"
        }
    }

    public struct NotifyApplicationStateResult: AWSShape {

    }

    public struct ImportMigrationTaskResult: AWSShape {

    }

    public struct DisassociateCreatedArtifactRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ProgressUpdateStream", required: true, type: .string), 
            AWSShapeMember(label: "DryRun", required: false, type: .boolean), 
            AWSShapeMember(label: "MigrationTaskName", required: true, type: .string), 
            AWSShapeMember(label: "CreatedArtifactName", required: true, type: .string)
        ]
        /// The name of the ProgressUpdateStream. 
        public let progressUpdateStream: String
        /// Optional boolean flag to indicate whether any effect should take place. Used to test if the caller has permission to make the call.
        public let dryRun: Bool?
        /// Unique identifier that references the migration task to be disassociated with the artifact.
        public let migrationTaskName: String
        /// An ARN of the AWS resource related to the migration (e.g., AMI, EC2 instance, RDS instance, etc.)
        public let createdArtifactName: String

        public init(progressUpdateStream: String, dryRun: Bool? = nil, migrationTaskName: String, createdArtifactName: String) {
            self.progressUpdateStream = progressUpdateStream
            self.dryRun = dryRun
            self.migrationTaskName = migrationTaskName
            self.createdArtifactName = createdArtifactName
        }

        private enum CodingKeys: String, CodingKey {
            case progressUpdateStream = "ProgressUpdateStream"
            case dryRun = "DryRun"
            case migrationTaskName = "MigrationTaskName"
            case createdArtifactName = "CreatedArtifactName"
        }
    }

    public struct MigrationTaskSummary: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "StatusDetail", required: false, type: .string), 
            AWSShapeMember(label: "ProgressUpdateStream", required: false, type: .string), 
            AWSShapeMember(label: "UpdateDateTime", required: false, type: .timestamp), 
            AWSShapeMember(label: "Status", required: false, type: .enum), 
            AWSShapeMember(label: "ProgressPercent", required: false, type: .integer), 
            AWSShapeMember(label: "MigrationTaskName", required: false, type: .string)
        ]
        /// Detail information of what is being done within the overall status state.
        public let statusDetail: String?
        /// An AWS resource used for access control. It should uniquely identify the migration tool as it is used for all updates made by the tool.
        public let progressUpdateStream: String?
        /// The timestamp when the task was gathered.
        public let updateDateTime: TimeStamp?
        /// Status of the task.
        public let status: Status?
        public let progressPercent: Int32?
        /// Unique identifier that references the migration task.
        public let migrationTaskName: String?

        public init(statusDetail: String? = nil, progressUpdateStream: String? = nil, updateDateTime: TimeStamp? = nil, status: Status? = nil, progressPercent: Int32? = nil, migrationTaskName: String? = nil) {
            self.statusDetail = statusDetail
            self.progressUpdateStream = progressUpdateStream
            self.updateDateTime = updateDateTime
            self.status = status
            self.progressPercent = progressPercent
            self.migrationTaskName = migrationTaskName
        }

        private enum CodingKeys: String, CodingKey {
            case statusDetail = "StatusDetail"
            case progressUpdateStream = "ProgressUpdateStream"
            case updateDateTime = "UpdateDateTime"
            case status = "Status"
            case progressPercent = "ProgressPercent"
            case migrationTaskName = "MigrationTaskName"
        }
    }

    public enum Status: String, CustomStringConvertible, Codable {
        case notStarted = "NOT_STARTED"
        case inProgress = "IN_PROGRESS"
        case failed = "FAILED"
        case completed = "COMPLETED"
        public var description: String { return self.rawValue }
    }

    public struct ImportMigrationTaskRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "MigrationTaskName", required: true, type: .string), 
            AWSShapeMember(label: "ProgressUpdateStream", required: true, type: .string), 
            AWSShapeMember(label: "DryRun", required: false, type: .boolean)
        ]
        /// Unique identifier that references the migration task.
        public let migrationTaskName: String
        /// The name of the ProgressUpdateStream. 
        public let progressUpdateStream: String
        /// Optional boolean flag to indicate whether any effect should take place. Used to test if the caller has permission to make the call.
        public let dryRun: Bool?

        public init(migrationTaskName: String, progressUpdateStream: String, dryRun: Bool? = nil) {
            self.migrationTaskName = migrationTaskName
            self.progressUpdateStream = progressUpdateStream
            self.dryRun = dryRun
        }

        private enum CodingKeys: String, CodingKey {
            case migrationTaskName = "MigrationTaskName"
            case progressUpdateStream = "ProgressUpdateStream"
            case dryRun = "DryRun"
        }
    }

    public struct CreatedArtifact: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Name", required: true, type: .string), 
            AWSShapeMember(label: "Description", required: false, type: .string)
        ]
        /// An ARN that uniquely identifies the result of a migration task.
        public let name: String
        /// A description that can be free-form text to record additional detail about the artifact for clarity or for later reference.
        public let description: String?

        public init(name: String, description: String? = nil) {
            self.name = name
            self.description = description
        }

        private enum CodingKeys: String, CodingKey {
            case name = "Name"
            case description = "Description"
        }
    }

    public struct DescribeApplicationStateRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ApplicationId", required: true, type: .string)
        ]
        /// The configurationId in ADS that uniquely identifies the grouped application.
        public let applicationId: String

        public init(applicationId: String) {
            self.applicationId = applicationId
        }

        private enum CodingKeys: String, CodingKey {
            case applicationId = "ApplicationId"
        }
    }

    public enum ResourceAttributeType: String, CustomStringConvertible, Codable {
        case ipv4Address = "IPV4_ADDRESS"
        case ipv6Address = "IPV6_ADDRESS"
        case macAddress = "MAC_ADDRESS"
        case fqdn = "FQDN"
        case vmManagerId = "VM_MANAGER_ID"
        case vmManagedObjectReference = "VM_MANAGED_OBJECT_REFERENCE"
        case vmName = "VM_NAME"
        case vmPath = "VM_PATH"
        case biosId = "BIOS_ID"
        case motherboardSerialNumber = "MOTHERBOARD_SERIAL_NUMBER"
        public var description: String { return self.rawValue }
    }

    public struct ListCreatedArtifactsRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "NextToken", required: false, type: .string), 
            AWSShapeMember(label: "MaxResults", required: false, type: .integer), 
            AWSShapeMember(label: "MigrationTaskName", required: true, type: .string), 
            AWSShapeMember(label: "ProgressUpdateStream", required: true, type: .string)
        ]
        /// If a NextToken was returned by a previous call, there are more results available. To retrieve the next page of results, make the call again using the returned token in NextToken.
        public let nextToken: String?
        /// Maximum number of results to be returned per page.
        public let maxResults: Int32?
        /// Unique identifier that references the migration task.
        public let migrationTaskName: String
        /// The name of the ProgressUpdateStream. 
        public let progressUpdateStream: String

        public init(nextToken: String? = nil, maxResults: Int32? = nil, migrationTaskName: String, progressUpdateStream: String) {
            self.nextToken = nextToken
            self.maxResults = maxResults
            self.migrationTaskName = migrationTaskName
            self.progressUpdateStream = progressUpdateStream
        }

        private enum CodingKeys: String, CodingKey {
            case nextToken = "NextToken"
            case maxResults = "MaxResults"
            case migrationTaskName = "MigrationTaskName"
            case progressUpdateStream = "ProgressUpdateStream"
        }
    }

    public struct ListProgressUpdateStreamsRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "MaxResults", required: false, type: .integer), 
            AWSShapeMember(label: "NextToken", required: false, type: .string)
        ]
        /// Filter to limit the maximum number of results to list per page.
        public let maxResults: Int32?
        /// If a NextToken was returned by a previous call, there are more results available. To retrieve the next page of results, make the call again using the returned token in NextToken.
        public let nextToken: String?

        public init(maxResults: Int32? = nil, nextToken: String? = nil) {
            self.maxResults = maxResults
            self.nextToken = nextToken
        }

        private enum CodingKeys: String, CodingKey {
            case maxResults = "MaxResults"
            case nextToken = "NextToken"
        }
    }

    public struct NotifyMigrationTaskStateRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "UpdateDateTime", required: true, type: .timestamp), 
            AWSShapeMember(label: "Task", required: true, type: .structure), 
            AWSShapeMember(label: "NextUpdateSeconds", required: true, type: .integer), 
            AWSShapeMember(label: "DryRun", required: false, type: .boolean), 
            AWSShapeMember(label: "MigrationTaskName", required: true, type: .string), 
            AWSShapeMember(label: "ProgressUpdateStream", required: true, type: .string)
        ]
        /// The timestamp when the task was gathered.
        public let updateDateTime: TimeStamp
        /// Information about the task's progress and status.
        public let task: Task
        /// Number of seconds after the UpdateDateTime within which the Migration Hub can expect an update. If Migration Hub does not receive an update within the specified interval, then the migration task will be considered stale.
        public let nextUpdateSeconds: Int32
        /// Optional boolean flag to indicate whether any effect should take place. Used to test if the caller has permission to make the call.
        public let dryRun: Bool?
        /// Unique identifier that references the migration task.
        public let migrationTaskName: String
        /// The name of the ProgressUpdateStream. 
        public let progressUpdateStream: String

        public init(updateDateTime: TimeStamp, task: Task, nextUpdateSeconds: Int32, dryRun: Bool? = nil, migrationTaskName: String, progressUpdateStream: String) {
            self.updateDateTime = updateDateTime
            self.task = task
            self.nextUpdateSeconds = nextUpdateSeconds
            self.dryRun = dryRun
            self.migrationTaskName = migrationTaskName
            self.progressUpdateStream = progressUpdateStream
        }

        private enum CodingKeys: String, CodingKey {
            case updateDateTime = "UpdateDateTime"
            case task = "Task"
            case nextUpdateSeconds = "NextUpdateSeconds"
            case dryRun = "DryRun"
            case migrationTaskName = "MigrationTaskName"
            case progressUpdateStream = "ProgressUpdateStream"
        }
    }

    public struct PutResourceAttributesRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ResourceAttributeList", required: true, type: .list), 
            AWSShapeMember(label: "DryRun", required: false, type: .boolean), 
            AWSShapeMember(label: "MigrationTaskName", required: true, type: .string), 
            AWSShapeMember(label: "ProgressUpdateStream", required: true, type: .string)
        ]
        /// Information about the resource that is being migrated. This data will be used to map the task to a resource in the Application Discovery Service (ADS)'s repository.  Takes the object array of ResourceAttribute where the Type field is reserved for the following values: IPV4_ADDRESS | IPV6_ADDRESS | MAC_ADDRESS | FQDN | VM_MANAGER_ID | VM_MANAGED_OBJECT_REFERENCE | VM_NAME | VM_PATH | BIOS_ID | MOTHERBOARD_SERIAL_NUMBER where the identifying value can be a string up to 256 characters.     If any "VM" related value is set for a ResourceAttribute object, it is required that VM_MANAGER_ID, as a minimum, is always set. If VM_MANAGER_ID is not set, then all "VM" fields will be discarded and "VM" fields will not be used for matching the migration task to a server in Application Discovery Service (ADS)'s repository. See the Example section below for a use case of specifying "VM" related values.    If a server you are trying to match has multiple IP or MAC addresses, you should provide as many as you know in separate type/value pairs passed to the ResourceAttributeList parameter to maximize the chances of matching.   
        public let resourceAttributeList: [ResourceAttribute]
        /// Optional boolean flag to indicate whether any effect should take place. Used to test if the caller has permission to make the call.
        public let dryRun: Bool?
        /// Unique identifier that references the migration task.
        public let migrationTaskName: String
        /// The name of the ProgressUpdateStream. 
        public let progressUpdateStream: String

        public init(resourceAttributeList: [ResourceAttribute], dryRun: Bool? = nil, migrationTaskName: String, progressUpdateStream: String) {
            self.resourceAttributeList = resourceAttributeList
            self.dryRun = dryRun
            self.migrationTaskName = migrationTaskName
            self.progressUpdateStream = progressUpdateStream
        }

        private enum CodingKeys: String, CodingKey {
            case resourceAttributeList = "ResourceAttributeList"
            case dryRun = "DryRun"
            case migrationTaskName = "MigrationTaskName"
            case progressUpdateStream = "ProgressUpdateStream"
        }
    }

    public struct PutResourceAttributesResult: AWSShape {

    }

    public struct AssociateCreatedArtifactResult: AWSShape {

    }

    public struct DiscoveredResource: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ConfigurationId", required: true, type: .string), 
            AWSShapeMember(label: "Description", required: false, type: .string)
        ]
        /// The configurationId in ADS that uniquely identifies the on-premise resource.
        public let configurationId: String
        /// A description that can be free-form text to record additional detail about the discovered resource for clarity or later reference.
        public let description: String?

        public init(configurationId: String, description: String? = nil) {
            self.configurationId = configurationId
            self.description = description
        }

        private enum CodingKeys: String, CodingKey {
            case configurationId = "ConfigurationId"
            case description = "Description"
        }
    }

    public struct ListCreatedArtifactsResult: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "CreatedArtifactList", required: false, type: .list), 
            AWSShapeMember(label: "NextToken", required: false, type: .string)
        ]
        /// List of created artifacts up to the maximum number of results specified in the request.
        public let createdArtifactList: [CreatedArtifact]?
        /// If there are more created artifacts than the max result, return the next token to be passed to the next call as a bookmark of where to start from.
        public let nextToken: String?

        public init(createdArtifactList: [CreatedArtifact]? = nil, nextToken: String? = nil) {
            self.createdArtifactList = createdArtifactList
            self.nextToken = nextToken
        }

        private enum CodingKeys: String, CodingKey {
            case createdArtifactList = "CreatedArtifactList"
            case nextToken = "NextToken"
        }
    }

    public struct CreateProgressUpdateStreamRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ProgressUpdateStreamName", required: true, type: .string), 
            AWSShapeMember(label: "DryRun", required: false, type: .boolean)
        ]
        /// The name of the ProgressUpdateStream. 
        public let progressUpdateStreamName: String
        /// Optional boolean flag to indicate whether any effect should take place. Used to test if the caller has permission to make the call.
        public let dryRun: Bool?

        public init(progressUpdateStreamName: String, dryRun: Bool? = nil) {
            self.progressUpdateStreamName = progressUpdateStreamName
            self.dryRun = dryRun
        }

        private enum CodingKeys: String, CodingKey {
            case progressUpdateStreamName = "ProgressUpdateStreamName"
            case dryRun = "DryRun"
        }
    }

    public struct DeleteProgressUpdateStreamResult: AWSShape {

    }

    public struct MigrationTask: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ResourceAttributeList", required: false, type: .list), 
            AWSShapeMember(label: "UpdateDateTime", required: false, type: .timestamp), 
            AWSShapeMember(label: "Task", required: false, type: .structure), 
            AWSShapeMember(label: "MigrationTaskName", required: false, type: .string), 
            AWSShapeMember(label: "ProgressUpdateStream", required: false, type: .string)
        ]
        public let resourceAttributeList: [ResourceAttribute]?
        /// The timestamp when the task was gathered.
        public let updateDateTime: TimeStamp?
        /// Task object encapsulating task information.
        public let task: Task?
        /// Unique identifier that references the migration task.
        public let migrationTaskName: String?
        /// A name that identifies the vendor of the migration tool being used.
        public let progressUpdateStream: String?

        public init(resourceAttributeList: [ResourceAttribute]? = nil, updateDateTime: TimeStamp? = nil, task: Task? = nil, migrationTaskName: String? = nil, progressUpdateStream: String? = nil) {
            self.resourceAttributeList = resourceAttributeList
            self.updateDateTime = updateDateTime
            self.task = task
            self.migrationTaskName = migrationTaskName
            self.progressUpdateStream = progressUpdateStream
        }

        private enum CodingKeys: String, CodingKey {
            case resourceAttributeList = "ResourceAttributeList"
            case updateDateTime = "UpdateDateTime"
            case task = "Task"
            case migrationTaskName = "MigrationTaskName"
            case progressUpdateStream = "ProgressUpdateStream"
        }
    }

    public struct ProgressUpdateStreamSummary: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ProgressUpdateStreamName", required: false, type: .string)
        ]
        /// The name of the ProgressUpdateStream. 
        public let progressUpdateStreamName: String?

        public init(progressUpdateStreamName: String? = nil) {
            self.progressUpdateStreamName = progressUpdateStreamName
        }

        private enum CodingKeys: String, CodingKey {
            case progressUpdateStreamName = "ProgressUpdateStreamName"
        }
    }

    public struct ListMigrationTasksRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "ResourceName", required: false, type: .string), 
            AWSShapeMember(label: "MaxResults", required: false, type: .integer), 
            AWSShapeMember(label: "NextToken", required: false, type: .string)
        ]
        /// Filter migration tasks by discovered resource name.
        public let resourceName: String?
        /// Value to specify how many results are returned per page.
        public let maxResults: Int32?
        /// If a NextToken was returned by a previous call, there are more results available. To retrieve the next page of results, make the call again using the returned token in NextToken.
        public let nextToken: String?

        public init(resourceName: String? = nil, maxResults: Int32? = nil, nextToken: String? = nil) {
            self.resourceName = resourceName
            self.maxResults = maxResults
            self.nextToken = nextToken
        }

        private enum CodingKeys: String, CodingKey {
            case resourceName = "ResourceName"
            case maxResults = "MaxResults"
            case nextToken = "NextToken"
        }
    }

}