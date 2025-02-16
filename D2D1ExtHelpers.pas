{
	This is the second file and serves as a help for D2D1Ext.
	
	It contains the functions for parameterizing structures and custom user functions.
	
	16 Feb 2025
	Pustowalow W.
}

unit D2D1ExtHelpers;

interface

uses
  Winapi.DxgiFormat, Winapi.Windows, Winapi.Wincodec, Winapi.DXGI, Winapi.DxgiType, System.Math, Graphics,
  D2D1Ext;

{$REGION 'd2d1helper.h definition'}

function D2D1ColorF(ARed, AGreen, ABlue, AAlpha: Single): TD2D1ColorF; overload; inline;
function D2D1ColorF(AColor: TColor): TD2D1ColorF; overload; inline;
function D2D1RandomColorF(AAlpha: Single = 1): TD2D1ColorF; inline;

function D2D1Point2F(AX, AY: Single): TD2D1Point2F; inline;
function D2D1InfinitePoint2F: TD2D1Point2F; inline;
function D2D1RandomPoint2F(ABoundLeft, ABoundTop, ABoundRight, ABoundBottom: Single): TD2D1Point2F; overload; inline;
function D2D1RandomPoint2F(ARandomRadius: Single = 100): TD2D1Point2F; overload; inline;

function D2D1Point2U(AX, AY: UInt32): TD2D1Point2U; inline;
function D2D1InfinitePoint2U: TD2D1Point2U; inline;

function D2D1Point2L(AX, AY: Int32): TD2D1Point2L; inline;
function D2D1InfinitePoint2L: TD2D1Point2L; inline;

function D2D1SizeF(AWidth, AHeight: Single): TD2D1SizeF; inline;
function D2D1InfiniteSizeF: TD2D1SizeF; inline;

function D2D1SizeU(AWidth, AHeight: UInt32): TD2D1SizeU; inline;
function D2D1InfiniteSizeU: TD2D1SizeU; inline;

function D2D1RectF(ALeft, ATop, ARight, ABottom: Single): TD2D1RectF; overload; inline;
function D2D1RectF(ALeftTop, ARightBottom: TD2D1Point2F): TD2D1RectF; overload; inline;
function D2D1InfiniteRectF: TD2D1RectF; inline;

function D2D1RectU(ALeft, ATop, ARight, ABottom: UInt32): TD2D1RectU; inline;
function D2D1InfiniteRectU: TD2D1RectU; inline;

function D2D1RectL(ALeft, ATop, ARight, ABottom: Int32): TD2D1RectL; inline;
function D2D1InfiniteRectL: TD2D1RectL; inline;

function D2D1ArcSegment(
  APoint: TD2D1Point2F;
  ASize: TD2D1SizeF;
  ARotationAngle: Single;
  ASweepDirection: TD2D1SweepDirection;
  AArcSize: TD2D1ArcSize): TD2D1ArcSegment;

function D2D1QuadraticBezierSegment(APoint1, APoint2: TD2D1Point2F): TD2D1QuadraticBezierSegment;

function D2D1BezierSegment(APoint1, APoint2, APoint3: TD2D1Point2F): TD2D1BezierSegment;

function D2D1Ellipse(ACenter: TD2D1Point2F; ARadiusX, ARadiusY: Single): TD2D1Ellipse;

function D2D1RoundedRect(ARect: TD2D1RectF; ARadiusX, ARadiusY: Single): TD2D1RoundedRect;

function D2D1BrushProperties(AOpacity: Single; ATransform: TD2D1Matrix3x2F): TD2D1BrushProperties;

function D2D1LinearGradientBrushProperties(AStartPoint, AEndPoint: TD2D1Point2F): TD2D1LinearGradientBrushProperties;

function D2D1RadialGradientBrushProperties(ACenter, AGradientOriginOffset: TD2D1Point2F; ARadiusX, ARadiusY: Single): TD2D1RadialGradientBrushProperties;

function D2D1GradientStop(APosition: Single; AColor: TD2D1ColorF): TD2D1GradientStop;

function D2D1StrokeStyleProperties(
  AStartCap: TD2D1CapStyle = D2D1_CAP_STYLE_FLAT;
  AEndCap: TD2D1CapStyle = D2D1_CAP_STYLE_FLAT;
  ADashCap: TD2D1CapStyle = D2D1_CAP_STYLE_FLAT;
  ALineJoin: TD2D1LineJoin = D2D1_LINE_JOIN_MITER;
  AMiterLimit: Single = 10;
  ADashStyle : TD2D1DashStyle = D2D1_DASH_STYLE_SOLID;
  ADashOffset: Single = 0): TD2D1StrokeStyleProperties;

function D2D1BitmapBrushProperties(
  AExtendModeX: TD2D1ExtendMode = D2D1_EXTEND_MODE_CLAMP;
  AExtendModeY: TD2D1ExtendMode = D2D1_EXTEND_MODE_CLAMP;
  AInterpolationMode : TD2D1BitmapInterpolationMode = D2D1_BITMAP_INTERPOLATION_MODE_LINEAR): TD2D1BitmapBrushProperties;

function D2D1BitmapProperties(
  APixelFormat: TD2D1PixelFormat;
  ADpiX: Single;
  ADpiY: Single): TD2D1BitmapProperties; overload;

function D2D1BitmapProperties: TD2D1BitmapProperties; overload;

function D2D1LayerParameters(
  AContentBounds: TD2D1RectF;
  AGeometricMask: ID2D1Geometry;
  AMaskAntialiasMode: TD2D1AntialiasMode;
  AMaskTransform: TD2D1Matrix3x2F;
  AOpacity: Single;
  AOpacityBrush: ID2D1Brush;
  ALayerOptions: TD2D1LayerOptions): TD2D1LayerParameters; overload;

function D2D1LayerParameters: TD2D1LayerParameters; overload;

function D2D1DrawingStateDescription(
  AAntialiasMode: TD2D1AntialiasMode;
  ATextAntialiasMode: TD2D1TextAntialiasMode;
  ATag1: TD2D1Tag;
  ATag2: TD2D1Tag;
  ATransform: TD2D1Matrix3x2F): TD2D1DrawingStateDescription; overload;

function D2D1DrawingStateDescription: TD2D1DrawingStateDescription; overload;

function D2D1PixelFormat(
  ADXGIFormat: TDXGIFormat = DXGI_FORMAT_UNKNOWN;
  AAlphaMode: TD2D1AlphaMode = D2D1_ALPHA_MODE_UNKNOWN): TD2D1PixelFormat;

function D2D1RenderTargetProperties(
  AType: TD2D1RenderTargetType;
  APixelFormat: TD2D1PixelFormat;
  ADpiX: Single = 0;
  ADpiY: Single = 0;
  AUsage: TD2D1RenderTargetUsage = D2D1_RENDER_TARGET_USAGE_NONE;
  AMinLevel: TD2D1FeatureLevel = D2D1_FEATURE_LEVEL_DEFAULT): TD2D1RenderTargetProperties; overload;

function D2D1RenderTargetProperties(
  AType: TD2D1RenderTargetType = D2D1_RENDER_TARGET_TYPE_DEFAULT): TD2D1RenderTargetProperties; overload;

function D2D1HwndRenderTargetProperties(
  AHwnd: HWND;
  APixelSize: TD2D1SizeU;
  APresentOptions: TD2D1PresentOptions = D2D1_PRESENT_OPTIONS_NONE): TD2D1HwndRenderTargetProperties; overload;

function D2D1HwndRenderTargetProperties(
  AHwnd: HWND): TD2D1HwndRenderTargetProperties; overload;

{$ENDREGION}

{$REGION 'dwrite.h definition'}

function DWriteTextRange(AStartPosition, ALength: Uint32): TDWriteTextRange;

{$ENDREGION}

{$REGION 'd2d1_1helper.h definition'}

function D2D1ConvertColorSpace(
  ASourceColorSpace,
  ADestinationColorSpace: TD2D1ColorSpace;
  AColor: TD2D1ColorF): TD2D1ColorF;

function D2D1DrawingStateDescription1(
  AAntialiasMode: TD2D1AntialiasMode;
  ATextAntialiasMode: TD2D1TextAntialiasMode;
  ATag1: TD2D1Tag;
  ATag2: TD2D1Tag;
  ATransform: TD2D1Matrix3x2F;
  APrimitiveBlend: D2D1_PRIMITIVE_BLEND;
  AUnitMode: D2D1_UNIT_MODE): TD2D1DrawingStateDescription1; overload;
function D2D1DrawingStateDescription1: TD2D1DrawingStateDescription1; overload;

function D2D1BitmapProperties1(
  ABitmapOptions: TD2D1BitmapOptions;
  APixelFormat: TD2D1PixelFormat;
  ADpiX: Single;
  ADpiY: Single;
  AColorContext: ID2D1ColorContext): TD2D1BitmapProperties1; overload;

function D2D1BitmapProperties1: TD2D1BitmapProperties1; overload;

function D2D1LayerParameters1(
  AContentBounds: TD2D1RectF;
  AGeometricMask: ID2D1Geometry;
  AMaskAntialiasMode: TD2D1AntialiasMode;
  AMaskTransform: TD2D1Matrix3x2F;
  AOpacity: Single;
  AOpacityBrush: ID2D1Brush;
  ALayerOptions: TD2D1LayerOptions1): TD2D1LayerParameters1; overload;

function D2D1LayerParameters1: TD2D1LayerParameters1; overload;

function D2D1StrokeStyleProperties1(
  AStartCap: TD2D1CapStyle = D2D1_CAP_STYLE_FLAT;
  AEndCap: TD2D1CapStyle = D2D1_CAP_STYLE_FLAT;
  ADashCap: TD2D1CapStyle = D2D1_CAP_STYLE_FLAT;
  ALineJoin: TD2D1LineJoin = D2D1_LINE_JOIN_MITER;
  AMiterLimit: Single = 10;
  ADashStyle: TD2D1DashStyle = D2D1_DASH_STYLE_SOLID;
  ADashOffset: Single = 0.0;
  ATransformType: D2D1_STROKE_TRANSFORM_TYPE  = D2D1_STROKE_TRANSFORM_TYPE_NORMAL): TD2D1StrokeStyleProperties1;

{$ENDREGION}

implementation

{$REGION 'd2d1helper.h implemetation'}
{=========================================================================================================================================}
function D2D1ColorF(ARed, AGreen, ABlue, AAlpha: Single): TD2D1ColorF;
begin
  Result.R := ARed;
  Result.G := AGreen;
  Result.B := ABlue;
  Result.A := AAlpha;
end;

function D2D1ColorF(AColor: TColor): TD2D1ColorF;
var RGB: UInt32;
begin
  RGB := ColorToRGB(AColor);

  Result.R :=   RGB         and $FF  / 255;
  Result.G := ((RGB shr  8) and $FF) / 255;
  Result.B := ((RGB shr 16) and $FF) / 255;
  Result.A := 1;

  if AColor = clNone then
    Result.A := 0;
end;

function D2D1RandomColorF(AAlpha: Single = 1): TD2D1ColorF;
begin
  Result := D2D1ColorF(Random, Random, Random, AAlpha)
end;

function D2D1Point2F(AX, AY: Single): TD2D1Point2F; inline;
begin
  Result.X := AX;
  Result.Y := AY;
end;

function D2D1InfinitePoint2F: TD2D1Point2F; inline;
begin
  Result.X := MaxSingle;
  Result.Y := MaxSingle;
end;

function D2D1RandomPoint2F(ABoundLeft, ABoundTop, ABoundRight, ABoundBottom: Single): TD2D1Point2F;
begin
  Result.X := (ABoundRight - ABoundLeft) * Random + ABoundLeft;
  Result.Y := (ABoundBottom - ABoundTop) * Random + ABoundTop;
end;

function D2D1RandomPoint2F(ARandomRadius: Single = 100): TD2D1Point2F;
var R: Single;
begin
  R := ARandomRadius / 2;
  Result := D2D1RandomPoint2F(-R, -R, R, R);
end;

function D2D1Point2U(AX, AY: UInt32): TD2D1Point2U; inline;
begin
  Result.X := AX;
  Result.Y := AY;
end;

function D2D1InfinitePoint2U: TD2D1Point2U; inline;
begin
  Result.X := MAXDWORD;
  Result.Y := MAXDWORD;
end;

function D2D1Point2L(AX, AY: Int32): TD2D1Point2L; inline;
begin
  Result.X := AX;
  Result.Y := AY;
end;

function D2D1InfinitePoint2L: TD2D1Point2L; inline;
begin
  Result.X := MaxInt;
  Result.Y := MaxInt;
end;

function D2D1SizeF(AWidth, AHeight: Single): TD2D1SizeF; inline;
begin
  Result.Width := AWidth;
  Result.Height := AHeight;
end;

function D2D1InfiniteSizeF: TD2D1SizeF; inline;
begin
  Result.Width := MaxSingle;
  Result.Height := MaxSingle;
end;

function D2D1SizeU(AWidth, AHeight: UInt32): TD2D1SizeU; inline;
begin
  Result.Width := AWidth;
  Result.Height := AHeight;
end;

function D2D1InfiniteSizeU: TD2D1SizeU; inline;
begin
  Result.Width := MAXDWORD;
  Result.Height := MAXDWORD;
end;

function D2D1RectF(ALeft, ATop, ARight, ABottom: Single): TD2D1RectF; inline;
begin
  Result.Left := ALeft;
  Result.Top := ATop;
  Result.Right := ARight;
  Result.Bottom := ABottom;
end;

function D2D1RectF(ALeftTop, ARightBottom: TD2D1Point2F): TD2D1RectF;
begin
  Result.Left := ALeftTop.X;
  Result.Top := ALeftTop.Y;
  Result.Right := ARightBottom.X;
  Result.Bottom := ARightBottom.Y;
end;

function D2D1InfiniteRectF: TD2D1RectF; inline;
begin
  Result.Left := -MaxSingle;
  Result.Top := -MaxSingle;
  Result.Right := MaxSingle;
  Result.Bottom := MaxSingle;
end;

function D2D1RectU(ALeft, ATop, ARight, ABottom: UInt32): TD2D1RectU; inline;
begin
  Result.Left := ALeft;
  Result.Top := ATop;
  Result.Right := ARight;
  Result.Bottom := ABottom;
end;

function D2D1InfiniteRectU: TD2D1RectU; inline;
begin
  Result.Left := 0;
  Result.Top := 0;
  Result.Right := MAXDWORD;
  Result.Bottom := MAXDWORD;
end;

function D2D1RectL(ALeft, ATop, ARight, ABottom: Int32): TD2D1RectL; inline;
begin
  Result.Left := ALeft;
  Result.Top := ATop;
  Result.Right := ARight;
  Result.Bottom := ABottom;
end;

function D2D1InfiniteRectL: TD2D1RectL; inline;
begin
  Result.Left := -MaxInt - 1;
  Result.Top := -MaxInt - 1;
  Result.Right := MaxInt;
  Result.Bottom := MaxInt;
end;

function D2D1ArcSegment(
  APoint: TD2D1Point2F;
  ASize: TD2D1SizeF;
  ARotationAngle: Single;
  ASweepDirection: TD2D1SweepDirection;
  AArcSize: TD2D1ArcSize): TD2D1ArcSegment;
begin
  Result.Point := APoint;
  Result.Size := ASize;
  Result.RotationAngle := ARotationAngle;
  Result.SweepDirection := ASweepDirection;
  Result.ArcSize := AArcSize;
end;

function D2D1QuadraticBezierSegment(APoint1, APoint2: TD2D1Point2F): TD2D1QuadraticBezierSegment;
begin
  Result.Point1 := APoint1;
  Result.Point2 := APoint2;
end;

function D2D1BezierSegment(APoint1, APoint2, APoint3: TD2D1Point2F): TD2D1BezierSegment;
begin
  Result.Point1 := APoint1;
  Result.Point2 := APoint2;
  Result.Point3 := APoint3;
end;

function D2D1Ellipse(ACenter: TD2D1Point2F; ARadiusX, ARadiusY: Single): TD2D1Ellipse;
begin
  Result.Point := ACenter;
  Result.RadiusX := ARadiusX;
  Result.RadiusY := ARadiusY;
end;

function D2D1RoundedRect(ARect: TD2D1RectF; ARadiusX, ARadiusY: Single): TD2D1RoundedRect;
begin
  Result.Rect := ARect;
  Result.RadiusX := ARadiusX;
  Result.RadiusY := ARadiusY;
end;

function D2D1BrushProperties(AOpacity: Single; ATransform: TD2D1Matrix3x2F): TD2D1BrushProperties;
begin
  Result.Opacity := AOpacity;
  Result.Transform := ATransform;
end;

function D2D1LinearGradientBrushProperties(AStartPoint, AEndPoint: TD2D1Point2F): TD2D1LinearGradientBrushProperties;
begin
  Result.StartPoint := AStartPoint;
  Result.EndPoint := AEndPoint;
end;

function D2D1RadialGradientBrushProperties(ACenter, AGradientOriginOffset: TD2D1Point2F; ARadiusX, ARadiusY: Single): TD2D1RadialGradientBrushProperties;
begin
  Result.Center := ACenter;
  Result.GradientOriginOffset := AGradientOriginOffset;
  Result.RadiusX := ARadiusX;
  Result.RadiusY := ARadiusY;
end;

function D2D1GradientStop(APosition: Single; AColor: TD2D1ColorF): TD2D1GradientStop;
begin
  Result.Position := APosition;
  Result.Color := AColor;
end;

function D2D1StrokeStyleProperties(
  AStartCap: TD2D1CapStyle = D2D1_CAP_STYLE_FLAT;
  AEndCap: TD2D1CapStyle = D2D1_CAP_STYLE_FLAT;
  ADashCap: TD2D1CapStyle = D2D1_CAP_STYLE_FLAT;
  ALineJoin: TD2D1LineJoin = D2D1_LINE_JOIN_MITER;
  AMiterLimit: Single = 10;
  ADashStyle : TD2D1DashStyle = D2D1_DASH_STYLE_SOLID;
  ADashOffset: Single = 0): TD2D1StrokeStyleProperties;
begin
  Result.StartCap := AStartCap;
  Result.EndCap := AEndCap;
  Result.DashCap := ADashCap;
  Result.LineJoin := ALineJoin;
  Result.MiterLimit := AMiterLimit;
  Result.DashStyle := ADashStyle;
  Result.DashOffset := ADashOffset;
end;

function D2D1BitmapBrushProperties(
  AExtendModeX: TD2D1ExtendMode = D2D1_EXTEND_MODE_CLAMP;
  AExtendModeY: TD2D1ExtendMode = D2D1_EXTEND_MODE_CLAMP;
  AInterpolationMode : TD2D1BitmapInterpolationMode = D2D1_BITMAP_INTERPOLATION_MODE_LINEAR): TD2D1BitmapBrushProperties;
begin
  Result.ExtendModeX := AExtendModeX;
  Result.ExtendModeY := AExtendModeY;
  Result.InterpolationMode := AInterpolationMode;
end;

function D2D1BitmapProperties(
  APixelFormat: TD2D1PixelFormat;
  ADpiX: Single;
  ADpiY: Single): TD2D1BitmapProperties;
begin
  Result.PixelFormat := APixelFormat;
  Result.DpiX := ADpiX;
  Result.DpiY := ADpiY;
end;

function D2D1BitmapProperties: TD2D1BitmapProperties;
begin
  Result := D2D1BitmapProperties(D2D1PixelFormat, 96, 96);
end;

function D2D1LayerParameters(
  AContentBounds: TD2D1RectF;
  AGeometricMask: ID2D1Geometry;
  AMaskAntialiasMode: TD2D1AntialiasMode;
  AMaskTransform: TD2D1Matrix3x2F;
  AOpacity: Single;
  AOpacityBrush: ID2D1Brush;
  ALayerOptions: TD2D1LayerOptions): TD2D1LayerParameters;
begin
  Result.ContentBounds := AContentBounds;
  Result.GeometricMask := AGeometricMask;
  Result.MaskAntialiasMode := AMaskAntialiasMode;
  Result.MaskTransform := AMaskTransform;
  Result.Opacity := AOpacity;
  Result.OpacityBrush := AOpacityBrush;
  Result.LayerOptions := ALayerOptions;
end;

function D2D1LayerParameters: TD2D1LayerParameters;
begin
  Result := D2D1LayerParameters(D2D1InfiniteRectF, nil, D2D1_ANTIALIAS_MODE_PER_PRIMITIVE, TD2D1Matrix3x2F.Identity, 1, nil, D2D1_LAYER_OPTIONS_NONE);
end;

function D2D1DrawingStateDescription(
  AAntialiasMode: TD2D1AntialiasMode;
  ATextAntialiasMode: TD2D1TextAntialiasMode;
  ATag1: TD2D1Tag;
  ATag2: TD2D1Tag;
  ATransform: TD2D1Matrix3x2F): TD2D1DrawingStateDescription;
begin
  Result.AntialiasMode := AAntialiasMode;
  Result.TextAntialiasMode := ATextAntialiasMode;
  Result.Tag1 := ATag1;
  Result.Tag2 := ATag2;
  Result.Transform := ATransform;
end;

function D2D1DrawingStateDescription: TD2D1DrawingStateDescription;
begin
  Result := D2D1DrawingStateDescription(D2D1_ANTIALIAS_MODE_PER_PRIMITIVE, D2D1_TEXT_ANTIALIAS_MODE_DEFAULT, 0, 0, TD2D1Matrix3x2F.Identity);
end;

function D2D1PixelFormat(
  ADXGIFormat: TDXGIFormat = DXGI_FORMAT_UNKNOWN;
  AAlphaMode: TD2D1AlphaMode = D2D1_ALPHA_MODE_UNKNOWN): TD2D1PixelFormat;
begin
  Result.DXGIFormat := ADXGIFormat;
  Result.AlphaMode := AAlphaMode;
end;

function D2D1RenderTargetProperties(
  AType: TD2D1RenderTargetType;
  APixelFormat: TD2D1PixelFormat;
  ADpiX: Single = 0;
  ADpiY: Single = 0;
  AUsage: TD2D1RenderTargetUsage = D2D1_RENDER_TARGET_USAGE_NONE;
  AMinLevel: TD2D1FeatureLevel = D2D1_FEATURE_LEVEL_DEFAULT): TD2D1RenderTargetProperties;
begin
  Result.&Type := AType;
  Result.PixelFormat := APixelFormat;
  Result.DpiX := ADpiX;
  Result.DpiY := ADpiY;
  Result.Usage := AUsage;
  Result.MinLevel := AMinLevel;
end;

function D2D1RenderTargetProperties(
  AType: TD2D1RenderTargetType = D2D1_RENDER_TARGET_TYPE_DEFAULT): TD2D1RenderTargetProperties;
begin
  Result := D2D1RenderTargetProperties(AType, D2D1PixelFormat)
end;

function D2D1HwndRenderTargetProperties(
  AHwnd: HWND;
  APixelSize: TD2D1SizeU;
  APresentOptions: TD2D1PresentOptions = D2D1_PRESENT_OPTIONS_NONE): TD2D1HwndRenderTargetProperties;
begin
  Result.Hwnd := AHwnd;
  Result.PixelSize := APixelSize;
  Result.PresentOptions := APresentOptions;
end;

function D2D1HwndRenderTargetProperties(AHwnd: HWND): TD2D1HwndRenderTargetProperties;
var U: TD2D1SizeU;
begin
  U.Width := 0;
  U.Height := 0;
  Result := D2D1HwndRenderTargetProperties(AHwnd, U)
end;

{$ENDREGION}

{$REGION 'd2d1_1helper.h implemetation'}
function D2D1ConvertColorSpace(
  ASourceColorSpace,
  ADestinationColorSpace: TD2D1ColorSpace;
  AColor: TD2D1ColorF): TD2D1ColorF;
begin
  Result := D2D1Ext.D2D1ConvertColorSpace(ASourceColorSpace, ADestinationColorSpace, @AColor)
end;

function D2D1DrawingStateDescription1(
  AAntialiasMode: TD2D1AntialiasMode;
  ATextAntialiasMode: TD2D1TextAntialiasMode;
  ATag1: TD2D1Tag;
  ATag2: TD2D1Tag;
  ATransform: TD2D1Matrix3x2F;
  APrimitiveBlend: D2D1_PRIMITIVE_BLEND;
  AUnitMode: D2D1_UNIT_MODE): TD2D1DrawingStateDescription1;
begin
  Result.AntialiasMode := AAntialiasMode;
  Result.TextAntialiasMode := ATextAntialiasMode;
  Result.Tag1 := ATag1;
  Result.Tag2 := ATag2;
  Result.Transform := ATransform;
  Result.PrimitiveBlend := APrimitiveBlend;
  Result.UnitMode := AUnitMode;
end;

function D2D1DrawingStateDescription1: TD2D1DrawingStateDescription1;
begin
  Result := D2D1DrawingStateDescription1(
    D2D1_ANTIALIAS_MODE_PER_PRIMITIVE,
    D2D1_TEXT_ANTIALIAS_MODE_DEFAULT,
    0,
    0,
    TD2D1Matrix3x2F.Identity,
    D2D1_PRIMITIVE_BLEND_SOURCE_OVER,
    D2D1_UNIT_MODE_DIPS);
end;

function D2D1BitmapProperties1(
  ABitmapOptions: TD2D1BitmapOptions;
  APixelFormat: TD2D1PixelFormat;
  ADpiX: Single;
  ADpiY: Single;
  AColorContext: ID2D1ColorContext): TD2D1BitmapProperties1;
begin
  Result.PixelFormat := APixelFormat;
  Result.DpiX := 96;
  Result.DpiY := 96;
  Result.BitmapOptions := ABitmapOptions;
  Result.ColorContext := AColorContext;
end;

function D2D1BitmapProperties1: TD2D1BitmapProperties1;
begin
  Result := D2D1BitmapProperties1(
  D2D1_BITMAP_OPTIONS_NONE,
  D2D1PixelFormat,
  96,
  96,
  nil);
end;

function D2D1LayerParameters1(
  AContentBounds: TD2D1RectF;
  AGeometricMask: ID2D1Geometry;
  AMaskAntialiasMode: TD2D1AntialiasMode;
  AMaskTransform: TD2D1Matrix3x2F;
  AOpacity: Single;
  AOpacityBrush: ID2D1Brush;
  ALayerOptions: TD2D1LayerOptions1): TD2D1LayerParameters1;
begin
  Result.ContentBounds := AContentBounds;
  Result.GeometricMask := AGeometricMask;
  Result.MaskAntialiasMode := AMaskAntialiasMode;
  Result.MaskTransform := AMaskTransform;
  Result.Opacity := AOpacity;
  Result.OpacityBrush := AOpacityBrush;
  Result.LayerOptions := ALayerOptions;
end;

function D2D1LayerParameters1: TD2D1LayerParameters1;
begin
  Result := D2D1LayerParameters1(
    D2D1InfiniteRectF,
    nil,
    D2D1_ANTIALIAS_MODE_PER_PRIMITIVE,
    TD2D1Matrix3x2F.Identity,
    1,
    nil,
    D2D1_LAYER_OPTIONS1_NONE);
end;

function D2D1StrokeStyleProperties1(
  AStartCap: TD2D1CapStyle = D2D1_CAP_STYLE_FLAT;
  AEndCap: TD2D1CapStyle = D2D1_CAP_STYLE_FLAT;
  ADashCap: TD2D1CapStyle = D2D1_CAP_STYLE_FLAT;
  ALineJoin: TD2D1LineJoin = D2D1_LINE_JOIN_MITER;
  AMiterLimit: Single = 10;
  ADashStyle: TD2D1DashStyle = D2D1_DASH_STYLE_SOLID;
  ADashOffset: Single = 0.0;
  ATransformType: D2D1_STROKE_TRANSFORM_TYPE  = D2D1_STROKE_TRANSFORM_TYPE_NORMAL): TD2D1StrokeStyleProperties1;
begin
  Result.StartCap := AStartCap;
  Result.EndCap := AEndCap;
  Result.DashCap := ADashCap;
  Result.LineJoin := ALineJoin;
  Result.MiterLimit := AMiterLimit;
  Result.DashStyle := ADashStyle;
  Result.DashOffset := ADashOffset;
  Result.TransformType := ATransformType;
end;

{$ENDREGION}

{$REGION 'dwrite.h definition'}

function DWriteTextRange(AStartPosition, ALength: Uint32): TDWriteTextRange;
begin
  Result.StartPosition := AStartPosition;
  Result.Length := ALength;
end;

{$ENDREGION}

end.
