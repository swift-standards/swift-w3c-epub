public import W3C_EPUB_Shared

extension W3C_EPUB.OCF {
    /// Compression requirements for OCF.
    public enum Compression: Sendable, Hashable {
        /// Store without compression (required for mimetype).
        case stored

        /// Deflate compression (recommended for other files).
        case deflated
    }
}
