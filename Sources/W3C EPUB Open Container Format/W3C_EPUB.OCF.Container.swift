public import W3C_EPUB_Shared

extension W3C_EPUB.OCF {
    /// The OCF container structure.
    public struct Container: Sendable, Hashable {
        /// The root files (typically one package document).
        public var rootfiles: [Rootfile]

        public init(rootfiles: [Rootfile] = []) {
            self.rootfiles = rootfiles
        }
    }
}
