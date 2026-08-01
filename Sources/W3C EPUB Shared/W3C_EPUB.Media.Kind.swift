extension W3C_EPUB.Media {
    /// EPUB-defined media types.
    ///
    /// Per EPUB 3.3, Section 2.3.
    public enum Kind: String, Sendable, Hashable, CaseIterable {
        /// EPUB publication media type
        case epub = "application/epub+zip"

        /// EPUB package document media type
        case package = "application/oebps-package+xml"

        /// XHTML content document media type
        case xhtml = "application/xhtml+xml"

        /// SVG content document media type
        case svg = "image/svg+xml"

        /// CSS stylesheet media type
        case css = "text/css"

        /// JavaScript media type
        case javascript = "application/javascript"

        /// NCX navigation (legacy, EPUB 2)
        case ncx = "application/x-dtbncx+xml"

        /// SMIL media overlay
        case smil = "application/smil+xml"

        /// PLS pronunciation lexicon
        case pls = "application/pls+xml"
    }
}
