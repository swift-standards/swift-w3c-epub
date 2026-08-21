public import W3C_EPUB_Shared

extension W3C_EPUB.OCF.Container {

    public struct Rootfile: Sendable, Hashable {

        public var fullPath: String

        public var mediaType: String

        public init(
            fullPath: String,
            mediaType: String = W3C_EPUB.Media.Kind.package.rawValue
        ) {
            self.fullPath = fullPath
            self.mediaType = mediaType
        }
    }
}
