// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for ElasticBeanstalk
public enum ElasticBeanstalkErrorType: AWSErrorType {
    case codeBuildNotInServiceRegionException(message: String?)
    case elasticBeanstalkServiceException(message: String?)
    case insufficientPrivilegesException(message: String?)
    case invalidRequestException(message: String?)
    case managedActionInvalidStateException(message: String?)
    case operationInProgressException(message: String?)
    case platformVersionStillReferencedException(message: String?)
    case resourceNotFoundException(message: String?)
    case resourceTypeNotSupportedException(message: String?)
    case s3LocationNotInServiceRegionException(message: String?)
    case s3SubscriptionRequiredException(message: String?)
    case sourceBundleDeletionException(message: String?)
    case tooManyApplicationVersionsException(message: String?)
    case tooManyApplicationsException(message: String?)
    case tooManyBucketsException(message: String?)
    case tooManyConfigurationTemplatesException(message: String?)
    case tooManyEnvironmentsException(message: String?)
    case tooManyPlatformsException(message: String?)
    case tooManyTagsException(message: String?)
}

extension ElasticBeanstalkErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.index(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "CodeBuildNotInServiceRegionException":
            self = .codeBuildNotInServiceRegionException(message: message)
        case "ElasticBeanstalkServiceException":
            self = .elasticBeanstalkServiceException(message: message)
        case "InsufficientPrivilegesException":
            self = .insufficientPrivilegesException(message: message)
        case "InvalidRequestException":
            self = .invalidRequestException(message: message)
        case "ManagedActionInvalidStateException":
            self = .managedActionInvalidStateException(message: message)
        case "OperationInProgressException":
            self = .operationInProgressException(message: message)
        case "PlatformVersionStillReferencedException":
            self = .platformVersionStillReferencedException(message: message)
        case "ResourceNotFoundException":
            self = .resourceNotFoundException(message: message)
        case "ResourceTypeNotSupportedException":
            self = .resourceTypeNotSupportedException(message: message)
        case "S3LocationNotInServiceRegionException":
            self = .s3LocationNotInServiceRegionException(message: message)
        case "S3SubscriptionRequiredException":
            self = .s3SubscriptionRequiredException(message: message)
        case "SourceBundleDeletionException":
            self = .sourceBundleDeletionException(message: message)
        case "TooManyApplicationVersionsException":
            self = .tooManyApplicationVersionsException(message: message)
        case "TooManyApplicationsException":
            self = .tooManyApplicationsException(message: message)
        case "TooManyBucketsException":
            self = .tooManyBucketsException(message: message)
        case "TooManyConfigurationTemplatesException":
            self = .tooManyConfigurationTemplatesException(message: message)
        case "TooManyEnvironmentsException":
            self = .tooManyEnvironmentsException(message: message)
        case "TooManyPlatformsException":
            self = .tooManyPlatformsException(message: message)
        case "TooManyTagsException":
            self = .tooManyTagsException(message: message)
        default:
            return nil
        }
    }
}
