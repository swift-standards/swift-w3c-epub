public import BCP_47
public import W3C_EPUB_Shared

extension W3C_EPUB.PackageDocument {
    /// Package metadata (Dublin Core and EPUB-specific).
    public struct Metadata: Sendable, Hashable {
        /// dc:identifier - Publication identifier.
        public var identifier: String

        /// dc:title - Publication title.
        public var title: String

        /// dc:language - Publication language (BCP 47).
        public var language: BCP47.LanguageTag

        /// dc:creator - Author(s).
        public var creators: [String]

        /// dc:contributor - Contributor(s).
        public var contributors: [String]

        /// dc:publisher - Publisher.
        public var publisher: String?

        /// dc:date - Publication date.
        public var date: String?

        /// dc:description - Description.
        public var description: String?

        /// dc:subject - Subject(s).
        public var subjects: [String]

        /// dcterms:modified - Last modification date.
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
