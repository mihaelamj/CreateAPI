import Foundation

struct SpecFixture {
    let name: String
    let ext: String

    static let cookpad = SpecFixture(name: "cookpad", ext: "json")
    static let discriminator = SpecFixture(name: "discriminator", ext: "yaml")
    static let edgecases = SpecFixture(name: "edgecases", ext: "yaml")
    static let github = SpecFixture(name: "github", ext: "yaml")
    static let inlining = SpecFixture(name: "inlining", ext: "yaml")
    static let petstore = SpecFixture(name: "petstore", ext: "yaml")
    static let stripParentNameNestedObjects = SpecFixture(name: "strip-parent-name-nested-objects", ext: "yaml")
    static let testQueryParameters = SpecFixture(name: "test-query-parameters", ext: "yaml")
    static let zumiezV1 = SpecFixture(name: "ZumiezV1", ext: "yaml")
    static let zumiezV2 = SpecFixture(name: "ZumiezAdobeM2", ext: "json")

    var path: String {
        URL(fileURLWithPath: #filePath)
            .appendingPathComponent("..")
            .appendingPathComponent("..")
            .appendingPathComponent("..")
            .appendingPathComponent("Support")
            .appendingPathComponent("Specs")
            .appendingPathComponent(name)
            .appendingPathExtension(ext)
            .resolvingSymlinksInPath()
            .path
    }
}
