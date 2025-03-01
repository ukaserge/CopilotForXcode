import Foundation

public protocol UserDefaultPreferenceKey {
    associatedtype Value
    var defaultValue: Value { get }
    var key: String { get }
}

public struct UserDefaultPreferenceKeys {
    public init() {}

    public struct NodePath: UserDefaultPreferenceKey {
        public let defaultValue: String = ""
        public let key = "NodePath"
    }

    public var nodePath: NodePath { .init() }

    public struct RealtimeSuggestionToggle: UserDefaultPreferenceKey {
        public let defaultValue: Bool = false
        public let key = "RealtimeSuggestionToggle"
    }

    public var realtimeSuggestionToggle: RealtimeSuggestionToggle { .init() }

    public struct RealtimeSuggestionDebounce: UserDefaultPreferenceKey {
        public let defaultValue: Double = 1
        public let key = "RealtimeSuggestionDebounce"
    }

    public var realtimeSuggestionDebounce: RealtimeSuggestionDebounce { .init() }

    public struct QuitXPCServiceOnXcodeAndAppQuit: UserDefaultPreferenceKey {
        public let defaultValue = true
        public let key = "QuitXPCServiceOnXcodeAndAppQuit"
    }

    public var quitXPCServiceOnXcodeAndAppQuit: QuitXPCServiceOnXcodeAndAppQuit { .init() }

    public struct SuggestionPresentationMode: UserDefaultPreferenceKey {
        public let defaultValue = PresentationMode.floatingWidget
        public let key = "SuggestionPresentationMode"
    }

    public var suggestionPresentationMode: SuggestionPresentationMode { .init() }

    public struct AutomaticallyCheckForUpdate: UserDefaultPreferenceKey {
        public let defaultValue = false
        public let key = "AutomaticallyCheckForUpdate"
    }

    public var automaticallyCheckForUpdate: AutomaticallyCheckForUpdate { .init() }

    public struct SuggestionWidgetPositionModeKey: UserDefaultPreferenceKey {
        public let defaultValue = SuggestionWidgetPositionMode.fixedToBottom
        public let key = "SuggestionWidgetPositionMode"
    }

    public var suggestionWidgetPositionMode: SuggestionWidgetPositionModeKey { .init() }

    public struct WidgetColorSchemeKey: UserDefaultPreferenceKey {
        public let defaultValue = WidgetColorScheme.dark
        public let key = "WidgetColorScheme"
    }

    public var widgetColorScheme: WidgetColorSchemeKey { .init() }

    public struct OpenAIAPIKey: UserDefaultPreferenceKey {
        public let defaultValue = ""
        public let key = "OpenAIAPIKey"
    }

    public var openAIAPIKey: OpenAIAPIKey { .init() }

    public struct ChatGPTEndpoint: UserDefaultPreferenceKey {
        public let defaultValue = ""
        public let key = "ChatGPTEndpoint"
    }

    public var chatGPTEndpoint: ChatGPTEndpoint { .init() }

    public struct ChatGPTModel: UserDefaultPreferenceKey {
        public let defaultValue = ""
        public let key = "ChatGPTModel"
    }

    public var chatGPTModel: ChatGPTModel { .init() }

    public struct ChatGPTMaxToken: UserDefaultPreferenceKey {
        public let defaultValue = 2048
        public let key = "ChatGPTMaxToken"
    }

    public var chatGPTMaxToken: ChatGPTMaxToken { .init() }

    public struct ChatGPTLanguage: UserDefaultPreferenceKey {
        public let defaultValue = ""
        public let key = "ChatGPTLanguage"
    }

    public var chatGPTLanguage: ChatGPTLanguage { .init() }

    public var disableLazyVStack: FeatureFlags.DisableLazyVStack { .init() }
}

public enum FeatureFlags {
    public struct DisableLazyVStack: UserDefaultPreferenceKey {
        public let defaultValue = false
        public let key = "FeatureFlag-DisableLazyVStack"
    }
}
