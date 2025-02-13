unit D2D1ExtHelpers;

interface

uses
  Winapi.DxgiFormat, Winapi.Windows, Winapi.Wincodec, Winapi.DXGI, Winapi.DxgiType,
  D2D1_1;
type

  TD2D1Matrix3x2FHelper = record helper for TD2D1Matrix3x2F

    class function Create(AM11, AM12, AM21, AM22, AM31, AM32: Single): TD2D1Matrix3x2F; static;
    class function Identity: TD2D1Matrix3x2F; static;

    class function Translation(AX, AY: Single): TD2D1Matrix3x2F; overload; static;
    class function Translation(APos: TD2D1Point2F): TD2D1Matrix3x2F; overload; static;

    class function Rotation(AAngle, AX, AY: Single): TD2D1Matrix3x2F; overload; static;
    class function Rotation(AAngle: Single; APos: TD2D1Point2F): TD2D1Matrix3x2F; overload; static;
  end;

  TD2D1PointFHelper = record helper for TD2D1Point2F
    class function Create(AX, AY: Single): TD2D1Point2F; static;
    class function Zero: TD2D1Point2F; static;
    class function Infinite: TD2D1Point2F; static;
  end;

function D2D1PixelFormat(
  ADXGIFormat: DXGI_FORMAT = DXGI_FORMAT_UNKNOWN;
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

implementation

function FloatMax: Single; inline;
begin
  Result := 3.402823466e+38;
end;

function D2D1PixelFormat(
  ADXGIFormat: DXGI_FORMAT = DXGI_FORMAT_UNKNOWN;
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

function D2D1HwndRenderTargetProperties(
  AHwnd: HWND): TD2D1HwndRenderTargetProperties;
var U: TD2D1SizeU;
begin
  U.Width := 0;
  U.Height := 0;
  Result := D2D1HwndRenderTargetProperties(AHwnd, U)
end;

{ TD2D1Matrix3x2FHelper }

class function TD2D1Matrix3x2FHelper.Create(AM11, AM12, AM21, AM22, AM31, AM32: Single): TD2D1Matrix3x2F;
begin
  Result.M11 := AM11; Result.M12 := AM12;
  Result.M21 := AM21; Result.M22 := AM22;
  Result.M31 := AM31; Result.M32 := AM32;
end;

class function TD2D1Matrix3x2FHelper.Identity: TD2D1Matrix3x2F;
begin
  Result.M11 := 1; Result.M12 := 0;
  Result.M21 := 0; Result.M22 := 1;
  Result.M31 := 0; Result.M32 := 0;
end;

class function TD2D1Matrix3x2FHelper.Translation(AX, AY: Single): TD2D1Matrix3x2F;
begin
  Result.M11 := 1; Result.M12 := 0;
  Result.M21 := 0; Result.M22 := 1;
  Result.M31 := AX; Result.M32 := AY;
end;

class function TD2D1Matrix3x2FHelper.Rotation(AAngle: Single; APos: TD2D1Point2F): TD2D1Matrix3x2F;
begin
  D2D1MakeRotateMatrix(AAngle, APos, Result);
end;

class function TD2D1Matrix3x2FHelper.Rotation(AAngle, AX, AY: Single): TD2D1Matrix3x2F;
begin
  Result := Rotation(AAngle, TD2D1Point2F.Create(AX, AY));
end;

class function TD2D1Matrix3x2FHelper.Translation(APos: TD2D1Point2F): TD2D1Matrix3x2F;
begin
  Result := Translation(APos.X, APos.Y)
end;

{ TD2D1PointFHelper }

class function TD2D1PointFHelper.Create(AX, AY: Single): TD2D1Point2F;
begin
  Result.X := AX;
  Result.Y := AY;
end;

class function TD2D1PointFHelper.Infinite: TD2D1Point2F;
begin
  Result := Create(FloatMax, FloatMax);
end;

class function TD2D1PointFHelper.Zero: TD2D1Point2F;
begin
  Result := Create(0, 0);
end;

end.
