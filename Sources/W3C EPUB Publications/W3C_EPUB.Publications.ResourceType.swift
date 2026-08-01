public import W3C_EPUB_Shared

extension W3C_EPUB.Publications {
    /// Resource types within an EPUB Publication.
    public enum ResourceType: String, Sendable, Hashable, CaseIterable {
        /// EPUB Content Document (XHTML or SVG)
        case contentDocument

        /// The Package Document (content.opf)
        case packageDocument

        /// The Navigation Document (nav.xhtml)
        case navigationDocument

        /// A CSS Stylesheet
        case stylesheet

        /// An image resource
        case image

        /// An audio resource
        case audio

        /// A video resource
        case video

        /// A font resource
        case font

        /// A script resource
        case script

        /// A foreign resource (requires fallback)
        case foreign
    }
}
