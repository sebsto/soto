// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore

extension Translate {

    public struct AppliedTerminology: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Name", required: false, type: .string), 
            AWSShapeMember(label: "Terms", required: false, type: .list)
        ]
        /// The name of the custom terminology applied to the input text by Amazon Translate for the translated text response.
        public let name: String?
        /// The specific terms of the custom terminology applied to the input text by Amazon Translate for the translated text response. A maximum of 250 terms will be returned, and the specific terms applied will be the first 250 terms in the source text. 
        public let terms: [Term]?
        
        public init(name: String? = nil, terms: [Term]? = nil) {
            self.name = name
            self.terms = terms
        }

        private enum CodingKeys: String, CodingKey {
            case name = "Name"
            case terms = "Terms"
        }
    }

    public struct DeleteTerminologyRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Name", required: true, type: .string)
        ]
        /// The name of the custom terminology being deleted. 
        public let name: String
        
        public init(name: String) {
            self.name = name
        }

        private enum CodingKeys: String, CodingKey {
            case name = "Name"
        }
    }

    public struct EncryptionKey: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Id", required: true, type: .string), 
            AWSShapeMember(label: "Type", required: true, type: .enum)
        ]
        /// The Amazon Resource Name (ARN) of the encryption key being used to encrypt the custom terminology.
        public let id: String
        /// The type of encryption key used by Amazon Translate to encrypt custom terminologies.
        public let `type`: EncryptionKeyType
        
        public init(id: String, type: EncryptionKeyType) {
            self.id = id
            self.`type` = `type`
        }

        private enum CodingKeys: String, CodingKey {
            case id = "Id"
            case `type` = "Type"
        }
    }

    public enum EncryptionKeyType: String, CustomStringConvertible, Codable {
        case kms = "KMS"
        public var description: String { return self.rawValue }
    }

    public struct GetTerminologyRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Name", required: true, type: .string), 
            AWSShapeMember(label: "TerminologyDataFormat", required: true, type: .enum)
        ]
        /// The name of the custom terminology being retrieved.
        public let name: String
        /// The data format of the custom terminology being retrieved, either CSV or TMX.
        public let terminologyDataFormat: TerminologyDataFormat
        
        public init(name: String, terminologyDataFormat: TerminologyDataFormat) {
            self.name = name
            self.terminologyDataFormat = terminologyDataFormat
        }

        private enum CodingKeys: String, CodingKey {
            case name = "Name"
            case terminologyDataFormat = "TerminologyDataFormat"
        }
    }

    public struct GetTerminologyResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "TerminologyDataLocation", required: false, type: .structure), 
            AWSShapeMember(label: "TerminologyProperties", required: false, type: .structure)
        ]
        /// The data location of the custom terminology being retrieved. The custom terminology file is returned in a presigned url that has a 30 minute expiration.
        public let terminologyDataLocation: TerminologyDataLocation?
        /// The properties of the custom terminology being retrieved.
        public let terminologyProperties: TerminologyProperties?
        
        public init(terminologyDataLocation: TerminologyDataLocation? = nil, terminologyProperties: TerminologyProperties? = nil) {
            self.terminologyDataLocation = terminologyDataLocation
            self.terminologyProperties = terminologyProperties
        }

        private enum CodingKeys: String, CodingKey {
            case terminologyDataLocation = "TerminologyDataLocation"
            case terminologyProperties = "TerminologyProperties"
        }
    }

    public struct ImportTerminologyRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Description", required: false, type: .string), 
            AWSShapeMember(label: "EncryptionKey", required: false, type: .structure), 
            AWSShapeMember(label: "MergeStrategy", required: true, type: .enum), 
            AWSShapeMember(label: "Name", required: true, type: .string), 
            AWSShapeMember(label: "TerminologyData", required: true, type: .structure)
        ]
        /// The description of the custom terminology being imported.
        public let description: String?
        /// The encryption key for the custom terminology being imported.
        public let encryptionKey: EncryptionKey?
        /// The merge strategy of the custom terminology being imported. Currently, only the OVERWRITE merge strategy is supported. In this case, the imported terminology will overwrite an existing terminology of the same name.
        public let mergeStrategy: MergeStrategy
        /// The name of the custom terminology being imported.
        public let name: String
        /// The terminology data for the custom terminology being imported.
        public let terminologyData: TerminologyData
        
        public init(description: String? = nil, encryptionKey: EncryptionKey? = nil, mergeStrategy: MergeStrategy, name: String, terminologyData: TerminologyData) {
            self.description = description
            self.encryptionKey = encryptionKey
            self.mergeStrategy = mergeStrategy
            self.name = name
            self.terminologyData = terminologyData
        }

        private enum CodingKeys: String, CodingKey {
            case description = "Description"
            case encryptionKey = "EncryptionKey"
            case mergeStrategy = "MergeStrategy"
            case name = "Name"
            case terminologyData = "TerminologyData"
        }
    }

    public struct ImportTerminologyResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "TerminologyProperties", required: false, type: .structure)
        ]
        /// The properties of the custom terminology being imported.
        public let terminologyProperties: TerminologyProperties?
        
        public init(terminologyProperties: TerminologyProperties? = nil) {
            self.terminologyProperties = terminologyProperties
        }

        private enum CodingKeys: String, CodingKey {
            case terminologyProperties = "TerminologyProperties"
        }
    }

    public struct ListTerminologiesRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "MaxResults", required: false, type: .integer), 
            AWSShapeMember(label: "NextToken", required: false, type: .string)
        ]
        /// The maximum number of custom terminologies returned per list request.
        public let maxResults: Int32?
        /// If the result of the request to ListTerminologies was truncated, include the NextToken to fetch the next group of custom terminologies. 
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

    public struct ListTerminologiesResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "NextToken", required: false, type: .string), 
            AWSShapeMember(label: "TerminologyPropertiesList", required: false, type: .list)
        ]
        ///  If the response to the ListTerminologies was truncated, the NextToken fetches the next group of custom terminologies. 
        public let nextToken: String?
        /// The properties list of the custom terminologies returned on the list request.
        public let terminologyPropertiesList: [TerminologyProperties]?
        
        public init(nextToken: String? = nil, terminologyPropertiesList: [TerminologyProperties]? = nil) {
            self.nextToken = nextToken
            self.terminologyPropertiesList = terminologyPropertiesList
        }

        private enum CodingKeys: String, CodingKey {
            case nextToken = "NextToken"
            case terminologyPropertiesList = "TerminologyPropertiesList"
        }
    }

    public enum MergeStrategy: String, CustomStringConvertible, Codable {
        case overwrite = "OVERWRITE"
        public var description: String { return self.rawValue }
    }

    public struct Term: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "SourceText", required: false, type: .string), 
            AWSShapeMember(label: "TargetText", required: false, type: .string)
        ]
        /// The source text of the term being translated by the custom terminology.
        public let sourceText: String?
        /// The target text of the term being translated by the custom terminology.
        public let targetText: String?
        
        public init(sourceText: String? = nil, targetText: String? = nil) {
            self.sourceText = sourceText
            self.targetText = targetText
        }

        private enum CodingKeys: String, CodingKey {
            case sourceText = "SourceText"
            case targetText = "TargetText"
        }
    }

    public struct TerminologyData: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "File", required: true, type: .blob), 
            AWSShapeMember(label: "Format", required: true, type: .enum)
        ]
        /// The file containing the custom terminology data.
        public let file: Data
        /// The data format of the custom terminology. Either CSV or TMX.
        public let format: TerminologyDataFormat
        
        public init(file: Data, format: TerminologyDataFormat) {
            self.file = file
            self.format = format
        }

        private enum CodingKeys: String, CodingKey {
            case file = "File"
            case format = "Format"
        }
    }

    public enum TerminologyDataFormat: String, CustomStringConvertible, Codable {
        case csv = "CSV"
        case tmx = "TMX"
        public var description: String { return self.rawValue }
    }

    public struct TerminologyDataLocation: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Location", required: true, type: .string), 
            AWSShapeMember(label: "RepositoryType", required: true, type: .string)
        ]
        /// The location of the custom terminology data.
        public let location: String
        /// The repository type for the custom terminology data.
        public let repositoryType: String
        
        public init(location: String, repositoryType: String) {
            self.location = location
            self.repositoryType = repositoryType
        }

        private enum CodingKeys: String, CodingKey {
            case location = "Location"
            case repositoryType = "RepositoryType"
        }
    }

    public struct TerminologyProperties: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Arn", required: false, type: .string), 
            AWSShapeMember(label: "CreatedAt", required: false, type: .timestamp), 
            AWSShapeMember(label: "Description", required: false, type: .string), 
            AWSShapeMember(label: "EncryptionKey", required: false, type: .structure), 
            AWSShapeMember(label: "LastUpdatedAt", required: false, type: .timestamp), 
            AWSShapeMember(label: "Name", required: false, type: .string), 
            AWSShapeMember(label: "SizeBytes", required: false, type: .integer), 
            AWSShapeMember(label: "SourceLanguageCode", required: false, type: .string), 
            AWSShapeMember(label: "TargetLanguageCodes", required: false, type: .list), 
            AWSShapeMember(label: "TermCount", required: false, type: .integer)
        ]
        ///  The Amazon Resource Name (ARN) of the custom terminology. 
        public let arn: String?
        /// The time at which the custom terminology was created, based on the timestamp.
        public let createdAt: TimeStamp?
        /// The description of the custom terminology properties.
        public let description: String?
        /// The encryption key for the custom terminology.
        public let encryptionKey: EncryptionKey?
        /// The time at which the custom terminology was last update, based on the timestamp.
        public let lastUpdatedAt: TimeStamp?
        /// The name of the custom terminology.
        public let name: String?
        /// The size of the file used when importing a custom terminology.
        public let sizeBytes: Int32?
        /// The language code for the source text of the translation request for which the custom terminology is being used.
        public let sourceLanguageCode: String?
        /// The language codes for the target languages available with the custom terminology file. All possible target languages are returned in array.
        public let targetLanguageCodes: [String]?
        /// The number of terms included in the custom terminology.
        public let termCount: Int32?
        
        public init(arn: String? = nil, createdAt: TimeStamp? = nil, description: String? = nil, encryptionKey: EncryptionKey? = nil, lastUpdatedAt: TimeStamp? = nil, name: String? = nil, sizeBytes: Int32? = nil, sourceLanguageCode: String? = nil, targetLanguageCodes: [String]? = nil, termCount: Int32? = nil) {
            self.arn = arn
            self.createdAt = createdAt
            self.description = description
            self.encryptionKey = encryptionKey
            self.lastUpdatedAt = lastUpdatedAt
            self.name = name
            self.sizeBytes = sizeBytes
            self.sourceLanguageCode = sourceLanguageCode
            self.targetLanguageCodes = targetLanguageCodes
            self.termCount = termCount
        }

        private enum CodingKeys: String, CodingKey {
            case arn = "Arn"
            case createdAt = "CreatedAt"
            case description = "Description"
            case encryptionKey = "EncryptionKey"
            case lastUpdatedAt = "LastUpdatedAt"
            case name = "Name"
            case sizeBytes = "SizeBytes"
            case sourceLanguageCode = "SourceLanguageCode"
            case targetLanguageCodes = "TargetLanguageCodes"
            case termCount = "TermCount"
        }
    }

    public struct TranslateTextRequest: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "SourceLanguageCode", required: true, type: .string), 
            AWSShapeMember(label: "TargetLanguageCode", required: true, type: .string), 
            AWSShapeMember(label: "TerminologyNames", required: false, type: .list), 
            AWSShapeMember(label: "Text", required: true, type: .string)
        ]
        /// The language code for the language of the source text. The language must be a language supported by Amazon Translate.  To have Amazon Translate determine the source language of your text, you can specify auto in the SourceLanguageCode field. If you specify auto, Amazon Translate will call Amazon Comprehend to determine the source language.
        public let sourceLanguageCode: String
        /// The language code requested for the language of the target text. The language must be a language supported by Amazon Translate.
        public let targetLanguageCode: String
        /// The TerminologyNames list that is taken as input to the TranslateText request. This has a minimum length of 0 and a maximum length of 1.
        public let terminologyNames: [String]?
        /// The text to translate. The text string can be a maximum of 5,000 bytes long. Depending on your character set, this may be fewer than 5,000 characters.
        public let text: String
        
        public init(sourceLanguageCode: String, targetLanguageCode: String, terminologyNames: [String]? = nil, text: String) {
            self.sourceLanguageCode = sourceLanguageCode
            self.targetLanguageCode = targetLanguageCode
            self.terminologyNames = terminologyNames
            self.text = text
        }

        private enum CodingKeys: String, CodingKey {
            case sourceLanguageCode = "SourceLanguageCode"
            case targetLanguageCode = "TargetLanguageCode"
            case terminologyNames = "TerminologyNames"
            case text = "Text"
        }
    }

    public struct TranslateTextResponse: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "AppliedTerminologies", required: false, type: .list), 
            AWSShapeMember(label: "SourceLanguageCode", required: true, type: .string), 
            AWSShapeMember(label: "TargetLanguageCode", required: true, type: .string), 
            AWSShapeMember(label: "TranslatedText", required: true, type: .string)
        ]
        /// The names of the custom terminologies applied to the input text by Amazon Translate for the translated text response.
        public let appliedTerminologies: [AppliedTerminology]?
        /// The language code for the language of the source text. 
        public let sourceLanguageCode: String
        /// The language code for the language of the target text. 
        public let targetLanguageCode: String
        /// The the translated text. The maximum length of this text is 5kb.
        public let translatedText: String
        
        public init(appliedTerminologies: [AppliedTerminology]? = nil, sourceLanguageCode: String, targetLanguageCode: String, translatedText: String) {
            self.appliedTerminologies = appliedTerminologies
            self.sourceLanguageCode = sourceLanguageCode
            self.targetLanguageCode = targetLanguageCode
            self.translatedText = translatedText
        }

        private enum CodingKeys: String, CodingKey {
            case appliedTerminologies = "AppliedTerminologies"
            case sourceLanguageCode = "SourceLanguageCode"
            case targetLanguageCode = "TargetLanguageCode"
            case translatedText = "TranslatedText"
        }
    }

}
