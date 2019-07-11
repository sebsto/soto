// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for WorkSpaces
public enum WorkSpacesErrorType: AWSErrorType {
    case accessDeniedException(message: String?)
    case invalidParameterValuesException(message: String?)
    case invalidResourceStateException(message: String?)
    case operationInProgressException(message: String?)
    case operationNotSupportedException(message: String?)
    case resourceAlreadyExistsException(message: String?)
    case resourceAssociatedException(message: String?)
    case resourceCreationFailedException(message: String?)
    case resourceLimitExceededException(message: String?)
    case resourceNotFoundException(message: String?)
    case resourceUnavailableException(message: String?)
    case unsupportedWorkspaceConfigurationException(message: String?)
}

extension WorkSpacesErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.index(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "AccessDeniedException":
            self = .accessDeniedException(message: message)
        case "InvalidParameterValuesException":
            self = .invalidParameterValuesException(message: message)
        case "InvalidResourceStateException":
            self = .invalidResourceStateException(message: message)
        case "OperationInProgressException":
            self = .operationInProgressException(message: message)
        case "OperationNotSupportedException":
            self = .operationNotSupportedException(message: message)
        case "ResourceAlreadyExistsException":
            self = .resourceAlreadyExistsException(message: message)
        case "ResourceAssociatedException":
            self = .resourceAssociatedException(message: message)
        case "ResourceCreationFailedException":
            self = .resourceCreationFailedException(message: message)
        case "ResourceLimitExceededException":
            self = .resourceLimitExceededException(message: message)
        case "ResourceNotFoundException":
            self = .resourceNotFoundException(message: message)
        case "ResourceUnavailableException":
            self = .resourceUnavailableException(message: message)
        case "UnsupportedWorkspaceConfigurationException":
            self = .unsupportedWorkspaceConfigurationException(message: message)
        default:
            return nil
        }
    }
}
