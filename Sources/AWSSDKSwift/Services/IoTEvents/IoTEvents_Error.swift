// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for IoTEvents
public enum IoTEventsErrorType: AWSErrorType {
    case internalFailureException(message: String?)
    case invalidRequestException(message: String?)
    case limitExceededException(message: String?)
    case resourceAlreadyExistsException(message: String?)
    case resourceInUseException(message: String?)
    case resourceNotFoundException(message: String?)
    case serviceUnavailableException(message: String?)
    case throttlingException(message: String?)
    case unsupportedOperationException(message: String?)
}

extension IoTEventsErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.index(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "InternalFailureException":
            self = .internalFailureException(message: message)
        case "InvalidRequestException":
            self = .invalidRequestException(message: message)
        case "LimitExceededException":
            self = .limitExceededException(message: message)
        case "ResourceAlreadyExistsException":
            self = .resourceAlreadyExistsException(message: message)
        case "ResourceInUseException":
            self = .resourceInUseException(message: message)
        case "ResourceNotFoundException":
            self = .resourceNotFoundException(message: message)
        case "ServiceUnavailableException":
            self = .serviceUnavailableException(message: message)
        case "ThrottlingException":
            self = .throttlingException(message: message)
        case "UnsupportedOperationException":
            self = .unsupportedOperationException(message: message)
        default:
            return nil
        }
    }
}
