public import W3C_EPUB_Shared

extension W3C_EPUB.NavigationDocument {
    /// Navigation list types (epub:type values).
    public enum NavigationType: String, Sendable, Hashable, CaseIterable {
        /// Table of contents.
        case toc

        /// Page list (physical page references).
        case pageList = "page-list"

        /// Landmarks (key locations).
        case landmarks
    }
}
