public import BCP_47
public import W3C_EPUB_Shared

extension W3C_EPUB.PackageDocument {

    public struct Metadata: Sendable, Hashable {

        public var identifier: String

        public var title: String

        public var language: BCP47.LanguageTag

        public var creators: [String]

        public var contributors: [String]

        public var publisher: String?

        public var date: String?

        public var description: String?

        public var subjects: [String]

        public var modified: String?

        public init(
            identifier: String,
            title: String,
            language: BCP47.LanguageTag,
            creators: [String] = [],
            contributors: [String] = [],
            publisher: String? = nil,
            date: String? = nil,
            description: String? = nil,
            subjects: [String] = [],
            modified: String? = nil
        ) {
            self.identifier = identifier
            self.title = title
            self.language = language
            self.creators = creators
            self.contributors = contributors
            self.publisher = publisher
            self.date = date
            self.description = description
            self.subjects = subjects
            self.modified = modified
        }
    }
}
