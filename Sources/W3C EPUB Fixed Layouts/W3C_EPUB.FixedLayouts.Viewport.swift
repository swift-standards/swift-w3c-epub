public import W3C_EPUB_Shared

extension W3C_EPUB.FixedLayouts {
    /// Fixed-layout viewport dimensions.
    public struct Viewport: Sendable, Hashable {
        /// Viewport width in CSS pixels.
        public var width: Double

        /// Viewport height in CSS pixels.
        public var height: Double

        public init(width: Double, height: Double) {
            self.width = width
            self.height = height
        }
    }
}

extension W3C_EPUB.FixedLayouts.Viewport {
    /// Common fixed-layout viewport sizes.
    public static let kindle = W3C_EPUB.FixedLayouts.Viewport(width: 1024, height: 768)
    public static let ipad = W3C_EPUB.FixedLayouts.Viewport(width: 1024, height: 768)
    public static let ipadRetina = W3C_EPUB.FixedLayouts.Viewport(width: 2048, height: 1536)
    public static let iphone = W3C_EPUB.FixedLayouts.Viewport(width: 375, height: 667)

    /// The viewport meta tag content string.
    public var metaContent: String {
        "width=\(Int(width)), height=\(Int(height))"
    }
}
