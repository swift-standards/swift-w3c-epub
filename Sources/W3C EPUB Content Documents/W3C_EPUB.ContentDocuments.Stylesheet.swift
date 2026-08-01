public import W3C_EPUB_Shared

extension W3C_EPUB.ContentDocuments {
    /// A CSS Stylesheet resource.
    public struct Stylesheet: Sendable, Hashable {
        /// The stylesheet's filename within the container.
        public var filename: String

        public init(filename: String) {
            self.filename = filename
        }
    }
}
