public import W3C_EPUB_Shared

extension W3C_EPUB.ContentDocuments {

    public struct SVGDocument: Sendable, Hashable {

        public var filename: String

        public var viewportWidth: Double?

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
