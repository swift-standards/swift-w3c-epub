public import W3C_EPUB_Shared

extension W3C_EPUB.ContentDocuments {

    public struct XHTMLDocument: Sendable, Hashable {

        public var filename: String

        public var title: String?

        public var language: String?

        public var isScripted: Bool

        public init(
            filename: String,
            title: String? = nil,
            language: String? = nil,
            isScripted: Bool = false
        ) {
            self.filename = filename
            self.title = title
            self.language = language
            self.isScripted = isScripted
        }
    }
}
