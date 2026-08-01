public import W3C_EPUB_Shared

extension W3C_EPUB.ContentDocuments {
    /// An SVG Content Document.
    ///
    /// SVG Content Documents are SVG documents that appear in the spine
    /// or are embedded in XHTML Content Documents.
    public struct SVGDocument: Sendable, Hashable {
        /// The document's filename within the container.
        public var filename: String

        /// The viewport width.
        public var viewportWidth: Double?

        /// The viewport height.
        public var viewportHeight: Double?

        public init(
            filename: String,
            viewportWidth: Double? = nil,
            viewportHeight: Double? = nil
        ) {
            self.filename = filename
            self.viewportWidth = viewportWidth
            self.viewportHeight = viewportHeight
        }
    }
}
