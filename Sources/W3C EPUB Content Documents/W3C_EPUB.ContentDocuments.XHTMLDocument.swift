public import W3C_EPUB_Shared

extension W3C_EPUB.ContentDocuments {
    /// An XHTML Content Document.
    ///
    /// XHTML Content Documents are XHTML documents that conform to the HTML
    /// specification and the additional requirements defined in EPUB 3.3.
    public struct XHTMLDocument: Sendable, Hashable {
        /// The document's filename within the container.
        public var filename: String

        /// The document's title (from <title> element).
        public var title: String?

        /// The document's language (from xml:lang or lang attribute).
        public var language: String?

        /// Whether this document is a scripted content document.
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
