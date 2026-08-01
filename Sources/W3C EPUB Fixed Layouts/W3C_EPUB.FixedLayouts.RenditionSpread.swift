public import W3C_EPUB_Shared

extension W3C_EPUB.FixedLayouts {
    /// The rendition spread property.
    public enum RenditionSpread: String, Sendable, Hashable, CaseIterable {
        /// Synthetic spread behavior is determined by the Reading System.
        case auto

        /// No synthetic spreads should be created.
        case none

        /// Synthetic spreads in landscape mode only.
        case landscape

        /// Synthetic spreads in both orientations.
        case both
    }
}
