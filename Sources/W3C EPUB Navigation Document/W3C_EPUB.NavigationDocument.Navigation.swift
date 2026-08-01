public import W3C_EPUB_Shared

extension W3C_EPUB.NavigationDocument {
    /// The Navigation Document provides navigation aids for the publication.
    public struct Navigation: Sendable, Hashable {
        /// The table of contents navigation.
        public var toc: NavigationList

        /// The page list navigation (optional).
        public var pageList: NavigationList?

        /// The landmarks navigation (optional).
        public var landmarks: NavigationList?

        public init(
            toc: NavigationList,
            pageList: NavigationList? = nil,
            landmarks: NavigationList? = nil
        ) {
            self.toc = toc
            self.pageList = pageList
            self.landmarks = landmarks
        }
    }
}
