public import W3C_EPUB_Shared

extension W3C_EPUB.ContentDocuments {

    public struct Stylesheet: Sendable, Hashable {

        public var filename: String

        public init(filename: String) {
            self.filename = filename
        }
    }
}
