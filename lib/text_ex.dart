import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class TextEx extends LeafRenderObjectWidget {
  TextEx(this.data,
      {Key key,
      this.style,
      this.textAlign = TextAlign.left,
      this.textDirection,
      this.locale,
      this.softWrap = true,
      this.overflow = TextOverflow.clip,
      this.textScaleFactor = 1.0,
      this.maxLines,
      this.semanticsLabel,
      this.shadow = Colors.black12})
      : assert(data != null),
        super(key: key);

  final String data;
  TextSpan textSpan;
  final TextStyle style;
  final TextAlign textAlign;
  final TextDirection textDirection;
  final Locale locale;
  final bool softWrap;
  final TextOverflow overflow;
  final double textScaleFactor;
  final int maxLines;
  final String semanticsLabel;
  final Color shadow;

  @override
  RenderParagraph createRenderObject(BuildContext context) {
    assert(textDirection != null || debugCheckHasDirectionality(context));
    final textSpan = new TextSpan(
      style: style,
      text: data,
      children: null,
    );
    return new RenderParagraphEx(
      textSpan,
      textAlign: textAlign,
      textDirection: textDirection ?? Directionality.of(context),
      softWrap: softWrap,
      overflow: overflow,
      textScaleFactor: textScaleFactor,
      maxLines: maxLines,
      shadow: shadow,
      locale: locale ?? Localizations.localeOf(context, nullOk: true),
    );
  }

  @override
  void updateRenderObject(BuildContext context, RenderParagraph renderObject) {
    assert(textDirection != null || debugCheckHasDirectionality(context));
    final textSpan = new TextSpan(
      style: style,
      text: data,
      children: null,
    );
    renderObject
      ..text = textSpan
      ..textAlign = textAlign
      ..textDirection = textDirection ?? Directionality.of(context)
      ..softWrap = softWrap
      ..overflow = overflow
      ..textScaleFactor = textScaleFactor
      ..maxLines = maxLines
      ..locale = locale ?? Localizations.localeOf(context, nullOk: true);
  }
}

const String _kEllipsis = '\u2026';

class RenderParagraphEx extends RenderParagraph {
  RenderParagraphEx(
    TextSpan text, {
    TextAlign textAlign = TextAlign.start,
    @required TextDirection textDirection,
    bool softWrap = true,
    TextOverflow overflow = TextOverflow.clip,
    double textScaleFactor = 1.0,
    int maxLines,
    Locale locale,
    this.shadow = Colors.black87,
  }) : super(text,
            textAlign: textAlign,
            textDirection: textDirection,
            softWrap: softWrap,
            overflow: overflow,
            textScaleFactor: textScaleFactor,
            maxLines: maxLines,
            locale: locale) {
    initTextPainter();
  }

  TextPainter _textPainter;

  final Color shadow;

  void initTextPainter() {
    if (_textPainter == null || _textPainter.text != text) {
      _textPainter = new TextPainter(
        text: TextSpan(
            style: TextStyle(
              inherit: text.style.inherit,
              color: shadow,
              fontSize: text.style.fontSize,
              fontWeight: text.style.fontWeight,
              fontFamily: text.style.fontFamily,
              fontStyle: text.style.fontStyle,
              wordSpacing: text.style.wordSpacing,
              textBaseline: text.style.textBaseline,
              letterSpacing: text.style.letterSpacing,
              height: text.style.height,
              locale: text.style.locale,
            ),
            text: text.text,
            children: text.children,
            recognizer: text.recognizer),
        textAlign: textAlign,
        textDirection: textDirection,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        ellipsis: overflow == TextOverflow.ellipsis ? _kEllipsis : null,
        locale: locale,
      );
    }
  }

  void _layoutText({double minWidth = 0.0, double maxWidth = double.infinity}) {
    final bool widthMatters = softWrap || overflow == TextOverflow.ellipsis;
    _textPainter.layout(
        minWidth: minWidth,
        maxWidth: widthMatters ? maxWidth : double.infinity);
  }

  void _layoutTextWithConstraints(BoxConstraints constraints) {
    _layoutText(minWidth: constraints.minWidth, maxWidth: constraints.maxWidth);
  }

  @override
  void paint(PaintingContext context, Offset offset) {
    final Canvas canvas = context.canvas;
    initTextPainter();
    _layoutTextWithConstraints(constraints);
    _textPainter.paint(canvas, offset.translate(1.0, 1.0));
    _textPainter.paint(canvas, offset.translate(-1.0, -1.0));
    _textPainter.paint(canvas, offset.translate(-1.0, 1.0));
    _textPainter.paint(canvas, offset.translate(1.0, -1.0));
    _textPainter.paint(canvas, offset.translate(1.0, 0.0));
    _textPainter.paint(canvas, offset.translate(0.0, 1.0));
    _textPainter.paint(canvas, offset.translate(1.5, 1.5));
    canvas.scale(1.0, 1.0);
    super.paint(context, offset);
  }
}
