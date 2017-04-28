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

extension Runtimelex {

    public struct GenericAttachment: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil
        public var attachmentLinkUrl: String? = nil
        /// Title of the option.
        public var title: String? = nil
        /// URL of an image that is displayed to the user.
        public var imageUrl: String? = nil
        /// List of options to show to the user.
        public var buttons: [Button]? = nil
        /// Subtitle shown below the title.
        public var subTitle: String? = nil

        public init() {}

        public init(attachmentLinkUrl: String? = nil, title: String? = nil, imageUrl: String? = nil, buttons: [Button]? = nil, subTitle: String? = nil) {
            self.attachmentLinkUrl = attachmentLinkUrl
            self.title = title
            self.imageUrl = imageUrl
            self.buttons = buttons
            self.subTitle = subTitle
        }

        public init(dictionary: [String: Any]) throws {
            self.attachmentLinkUrl = dictionary["attachmentLinkUrl"] as? String
            self.title = dictionary["title"] as? String
            self.imageUrl = dictionary["imageUrl"] as? String
            if let buttons = dictionary["buttons"] as? [[String: Any]] {
                self.buttons = try buttons.map({ try Button(dictionary: $0) })
            }
            self.subTitle = dictionary["subTitle"] as? String
        }
    }

    public struct ResponseCard: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil
        /// An array of attachment objects representing options.
        public var genericAttachments: [GenericAttachment]? = nil
        /// Version of response card format.
        public var version: String? = nil
        /// Content type of the response.
        public var contentType: String? = nil

        public init() {}

        public init(genericAttachments: [GenericAttachment]? = nil, version: String? = nil, contentType: String? = nil) {
            self.genericAttachments = genericAttachments
            self.version = version
            self.contentType = contentType
        }

        public init(dictionary: [String: Any]) throws {
            if let genericAttachments = dictionary["genericAttachments"] as? [[String: Any]] {
                self.genericAttachments = try genericAttachments.map({ try GenericAttachment(dictionary: $0) })
            }
            self.version = dictionary["version"] as? String
            self.contentType = dictionary["contentType"] as? String
        }
    }

    public struct PostTextResponse: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil
        /// If dialogState value is ElicitSlot, returns the name of the slot for which Amazon Lex is eliciting a value. 
        public var slotToElicit: String? = nil
        ///  Intent slots (name/value pairs) Amazon Lex detected so far from the user input in the conversation. 
        public var slots: [String: String]? = nil
        /// Map of key value pairs representing the session specific context information.
        public var sessionAttributes: [String: String]? = nil
        ///  Prompt (or statement) to convey to the user. This is based on the application configuration and context. For example, if Amazon Lex did not understand the user intent, it sends the clarificationPrompt configured for the application. In another example, if the intent requires confirmation before taking the fulfillment action, it sends the confirmationPrompt. Suppose the Lambda function successfully fulfilled the intent, and sent a message to convey to the user. In that situation, Amazon Lex sends that message in the response. 
        public var message: String? = nil
        /// Represents the message type to be conveyed to the user. For example:     ElicitIntent – Amazon Lex wants to elicit user intent. For example, Amazon Lex did not understand the first utterances such as "I want to order pizza", which indicates the OrderPizza intent. If Amazon Lex doesn't understand the intent, it returns this dialogState. Another example is when your intent is configured with a follow up prompt. For example, after OrderPizza intent is fulfilled, the intent might have a follow up prompt such as " Do you want to order a drink or desert?" In this case, Amazon Lex returns this dialogState.     ConfirmIntent – Amazon Lex is expecting a yes/no response from the user indicating whether to go ahead and fulfill the intent (for example, OK to go ahead and order the pizza). In addition to a yes/no reply, the user might provide a response with additional slot information (either new slot information or changes to the existing slot values). For example, "Yes, but change to thick crust." Amazon Lex understands the additional information and updates the intent slots accordingly.   Consider another example. Before fulfilling an order, your application might prompt for confirmation such as "Do you want to place this pizza order?" A user might reply with "No, I want to order a drink." Amazon Lex recognizes the new OrderDrink intent.     ElicitSlot – Amazon Lex is expecting a value of a slot for the current intent. For example, suppose Amazon Lex asks, "What size pizza would you like?" A user might reply with "Medium pepperoni pizza." Amazon Lex recognizes the size and the topping as the two separate slot values.     Fulfilled – Conveys that the Lambda function has successfully fulfilled the intent. If Lambda function returns a statement/message to convey the fulfillment result, Amazon Lex passes this string to the client. If not, Amazon Lex looks for conclusionStatement that you configured for the intent.   If both the Lambda function statement and the conclusionStatement are missing, Amazon Lex throws a bad request exception.     ReadyForFulfillment – conveys that the client has to do the fulfillment work for the intent. This is the case when the current intent is configured with ReturnIntent as the fulfillmentActivity , where Amazon Lex returns this state to client.     Failed – Conversation with the user failed. Some of the reasons for this dialogState are: after the configured number of attempts the user didn't provide an appropriate response, or the Lambda function failed to fulfill an intent.   
        public var dialogState: String? = nil
        /// Intent Amazon Lex inferred from the user input text. This is one of the intents configured for the bot. 
        public var intentName: String? = nil
        /// Represents the options that the user has to respond to the current prompt. Amazon Lex sends this in the response only if the dialogState value indicates that a user response is expected. 
        public var responseCard: ResponseCard? = nil

        public init() {}

        public init(slotToElicit: String? = nil, slots: [String: String]? = nil, sessionAttributes: [String: String]? = nil, message: String? = nil, dialogState: String? = nil, intentName: String? = nil, responseCard: ResponseCard? = nil) {
            self.slotToElicit = slotToElicit
            self.slots = slots
            self.sessionAttributes = sessionAttributes
            self.message = message
            self.dialogState = dialogState
            self.intentName = intentName
            self.responseCard = responseCard
        }

        public init(dictionary: [String: Any]) throws {
            self.slotToElicit = dictionary["slotToElicit"] as? String
            if let slots = dictionary["slots"] as? [String: String] {
                self.slots = slots
            }
            if let sessionAttributes = dictionary["sessionAttributes"] as? [String: String] {
                self.sessionAttributes = sessionAttributes
            }
            self.message = dictionary["message"] as? String
            self.dialogState = dictionary["dialogState"] as? String
            self.intentName = dictionary["intentName"] as? String
            if let responseCard = dictionary["responseCard"] as? [String: Any] { self.responseCard = try Runtimelex.ResponseCard(dictionary: responseCard) }
        }
    }

    public struct PostTextRequest: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil
        public static var pathParams: [String: String] {
            return ["botAlias": "botAlias", "userId": "userId", "botName": "botName"]
        }
        /// Alias of the Amazon Lex bot.
        public var botAlias: String = ""
        ///  A session represents the dialog between a user and Amazon Lex. At runtime, a client application can pass contextual information (session attributes) in the request. For example, "FirstName" : "Joe". Amazon Lex passes these session attributes to the AWS Lambda functions configured for the intent (see dialogCodeHook and fulfillmentActivity.codeHook in CreateIntent).  In your Lambda function, you can use the session attributes for customization. Some examples are:    In a pizza ordering application, if you can pass user location as a session attribute (for example, "Location" : "111 Maple street"), your Lambda function might use this information to determine the closest pizzeria to place the order.     Use session attributes to personalize prompts. For example, you pass in user name as a session attribute ("FirstName" : "Joe"), you might configure subsequent prompts to refer to this attribute, as $session.FirstName". At runtime, Amazon Lex substitutes a real value when it generates a prompt, such as "Hello Joe, what would you like to order?"      Amazon Lex does not persist session attributes.   If the intent is configured without a Lambda function to process the intent (that is, the client application to process the intent), Amazon Lex simply returns the session attributes back to the client application.   If the intent is configured with a Lambda function to process the intent, Amazon Lex passes the incoming session attributes to the Lambda function. The Lambda function must return these session attributes if you want Amazon Lex to return them back to the client.  
        public var sessionAttributes: [String: String]? = nil
        /// User ID of your client application. Typically, each of your application users should have a unique ID. Note the following considerations:     If you want a user to start a conversation on one mobile device and continue the conversation on another device, you might choose a user-specific identifier, such as a login or Amazon Cognito user ID (assuming your application is using Amazon Cognito).     If you want the same user to be able to have two independent conversations on two different devices, you might choose a device-specific identifier, such as device ID, or some globally unique identifier.   
        public var userId: String = ""
        /// Text user entered (Amazon Lex interprets this text).
        public var inputText: String = ""
        /// Name of the Amazon Lex bot.
        public var botName: String = ""

        public init() {}

        public init(botAlias: String, sessionAttributes: [String: String]? = nil, userId: String, inputText: String, botName: String) {
            self.botAlias = botAlias
            self.sessionAttributes = sessionAttributes
            self.userId = userId
            self.inputText = inputText
            self.botName = botName
        }

        public init(dictionary: [String: Any]) throws {
            guard let botAlias = dictionary["botAlias"] as? String else { throw InitializableError.missingRequiredParam("botAlias") }
            self.botAlias = botAlias
            if let sessionAttributes = dictionary["sessionAttributes"] as? [String: String] {
                self.sessionAttributes = sessionAttributes
            }
            guard let userId = dictionary["userId"] as? String else { throw InitializableError.missingRequiredParam("userId") }
            self.userId = userId
            guard let inputText = dictionary["inputText"] as? String else { throw InitializableError.missingRequiredParam("inputText") }
            self.inputText = inputText
            guard let botName = dictionary["botName"] as? String else { throw InitializableError.missingRequiredParam("botName") }
            self.botName = botName
        }
    }

    public struct Button: AWSShape {
        /// The key for the payload
        public static let payload: String? = nil
        /// Text visible to the user on the button.
        public var text: String = ""
        /// Value sent to Amazon Lex when user clicks the button. For example, consider button text "NYC". When the user clicks the button, the value sent can be "New York City".
        public var value: String = ""

        public init() {}

        public init(text: String, value: String) {
            self.text = text
            self.value = value
        }

        public init(dictionary: [String: Any]) throws {
            guard let text = dictionary["text"] as? String else { throw InitializableError.missingRequiredParam("text") }
            self.text = text
            guard let value = dictionary["value"] as? String else { throw InitializableError.missingRequiredParam("value") }
            self.value = value
        }
    }

}