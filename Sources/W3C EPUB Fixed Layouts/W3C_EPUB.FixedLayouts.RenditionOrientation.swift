public import W3C_EPUB_Shared

extension W3C_EPUB.FixedLayouts {
    /// The rendition orientation property.
    public enum RenditionOrientation: String, Sendable, Hashable, CaseIterable {
        /// Content may be rendered in any orientation.
        case auto

        /// Content is optimized for landscape orientation.
        case landscape

        /// Content is optimized for portrait orientation.
        case portrait
    }
}
