// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for Translate
public enum TranslateErrorType: AWSErrorType {
    case detectedLanguageLowConfidenceException(message: String?)
    case internalServerException(message: String?)
    case invalidParameterValueException(message: String?)
    case invalidRequestException(message: String?)
    case limitExceededException(message: String?)
    case resourceNotFoundException(message: String?)
    case serviceUnavailableException(message: String?)
    case textSizeLimitExceededException(message: String?)
    case tooManyRequestsException(message: String?)
    case unsupportedLanguagePairException(message: String?)
}

extension TranslateErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "DetectedLanguageLowConfidenceException":
            self = .detectedLanguageLowConfidenceException(message: message)
        case "InternalServerException":
            self = .internalServerException(message: message)
        case "InvalidParameterValueException":
            self = .invalidParameterValueException(message: message)
        case "InvalidRequestException":
            self = .invalidRequestException(message: message)
        case "LimitExceededException":
            self = .limitExceededException(message: message)
        case "ResourceNotFoundException":
            self = .resourceNotFoundException(message: message)
        case "ServiceUnavailableException":
            self = .serviceUnavailableException(message: message)
        case "TextSizeLimitExceededException":
            self = .textSizeLimitExceededException(message: message)
        case "TooManyRequestsException":
            self = .tooManyRequestsException(message: message)
        case "UnsupportedLanguagePairException":
            self = .unsupportedLanguagePairException(message: message)
        default:
            return nil
        }
    }
}
