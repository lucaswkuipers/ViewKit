import XCTest
import ViewKit

final class UILabelTests: XCTestCase {
    func test_text_modiefiesLabelCorrectly() {
        let sut = UILabel()

        sut.text("text")

        XCTAssertEqual(sut.text, "text")
    }

    func test_attributedText_modifiesLabelCorrectly() {
        let sut = UILabel()

        sut.attributedText(.init(string: "attr"))

        XCTAssertEqual(sut.attributedText, .init(string: "attr"))
    }

    func test_font_modiefiesLabelCorrectly() {
        let sut = UILabel()

        sut.font(.systemFont(ofSize: 12))

        XCTAssertEqual(sut.font, .systemFont(ofSize: 12))
    }
    func test_textColor_modiefiesLabelCorrectly() {
        let sut = UILabel()

        sut.textColor(.black)

        XCTAssertEqual(sut.textColor, .black)
    }
    func test_textAlignment_modiefiesLabelCorrectly() {
        let sut = UILabel()

        sut.textAlignment(.center)

        XCTAssertEqual(sut.textAlignment, .center)
    }

    func test_lineBreakMode_modiefiesLabelCorrectly() {
        let sut = UILabel()

        sut.lineBreakMode(.byCharWrapping)

        XCTAssertEqual(sut.lineBreakMode, .byCharWrapping)
    }

    func test_lineBreakStrategy_modiefiesLabelCorrectly() {
        let sut = UILabel()

        sut.lineBreakStrategy(.hangulWordPriority)

        XCTAssertEqual(sut.lineBreakStrategy, .hangulWordPriority)
    }
    func test_showsExpansionTextWhenTruncated_modiefiesLabelCorrectly() {
        let sut = UILabel()

        sut.showsExpansionTextWhenTruncated(true)

        XCTAssertEqual(sut.showsExpansionTextWhenTruncated, true)
    }

    func test_adjustsFontSizeToFitWidth_modiefiesLabelCorrectly() {
        let sut = UILabel()

        sut.adjustsFontSizeToFitWidth(true)

        XCTAssertEqual(sut.adjustsFontSizeToFitWidth, true)
    }
    func test_allowsDefaultTighteningForTruncation_modiefiesLabelCorrectly() {
        let sut = UILabel()

        sut.allowsDefaultTighteningForTruncation(true)

        XCTAssertEqual(sut.allowsDefaultTighteningForTruncation, true)
    }

    func test_baselineAdjustment_modiefiesLabelCorrectly() {
        let sut = UILabel()

        sut.baselineAdjustment(.alignBaselines)

        XCTAssertEqual(sut.baselineAdjustment, .alignBaselines)
    }

    func test_minimumScaleFactor_modiefiesLabelCorrectly() {
        let sut = UILabel()

        sut.minimumScaleFactor(0.1)

        XCTAssertEqual(sut.minimumScaleFactor, 0.1, accuracy: 0.01)
    }

    func test_numberOfLines_modiefiesLabelCorrectly() {
        let sut = UILabel()

        sut.numberOfLines(0)

        XCTAssertEqual(sut.numberOfLines, 0)
    }

    func test_highlightedTextColor_modiefiesLabelCorrectly() {
        let sut = UILabel()

        sut.highlightedTextColor(.green)

        XCTAssertEqual(sut.highlightedTextColor, .green)
    }

    func test_isHighlighted_modiefiesLabelCorrectly() {
        let sut = UILabel()

        sut.isHighlighted(true)

        XCTAssertEqual(sut.isHighlighted, true)
    }

    func test_shadowColor_modiefiesLabelCorrectly() {
        let sut = UILabel()

        sut.shadowColor(.blue)

        XCTAssertEqual(sut.shadowColor, .blue)
    }

    func test_shadowOffset_modiefiesLabelCorrectly() {
        let sut = UILabel()

        sut.shadowOffset(.init(width: 123, height: 321))

        XCTAssertEqual(sut.shadowOffset, .init(width: 123, height: 321))
    }

    func test_preferredMaxLayoutWidth_modiefiesLabelCorrectly() {
        let sut = UILabel()

        sut.preferredMaxLayoutWidth(123)

        XCTAssertEqual(sut.preferredMaxLayoutWidth, 123)
    }

    func test_isUserInteractionEnabled_modiefiesLabelCorrectly() {
        let sut = UILabel()

        sut.isUserInteractionEnabled(false)

        XCTAssertEqual(sut.isUserInteractionEnabled, false)
    }
}
