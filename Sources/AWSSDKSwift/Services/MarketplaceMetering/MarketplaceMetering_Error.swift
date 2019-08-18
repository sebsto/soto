// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for MarketplaceMetering
public enum MarketplaceMeteringErrorType: AWSErrorType {
    case customerNotEntitledException(message: String?)
    case disabledApiException(message: String?)
    case duplicateRequestException(message: String?)
    case expiredTokenException(message: String?)
    case internalServiceErrorException(message: String?)
    case invalidCustomerIdentifierException(message: String?)
    case invalidEndpointRegionException(message: String?)
    case invalidProductCodeException(message: String?)
    case invalidPublicKeyVersionException(message: String?)
    case invalidRegionException(message: String?)
    case invalidTokenException(message: String?)
    case invalidUsageDimensionException(message: String?)
    case platformNotSupportedException(message: String?)
    case throttlingException(message: String?)
    case timestampOutOfBoundsException(message: String?)
}

extension MarketplaceMeteringErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "CustomerNotEntitledException":
            self = .customerNotEntitledException(message: message)
        case "DisabledApiException":
            self = .disabledApiException(message: message)
        case "DuplicateRequestException":
            self = .duplicateRequestException(message: message)
        case "ExpiredTokenException":
            self = .expiredTokenException(message: message)
        case "InternalServiceErrorException":
            self = .internalServiceErrorException(message: message)
        case "InvalidCustomerIdentifierException":
            self = .invalidCustomerIdentifierException(message: message)
        case "InvalidEndpointRegionException":
            self = .invalidEndpointRegionException(message: message)
        case "InvalidProductCodeException":
            self = .invalidProductCodeException(message: message)
        case "InvalidPublicKeyVersionException":
            self = .invalidPublicKeyVersionException(message: message)
        case "InvalidRegionException":
            self = .invalidRegionException(message: message)
        case "InvalidTokenException":
            self = .invalidTokenException(message: message)
        case "InvalidUsageDimensionException":
            self = .invalidUsageDimensionException(message: message)
        case "PlatformNotSupportedException":
            self = .platformNotSupportedException(message: message)
        case "ThrottlingException":
            self = .throttlingException(message: message)
        case "TimestampOutOfBoundsException":
            self = .timestampOutOfBoundsException(message: message)
        default:
            return nil
        }
    }
}
