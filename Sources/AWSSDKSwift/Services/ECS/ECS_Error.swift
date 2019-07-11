// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for ECS
public enum ECSErrorType: AWSErrorType {
    case accessDeniedException(message: String?)
    case attributeLimitExceededException(message: String?)
    case blockedException(message: String?)
    case clientException(message: String?)
    case clusterContainsContainerInstancesException(message: String?)
    case clusterContainsServicesException(message: String?)
    case clusterContainsTasksException(message: String?)
    case clusterNotFoundException(message: String?)
    case invalidParameterException(message: String?)
    case missingVersionException(message: String?)
    case noUpdateAvailableException(message: String?)
    case platformTaskDefinitionIncompatibilityException(message: String?)
    case platformUnknownException(message: String?)
    case resourceNotFoundException(message: String?)
    case serverException(message: String?)
    case serviceNotActiveException(message: String?)
    case serviceNotFoundException(message: String?)
    case targetNotFoundException(message: String?)
    case taskSetNotFoundException(message: String?)
    case unsupportedFeatureException(message: String?)
    case updateInProgressException(message: String?)
}

extension ECSErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.index(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "AccessDeniedException":
            self = .accessDeniedException(message: message)
        case "AttributeLimitExceededException":
            self = .attributeLimitExceededException(message: message)
        case "BlockedException":
            self = .blockedException(message: message)
        case "ClientException":
            self = .clientException(message: message)
        case "ClusterContainsContainerInstancesException":
            self = .clusterContainsContainerInstancesException(message: message)
        case "ClusterContainsServicesException":
            self = .clusterContainsServicesException(message: message)
        case "ClusterContainsTasksException":
            self = .clusterContainsTasksException(message: message)
        case "ClusterNotFoundException":
            self = .clusterNotFoundException(message: message)
        case "InvalidParameterException":
            self = .invalidParameterException(message: message)
        case "MissingVersionException":
            self = .missingVersionException(message: message)
        case "NoUpdateAvailableException":
            self = .noUpdateAvailableException(message: message)
        case "PlatformTaskDefinitionIncompatibilityException":
            self = .platformTaskDefinitionIncompatibilityException(message: message)
        case "PlatformUnknownException":
            self = .platformUnknownException(message: message)
        case "ResourceNotFoundException":
            self = .resourceNotFoundException(message: message)
        case "ServerException":
            self = .serverException(message: message)
        case "ServiceNotActiveException":
            self = .serviceNotActiveException(message: message)
        case "ServiceNotFoundException":
            self = .serviceNotFoundException(message: message)
        case "TargetNotFoundException":
            self = .targetNotFoundException(message: message)
        case "TaskSetNotFoundException":
            self = .taskSetNotFoundException(message: message)
        case "UnsupportedFeatureException":
            self = .unsupportedFeatureException(message: message)
        case "UpdateInProgressException":
            self = .updateInProgressException(message: message)
        default:
            return nil
        }
    }
}
