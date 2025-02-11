{

  D2DBaseTypes.h
  D2D1helper.h
}

unit D2D1_1;

interface

uses Winapi.DxgiFormat, Winapi.Windows, Winapi.Wincodec, Winapi.DXGI, Winapi.DxgiType, Winapi.D3DCommon, ActiveX;


// Determines whether data is aligned or packed
{$ALIGN ON}

// Sets the minimum storage used to hold enumerated types
{$MINENUMSIZE 4}

type

{$REGION 'D2DBaseTypes.h'}

//=========================================================================================================================================
// D2DBaseTypes.h
//=========================================================================================================================================

  D2D1_COLOR_F = record
    R, G, B, A: Single;
  end;

  PD2D1_COLOR_F = ^D2D1_COLOR_F;

  TD2D1ColorF = D2D1_COLOR_F;
  PD2D1ColorF = ^TD2D1ColorF;

{$ENDREGION}

{$REGION 'interface defenitions'}

//=========================================================================================================================================
// D2D1.h
// D2D1helper.h
// dcommon.h
//=========================================================================================================================================
const

  D2D1_INTERPOLATION_MODE_DEFINITION_NEAREST_NEIGHBOR     = 0;
  D2D1_INTERPOLATION_MODE_DEFINITION_LINEAR               = 1;
  D2D1_INTERPOLATION_MODE_DEFINITION_CUBIC                = 2;
  D2D1_INTERPOLATION_MODE_DEFINITION_MULTI_SAMPLE_LINEAR  = 3;
  D2D1_INTERPOLATION_MODE_DEFINITION_ANISOTROPIC          = 4;
  D2D1_INTERPOLATION_MODE_DEFINITION_HIGH_QUALITY_CUBIC   = 5;
  D2D1_INTERPOLATION_MODE_DEFINITION_FANT                 = 6;
  D2D1_INTERPOLATION_MODE_DEFINITION_MIPMAP_LINEAR        = 7;

  // d2d1.h
  IID_ID2D1Resource                 : TGUID = '{2cd90691-12e2-11dc-9fed-001143a055f9}';
  IID_ID2D1Image                    : TGUID = '{65019f75-8da2-497c-b32c-dfa34e48ede6}';
  IID_ID2D1Bitmap                   : TGUID = '{a2296057-ea42-4099-983b-539fb6505426}';
  IID_ID2D1GradientStopCollection   : TGUID = '{2cd906a7-12e2-11dc-9fed-001143a055f9}';
  IID_ID2D1Brush                    : TGUID = '{2cd906a8-12e2-11dc-9fed-001143a055f9}';
  IID_ID2D1BitmapBrush              : TGUID = '{2cd906aa-12e2-11dc-9fed-001143a055f9}';
  IID_ID2D1SolidColorBrush          : TGUID = '{2cd906a9-12e2-11dc-9fed-001143a055f9}';
  IID_ID2D1LinearGradientBrush      : TGUID = '{2cd906ab-12e2-11dc-9fed-001143a055f9}';
  IID_ID2D1RadialGradientBrush      : TGUID = '{2cd906ac-12e2-11dc-9fed-001143a055f9}';
  IID_ID2D1StrokeStyle              : TGUID = '{2cd9069d-12e2-11dc-9fed-001143a055f9}';
  IID_ID2D1Geometry                 : TGUID = '{2cd906a1-12e2-11dc-9fed-001143a055f9}';
  IID_ID2D1RectangleGeometry        : TGUID = '{2cd906a2-12e2-11dc-9fed-001143a055f9}';
  IID_ID2D1RoundedRectangleGeometry : TGUID = '{2cd906a3-12e2-11dc-9fed-001143a055f9}';
  IID_ID2D1EllipseGeometry          : TGUID = '{2cd906a4-12e2-11dc-9fed-001143a055f9}';
  IID_ID2D1GeometryGroup            : TGUID = '{2cd906a6-12e2-11dc-9fed-001143a055f9}';
  IID_ID2D1TransformedGeometry      : TGUID = '{2cd906bb-12e2-11dc-9fed-001143a055f9}';
  IID_ID2D1SimplifiedGeometrySink   : TGUID = '{2cd9069e-12e2-11dc-9fed-001143a055f9}';
  IID_ID2D1GeometrySink             : TGUID = '{2cd9069f-12e2-11dc-9fed-001143a055f9}';
  IID_ID2D1TessellationSink         : TGUID = '{2cd906c1-12e2-11dc-9fed-001143a055f9}';
  IID_ID2D1PathGeometry             : TGUID = '{2cd906a5-12e2-11dc-9fed-001143a055f9}';
  IID_ID2D1Mesh                     : TGUID = '{2cd906c2-12e2-11dc-9fed-001143a055f9}';
  IID_ID2D1Layer                    : TGUID = '{2cd9069b-12e2-11dc-9fed-001143a055f9}';
  IID_ID2D1DrawingStateBlock        : TGUID = '{28506e39-ebf6-46a1-bb47-fd85565ab957}';
  IID_ID2D1RenderTarget             : TGUID = '{2cd90694-12e2-11dc-9fed-001143a055f9}';
  IID_ID2D1BitmapRenderTarget       : TGUID = '{2cd90695-12e2-11dc-9fed-001143a055f9}';
  IID_ID2D1HwndRenderTarget         : TGUID = '{2cd90698-12e2-11dc-9fed-001143a055f9}';
  IID_ID2D1GdiInteropRenderTarget   : TGUID = '{e0db51c3-6f77-4bae-b3d5-e47509b35838}';
  IID_ID2D1DCRenderTarget           : TGUID = '{1c51bc64-de61-46fd-9899-63a5d8f03950}';
  IID_ID2D1Factory                  : TGUID = '{06152247-6f50-465a-9245-118bfd3b6007}';

  // d2d1_1.h
  IID_ID2D1GdiMetafileSink          : TGUID = '{82237326-8111-4f7c-bcf4-b5c1175564fe}';
  IID_ID2D1GdiMetafile              : TGUID = '{2f543dc3-cfc1-4211-864f-cfd91c6f3395}';
  IID_ID2D1CommandSink              : TGUID = '{54d7898a-a061-40a7-bec7-e465bcba2c4f}';
  IID_ID2D1CommandList              : TGUID = '{b4f34a19-2383-4d76-94f6-ec343657c3dc}';
  IID_ID2D1PrintControl             : TGUID = '{2c1d867d-c290-41c8-ae7e-34a98702e9a5}';
  IID_ID2D1ImageBrush               : TGUID = '{fe9e984d-3f95-407c-b5db-cb94d4e8f87c}';
  IID_ID2D1BitmapBrush1             : TGUID = '{41343a53-e41a-49a2-91cd-21793bbb62e5}';
  IID_ID2D1StrokeStyle1             : TGUID = '{10a72a66-e91c-43f4-993f-ddf4b82b0b4a}';
  IID_ID2D1PathGeometry1            : TGUID = '{62baa2d2-ab54-41b7-b872-787e0106a421}';
  IID_ID2D1Properties               : TGUID = '{483473d7-cd46-4f9d-9d3a-3112aa80159d}';
  IID_ID2D1Effect                   : TGUID = '{28211a43-7d89-476f-8181-2d6159b220ad}';
  IID_ID2D1Bitmap1                  : TGUID = '{a898a84c-3873-4588-b08b-ebbf978df041}';
  IID_ID2D1ColorContext             : TGUID = '{1c4820bb-5771-4518-a581-2fe4dd0ec657}';
  IID_ID2D1GradientStopCollection1  : TGUID = '{ae1572f4-5dd0-4777-998b-9279472ae63b}';
  IID_ID2D1DrawingStateBlock1       : TGUID = '{689f1f85-c72e-4e33-8f19-85754efd5ace}';
  IID_ID2D1DeviceContext            : TGUID = '{e8f7fe7a-191c-466d-ad95-975678bda998}';
  IID_ID2D1Device                   : TGUID = '{47dd575d-ac05-4cdd-8049-9b02cd16f44c}';
  IID_ID2D1Factory1                 : TGUID = '{bb12d362-daee-4b9a-aa1d-14ba401cfa1f}';
  IID_ID2D1Multithread              : TGUID = '{31e6e7bc-e0ff-4d46-8c64-a0a8c41c15d3}';

  // d2d1_2.h
  IID_ID2D1GeometryRealization      : TGUID = '{a16907d7-bc02-4801-99e8-8cf7f485f774}';
  IID_ID2D1DeviceContext1           : TGUID = '{d37f57e4-6908-459f-a199-e72f24f79987}';
  IID_ID2D1Device1                  : TGUID = '{d21768e1-23a4-4823-a14b-7c3eba85d658}';
  IID_ID2D1Factory2                 : TGUID = '{94f81a73-9212-4376-9c58-b16a3a0d3992}';
  IID_ID2D1CommandSink1             : TGUID = '{9eb767fd-4269-4467-b8c2-eb30cb305743}';

  // d2d1_3.h
  IID_ID2D1InkStyle                 : TGUID = '{bae8b344-23fc-4071-8cb5-d05d6f073848}';
  IID_ID2D1Ink                      : TGUID = '{b499923b-7029-478f-a8b3-432c7c5f5312}';
  IID_ID2D1GradientMesh             : TGUID = '{f292e401-c050-4cde-83d7-04962d3b23c2}';
  IID_ID2D1ImageSource              : TGUID = '{c9b664e5-74a1-4378-9ac2-eefc37a3f4d8}';
  IID_ID2D1ImageSourceFromWic       : TGUID = '{77395441-1c8f-4555-8683-f50dab0fe792}';
  IID_ID2D1TransformedImageSource   : TGUID = '{7f1f79e5-2796-416c-8f55-700f911445e5}';
  IID_ID2D1LookupTable3D            : TGUID = '{53dd9855-a3b0-4d5b-82e1-26e25c5e5797}';
  IID_ID2D1DeviceContext2           : TGUID = '{394ea6a3-0c34-4321-950b-6ca20f0be6c7}';
  IID_ID2D1Device2                  : TGUID = '{a44472e1-8dfb-4e60-8492-6e2861c9ca8b}';
  IID_ID2D1Factory3                 : TGUID = '{0869759f-4f00-413f-b03e-2bda45404d0f}';
  IID_ID2D1CommandSink2             : TGUID = '{3bab440e-417e-47df-a2e2-bc0be6a00916}';
  IID_ID2D1GdiMetafile1             : TGUID = '{2e69f9e8-dd3f-4bf9-95ba-c04f49d788df}';
  IID_ID2D1GdiMetafileSink1         : TGUID = '{fd0ecb6b-91e6-411e-8655-395e760f91b4}';
  IID_ID2D1SpriteBatch              : TGUID = '{4dc583bf-3a10-438a-8722-e9765224f1f1}';
  IID_ID2D1DeviceContext3           : TGUID = '{235a7496-8351-414c-bcd4-6672ab2d8e00}';
  IID_ID2D1Device3                  : TGUID = '{852f2087-802c-4037-ab60-ff2e7ee6fc01}';
  IID_ID2D1Factory4                 : TGUID = '{bd4ec2d2-0662-4bee-ba8e-6f29f032e096}';
  IID_ID2D1CommandSink3             : TGUID = '{18079135-4cf3-4868-bc8e-06067e6d242d}';
  IID_ID2D1SvgGlyphStyle            : TGUID = '{af671749-d241-4db8-8e41-dcc2e5c1a438}';
  IID_ID2D1DeviceContext4           : TGUID = '{8c427831-3d90-4476-b647-c4fae349e4db}';
  IID_ID2D1Device4                  : TGUID = '{d7bdb159-5683-4a46-bc9c-72dc720b858b}';
  IID_ID2D1Factory5                 : TGUID = '{c4349994-838e-4b0f-8cab-44997d9eeacc}';
  IID_ID2D1CommandSink4             : TGUID = '{c78a6519-40d6-4218-b2de-beeeb744bb3e}';
  IID_ID2D1ColorContext1            : TGUID = '{1ab42875-c57f-4be9-bd85-9cd78d6f55ee}';
  IID_ID2D1DeviceContext5           : TGUID = '{7836d248-68cc-4df6-b9e8-de991bf62eb7}';
  IID_ID2D1Device5                  : TGUID = '{d55ba0a4-6405-4694-aef5-08ee1a4358b4}';
  IID_ID2D1Factory6                 : TGUID = '{f9976f46-f642-44c1-97ca-da32ea2a2635}';
  IID_ID2D1CommandSink5             : TGUID = '{7047dd26-b1e7-44a7-959a-8349e2144fa8}';
  IID_ID2D1DeviceContext6           : TGUID = '{985f7e37-4ed0-4a19-98a3-15b0edfde306}';
  IID_ID2D1Device6                  : TGUID = '{7bfef914-2d75-4bad-be87-e18ddb077b6d}';
  IID_ID2D1Factory7                 : TGUID = '{bdc2bdd3-b96c-4de6-bdf7-99d4745454de}';

  // DWRITE
  IID_IDWriteFontFileLoader         : TGUID = '{727cad4e-d6af-4c9e-8a08-d695b11caa49}';
  IID_IDWriteLocalFontFileLoader    : TGUID = '{b2d9f3ec-c9fe-4a11-a2ec-d86208f7c0a2}';
  IID_IDWriteFontFileStream         : TGUID = '{6d4865fe-0ab8-4d91-8f62-5dd6be34a3e0}';
  IID_IDWriteFontFile               : TGUID = '{739d886a-cef5-47dc-8769-1a8b41bebbb0}';
  IID_IDWriteRenderingParams        : TGUID = '{2f0da53a-2add-47cd-82ee-d9ec34688e75}';
  IID_IDWriteFontFace               : TGUID = '{5f49804d-7024-4d43-bfa9-d25984f53849}';
  IID_IDWriteFontCollectionLoader   : TGUID = '{cca920e4-52f0-492b-bfa8-29c72ee0a468}';
  IID_IDWriteFontFileEnumerator     : TGUID = '{72755049-5ff7-435d-8348-4be97cfa6c7c}';
  IID_IDWriteLocalizedStrings       : TGUID = '{08256209-099a-4b34-b86d-c22b110e7771}';
  IID_IDWriteFontCollection         : TGUID = '{a84cee02-3eea-4eee-a827-87c1a02a0fcc}';
  IID_IDWriteFontList               : TGUID = '{1a0d8438-1d97-4ec1-aef9-a2fb86ed6acb}';
  IID_IDWriteFontFamily             : TGUID = '{da20d8ef-812a-4c43-9802-62ec4abd7add}';
  IID_IDWriteFont                   : TGUID = '{acd16696-8c14-4f5d-877e-fe3fc1d32737}';
  IID_IDWriteTextFormat             : TGUID = '{9c906818-31d7-4fd3-a151-7c5e225db55a}';
  IID_IDWriteTypography             : TGUID = '{55f1112b-1dc2-4b3c-9541-f46894ed85b6}';
  IID_IDWriteNumberSubstitution     : TGUID = '{14885cc9-bab0-4f90-b6ed-5c366a2cd03d}';
  IID_IDWriteTextAnalysisSource     : TGUID = '{688e1a58-5094-47c8-adc8-fbcea60ae92b}';
  IID_IDWriteTextAnalysisSink       : TGUID = '{5810cd44-0ca0-4701-b3fa-bec5182ae4f6}';
  IID_IDWriteTextAnalyzer           : TGUID = '{b7e6163e-7f46-43b4-84b3-e4e6249c365d}';
  IID_IDWriteInlineObject           : TGUID = '{8339fde3-106f-47ab-8373-1c6295eb10b3}';
  IID_IDWritePixelSnapping          : TGUID = '{eaf3a2da-ecf4-4d24-b644-b34f6842024b}';
  IID_IDWriteTextRenderer           : TGUID = '{ef8a8135-5cc6-45fe-8825-c5a0724eb819}';
  IID_IDWriteTextLayout             : TGUID = '{53737037-6d14-410b-9bfe-0b182bb70961}';
  IID_IDWriteBitmapRenderTarget     : TGUID = '{5e5a32a3-8dff-4773-9ff6-0696eab77267}';
  IID_IDWriteGdiInterop             : TGUID = '{1edd9491-9853-4299-898f-6432983b6f3a}';
  IID_IDWriteGlyphRunAnalysis       : TGUID = '{7d97dbf7-e085-42d4-81e3-6a883bded118}';
  IID_IDWriteFactory                : TGUID = '{b859ee5a-d838-4b5b-a2e8-1adc7d93db48}';

  // d2d1effects.h
  CLSID_D2D12DAffineTransform       : TGUID = '{6aa97485-6354-4cfc-908c-e4a74f62c96c}';
  CLSID_D2D13DPerspectiveTransform  : TGUID = '{c2844d0b-3d86-46e7-85ba-526c9240f3fb}';
  CLSID_D2D13DTransform             : TGUID = '{e8467b04-ec61-4b8a-b5de-d4d73debea5a}';
  CLSID_D2D1ArithmeticComposite     : TGUID = '{fc151437-049a-4784-a24a-f1c4daf20987}';
  CLSID_D2D1Atlas                   : TGUID = '{913e2be4-fdcf-4fe2-a5f0-2454f14ff408}';
  CLSID_D2D1BitmapSource            : TGUID = '{5fb6c24d-c6dd-4231-9404-50f4d5c3252d}';
  CLSID_D2D1Blend                   : TGUID = '{81c5b77b-13f8-4cdd-ad20-c890547ac65d}';
  CLSID_D2D1Border                  : TGUID = '{2a2d49c0-4acf-43c7-8c6a-7c4a27874d27}';
  CLSID_D2D1Brightness              : TGUID = '{8cea8d1e-77b0-4986-b3b9-2f0c0eae7887}';
  CLSID_D2D1ColorManagement         : TGUID = '{1a28524c-fdd6-4aa4-ae8f-837eb8267b37}';
  CLSID_D2D1ColorMatrix             : TGUID = '{921f03d6-641c-47df-852d-b4bb6153ae11}';
  CLSID_D2D1Composite               : TGUID = '{48fc9f51-f6ac-48f1-8b58-3b28ac46f76d}';
  CLSID_D2D1ConvolveMatrix          : TGUID = '{407f8c08-5533-4331-a341-23cc3877843e}';
  CLSID_D2D1Crop                    : TGUID = '{e23f7110-0e9a-4324-af47-6a2c0c46f35b}';
  CLSID_D2D1DirectionalBlur         : TGUID = '{174319a6-58e9-49b2-bb63-caf2c811a3db}';
  CLSID_D2D1DiscreteTransfer        : TGUID = '{90866fcd-488e-454b-af06-e5041b66c36c}';
  CLSID_D2D1DisplacementMap         : TGUID = '{edc48364-0417-4111-9450-43845fa9f890}';
  CLSID_D2D1DistantDiffuse          : TGUID = '{3e7efd62-a32d-46d4-a83c-5278889ac954}';
  CLSID_D2D1DistantSpecular         : TGUID = '{428c1ee5-77b8-4450-8ab5-72219c21abda}';
  CLSID_D2D1DpiCompensation         : TGUID = '{6c26c5c7-34e0-46fc-9cfd-e5823706e228}';
  CLSID_D2D1Flood                   : TGUID = '{61c23c20-ae69-4d8e-94cf-50078df638f2}';
  CLSID_D2D1GammaTransfer           : TGUID = '{409444c4-c419-41a0-b0c1-8cd0c0a18e42}';
  CLSID_D2D1GaussianBlur            : TGUID = '{1feb6d69-2fe6-4ac9-8c58-1d7f93e7a6a5}';
  CLSID_D2D1Scale                   : TGUID = '{9daf9369-3846-4d0e-a44e-0c607934a5d7}';
  CLSID_D2D1Histogram               : TGUID = '{881db7d0-f7ee-4d4d-a6d2-4697acc66ee8}';
  CLSID_D2D1HueRotation             : TGUID = '{0f4458ec-4b32-491b-9e85-bd73f44d3eb6}';
  CLSID_D2D1LinearTransfer          : TGUID = '{ad47c8fd-63ef-4acc-9b51-67979c036c06}';
  CLSID_D2D1LuminanceToAlpha        : TGUID = '{41251ab7-0beb-46f8-9da7-59e93fcce5de}';
  CLSID_D2D1Morphology              : TGUID = '{eae6c40d-626a-4c2d-bfcb-391001abe202}';
  CLSID_D2D1OpacityMetadata         : TGUID = '{6c53006a-4450-4199-aa5b-ad1656fece5e}';
  CLSID_D2D1PointDiffuse            : TGUID = '{b9e303c3-c08c-4f91-8b7b-38656bc48c20}';
  CLSID_D2D1PointSpecular           : TGUID = '{09c3ca26-3ae2-4f09-9ebc-ed3865d53f22}';
  CLSID_D2D1Premultiply             : TGUID = '{06eab419-deed-4018-80d2-3e1d471adeb2}';
  CLSID_D2D1Saturation              : TGUID = '{5cb2d9cf-327d-459f-a0ce-40c0b2086bf7}';
  CLSID_D2D1Shadow                  : TGUID = '{c67ea361-1863-4e69-89db-695d3e9a5b6b}';
  CLSID_D2D1SpotDiffuse             : TGUID = '{818a1105-7932-44f4-aa86-08ae7b2f2c93}';
  CLSID_D2D1SpotSpecular            : TGUID = '{edae421e-7654-4a37-9db8-71acc1beb3c1}';
  CLSID_D2D1TableTransfer           : TGUID = '{5bf818c3-5e43-48cb-b631-868396d6a1d4}';
  CLSID_D2D1Tile                    : TGUID = '{b0784138-3b76-4bc5-b13b-0fa2ad02659f}';
  CLSID_D2D1Turbulence              : TGUID = '{cf2bb6ae-889a-4ad7-ba29-a2fd732c9fc9}';
  CLSID_D2D1UnPremultiply           : TGUID = '{fb9ac489-ad8d-41ed-9999-bb6347d110f7}';

  // d2d1effectauthor.h
  IID_ID2D1VertexBuffer             : TGUID = '{9b8b1336-00a5-4668-92b7-ced5d8bf9b7b}';
  IID_ID2D1ResourceTexture          : TGUID = '{688d15c3-02b0-438d-b13a-d1b44c32c39a}';
  IID_ID2D1RenderInfo               : TGUID = '{519ae1bd-d19a-420d-b849-364f594776b7}';
  IID_ID2D1DrawInfo                 : TGUID = '{693ce632-7f2f-45de-93fe-18d88b37aa21}';
  IID_ID2D1ComputeInfo              : TGUID = '{5598b14b-9fd7-48b7-9bdb-8f0964eb38bc}';
  IID_ID2D1TransformNode            : TGUID = '{b2efe1e7-729f-4102-949f-505fa21bf666}';
  IID_ID2D1TransformGraph           : TGUID = '{13d29038-c3e6-4034-9081-13b53a417992}';
  IID_ID2D1Transform                : TGUID = '{ef1a287d-342a-4f76-8fdb-da0d6ea9f92b}';
  IID_ID2D1DrawTransform            : TGUID = '{36bfdcb6-9739-435d-a30d-a653beff6a6f}';
  IID_ID2D1ComputeTransform         : TGUID = '{0d85573c-01e3-4f7d-bfd9-0d60608bf3c3}';
  IID_ID2D1AnalysisTransform        : TGUID = '{0359dc30-95e6-4568-9055-27720d130e93}';
  IID_ID2D1SourceTransform          : TGUID = '{db1800dd-0c34-4cf9-be90-31cc0a5653e1}';
  IID_ID2D1ConcreteTransform        : TGUID = '{1a799d8a-69f7-4e4c-9fed-437ccc6684cc}';
  IID_ID2D1BlendTransform           : TGUID = '{63ac0b32-ba44-450f-8806-7f4ca1ff2f1b}';
  IID_ID2D1BorderTransform          : TGUID = '{4998735c-3a19-473c-9781-656847e3a347}';
  IID_ID2D1OffsetTransform          : TGUID = '{3fe6adea-7643-4f53-bd14-a0ce63f24042}';
  IID_ID2D1BoundsAdjustmentTransform : TGUID = '{90f732e2-5092-4606-a819-8651970baccd}';
  IID_ID2D1EffectImpl               : TGUID = '{a248fd3f-3e6c-4e63-9f03-7f68ecc91db9}';
  IID_ID2D1EffectContext            : TGUID = '{3d9f916b-27dc-4ad7-b4f1-64945340f563}';

  // DocumentTarget.h
  IID_IPrintDocumentPackageTarget       : TGUID = '{1b8efec4-3019-4c27-964e-367202156906}';
  IID_IPrintDocumentPackageTarget2      : TGUID = '{c560298a-535c-48f9-866a-632540660cb4}';
  IID_IPrintDocumentPackageStatusEvent  : TGUID = '{ed90c8ad-5c34-4d05-a1ec-0e8a9b3ad7af}';
  IID_IPrintDocumentPackageTargetFactory: TGUID = '{d2959bf7-b31b-4a3d-9600-712eb1335ba4}';

type
  // d2d1.h
  ID2D1Resource                   = interface;
  ID2D1Image                      = interface;
  ID2D1Bitmap                     = interface;
  ID2D1GradientStopCollection     = interface;
  ID2D1Brush                      = interface;
  ID2D1BitmapBrush                = interface;
  ID2D1SolidColorBrush            = interface;
  ID2D1LinearGradientBrush        = interface;
  ID2D1RadialGradientBrush        = interface;
  ID2D1StrokeStyle                = interface;
  ID2D1Geometry                   = interface;
  ID2D1RectangleGeometry          = interface;
  ID2D1RoundedRectangleGeometry   = interface;
  ID2D1EllipseGeometry            = interface;
  ID2D1GeometryGroup              = interface;
  ID2D1TransformedGeometry        = interface;
  ID2D1SimplifiedGeometrySink     = interface;
  ID2D1GeometrySink               = interface;
  ID2D1TessellationSink           = interface;
  ID2D1PathGeometry               = interface;
  ID2D1Mesh                       = interface;
  ID2D1Layer                      = interface;
  ID2D1DrawingStateBlock          = interface;
  ID2D1RenderTarget               = interface;
  ID2D1BitmapRenderTarget         = interface;
  ID2D1HwndRenderTarget           = interface;
  ID2D1GdiInteropRenderTarget     = interface;
  ID2D1DCRenderTarget             = interface;
  ID2D1Factory                    = interface;

  // d2d1_1.h
  ID2D1GdiMetafileSink            = interface;
  ID2D1GdiMetafile                = interface;
  ID2D1CommandSink                = interface;
  ID2D1CommandList                = interface;
  ID2D1PrintControl               = interface;
  ID2D1ImageBrush                 = interface;
  ID2D1BitmapBrush1               = interface;
  ID2D1StrokeStyle1               = interface;
  ID2D1PathGeometry1              = interface;
  ID2D1Properties                 = interface;
  ID2D1Effect                     = interface;
  ID2D1Bitmap1                    = interface;
  ID2D1ColorContext               = interface;
  ID2D1GradientStopCollection1    = interface;
  ID2D1DrawingStateBlock1         = interface;
  ID2D1DeviceContext              = interface;
  ID2D1Device                     = interface;
  ID2D1Factory1                   = interface;
  ID2D1Multithread                = interface;

  //  d2d1_2.h
  ID2D1GeometryRealization        = interface;
  ID2D1DeviceContext1             = interface;
  ID2D1Device1                    = interface;
  ID2D1Factory2                   = interface;
  ID2D1CommandSink1               = interface;

  // d2d1_3.h
  ID2D1InkStyle                   = interface;
  ID2D1Ink                        = interface;
  ID2D1GradientMesh               = interface;
  ID2D1ImageSource                = interface;
  ID2D1ImageSourceFromWic         = interface;
  ID2D1TransformedImageSource     = interface;
  ID2D1LookupTable3D              = interface;
  ID2D1DeviceContext2             = interface;
  ID2D1Device2                    = interface;
  ID2D1Factory3                   = interface;
  ID2D1CommandSink2               = interface;
  ID2D1GdiMetafile1               = interface;
  ID2D1GdiMetafileSink1           = interface;
  ID2D1SpriteBatch                = interface;
  ID2D1DeviceContext3             = interface;
  ID2D1Device3                    = interface;
  ID2D1Factory4                   = interface;
  ID2D1CommandSink3               = interface;
  ID2D1SvgGlyphStyle              = interface;
  ID2D1DeviceContext4             = interface;
  ID2D1Device4                    = interface;
  ID2D1Factory5                   = interface;
  ID2D1CommandSink4               = interface;
  ID2D1ColorContext1              = interface;
  ID2D1DeviceContext5             = interface;
  ID2D1Device5                    = interface;
  ID2D1Factory6                   = interface;
  ID2D1CommandSink5               = interface;
  ID2D1DeviceContext6             = interface;
  ID2D1Device6                    = interface;
  ID2D1Factory7                   = interface;

  // dwrite.h
  IDWriteFontFileLoader           = interface;
  IDWriteLocalFontFileLoader      = interface;
  IDWriteFontFileStream           = interface;
  IDWriteFontFile                 = interface;
  IDWriteRenderingParams          = interface;
  IDWriteFontFace                 = interface;
  IDWriteFontCollectionLoader     = interface;
  IDWriteFontFileEnumerator       = interface;
  IDWriteLocalizedStrings         = interface;
  IDWriteFontCollection           = interface;
  IDWriteFontList                 = interface;
  IDWriteFontFamily               = interface;
  IDWriteFont                     = interface;
  IDWriteTextFormat               = interface;
  IDWriteTypography               = interface;
  IDWriteNumberSubstitution       = interface;
  IDWriteTextAnalysisSource       = interface;
  IDWriteTextAnalysisSink         = interface;
  IDWriteTextAnalyzer             = interface;
  IDWriteInlineObject             = interface;
  IDWritePixelSnapping            = interface;
  IDWriteTextRenderer             = interface;
  IDWriteTextLayout               = interface;
  IDWriteBitmapRenderTarget       = interface;
  IDWriteGdiInterop               = interface;
  IDWriteGlyphRunAnalysis         = interface;
  IDWriteFactory                  = interface;
  IDWriteGeometrySink             = ID2D1SimplifiedGeometrySink;

  // d2d1effectauthor.h
  ID2D1VertexBuffer               = interface;
  ID2D1ResourceTexture            = interface;
  ID2D1RenderInfo                 = interface;
  ID2D1DrawInfo                   = interface;
  ID2D1ComputeInfo                = interface;
  ID2D1TransformNode              = interface;
  ID2D1TransformGraph             = interface;
  ID2D1Transform                  = interface;
  ID2D1DrawTransform              = interface;
  ID2D1ComputeTransform           = interface;
  ID2D1AnalysisTransform          = interface;
  ID2D1SourceTransform            = interface;
  ID2D1ConcreteTransform          = interface;
  ID2D1BlendTransform             = interface;
  ID2D1BorderTransform            = interface;
  ID2D1OffsetTransform            = interface;
  ID2D1BoundsAdjustmentTransform  = interface;
  ID2D1EffectImpl                 = interface;
  ID2D1EffectContext              = interface;

  // DocumentTarget.h
  IPrintDocumentPackageTarget       = interface;
  IPrintDocumentPackageStatusEvent  = interface;
  IPrintDocumentPackageTargetFactory= interface;


  D2D1_TAG = UInt64;
  PD2D1_TAG = ^D2D1_TAG;

  TD2D1Tag = D2D1_TAG;
  PD2D1Tag = ^TD2D1Tag;

  PID2D1Geometry = ^ID2D1Geometry;
  PIDWriteFontFile = ^IDWriteFontFile;
{$ENDREGION}

{$REGION 'callbacks'}

  /// <summary>
  /// Function pointer that sets a property on an effect.
  /// </summary>
  PD2D1_PROPERTY_SET_FUNCTION = function(AEffect: IUnknown; AData: PByte; ADataSize: UInt32): HRESULT; stdcall;

  /// <summary>
  /// Function pointer that gets a property from an effect.
  /// </summary>
  PD2D1_PROPERTY_GET_FUNCTION = function(AEffect: IUnknown; AData: PByte; ADataSize: UInt32; out AActualSize: UInt32): HRESULT; stdcall;

  PD2D1_EFFECT_FACTORY = function(out AEffectImpl: IUnknown): HRESULT; stdcall;

{$ENDREGION}

{$REGION 'd2d1.h enums'}

  /// <summary>
  /// Qualifies how alpha is to be treated in a bitmap or render target containing
  /// alpha.
  /// </summary>
  D2D1_ALPHA_MODE = (
    D2D1_ALPHA_MODE_UNKNOWN       = 0,
    D2D1_ALPHA_MODE_PREMULTIPLIED = 1,
    D2D1_ALPHA_MODE_STRAIGHT      = 2,
    D2D1_ALPHA_MODE_IGNORE        = 3,
    D2D1_ALPHA_MODE_FORCE_DWORD   = Integer($FFFFFFFF)
  );

  PD2D1_ALPHA_MODE = ^D2D1_ALPHA_MODE;

  TD2D1AlphaMode = D2D1_ALPHA_MODE;
  PD2D1AlphaMode = ^TD2D1AlphaMode;

  /// <summary>
  /// This determines what gamma is used for interpolation/blending.
  /// </summary>
  D2D1_GAMMA = (
    D2D1_GAMMA_2_2          = 0,
    D2D1_GAMMA_1_0          = 1,
    D2D1_GAMMA_FORCE_DWORD  = Integer($FFFFFFFF)
  );

  PD2D1_GAMMA = ^D2D1_GAMMA;

  TD2D1Gamma = D2D1_GAMMA;
  PD2D1Gamma = ^TD2D1Gamma;

  /// <summary>
  /// Specifies what the contents are of an opacity mask.
  /// </summary>
  D2D1_OPACITY_MASK_CONTENT = (
    D2D1_OPACITY_MASK_CONTENT_GRAPHICS            = 0,
    D2D1_OPACITY_MASK_CONTENT_TEXT_NATURAL        = 1,
    D2D1_OPACITY_MASK_CONTENT_TEXT_GDI_COMPATIBLE = 2,
    D2D1_OPACITY_MASK_CONTENT_FORCE_DWORD         = Integer($FFFFFFFF)
  );

  PD2D1_OPACITY_MASK_CONTENT = ^D2D1_OPACITY_MASK_CONTENT;

  TD2D1OpacityMaskContent = D2D1_OPACITY_MASK_CONTENT;
  PD2D1OpacityMaskContent = ^TD2D1OpacityMaskContent;

  /// <summary>
  /// Enum which describes how to sample from a source outside its base tile.
  /// </summary>
  D2D1_EXTEND_MODE = (
    D2D1_EXTEND_MODE_CLAMP        = 0,
    D2D1_EXTEND_MODE_WRAP         = 1,
    D2D1_EXTEND_MODE_MIRROR       = 2,
    D2D1_EXTEND_MODE_FORCE_DWORD  = Integer($FFFFFFFF)
  );

  PD2D1_EXTEND_MODE = ^D2D1_EXTEND_MODE;

  TD2D1ExtendMode = D2D1_EXTEND_MODE;
  PD2D1ExtendMode = ^TD2D1ExtendMode;

  /// <summary>
  /// Enum which describes the manner in which we render edges of non-text primitives.
  /// </summary>
  D2D1_ANTIALIAS_MODE = (
    D2D1_ANTIALIAS_MODE_PER_PRIMITIVE = 0,
    D2D1_ANTIALIAS_MODE_ALIASED       = 1,
    D2D1_ANTIALIAS_MODE_FORCE_DWORD   = Integer($FFFFFFFF)
  );

  PD2D1_ANTIALIAS_MODE = ^D2D1_ANTIALIAS_MODE;

  TD2D1AntialiasMode = D2D1_ANTIALIAS_MODE;
  PD2D1AntialiasMode = ^TD2D1AntialiasMode;

  /// <summary>
  /// Describes the antialiasing mode used for drawing text.
  /// </summary>
  D2D1_TEXT_ANTIALIAS_MODE = (
    D2D1_TEXT_ANTIALIAS_MODE_DEFAULT      = 0,
    D2D1_TEXT_ANTIALIAS_MODE_CLEARTYPE    = 1,
    D2D1_TEXT_ANTIALIAS_MODE_GRAYSCALE    = 2,
    D2D1_TEXT_ANTIALIAS_MODE_ALIASED      = 3,
    D2D1_TEXT_ANTIALIAS_MODE_FORCE_DWORD  = Integer($FFFFFFFF)
  );

  PD2D1_TEXT_ANTIALIAS_MODE = ^D2D1_TEXT_ANTIALIAS_MODE;

  TD2D1TextAntialiasMode = D2D1_TEXT_ANTIALIAS_MODE;
  PD2D1textAntialiasMode = ^TD2D1TextAntialiasMode;

  /// <summary>
  /// Specifies the algorithm that is used when images are scaled or rotated. Note
  /// Starting in Windows 8, more interpolations modes are available. See
  /// D2D1_INTERPOLATION_MODE for more info.
  /// </summary>
  D2D1_BITMAP_INTERPOLATION_MODE = (
    D2D1_BITMAP_INTERPOLATION_MODE_NEAREST_NEIGHBOR = D2D1_INTERPOLATION_MODE_DEFINITION_NEAREST_NEIGHBOR,
    D2D1_BITMAP_INTERPOLATION_MODE_LINEAR           = D2D1_INTERPOLATION_MODE_DEFINITION_LINEAR,
    D2D1_BITMAP_INTERPOLATION_MODE_FORCE_DWORD      = Integer($FFFFFFFF)
  );

  PD2D1_BITMAP_INTERPOLATION_MODE = ^D2D1_BITMAP_INTERPOLATION_MODE;

  TD2D1BitmapInterpolationMode = D2D1_BITMAP_INTERPOLATION_MODE;
  PD2D1BitmapInterpolationMode = ^TD2D1BitmapInterpolationMode;

  /// <summary>
  /// Modifications made to the draw text call that influence how the text is
  /// rendered.
  /// </summary>
  D2D1_DRAW_TEXT_OPTIONS = (
    D2D1_DRAW_TEXT_OPTIONS_NO_SNAP                        = 1,
    D2D1_DRAW_TEXT_OPTIONS_CLIP                           = 2,
    D2D1_DRAW_TEXT_OPTIONS_ENABLE_COLOR_FONT              = 4,
    D2D1_DRAW_TEXT_OPTIONS_DISABLE_COLOR_BITMAP_SNAPPING  = 8,
    D2D1_DRAW_TEXT_OPTIONS_NONE                           = 0,
    D2D1_DRAW_TEXT_OPTIONS_FORCE_DWORD                    = Integer($FFFFFFFF)
  );

  PD2D1_DRAW_TEXT_OPTIONS = ^D2D1_DRAW_TEXT_OPTIONS;

  TD2D1DrawTextOptions = D2D1_DRAW_TEXT_OPTIONS;
  PD2D1DrawTextOptions = ^TD2D1DrawTextOptions;

  /// <summary>
  /// Enum which describes the drawing of the ends of a line.
  /// </summary>
  D2D1_CAP_STYLE = (
    D2D1_CAP_STYLE_FLAT         = 0,
    D2D1_CAP_STYLE_SQUARE       = 1,
    D2D1_CAP_STYLE_ROUND        = 2,
    D2D1_CAP_STYLE_TRIANGLE     = 3,
    D2D1_CAP_STYLE_FORCE_DWORD  = Integer($FFFFFFFF)
  );

  PD2D1_CAP_STYLE = ^D2D1_CAP_STYLE;

  TD2D1CapStyle = D2D1_CAP_STYLE;
  PD2D1CapStyle = ^TD2D1CapStyle;

  /// <summary>
  /// Describes the sequence of dashes and gaps in a stroke.
  /// </summary>
  D2D1_DASH_STYLE = (
    D2D1_DASH_STYLE_SOLID         = 0,
    D2D1_DASH_STYLE_DASH          = 1,
    D2D1_DASH_STYLE_DOT           = 2,
    D2D1_DASH_STYLE_DASH_DOT      = 3,
    D2D1_DASH_STYLE_DASH_DOT_DOT  = 4,
    D2D1_DASH_STYLE_CUSTOM        = 5,
    D2D1_DASH_STYLE_FORCE_DWORD   = Integer($FFFFFFFF)
  );

  PD2D1_DASH_STYLE = ^D2D1_DASH_STYLE;

  TD2D1DashStyle = D2D1_DASH_STYLE;
  PD2D1DashStyle = ^TD2D1DashStyle;

  /// <summary>
  /// Enum which describes the drawing of the corners on the line.
  /// </summary>
  D2D1_LINE_JOIN = (
    D2D1_LINE_JOIN_MITER          = 0,
    D2D1_LINE_JOIN_BEVEL          = 1,
    D2D1_LINE_JOIN_ROUND          = 2,
    D2D1_LINE_JOIN_MITER_OR_BEVEL = 3,
    D2D1_LINE_JOIN_FORCE_DWORD    = Integer($FFFFFFFF)
  );

  PD2D1_LINE_JOIN = ^D2D1_LINE_JOIN;

  TD2D1LineJoin = D2D1_LINE_JOIN;
  PD2D1LineJoin = ^TD2D1LineJoin;

  /// <summary>
  /// This enumeration describes the type of combine operation to be performed.
  /// </summary>
  D2D1_COMBINE_MODE = (
    D2D1_COMBINE_MODE_UNION       = 0,
    D2D1_COMBINE_MODE_INTERSECT   = 1,
    D2D1_COMBINE_MODE_XOR         = 2,
    D2D1_COMBINE_MODE_EXCLUDE     = 3,
    D2D1_COMBINE_MODE_FORCE_DWORD = Integer($FFFFFFFF)
  );

  PD2D1_COMBINE_MODE = ^D2D1_COMBINE_MODE;

  TD2D1CombineMode = D2D1_COMBINE_MODE;
  PD2D1CombineMode = ^TD2D1CombineMode;

  /// <summary>
  /// Describes how one geometry object is spatially related to another geometry
  /// object.
  /// </summary>
  D2D1_GEOMETRY_RELATION = (
    D2D1_GEOMETRY_RELATION_UNKNOWN      = 0,
    D2D1_GEOMETRY_RELATION_DISJOINT     = 1,
    D2D1_GEOMETRY_RELATION_IS_CONTAINED = 2,
    D2D1_GEOMETRY_RELATION_CONTAINS     = 3,
    D2D1_GEOMETRY_RELATION_OVERLAP      = 4,
    D2D1_GEOMETRY_RELATION_FORCE_DWORD  = Integer($FFFFFFFF)
  );

  PD2D1_GEOMETRY_RELATION = ^D2D1_GEOMETRY_RELATION;

  TD2D1GeometryRelation = D2D1_GEOMETRY_RELATION;
  PD2D1GeometryRelation = ^TD2D1GeometryRelation;

  /// <summary>
  /// Specifies how simple the output of a simplified geometry sink should be.
  /// </summary>
  D2D1_GEOMETRY_SIMPLIFICATION_OPTION = (
    D2D1_GEOMETRY_SIMPLIFICATION_OPTION_CUBICS_AND_LINES  = 0,
    D2D1_GEOMETRY_SIMPLIFICATION_OPTION_LINES             = 1,
    D2D1_GEOMETRY_SIMPLIFICATION_OPTION_FORCE_DWORD       = Integer($FFFFFFFF)
  );

  PD2D1_GEOMETRY_SIMPLIFICATION_OPTION = ^D2D1_GEOMETRY_SIMPLIFICATION_OPTION;

  TD2D1GeometrySimplificationOption = D2D1_GEOMETRY_SIMPLIFICATION_OPTION;
  PD2D1GeometrySimplificationOption = ^TD2D1GeometrySimplificationOption;

  /// <summary>
  /// Indicates whether the given figure is filled or hollow.
  /// </summary>
  D2D1_FIGURE_BEGIN = (
    D2D1_FIGURE_BEGIN_FILLED      = 0,
    D2D1_FIGURE_BEGIN_HOLLOW      = 1,
    D2D1_FIGURE_BEGIN_FORCE_DWORD = Integer($FFFFFFFF)
  );

  PD2D1_FIGURE_BEGIN = ^D2D1_FIGURE_BEGIN;

  TD2D1FigureBegin = D2D1_FIGURE_BEGIN;
  PD2D1FigureBegin = ^TD2D1FigureBegin;

  /// <summary>
  /// Indicates whether the figure is open or closed on its end point.
  /// </summary>
  D2D1_FIGURE_END = (
    D2D1_FIGURE_END_OPEN        = 0,
    D2D1_FIGURE_END_CLOSED      = 1,
    D2D1_FIGURE_END_FORCE_DWORD = Integer($FFFFFFFF)
  );

  TD2D1FigureEnd = D2D1_FIGURE_END;
  PD2D1FigureEnd = ^TD2D1FigureEnd;

  /// <summary>
  /// Indicates whether the given segment should be stroked, or, if the join between
  /// this segment and the previous one should be smooth.
  /// </summary>
  D2D1_PATH_SEGMENT = (
    D2D1_PATH_SEGMENT_NONE                  = 0,
    D2D1_PATH_SEGMENT_FORCE_UNSTROKED       = 1,
    D2D1_PATH_SEGMENT_FORCE_ROUND_LINE_JOIN = 2,
    D2D1_PATH_SEGMENT_FORCE_DWORD           = Integer($FFFFFFFF)
  );

  TD2D1PathSegment = D2D1_PATH_SEGMENT;
  PD2D1PathSegment = ^TD2D1PathSegment;

  /// <summary>
  /// Defines the direction that an elliptical arc is drawn.
  /// </summary>
  D2D1_SWEEP_DIRECTION = (
    D2D1_SWEEP_DIRECTION_COUNTER_CLOCKWISE  = 0,
    D2D1_SWEEP_DIRECTION_CLOCKWISE          = 1,
    D2D1_SWEEP_DIRECTION_FORCE_DWORD        = Integer($FFFFFFFF)
  );

  TD2D1SweepDirection = D2D1_SWEEP_DIRECTION;
  PD2D1SweepDirection = ^TD2D1SweepDirection;

  /// <summary>
  /// Specifies how the intersecting areas of geometries or figures are combined to
  /// form the area of the composite geometry.
  /// </summary>
  D2D1_FILL_MODE = (
    D2D1_FILL_MODE_ALTERNATE    = 0,
    D2D1_FILL_MODE_WINDING      = 1,
    D2D1_FILL_MODE_FORCE_DWORD  = Integer($FFFFFFFF)
  );

  TD2D1FillMode = D2D1_FILL_MODE;
  PD2D1FillMode = ^TD2D1FillMode;

  /// <summary>
  /// Differentiates which of the two possible arcs could match the given arc
  /// parameters.
  /// </summary>
  D2D1_ARC_SIZE = (
    D2D1_ARC_SIZE_SMALL       = 0,
    D2D1_ARC_SIZE_LARGE       = 1,
    D2D1_ARC_SIZE_FORCE_DWORD = Integer($FFFFFFFF)
  );

  TD2D1ArcSize = D2D1_ARC_SIZE;
  PD2D1ArcSize = ^TD2D1ArcSize;

  D2D1_LAYER_OPTIONS = (
    D2D1_LAYER_OPTIONS_NONE                     = 0,
    /// <summary>
    /// The layer will render correctly for ClearType text. If the render target was set
    /// to ClearType previously, the layer will continue to render ClearType. If the
    /// render target was set to ClearType and this option is not specified, the render
    /// target will be set to render gray-scale until the layer is popped. The caller
    /// can override this default by calling SetTextAntialiasMode while within the
    /// layer. This flag is slightly slower than the default.
    /// </summary>
    D2D1_LAYER_OPTIONS_INITIALIZE_FOR_CLEARTYPE = 1,
    D2D1_LAYER_OPTIONS_FORCE_DWORD              = Integer($FFFFFFFF)
  );

  TD2D1LayerOptions = D2D1_LAYER_OPTIONS;
  PD2D1LayerOptions = ^TD2D1LayerOptions;

  /// <summary>
  /// Describes whether a window is occluded.
  /// </summary>
  D2D1_WINDOW_STATE = (
    D2D1_WINDOW_STATE_NONE        = 0,
    D2D1_WINDOW_STATE_OCCLUDED    = 1,
    D2D1_WINDOW_STATE_FORCE_DWORD = Integer($FFFFFFFF)
  );

  TD2D1WindowState = D2D1_WINDOW_STATE;
  PD2D1WindowState = ^TD2D1WindowState;

  /// <summary>
  /// Describes whether a render target uses hardware or software rendering, or if
  /// Direct2D should select the rendering mode.
  /// </summary>
  D2D1_RENDER_TARGET_TYPE = (
    D2D1_RENDER_TARGET_TYPE_DEFAULT     = 0,
    D2D1_RENDER_TARGET_TYPE_SOFTWARE    = 1,
    D2D1_RENDER_TARGET_TYPE_HARDWARE    = 2,
    D2D1_RENDER_TARGET_TYPE_FORCE_DWORD = Integer($FFFFFFFF)
  );

  TD2D1RenderTargetType = D2D1_RENDER_TARGET_TYPE;
  PD2D1RenderTargetType = ^TD2D1RenderTargetType;

  /// <summary>
  /// Describes the minimum DirectX support required for hardware rendering by a
  /// render target.
  /// </summary>
  D2D1_FEATURE_LEVEL = (
    D2D1_FEATURE_LEVEL_DEFAULT      = 0,
    D2D1_FEATURE_LEVEL_9            = D3D_FEATURE_LEVEL_9_1,
    D2D1_FEATURE_LEVEL_10           = D3D_FEATURE_LEVEL_10_0,
    D2D1_FEATURE_LEVEL_FORCE_DWORD  = Integer($FFFFFFFF)
  );

 TD2D1FeatureLevel = D2D1_FEATURE_LEVEL;
 PD2D1FeatureLevel = ^TD2D1FeatureLevel;

  /// <summary>
  /// Describes how a render target is remoted and whether it should be
  /// GDI-compatible. This enumeration allows a bitwise combination of its member
  /// values.
  /// </summary>
  D2D1_RENDER_TARGET_USAGE = (
    D2D1_RENDER_TARGET_USAGE_NONE                   = 0,
    D2D1_RENDER_TARGET_USAGE_FORCE_BITMAP_REMOTING  = 1,
    D2D1_RENDER_TARGET_USAGE_GDI_COMPATIBLE         = 2,
    D2D1_RENDER_TARGET_USAGE_FORCE_DWORD            = Integer($FFFFFFFF)
  );

  TD2D1RenderTargetUsage = D2D1_RENDER_TARGET_USAGE;
  PD2D1RenderTargetUsage = ^TD2D1RenderTargetUsage;

  /// <summary>
  /// Describes how present should behave.
  /// </summary>
  D2D1_PRESENT_OPTIONS = (
    D2D1_PRESENT_OPTIONS_NONE             = 0,
    D2D1_PRESENT_OPTIONS_RETAIN_CONTENTS  = 1,
    D2D1_PRESENT_OPTIONS_IMMEDIATELY      = 2,
    D2D1_PRESENT_OPTIONS_FORCE_DWORD      = Integer($FFFFFFFF)
  );

  TD2D1PresentOptions = D2D1_PRESENT_OPTIONS;
  PD2D1PresentOptions = ^TD2D1PresentOptions;

  /// <summary>
  /// Specifies additional features supportable by a compatible render target when it
  /// is created. This enumeration allows a bitwise combination of its member values.
  /// </summary>
  D2D1_COMPATIBLE_RENDER_TARGET_OPTIONS = (
    D2D1_COMPATIBLE_RENDER_TARGET_OPTIONS_NONE            = 0,

    /// <summary>
    /// The compatible render target will allow a call to GetDC on the
    /// ID2D1GdiInteropRenderTarget interface. This can be specified even if the parent
    /// render target is not GDI compatible.
    /// </summary>
    D2D1_COMPATIBLE_RENDER_TARGET_OPTIONS_GDI_COMPATIBLE  = 1,
    D2D1_COMPATIBLE_RENDER_TARGET_OPTIONS_FORCE_DWORD     = Integer($FFFFFFFF)
  );

  TD2D1CompatibleRenderTargetOptions = D2D1_COMPATIBLE_RENDER_TARGET_OPTIONS;
  PD2D1CompatibleRenderTargetOptions = ^TD2D1CompatibleRenderTargetOptions;

  /// <summary>
  /// Specifies how a device context is initialized for GDI rendering when it is
  /// retrieved from the render target.
  /// </summary>
  D2D1_DC_INITIALIZE_MODE = (
    D2D1_DC_INITIALIZE_MODE_COPY        = 0,
    D2D1_DC_INITIALIZE_MODE_CLEAR       = 1,
    D2D1_DC_INITIALIZE_MODE_FORCE_DWORD = Integer($FFFFFFFF)
  );

  TD2D1DCInitializeMode = D2D1_DC_INITIALIZE_MODE;
  PD2D1DCInitializeMode = ^TD2D1DCInitializeMode;

  /// <summary>
  /// Indicates the debug level to be output by the debug layer.
  /// </summary>
  D2D1_DEBUG_LEVEL = (
    D2D1_DEBUG_LEVEL_NONE = 0,
    D2D1_DEBUG_LEVEL_ERROR = 1,
    D2D1_DEBUG_LEVEL_WARNING = 2,
    D2D1_DEBUG_LEVEL_INFORMATION = 3,
    D2D1_DEBUG_LEVEL_FORCE_DWORD = Integer($FFFFFFFF)
  );

  TD2D1DebugLevel = D2D1_DEBUG_LEVEL;
  PD2D1DebugLevel = ^TD2D1DebugLevel;

  /// <summary>
  /// Specifies the threading model of the created factory and all of its derived
  /// resources.
  /// </summary>
  D2D1_FACTORY_TYPE = (
    D2D1_FACTORY_TYPE_SINGLE_THREADED = 0,
    D2D1_FACTORY_TYPE_MULTI_THREADED = 1,
    D2D1_FACTORY_TYPE_FORCE_DWORD = Integer($FFFFFFFF)
  );

{$ENDREGION}

{$REGION 'd2d1_1.h enums'}

  /// <summary>
  /// This defines the valid property types that can be used in an effect property
  /// interface.
  /// </summary>
  D2D1_PROPERTY_TYPE = (
    D2D1_PROPERTY_TYPE_UNKNOWN        = 0,
    D2D1_PROPERTY_TYPE_STRING         = 1,
    D2D1_PROPERTY_TYPE_BOOL           = 2,
    D2D1_PROPERTY_TYPE_UINT32         = 3,
    D2D1_PROPERTY_TYPE_INT32          = 4,
    D2D1_PROPERTY_TYPE_FLOAT          = 5,
    D2D1_PROPERTY_TYPE_VECTOR2        = 6,
    D2D1_PROPERTY_TYPE_VECTOR3        = 7,
    D2D1_PROPERTY_TYPE_VECTOR4        = 8,
    D2D1_PROPERTY_TYPE_BLOB           = 9,
    D2D1_PROPERTY_TYPE_IUNKNOWN       = 10,
    D2D1_PROPERTY_TYPE_ENUM           = 11,
    D2D1_PROPERTY_TYPE_ARRAY          = 12,
    D2D1_PROPERTY_TYPE_CLSID          = 13,
    D2D1_PROPERTY_TYPE_MATRIX_3X2     = 14,
    D2D1_PROPERTY_TYPE_MATRIX_4X3     = 15,
    D2D1_PROPERTY_TYPE_MATRIX_4X4     = 16,
    D2D1_PROPERTY_TYPE_MATRIX_5X4     = 17,
    D2D1_PROPERTY_TYPE_COLOR_CONTEXT  = 18,
    D2D1_PROPERTY_TYPE_FORCE_DWORD    = Integer($FFFFFFFF)
  );

  /// <summary>
  /// This defines the list of system properties present on the root effect property
  /// interface.
  /// </summary>
  D2D1_PROPERTY = (
    D2D1_PROPERTY_CLSID       = Integer($80000000),
    D2D1_PROPERTY_DISPLAYNAME = Integer($80000001),
    D2D1_PROPERTY_AUTHOR      = Integer($80000002),
    D2D1_PROPERTY_CATEGORY    = Integer($80000003),
    D2D1_PROPERTY_DESCRIPTION = Integer($80000004),
    D2D1_PROPERTY_INPUTS      = Integer($80000005),
    D2D1_PROPERTY_CACHED      = Integer($80000006),
    D2D1_PROPERTY_PRECISION   = Integer($80000007),
    D2D1_PROPERTY_MIN_INPUTS  = Integer($80000008),
    D2D1_PROPERTY_MAX_INPUTS  = Integer($80000009),
    D2D1_PROPERTY_FORCE_DWORD = Integer($FFFFFFFF)
  );

  /// <summary>
  /// This defines the indices of sub-properties that may be present on any parent
  /// property.
  /// </summary>
  D2D1_SUBPROPERTY = (
    D2D1_SUBPROPERTY_DISPLAYNAME  = Integer($80000000),
    D2D1_SUBPROPERTY_ISREADONLY   = Integer($80000001),
    D2D1_SUBPROPERTY_MIN          = Integer($80000002),
    D2D1_SUBPROPERTY_MAX          = Integer($80000003),
    D2D1_SUBPROPERTY_DEFAULT      = Integer($80000004),
    D2D1_SUBPROPERTY_FIELDS       = Integer($80000005),
    D2D1_SUBPROPERTY_INDEX        = Integer($80000006),
    D2D1_SUBPROPERTY_FORCE_DWORD  = Integer($FFFFFFFF)
  );

  /// <summary>
  /// Specifies how the bitmap can be used.
  /// </summary>
  D2D1_BITMAP_OPTIONS = (
    /// <summary>
    /// The bitmap is created with default properties.
    /// </summary>
    D2D1_BITMAP_OPTIONS_NONE = 0,

    /// <summary>
    /// The bitmap can be specified as a target in ID2D1DeviceContext::SetTarget
    /// </summary>
    D2D1_BITMAP_OPTIONS_TARGET = 1,

    /// <summary>
    /// The bitmap cannot be used as an input to DrawBitmap, DrawImage, in a bitmap
    /// brush or as an input to an effect.
    /// </summary>
    D2D1_BITMAP_OPTIONS_CANNOT_DRAW = 2,

    /// <summary>
    /// The bitmap can be read from the CPU.
    /// </summary>
    D2D1_BITMAP_OPTIONS_CPU_READ = 4,

    /// <summary>
    /// The bitmap works with the ID2D1GdiInteropRenderTarget::GetDC API.
    /// </summary>
    D2D1_BITMAP_OPTIONS_GDI_COMPATIBLE = 8,
    D2D1_BITMAP_OPTIONS_FORCE_DWORD = Integer($FFFFFFFF)
  );

  /// <summary>
  /// Specifies the composite mode that will be applied.
  /// </summary>
  D2D1_COMPOSITE_MODE = (
    D2D1_COMPOSITE_MODE_SOURCE_OVER         = 0,
    D2D1_COMPOSITE_MODE_DESTINATION_OVER    = 1,
    D2D1_COMPOSITE_MODE_SOURCE_IN           = 2,
    D2D1_COMPOSITE_MODE_DESTINATION_IN      = 3,
    D2D1_COMPOSITE_MODE_SOURCE_OUT          = 4,
    D2D1_COMPOSITE_MODE_DESTINATION_OUT     = 5,
    D2D1_COMPOSITE_MODE_SOURCE_ATOP         = 6,
    D2D1_COMPOSITE_MODE_DESTINATION_ATOP    = 7,
    D2D1_COMPOSITE_MODE_XOR                 = 8,
    D2D1_COMPOSITE_MODE_PLUS                = 9,
    D2D1_COMPOSITE_MODE_SOURCE_COPY         = 10,
    D2D1_COMPOSITE_MODE_BOUNDED_SOURCE_COPY = 11,
    D2D1_COMPOSITE_MODE_MASK_INVERT         = 12,
    D2D1_COMPOSITE_MODE_FORCE_DWORD         = Integer($FFFFFFFF)
  );

  /// <summary>
  /// This specifies the precision that should be used in buffers allocated by D2D.
  /// </summary>
  D2D1_BUFFER_PRECISION = (
    D2D1_BUFFER_PRECISION_UNKNOWN         = 0,
    D2D1_BUFFER_PRECISION_8BPC_UNORM      = 1,
    D2D1_BUFFER_PRECISION_8BPC_UNORM_SRGB = 2,
    D2D1_BUFFER_PRECISION_16BPC_UNORM     = 3,
    D2D1_BUFFER_PRECISION_16BPC_FLOAT     = 4,
    D2D1_BUFFER_PRECISION_32BPC_FLOAT     = 5,
    D2D1_BUFFER_PRECISION_FORCE_DWORD     = Integer($FFFFFFFF)
  );

  /// <summary>
  /// This describes how the individual mapping operation should be performed.
  /// </summary>
  D2D1_MAP_OPTIONS = (
    /// <summary>
    /// The mapped pointer has undefined behavior.
    /// </summary>
    D2D1_MAP_OPTIONS_NONE = 0,

    /// <summary>
    /// The mapped pointer can be read from.
    /// </summary>
    D2D1_MAP_OPTIONS_READ = 1,

    /// <summary>
    /// The mapped pointer can be written to.
    /// </summary>
    D2D1_MAP_OPTIONS_WRITE = 2,

    /// <summary>
    /// The previous contents of the bitmap are discarded when it is mapped.
    /// </summary>
    D2D1_MAP_OPTIONS_DISCARD = 4,
    D2D1_MAP_OPTIONS_FORCE_DWORD = Integer($FFFFFFFF)
  );

  /// <summary>
  /// This is used to specify the quality of image scaling with
  /// ID2D1DeviceContext::DrawImage and with the 2D Affine Transform Effect.
  /// </summary>
  D2D1_INTERPOLATION_MODE = (
    D2D1_INTERPOLATION_MODE_NEAREST_NEIGHBOR    = D2D1_INTERPOLATION_MODE_DEFINITION_NEAREST_NEIGHBOR,
    D2D1_INTERPOLATION_MODE_LINEAR              = D2D1_INTERPOLATION_MODE_DEFINITION_LINEAR,
    D2D1_INTERPOLATION_MODE_CUBIC               = D2D1_INTERPOLATION_MODE_DEFINITION_CUBIC,
    D2D1_INTERPOLATION_MODE_MULTI_SAMPLE_LINEAR = D2D1_INTERPOLATION_MODE_DEFINITION_MULTI_SAMPLE_LINEAR,
    D2D1_INTERPOLATION_MODE_ANISOTROPIC         = D2D1_INTERPOLATION_MODE_DEFINITION_ANISOTROPIC,
    D2D1_INTERPOLATION_MODE_HIGH_QUALITY_CUBIC  = D2D1_INTERPOLATION_MODE_DEFINITION_HIGH_QUALITY_CUBIC,
    D2D1_INTERPOLATION_MODE_FORCE_DWORD         = Integer($FFFFFFFF)
  );

  /// <summary>
  /// This specifies what units should be accepted by the D2D API.
  /// </summary>
  D2D1_UNIT_MODE = (
    D2D1_UNIT_MODE_DIPS         = 0,
    D2D1_UNIT_MODE_PIXELS       = 1,
    D2D1_UNIT_MODE_FORCE_DWORD  = Integer($FFFFFFFF)
  );

  /// <summary>
  /// Defines a color space.
  /// </summary>
  D2D1_COLOR_SPACE = (
    /// <summary>
    /// The color space is described by accompanying data, such as a color profile.
    /// </summary>
    D2D1_COLOR_SPACE_CUSTOM       = 0,

    /// <summary>
    /// The sRGB color space.
    /// </summary>
    D2D1_COLOR_SPACE_SRGB         = 1,

    /// <summary>
    /// The scRGB color space.
    /// </summary>
    D2D1_COLOR_SPACE_SCRGB        = 2,
    D2D1_COLOR_SPACE_FORCE_DWORD  = Integer($FFFFFFFF)
  );

  /// <summary>
  /// This specifies options that apply to the device context for its lifetime.
  /// </summary>
  D2D1_DEVICE_CONTEXT_OPTIONS = (
    D2D1_DEVICE_CONTEXT_OPTIONS_NONE                                = 0,

    /// <summary>
    /// Geometry rendering will be performed on many threads in parallel, a single
    /// thread is the default.
    /// </summary>
    D2D1_DEVICE_CONTEXT_OPTIONS_ENABLE_MULTITHREADED_OPTIMIZATIONS  = 1,
    D2D1_DEVICE_CONTEXT_OPTIONS_FORCE_DWORD                         = Integer($FFFFFFFF)
  );

  /// <summary>
  /// Defines how the world transform, dots per inch (dpi), and stroke width affect
  /// the shape of the pen used to stroke a primitive.
  /// </summary>
  D2D1_STROKE_TRANSFORM_TYPE = (
    /// <summary>
    /// The stroke respects the world transform, the DPI, and the stroke width.
    /// </summary>
    D2D1_STROKE_TRANSFORM_TYPE_NORMAL       = 0,

    /// <summary>
    /// The stroke does not respect the world transform, but it does respect the DPI and
    /// the stroke width.
    /// </summary>
    D2D1_STROKE_TRANSFORM_TYPE_FIXED        = 1,

    /// <summary>
    /// The stroke is forced to one pixel wide.
    /// </summary>
    D2D1_STROKE_TRANSFORM_TYPE_HAIRLINE     = 2,
    D2D1_STROKE_TRANSFORM_TYPE_FORCE_DWORD  = Integer($FFFFFFFF)
  );

  /// <summary>
  /// A blend mode that applies to all primitives drawn on the context.
  /// </summary>
  D2D1_PRIMITIVE_BLEND = (
    D2D1_PRIMITIVE_BLEND_SOURCE_OVER  = 0,
    D2D1_PRIMITIVE_BLEND_COPY         = 1,
    D2D1_PRIMITIVE_BLEND_MIN          = 2,
    D2D1_PRIMITIVE_BLEND_ADD          = 3,
    D2D1_PRIMITIVE_BLEND_MAX          = 4,
    D2D1_PRIMITIVE_BLEND_FORCE_DWORD  = Integer($FFFFFFFF)
  );

  /// <summary>
  /// This specifies the threading mode used while simultaneously creating the device,
  /// factory, and device context.
  /// </summary>
  D2D1_THREADING_MODE = (
    /// <summary>
    /// Resources may only be invoked serially.  Reference counts on resources are
    /// interlocked, however, resource and render target state is not protected from
    /// multi-threaded access
    /// </summary>
    D2D1_THREADING_MODE_SINGLE_THREADED = Ord(D2D1_FACTORY_TYPE_SINGLE_THREADED),

    /// <summary>
    /// Resources may be invoked from multiple threads. Resources use interlocked
    /// reference counting and their state is protected.
    /// </summary>
    D2D1_THREADING_MODE_MULTI_THREADED  = Ord(D2D1_FACTORY_TYPE_MULTI_THREADED),
    D2D1_THREADING_MODE_FORCE_DWORD     = Integer($FFFFFFFF)
  );

  /// <summary>
  /// This specifies how colors are interpolated.
  /// </summary>
  D2D1_COLOR_INTERPOLATION_MODE = (
    /// <summary>
    /// Colors will be interpolated in straight alpha space.
    /// </summary>
    D2D1_COLOR_INTERPOLATION_MODE_STRAIGHT      = 0,

    /// <summary>
    /// Colors will be interpolated in premultiplied alpha space.
    /// </summary>
    D2D1_COLOR_INTERPOLATION_MODE_PREMULTIPLIED = 1,
    D2D1_COLOR_INTERPOLATION_MODE_FORCE_DWORD   = Integer($FFFFFFFF)
  );

  /// <summary>
  /// Specifies how the layer contents should be prepared.
  /// </summary>
  D2D1_LAYER_OPTIONS1 = (
    D2D1_LAYER_OPTIONS1_NONE                        = 0,
    D2D1_LAYER_OPTIONS1_INITIALIZE_FROM_BACKGROUND  = 1,
    D2D1_LAYER_OPTIONS1_IGNORE_ALPHA                = 2,
    D2D1_LAYER_OPTIONS1_FORCE_DWORD                 = Integer($FFFFFFFF)
  );

  /// <summary>
  /// Defines when font resources should be subset during printing.
  /// </summary>
  D2D1_PRINT_FONT_SUBSET_MODE = (

    /// <summary>
    /// Subset for used glyphs, send and discard font resource after every five pages
    /// </summary>
    D2D1_PRINT_FONT_SUBSET_MODE_DEFAULT     = 0,

    /// <summary>
    /// Subset for used glyphs, send and discard font resource after each page
    /// </summary>
    D2D1_PRINT_FONT_SUBSET_MODE_EACHPAGE    = 1,

    /// <summary>
    /// Do not subset, reuse font for all pages, send it after first page
    /// </summary>
    D2D1_PRINT_FONT_SUBSET_MODE_NONE        = 2,
    D2D1_PRINT_FONT_SUBSET_MODE_FORCE_DWORD = Integer($FFFFFFFF)
  );


{$ENDREGION}

{$REGION 'd2d1_2.h enums'}

/// <summary>
/// Specifies the extent to which D2D will throttle work sent to the GPU.
/// </summary>
  D2D1_RENDERING_PRIORITY = (
    D2D1_RENDERING_PRIORITY_NORMAL      = 0,
    D2D1_RENDERING_PRIORITY_LOW         = 1,
    D2D1_RENDERING_PRIORITY_FORCE_DWORD = Integer($FFFFFFFF)
  );
{$ENDREGION}

{$REGION 'd2d1_3.h enums'}

  /// <summary>
  /// Specifies the appearance of the ink nib (pen tip) as part of an
  /// D2D1_INK_STYLE_PROPERTIES structure.
  /// </summary>
  D2D1_INK_NIB_SHAPE = (
    D2D1_INK_NIB_SHAPE_ROUND        = 0,
    D2D1_INK_NIB_SHAPE_SQUARE       = 1,
    D2D1_INK_NIB_SHAPE_FORCE_DWORD  = Integer($FFFFFFFF)
  );

  /// <summary>
  /// Specifies the orientation of an image.
  /// </summary>
  D2D1_ORIENTATION = (
    D2D1_ORIENTATION_DEFAULT                              = 1,
    D2D1_ORIENTATION_FLIP_HORIZONTAL                      = 2,
    D2D1_ORIENTATION_ROTATE_CLOCKWISE180                  = 3,
    D2D1_ORIENTATION_ROTATE_CLOCKWISE180_FLIP_HORIZONTAL  = 4,
    D2D1_ORIENTATION_ROTATE_CLOCKWISE90_FLIP_HORIZONTAL   = 5,
    D2D1_ORIENTATION_ROTATE_CLOCKWISE270                  = 6,
    D2D1_ORIENTATION_ROTATE_CLOCKWISE270_FLIP_HORIZONTAL  = 7,
    D2D1_ORIENTATION_ROTATE_CLOCKWISE90                   = 8,
    D2D1_ORIENTATION_FORCE_DWORD                          = Integer($FFFFFFFF)
  );

  /// <summary>
  /// Option flags controlling how images sources are loaded during
  /// CreateImageSourceFromWic.
  /// </summary>
  D2D1_IMAGE_SOURCE_LOADING_OPTIONS = (
    D2D1_IMAGE_SOURCE_LOADING_OPTIONS_NONE            = 0,
    D2D1_IMAGE_SOURCE_LOADING_OPTIONS_RELEASE_SOURCE  = 1,
    D2D1_IMAGE_SOURCE_LOADING_OPTIONS_CACHE_ON_DEMAND = 2,
    D2D1_IMAGE_SOURCE_LOADING_OPTIONS_FORCE_DWORD     = Integer($FFFFFFFF)
  );

  /// <summary>
  /// Option flags controlling primary conversion performed by
  /// CreateImageSourceFromDxgi, if any.
  /// </summary>
  D2D1_IMAGE_SOURCE_FROM_DXGI_OPTIONS = (
    D2D1_IMAGE_SOURCE_FROM_DXGI_OPTIONS_NONE                            = 0,
    D2D1_IMAGE_SOURCE_FROM_DXGI_OPTIONS_LOW_QUALITY_PRIMARY_CONVERSION  = 1,
    D2D1_IMAGE_SOURCE_FROM_DXGI_OPTIONS_FORCE_DWORD                     = Integer($FFFFFFFF)
  );

  /// <summary>
  /// Option flags for transformed image sources.
  /// </summary>
  D2D1_TRANSFORMED_IMAGE_SOURCE_OPTIONS = (
    D2D1_TRANSFORMED_IMAGE_SOURCE_OPTIONS_NONE              = 0,

    /// <summary>
    /// Prevents the image source from being automatically scaled (by a ratio of the
    /// context DPI divided by 96) while drawn.
    /// </summary>
    D2D1_TRANSFORMED_IMAGE_SOURCE_OPTIONS_DISABLE_DPI_SCALE = 1,
    D2D1_TRANSFORMED_IMAGE_SOURCE_OPTIONS_FORCE_DWORD       = Integer($FFFFFFFF)
  );

/// <summary>
/// Specifies how to render gradient mesh edges.
/// </summary>
  D2D1_PATCH_EDGE_MODE = (

    /// <summary>
    /// Render this edge aliased.
    /// </summary>
    D2D1_PATCH_EDGE_MODE_ALIASED          = 0,

    /// <summary>
    /// Render this edge antialiased.
    /// </summary>
    D2D1_PATCH_EDGE_MODE_ANTIALIASED      = 1,

    /// <summary>
    /// Render this edge aliased and inflated out slightly.
    /// </summary>
    D2D1_PATCH_EDGE_MODE_ALIASED_INFLATED = 2,
    D2D1_PATCH_EDGE_MODE_FORCE_DWORD      = Integer($FFFFFFFF)
  );

  D2D1_SPRITE_OPTIONS = (

    /// <summary>
    /// Use default sprite rendering behavior.
    /// </summary>
    D2D1_SPRITE_OPTIONS_NONE                      = 0,

    /// <summary>
    /// Bitmap interpolation will be clamped to the sprite's source rectangle.
    /// </summary>
    D2D1_SPRITE_OPTIONS_CLAMP_TO_SOURCE_RECTANGLE = 1,
    D2D1_SPRITE_OPTIONS_FORCE_DWORD               = Integer($FFFFFFFF)
  );

  /// <summary>
  /// Specifies the pixel snapping policy when rendering color bitmap glyphs.
  /// </summary>
  D2D1_COLOR_BITMAP_GLYPH_SNAP_OPTION = (

    /// <summary>
    /// Color bitmap glyph positions are snapped to the nearest pixel if the bitmap
    /// resolution matches that of the device context.
    /// </summary>
    D2D1_COLOR_BITMAP_GLYPH_SNAP_OPTION_DEFAULT     = 0,

    /// <summary>
    /// Color bitmap glyph positions are not snapped.
    /// </summary>
    D2D1_COLOR_BITMAP_GLYPH_SNAP_OPTION_DISABLE     = 1,
    D2D1_COLOR_BITMAP_GLYPH_SNAP_OPTION_FORCE_DWORD = Integer($FFFFFFFF)
  );

/// <summary>
/// This determines what gamma is used for interpolation/blending.
/// </summary>
  D2D1_GAMMA1 = (

    /// <summary>
    /// Colors are manipulated in 2.2 gamma color space.
    /// </summary>
    D2D1_GAMMA1_G22         = 0,

    /// <summary>
    /// Colors are manipulated in 1.0 gamma color space.
    /// </summary>
    D2D1_GAMMA1_G10         = 1,

    /// <summary>
    /// Colors are manipulated in ST.2084 PQ gamma color space.
    /// </summary>
    D2D1_GAMMA1_G2084       = 2,
    D2D1_GAMMA1_FORCE_DWORD = Integer($FFFFFFFF)
  );

  /// <summary>
  /// Specifies which way a color profile is defined.
  /// </summary>
  D2D1_COLOR_CONTEXT_TYPE = (
    D2D1_COLOR_CONTEXT_TYPE_ICC         = 0,
    D2D1_COLOR_CONTEXT_TYPE_SIMPLE      = 1,
    D2D1_COLOR_CONTEXT_TYPE_DXGI        = 2,
    D2D1_COLOR_CONTEXT_TYPE_FORCE_DWORD = Integer($FFFFFFFF)
  );
{$ENDREGION}

{$REGION 'dwrite enums'}

  /// <summary>
  /// The measuring method used for text layout.
  /// </summary>
  DWRITE_MEASURING_MODE = (
    /// <summary>
    /// Text is measured using glyph ideal metrics whose values are independent to the current display resolution.
    /// </summary>
    DWRITE_MEASURING_MODE_NATURAL,

    /// <summary>
    /// Text is measured using glyph display compatible metrics whose values tuned for the current display resolution.
    /// </summary>
    DWRITE_MEASURING_MODE_GDI_CLASSIC,

    /// <summary>
    // Text is measured using the same glyph display metrics as text measured by GDI using a font
    // created with CLEARTYPE_NATURAL_QUALITY.
    /// </summary>
    DWRITE_MEASURING_MODE_GDI_NATURAL
  );

  /// <summary>
  /// Fonts may contain multiple drawable data formats for glyphs. These flags specify which formats
  /// are supported in the font, either at a font-wide level or per glyph, and the app may use them
  /// to tell DWrite which formats to return when splitting a color glyph run.
  /// </summary>
  DWRITE_GLYPH_IMAGE_FORMATS = (
    /// <summary>
    /// Indicates no data is available for this glyph.
    /// </summary>
    DWRITE_GLYPH_IMAGE_FORMATS_NONE                   = $00000000,

    /// <summary>
    /// The glyph has TrueType outlines.
    /// </summary>
    DWRITE_GLYPH_IMAGE_FORMATS_TRUETYPE               = $00000001,

    /// <summary>
    /// The glyph has CFF outlines.
    /// </summary>
    DWRITE_GLYPH_IMAGE_FORMATS_CFF                    = $00000002,

    /// <summary>
    /// The glyph has multilayered COLR data.
    /// </summary>
    DWRITE_GLYPH_IMAGE_FORMATS_COLR                   = $00000004,

    /// <summary>
    /// The glyph has SVG outlines as standard XML.
    /// </summary>
    /// <remarks>
    /// Fonts may store the content gzip'd rather than plain text,
    /// indicated by the first two bytes as gzip header {0x1F 0x8B}.
    /// </remarks>
    DWRITE_GLYPH_IMAGE_FORMATS_SVG                    = $00000008,

    /// <summary>
    /// The glyph has PNG image data, with standard PNG IHDR.
    /// </summary>
    DWRITE_GLYPH_IMAGE_FORMATS_PNG                    = $00000010,

    /// <summary>
    /// The glyph has JPEG image data, with standard JIFF SOI header.
    /// </summary>
    DWRITE_GLYPH_IMAGE_FORMATS_JPEG                   = $00000020,

    /// <summary>
    /// The glyph has TIFF image data.
    /// </summary>
    DWRITE_GLYPH_IMAGE_FORMATS_TIFF                   = $00000040,

    /// <summary>
    /// The glyph has raw 32-bit premultiplied BGRA data.
    /// </summary>
    DWRITE_GLYPH_IMAGE_FORMATS_PREMULTIPLIED_B8G8R8A8 = $00000080
  );

  /// <summary>
  /// The type of a font represented by a single font file.
  /// Font formats that consist of multiple files, e.g. Type 1 .PFM and .PFB, have
  /// separate enum values for each of the file type.
  /// </summary>
  DWRITE_FONT_FILE_TYPE = (
    /// <summary>
    /// Font type is not recognized by the DirectWrite font system.
    /// </summary>
    DWRITE_FONT_FILE_TYPE_UNKNOWN,

    /// <summary>
    /// OpenType font with CFF outlines.
    /// </summary>
    DWRITE_FONT_FILE_TYPE_CFF,

    /// <summary>
    /// OpenType font with TrueType outlines.
    /// </summary>
    DWRITE_FONT_FILE_TYPE_TRUETYPE,

    /// <summary>
    /// OpenType font that contains a TrueType collection.
    /// </summary>
    DWRITE_FONT_FILE_TYPE_OPENTYPE_COLLECTION,

    /// <summary>
    /// Type 1 PFM font.
    /// </summary>
    DWRITE_FONT_FILE_TYPE_TYPE1_PFM,

    /// <summary>
    /// Type 1 PFB font.
    /// </summary>
    DWRITE_FONT_FILE_TYPE_TYPE1_PFB,

    /// <summary>
    /// Vector .FON font.
    /// </summary>
    DWRITE_FONT_FILE_TYPE_VECTOR,

    /// <summary>
    /// Bitmap .FON font.
    /// </summary>
    DWRITE_FONT_FILE_TYPE_BITMAP,

    // The following name is obsolete, but kept as an alias to avoid breaking existing code.
    DWRITE_FONT_FILE_TYPE_TRUETYPE_COLLECTION = DWRITE_FONT_FILE_TYPE_OPENTYPE_COLLECTION
  );

  /// <summary>
  /// The file format of a complete font face.
  /// Font formats that consist of multiple files, e.g. Type 1 .PFM and .PFB, have
  /// a single enum entry.
  /// </summary>
  DWRITE_FONT_FACE_TYPE = (
    /// <summary>
    /// OpenType font face with CFF outlines.
    /// </summary>
    DWRITE_FONT_FACE_TYPE_CFF,

    /// <summary>
    /// OpenType font face with TrueType outlines.
    /// </summary>
    DWRITE_FONT_FACE_TYPE_TRUETYPE,

    /// <summary>
    /// OpenType font face that is a part of a TrueType or CFF collection.
    /// </summary>
    DWRITE_FONT_FACE_TYPE_OPENTYPE_COLLECTION,

    /// <summary>
    /// A Type 1 font face.
    /// </summary>
    DWRITE_FONT_FACE_TYPE_TYPE1,

    /// <summary>
    /// A vector .FON format font face.
    /// </summary>
    DWRITE_FONT_FACE_TYPE_VECTOR,

    /// <summary>
    /// A bitmap .FON format font face.
    /// </summary>
    DWRITE_FONT_FACE_TYPE_BITMAP,

    /// <summary>
    /// Font face type is not recognized by the DirectWrite font system.
    /// </summary>
    DWRITE_FONT_FACE_TYPE_UNKNOWN,

    /// <summary>
    /// The font data includes only the CFF table from an OpenType CFF font.
    /// This font face type can be used only for embedded fonts (i.e., custom
    /// font file loaders) and the resulting font face object supports only the
    /// minimum functionality necessary to render glyphs.
    /// </summary>
    DWRITE_FONT_FACE_TYPE_RAW_CFF,

    // The following name is obsolete, but kept as an alias to avoid breaking existing code.
    DWRITE_FONT_FACE_TYPE_TRUETYPE_COLLECTION = DWRITE_FONT_FACE_TYPE_OPENTYPE_COLLECTION
  );

  /// <summary>
  /// Specifies algorithmic style simulations to be applied to the font face.
  /// Bold and oblique simulations can be combined via bitwise OR operation.
  /// </summary>
  DWRITE_FONT_SIMULATIONS = (
    /// <summary>
    /// No simulations are performed.
    /// </summary>
    DWRITE_FONT_SIMULATIONS_NONE    = $0000,

    /// <summary>
    /// Algorithmic emboldening is performed.
    /// </summary>
    DWRITE_FONT_SIMULATIONS_BOLD    = $0001,

    /// <summary>
    /// Algorithmic italicization is performed.
    /// </summary>
    DWRITE_FONT_SIMULATIONS_OBLIQUE = $0002
  );

  /// <summary>
  /// The font weight enumeration describes common values for degree of blackness or thickness of strokes of characters in a font.
  /// Font weight values less than 1 or greater than 999 are considered to be invalid, and they are rejected by font API functions.
  /// </summary>
  DWRITE_FONT_WEIGHT = (
    /// <summary>
    /// Predefined font weight : Thin (100).
    /// </summary>
    DWRITE_FONT_WEIGHT_THIN         = 100,

    /// <summary>
    /// Predefined font weight : Extra-light (200).
    /// </summary>
    DWRITE_FONT_WEIGHT_EXTRA_LIGHT  = 200,

    /// <summary>
    /// Predefined font weight : Ultra-light (200).
    /// </summary>
    DWRITE_FONT_WEIGHT_ULTRA_LIGHT  = 200,

    /// <summary>
    /// Predefined font weight : Light (300).
    /// </summary>
    DWRITE_FONT_WEIGHT_LIGHT        = 300,

    /// <summary>
    /// Predefined font weight : Semi-light (350).
    /// </summary>
    DWRITE_FONT_WEIGHT_SEMI_LIGHT   = 350,

    /// <summary>
    /// Predefined font weight : Normal (400).
    /// </summary>
    DWRITE_FONT_WEIGHT_NORMAL       = 400,

    /// <summary>
    /// Predefined font weight : Regular (400).
    /// </summary>
    DWRITE_FONT_WEIGHT_REGULAR      = 400,

    /// <summary>
    /// Predefined font weight : Medium (500).
    /// </summary>
    DWRITE_FONT_WEIGHT_MEDIUM       = 500,

    /// <summary>
    /// Predefined font weight : Demi-bold (600).
    /// </summary>
    DWRITE_FONT_WEIGHT_DEMI_BOLD    = 600,

    /// <summary>
    /// Predefined font weight : Semi-bold (600).
    /// </summary>
    DWRITE_FONT_WEIGHT_SEMI_BOLD    = 600,

    /// <summary>
    /// Predefined font weight : Bold (700).
    /// </summary>
    DWRITE_FONT_WEIGHT_BOLD         = 700,

    /// <summary>
    /// Predefined font weight : Extra-bold (800).
    /// </summary>
    DWRITE_FONT_WEIGHT_EXTRA_BOLD   = 800,

    /// <summary>
    /// Predefined font weight : Ultra-bold (800).
    /// </summary>
    DWRITE_FONT_WEIGHT_ULTRA_BOLD   = 800,

    /// <summary>
    /// Predefined font weight : Black (900).
    /// </summary>
    DWRITE_FONT_WEIGHT_BLACK        = 900,

    /// <summary>
    /// Predefined font weight : Heavy (900).
    /// </summary>
    DWRITE_FONT_WEIGHT_HEAVY        = 900,

    /// <summary>
    /// Predefined font weight : Extra-black (950).
    /// </summary>
    DWRITE_FONT_WEIGHT_EXTRA_BLACK  = 950,

    /// <summary>
    /// Predefined font weight : Ultra-black (950).
    /// </summary>
    DWRITE_FONT_WEIGHT_ULTRA_BLACK  = 950
  );

  /// <summary>
  /// The font stretch enumeration describes relative change from the normal aspect ratio
  /// as specified by a font designer for the glyphs in a font.
  /// Values less than 1 or greater than 9 are considered to be invalid, and they are rejected by font API functions.
  /// </summary>
  DWRITE_FONT_STRETCH = (
    /// <summary>
    /// Predefined font stretch : Not known (0).
    /// </summary>
    DWRITE_FONT_STRETCH_UNDEFINED       = 0,

    /// <summary>
    /// Predefined font stretch : Ultra-condensed (1).
    /// </summary>
    DWRITE_FONT_STRETCH_ULTRA_CONDENSED = 1,

    /// <summary>
    /// Predefined font stretch : Extra-condensed (2).
    /// </summary>
    DWRITE_FONT_STRETCH_EXTRA_CONDENSED = 2,

    /// <summary>
    /// Predefined font stretch : Condensed (3).
    /// </summary>
    DWRITE_FONT_STRETCH_CONDENSED       = 3,

    /// <summary>
    /// Predefined font stretch : Semi-condensed (4).
    /// </summary>
    DWRITE_FONT_STRETCH_SEMI_CONDENSED  = 4,

    /// <summary>
    /// Predefined font stretch : Normal (5).
    /// </summary>
    DWRITE_FONT_STRETCH_NORMAL          = 5,

    /// <summary>
    /// Predefined font stretch : Medium (5).
    /// </summary>
    DWRITE_FONT_STRETCH_MEDIUM          = 5,

    /// <summary>
    /// Predefined font stretch : Semi-expanded (6).
    /// </summary>
    DWRITE_FONT_STRETCH_SEMI_EXPANDED   = 6,

    /// <summary>
    /// Predefined font stretch : Expanded (7).
    /// </summary>
    DWRITE_FONT_STRETCH_EXPANDED        = 7,

    /// <summary>
    /// Predefined font stretch : Extra-expanded (8).
    /// </summary>
    DWRITE_FONT_STRETCH_EXTRA_EXPANDED = 8,

    /// <summary>
    /// Predefined font stretch : Ultra-expanded (9).
    /// </summary>
    DWRITE_FONT_STRETCH_ULTRA_EXPANDED = 9
  );

  /// <summary>
  /// The font style enumeration describes the slope style of a font face, such as Normal, Italic or Oblique.
  /// Values other than the ones defined in the enumeration are considered to be invalid, and they are rejected by font API functions.
  /// </summary>
  DWRITE_FONT_STYLE = (
    /// <summary>
    /// Font slope style : Normal.
    /// </summary>
    DWRITE_FONT_STYLE_NORMAL,

    /// <summary>
    /// Font slope style : Oblique.
    /// </summary>
    DWRITE_FONT_STYLE_OBLIQUE,

    /// <summary>
    /// Font slope style : Italic.
    /// </summary>
    DWRITE_FONT_STYLE_ITALIC
  );

  /// <summary>
  /// The informational string enumeration identifies a string in a font.
  /// </summary>
  DWRITE_INFORMATIONAL_STRING_ID = (
    /// <summary>
    /// Unspecified name ID.
    /// </summary>
    DWRITE_INFORMATIONAL_STRING_NONE,

    /// <summary>
    /// Copyright notice provided by the font.
    /// </summary>
    DWRITE_INFORMATIONAL_STRING_COPYRIGHT_NOTICE,

    /// <summary>
    /// String containing a version number.
    /// </summary>
    DWRITE_INFORMATIONAL_STRING_VERSION_STRINGS,

    /// <summary>
    /// Trademark information provided by the font.
    /// </summary>
    DWRITE_INFORMATIONAL_STRING_TRADEMARK,

    /// <summary>
    /// Name of the font manufacturer.
    /// </summary>
    DWRITE_INFORMATIONAL_STRING_MANUFACTURER,

    /// <summary>
    /// Name of the font designer.
    /// </summary>
    DWRITE_INFORMATIONAL_STRING_DESIGNER,

    /// <summary>
    /// URL of font designer (with protocol, e.g., http://, ftp://).
    /// </summary>
    DWRITE_INFORMATIONAL_STRING_DESIGNER_URL,

    /// <summary>
    /// Description of the font. Can contain revision information, usage recommendations, history, features, etc.
    /// </summary>
    DWRITE_INFORMATIONAL_STRING_DESCRIPTION,

    /// <summary>
    /// URL of font vendor (with protocol, e.g., http://, ftp://). If a unique serial number is embedded in the URL, it can be used to register the font.
    /// </summary>
    DWRITE_INFORMATIONAL_STRING_FONT_VENDOR_URL,

    /// <summary>
    /// Description of how the font may be legally used, or different example scenarios for licensed use. This field should be written in plain language, not legalese.
    /// </summary>
    DWRITE_INFORMATIONAL_STRING_LICENSE_DESCRIPTION,

    /// <summary>
    /// URL where additional licensing information can be found.
    /// </summary>
    DWRITE_INFORMATIONAL_STRING_LICENSE_INFO_URL,

    /// <summary>
    /// GDI-compatible family name. Because GDI allows a maximum of four fonts per family, fonts in the same family may have different GDI-compatible family names
    /// (e.g., "Arial", "Arial Narrow", "Arial Black").
    /// </summary>
    DWRITE_INFORMATIONAL_STRING_WIN32_FAMILY_NAMES,

    /// <summary>
    /// GDI-compatible subfamily name.
    /// </summary>
    DWRITE_INFORMATIONAL_STRING_WIN32_SUBFAMILY_NAMES,

    /// <summary>
    /// Typographic family name preferred by the designer. This enables font designers to group more than four fonts in a single family without losing compatibility with
    /// GDI. This name is typically only present if it differs from the GDI-compatible family name.
    /// </summary>
    DWRITE_INFORMATIONAL_STRING_TYPOGRAPHIC_FAMILY_NAMES,

    /// <summary>
    /// Typographic subfamily name preferred by the designer. This name is typically only present if it differs from the GDI-compatible subfamily name.
    /// </summary>
    DWRITE_INFORMATIONAL_STRING_TYPOGRAPHIC_SUBFAMILY_NAMES,

    /// <summary>
    /// Sample text. This can be the font name or any other text that the designer thinks is the best example to display the font in.
    /// </summary>
    DWRITE_INFORMATIONAL_STRING_SAMPLE_TEXT,

    /// <summary>
    /// The full name of the font, e.g. "Arial Bold", from name id 4 in the name table.
    /// </summary>
    DWRITE_INFORMATIONAL_STRING_FULL_NAME,

    /// <summary>
    /// The postscript name of the font, e.g. "GillSans-Bold" from name id 6 in the name table.
    /// </summary>
    DWRITE_INFORMATIONAL_STRING_POSTSCRIPT_NAME,

    /// <summary>
    /// The postscript CID findfont name, from name id 20 in the name table.
    /// </summary>
    DWRITE_INFORMATIONAL_STRING_POSTSCRIPT_CID_NAME,

    /// <summary>
    /// Family name for the weight-stretch-style model.
    /// </summary>
    DWRITE_INFORMATIONAL_STRING_WEIGHT_STRETCH_STYLE_FAMILY_NAME,

    /// <summary>
    /// Script/language tag to identify the scripts or languages that the font was
    /// primarily designed to support. See DWRITE_FONT_PROPERTY_ID_DESIGN_SCRIPT_LANGUAGE_TAG
    /// for a longer description.
    /// </summary>
    DWRITE_INFORMATIONAL_STRING_DESIGN_SCRIPT_LANGUAGE_TAG,

    /// <summary>
    /// Script/language tag to identify the scripts or languages that the font declares
    /// it is able to support.
    /// </summary>
    DWRITE_INFORMATIONAL_STRING_SUPPORTED_SCRIPT_LANGUAGE_TAG,

    // Obsolete aliases kept to avoid breaking existing code.
    DWRITE_INFORMATIONAL_STRING_PREFERRED_FAMILY_NAMES = DWRITE_INFORMATIONAL_STRING_TYPOGRAPHIC_FAMILY_NAMES,
    DWRITE_INFORMATIONAL_STRING_PREFERRED_SUBFAMILY_NAMES = DWRITE_INFORMATIONAL_STRING_TYPOGRAPHIC_SUBFAMILY_NAMES,
    DWRITE_INFORMATIONAL_STRING_WWS_FAMILY_NAME = DWRITE_INFORMATIONAL_STRING_WEIGHT_STRETCH_STYLE_FAMILY_NAME
  );

  /// <summary>
  /// Specifies the type of DirectWrite factory object.
  /// DirectWrite factory contains internal state such as font loader registration and cached font data.
  /// In most cases it is recommended to use the shared factory object, because it allows multiple components
  /// that use DirectWrite to share internal DirectWrite state and reduce memory usage.
  /// However, there are cases when it is desirable to reduce the impact of a component,
  /// such as a plug-in from an untrusted source, on the rest of the process by sandboxing and isolating it
  /// from the rest of the process components. In such cases, it is recommended to use an isolated factory for the sandboxed
  /// component.
  /// </summary>
  DWRITE_FACTORY_TYPE = (
    /// <summary>
    /// Shared factory allow for re-use of cached font data across multiple in process components.
    /// Such factories also take advantage of cross process font caching components for better performance.
    /// </summary>
    DWRITE_FACTORY_TYPE_SHARED,

    /// <summary>
    /// Objects created from the isolated factory do not interact with internal DirectWrite state from other components.
    /// </summary>
    DWRITE_FACTORY_TYPE_ISOLATED
  );

  /// <summary>
  /// Represents the internal structure of a device pixel (i.e., the physical arrangement of red,
  /// green, and blue color components) that is assumed for purposes of rendering text.
  /// </summary>
  DWRITE_PIXEL_GEOMETRY = (
    /// <summary>
    /// The red, green, and blue color components of each pixel are assumed to occupy the same point.
    /// </summary>
    DWRITE_PIXEL_GEOMETRY_FLAT,

    /// <summary>
    /// Each pixel comprises three vertical stripes, with red on the left, green in the center, and
    /// blue on the right. This is the most common pixel geometry for LCD monitors.
    /// </summary>
    DWRITE_PIXEL_GEOMETRY_RGB,

    /// <summary>
    /// Each pixel comprises three vertical stripes, with blue on the left, green in the center, and
    /// red on the right.
    /// </summary>
    DWRITE_PIXEL_GEOMETRY_BGR
  );

  /// <summary>
  /// Represents a method of rendering glyphs.
  /// </summary>
  DWRITE_RENDERING_MODE = (
    /// <summary>
    /// Specifies that the rendering mode is determined automatically based on the font and size.
    /// </summary>
    DWRITE_RENDERING_MODE_DEFAULT,

    /// <summary>
    /// Specifies that no antialiasing is performed. Each pixel is either set to the foreground
    /// color of the text or retains the color of the background.
    /// </summary>
    DWRITE_RENDERING_MODE_ALIASED,

    /// <summary>
    /// Specifies that antialiasing is performed in the horizontal direction and the appearance
    /// of glyphs is layout-compatible with GDI using CLEARTYPE_QUALITY. Use DWRITE_MEASURING_MODE_GDI_CLASSIC
    /// to get glyph advances. The antialiasing may be either ClearType or grayscale depending on
    /// the text antialiasing mode.
    /// </summary>
    DWRITE_RENDERING_MODE_GDI_CLASSIC,

    /// <summary>
    /// Specifies that antialiasing is performed in the horizontal direction and the appearance
    /// of glyphs is layout-compatible with GDI using CLEARTYPE_NATURAL_QUALITY. Glyph advances
    /// are close to the font design advances, but are still rounded to whole pixels. Use
    /// DWRITE_MEASURING_MODE_GDI_NATURAL to get glyph advances. The antialiasing may be either
    /// ClearType or grayscale depending on the text antialiasing mode.
    /// </summary>
    DWRITE_RENDERING_MODE_GDI_NATURAL,

    /// <summary>
    /// Specifies that antialiasing is performed in the horizontal direction. This rendering
    /// mode allows glyphs to be positioned with subpixel precision and is therefore suitable
    /// for natural (i.e., resolution-independent) layout. The antialiasing may be either
    /// ClearType or grayscale depending on the text antialiasing mode.
    /// </summary>
    DWRITE_RENDERING_MODE_NATURAL,

    /// <summary>
    /// Similar to natural mode except that antialiasing is performed in both the horizontal
    /// and vertical directions. This is typically used at larger sizes to make curves and
    /// diagonal lines look smoother. The antialiasing may be either ClearType or grayscale
    /// depending on the text antialiasing mode.
    /// </summary>
    DWRITE_RENDERING_MODE_NATURAL_SYMMETRIC,

    /// <summary>
    /// Specifies that rendering should bypass the rasterizer and use the outlines directly.
    /// This is typically used at very large sizes.
    /// </summary>
    DWRITE_RENDERING_MODE_OUTLINE,

    // The following names are obsolete, but are kept as aliases to avoid breaking existing code.
    // Each of these rendering modes may result in either ClearType or grayscale antialiasing
    // depending on the DWRITE_TEXT_ANTIALIASING_MODE.
    DWRITE_RENDERING_MODE_CLEARTYPE_GDI_CLASSIC         = DWRITE_RENDERING_MODE_GDI_CLASSIC,
    DWRITE_RENDERING_MODE_CLEARTYPE_GDI_NATURAL         = DWRITE_RENDERING_MODE_GDI_NATURAL,
    DWRITE_RENDERING_MODE_CLEARTYPE_NATURAL             = DWRITE_RENDERING_MODE_NATURAL,
    DWRITE_RENDERING_MODE_CLEARTYPE_NATURAL_SYMMETRIC   = DWRITE_RENDERING_MODE_NATURAL_SYMMETRIC
  );

  /// <summary>
  /// Direction for how reading progresses.
  /// </summary>
  DWRITE_READING_DIRECTION = (
    /// <summary>
    /// Reading progresses from left to right.
    /// </summary>
    DWRITE_READING_DIRECTION_LEFT_TO_RIGHT = 0,

    /// <summary>
    /// Reading progresses from right to left.
    /// </summary>
    DWRITE_READING_DIRECTION_RIGHT_TO_LEFT = 1,

    /// <summary>
    /// Reading progresses from top to bottom.
    /// </summary>
    DWRITE_READING_DIRECTION_TOP_TO_BOTTOM = 2,

    /// <summary>
    /// Reading progresses from bottom to top.
    /// </summary>
    DWRITE_READING_DIRECTION_BOTTOM_TO_TOP = 3
  );

  /// <summary>
  /// Direction for how lines of text are placed relative to one another.
  /// </summary>
  DWRITE_FLOW_DIRECTION = (
    /// <summary>
    /// Text lines are placed from top to bottom.
    /// </summary>
    DWRITE_FLOW_DIRECTION_TOP_TO_BOTTOM = 0,

    /// <summary>
    /// Text lines are placed from bottom to top.
    /// </summary>
    DWRITE_FLOW_DIRECTION_BOTTOM_TO_TOP = 1,

    /// <summary>
    /// Text lines are placed from left to right.
    /// </summary>
    DWRITE_FLOW_DIRECTION_LEFT_TO_RIGHT = 2,

    /// <summary>
    /// Text lines are placed from right to left.
    /// </summary>
    DWRITE_FLOW_DIRECTION_RIGHT_TO_LEFT = 3
  );

  /// <summary>
  /// Alignment of paragraph text along the reading direction axis relative to
  /// the leading and trailing edge of the layout box.
  /// </summary>
  DWRITE_TEXT_ALIGNMENT = (
    /// <summary>
    /// The leading edge of the paragraph text is aligned to the layout box's leading edge.
    /// </summary>
    DWRITE_TEXT_ALIGNMENT_LEADING,

    /// <summary>
    /// The trailing edge of the paragraph text is aligned to the layout box's trailing edge.
    /// </summary>
    DWRITE_TEXT_ALIGNMENT_TRAILING,

    /// <summary>
    /// The center of the paragraph text is aligned to the center of the layout box.
    /// </summary>
    DWRITE_TEXT_ALIGNMENT_CENTER,

    /// <summary>
    /// Align text to the leading side, and also justify text to fill the lines.
    /// </summary>
    DWRITE_TEXT_ALIGNMENT_JUSTIFIED
  );

  /// <summary>
  /// Alignment of paragraph text along the flow direction axis relative to the
  /// flow's beginning and ending edge of the layout box.
  /// </summary>
  DWRITE_PARAGRAPH_ALIGNMENT = (
    /// <summary>
    /// The first line of paragraph is aligned to the flow's beginning edge of the layout box.
    /// </summary>
    DWRITE_PARAGRAPH_ALIGNMENT_NEAR,

    /// <summary>
    /// The last line of paragraph is aligned to the flow's ending edge of the layout box.
    /// </summary>
    DWRITE_PARAGRAPH_ALIGNMENT_FAR,

    /// <summary>
    /// The center of the paragraph is aligned to the center of the flow of the layout box.
    /// </summary>
    DWRITE_PARAGRAPH_ALIGNMENT_CENTER
  );

  /// <summary>
  /// Word wrapping in multiline paragraph.
  /// </summary>
  DWRITE_WORD_WRAPPING = (
    /// <summary>
    /// Words are broken across lines to avoid text overflowing the layout box.
    /// </summary>
    DWRITE_WORD_WRAPPING_WRAP             = 0,

    /// <summary>
    /// Words are kept within the same line even when it overflows the layout box.
    /// This option is often used with scrolling to reveal overflow text.
    /// </summary>
    DWRITE_WORD_WRAPPING_NO_WRAP          = 1,

    /// <summary>
    /// Words are broken across lines to avoid text overflowing the layout box.
    /// Emergency wrapping occurs if the word is larger than the maximum width.
    /// </summary>
    DWRITE_WORD_WRAPPING_EMERGENCY_BREAK  = 2,

    /// <summary>
    /// Only wrap whole words, never breaking words (emergency wrapping) when the
    /// layout width is too small for even a single word.
    /// </summary>
    DWRITE_WORD_WRAPPING_WHOLE_WORD       = 3,

    /// <summary>
    /// Wrap between any valid characters clusters.
    /// </summary>
    DWRITE_WORD_WRAPPING_CHARACTER        = 4
  );

  /// <summary>
  /// The method used for line spacing in layout.
  /// </summary>
  DWRITE_LINE_SPACING_METHOD = (
    /// <summary>
    /// Line spacing depends solely on the content, growing to accommodate the size of fonts and inline objects.
    /// </summary>
    DWRITE_LINE_SPACING_METHOD_DEFAULT,

    /// <summary>
    /// Lines are explicitly set to uniform spacing, regardless of contained font sizes.
    /// This can be useful to avoid the uneven appearance that can occur from font fallback.
    /// </summary>
    DWRITE_LINE_SPACING_METHOD_UNIFORM,

    /// <summary>
    /// Line spacing and baseline distances are proportional to the computed values based on the content, the size of the fonts and inline objects.
    /// </summary>
    DWRITE_LINE_SPACING_METHOD_PROPORTIONAL
  );

  /// <summary>
  /// Text granularity used to trim text overflowing the layout box.
  /// </summary>
  DWRITE_TRIMMING_GRANULARITY = (
    /// <summary>
    /// No trimming occurs. Text flows beyond the layout width.
    /// </summary>
    DWRITE_TRIMMING_GRANULARITY_NONE,

    /// <summary>
    /// Trimming occurs at character cluster boundary.
    /// </summary>
    DWRITE_TRIMMING_GRANULARITY_CHARACTER,

    /// <summary>
    /// Trimming occurs at word boundary.
    /// </summary>
    DWRITE_TRIMMING_GRANULARITY_WORD
  );

  /// <summary>
  /// Typographic feature of text supplied by the font.
  /// </summary>
  /// <remarks>
  /// Use DWRITE_MAKE_FONT_FEATURE_TAG() to create a custom one.
  /// <remarks>
  DWRITE_FONT_FEATURE_TAG = (
    DWRITE_FONT_FEATURE_TAG_ALTERNATIVE_FRACTIONS               = $63726661, // afrc
    DWRITE_FONT_FEATURE_TAG_PETITE_CAPITALS_FROM_CAPITALS       = $63703263, // c2pc
    DWRITE_FONT_FEATURE_TAG_SMALL_CAPITALS_FROM_CAPITALS        = $63733263, // c2sc
    DWRITE_FONT_FEATURE_TAG_CONTEXTUAL_ALTERNATES               = $746C6163, // calt
    DWRITE_FONT_FEATURE_TAG_CASE_SENSITIVE_FORMS                = $65736163, // case
    DWRITE_FONT_FEATURE_TAG_GLYPH_COMPOSITION_DECOMPOSITION     = $706D6363, // ccmp
    DWRITE_FONT_FEATURE_TAG_CONTEXTUAL_LIGATURES                = $67696C63, // clig
    DWRITE_FONT_FEATURE_TAG_CAPITAL_SPACING                     = $70737063, // cpsp
    DWRITE_FONT_FEATURE_TAG_CONTEXTUAL_SWASH                    = $68777363, // cswh
    DWRITE_FONT_FEATURE_TAG_CURSIVE_POSITIONING                 = $73727563, // curs
    DWRITE_FONT_FEATURE_TAG_DEFAULT                             = $746C6664, // dflt
    DWRITE_FONT_FEATURE_TAG_DISCRETIONARY_LIGATURES             = $67696C64, // dlig
    DWRITE_FONT_FEATURE_TAG_EXPERT_FORMS                        = $74707865, // expt
    DWRITE_FONT_FEATURE_TAG_FRACTIONS                           = $63617266, // frac
    DWRITE_FONT_FEATURE_TAG_FULL_WIDTH                          = $64697766, // fwid
    DWRITE_FONT_FEATURE_TAG_HALF_FORMS                          = $666C6168, // half
    DWRITE_FONT_FEATURE_TAG_HALANT_FORMS                        = $6E6C6168, // haln
    DWRITE_FONT_FEATURE_TAG_ALTERNATE_HALF_WIDTH                = $746C6168, // halt
    DWRITE_FONT_FEATURE_TAG_HISTORICAL_FORMS                    = $74736968, // hist
    DWRITE_FONT_FEATURE_TAG_HORIZONTAL_KANA_ALTERNATES          = $616E6B68, // hkna
    DWRITE_FONT_FEATURE_TAG_HISTORICAL_LIGATURES                = $67696C68, // hlig
    DWRITE_FONT_FEATURE_TAG_HALF_WIDTH                          = $64697768, // hwid
    DWRITE_FONT_FEATURE_TAG_HOJO_KANJI_FORMS                    = $6F6A6F68, // hojo
    DWRITE_FONT_FEATURE_TAG_JIS04_FORMS                         = $3430706A, // jp04
    DWRITE_FONT_FEATURE_TAG_JIS78_FORMS                         = $3837706A, // jp78
    DWRITE_FONT_FEATURE_TAG_JIS83_FORMS                         = $3338706A, // jp83
    DWRITE_FONT_FEATURE_TAG_JIS90_FORMS                         = $3039706A, // jp90
    DWRITE_FONT_FEATURE_TAG_KERNING                             = $6E72656B, // kern
    DWRITE_FONT_FEATURE_TAG_STANDARD_LIGATURES                  = $6167696C, // liga
    DWRITE_FONT_FEATURE_TAG_LINING_FIGURES                      = $6D756E6C, // lnum
    DWRITE_FONT_FEATURE_TAG_LOCALIZED_FORMS                     = $6C636F6C, // locl
    DWRITE_FONT_FEATURE_TAG_MARK_POSITIONING                    = $6B72616D, // mark
    DWRITE_FONT_FEATURE_TAG_MATHEMATICAL_GREEK                  = $6B72676D, // mgrk
    DWRITE_FONT_FEATURE_TAG_MARK_TO_MARK_POSITIONING            = $6B6D6B6D, // mkmk
    DWRITE_FONT_FEATURE_TAG_ALTERNATE_ANNOTATION_FORMS          = $746C616E, // nalt
    DWRITE_FONT_FEATURE_TAG_NLC_KANJI_FORMS                     = $6B636C6E, // nlck
    DWRITE_FONT_FEATURE_TAG_OLD_STYLE_FIGURES                   = $6D756E6F, // onum
    DWRITE_FONT_FEATURE_TAG_ORDINALS                            = $6E64726F, // ordn
    DWRITE_FONT_FEATURE_TAG_PROPORTIONAL_ALTERNATE_WIDTH        = $746C6170, // palt
    DWRITE_FONT_FEATURE_TAG_PETITE_CAPITALS                     = $70616370, // pcap
    DWRITE_FONT_FEATURE_TAG_PROPORTIONAL_FIGURES                = $6D756E70, // pnum
    DWRITE_FONT_FEATURE_TAG_PROPORTIONAL_WIDTHS                 = $64697770, // pwid
    DWRITE_FONT_FEATURE_TAG_QUARTER_WIDTHS                      = $64697771, // qwid
    DWRITE_FONT_FEATURE_TAG_REQUIRED_LIGATURES                  = $67696C72, // rlig
    DWRITE_FONT_FEATURE_TAG_RUBY_NOTATION_FORMS                 = $79627572, // ruby
    DWRITE_FONT_FEATURE_TAG_STYLISTIC_ALTERNATES                = $746C6173, // salt
    DWRITE_FONT_FEATURE_TAG_SCIENTIFIC_INFERIORS                = $666E6973, // sinf
    DWRITE_FONT_FEATURE_TAG_SMALL_CAPITALS                      = $70636D73, // smcp
    DWRITE_FONT_FEATURE_TAG_SIMPLIFIED_FORMS                    = $6C706D73, // smpl
    DWRITE_FONT_FEATURE_TAG_STYLISTIC_SET_1                     = $31307373, // ss01
    DWRITE_FONT_FEATURE_TAG_STYLISTIC_SET_2                     = $32307373, // ss02
    DWRITE_FONT_FEATURE_TAG_STYLISTIC_SET_3                     = $33307373, // ss03
    DWRITE_FONT_FEATURE_TAG_STYLISTIC_SET_4                     = $34307373, // ss04
    DWRITE_FONT_FEATURE_TAG_STYLISTIC_SET_5                     = $35307373, // ss05
    DWRITE_FONT_FEATURE_TAG_STYLISTIC_SET_6                     = $36307373, // ss06
    DWRITE_FONT_FEATURE_TAG_STYLISTIC_SET_7                     = $37307373, // ss07
    DWRITE_FONT_FEATURE_TAG_STYLISTIC_SET_8                     = $38307373, // ss08
    DWRITE_FONT_FEATURE_TAG_STYLISTIC_SET_9                     = $39307373, // ss09
    DWRITE_FONT_FEATURE_TAG_STYLISTIC_SET_10                    = $30317373, // ss10
    DWRITE_FONT_FEATURE_TAG_STYLISTIC_SET_11                    = $31317373, // ss11
    DWRITE_FONT_FEATURE_TAG_STYLISTIC_SET_12                    = $32317373, // ss12
    DWRITE_FONT_FEATURE_TAG_STYLISTIC_SET_13                    = $33317373, // ss13
    DWRITE_FONT_FEATURE_TAG_STYLISTIC_SET_14                    = $34317373, // ss14
    DWRITE_FONT_FEATURE_TAG_STYLISTIC_SET_15                    = $35317373, // ss15
    DWRITE_FONT_FEATURE_TAG_STYLISTIC_SET_16                    = $36317373, // ss16
    DWRITE_FONT_FEATURE_TAG_STYLISTIC_SET_17                    = $37317373, // ss17
    DWRITE_FONT_FEATURE_TAG_STYLISTIC_SET_18                    = $38317373, // ss18
    DWRITE_FONT_FEATURE_TAG_STYLISTIC_SET_19                    = $39317373, // ss19
    DWRITE_FONT_FEATURE_TAG_STYLISTIC_SET_20                    = $30327373, // ss20
    DWRITE_FONT_FEATURE_TAG_SUBSCRIPT                           = $73627573, // subs
    DWRITE_FONT_FEATURE_TAG_SUPERSCRIPT                         = $73707573, // sups
    DWRITE_FONT_FEATURE_TAG_SWASH                               = $68737773, // swsh
    DWRITE_FONT_FEATURE_TAG_TITLING                             = $6C746974, // titl
    DWRITE_FONT_FEATURE_TAG_TRADITIONAL_NAME_FORMS              = $6D616E74, // tnam
    DWRITE_FONT_FEATURE_TAG_TABULAR_FIGURES                     = $6D756E74, // tnum
    DWRITE_FONT_FEATURE_TAG_TRADITIONAL_FORMS                   = $64617274, // trad
    DWRITE_FONT_FEATURE_TAG_THIRD_WIDTHS                        = $64697774, // twid
    DWRITE_FONT_FEATURE_TAG_UNICASE                             = $63696E75, // unic
    DWRITE_FONT_FEATURE_TAG_VERTICAL_WRITING                    = $74726576, // vert
    DWRITE_FONT_FEATURE_TAG_VERTICAL_ALTERNATES_AND_ROTATION    = $32747276, // vrt2
    DWRITE_FONT_FEATURE_TAG_SLASHED_ZERO                        = $6F72657A  // zero
  );

  DWRITE_SCRIPT_SHAPES = (
    /// <summary>
    /// No additional shaping requirement. Text is shaped with the writing system default behavior.
    /// </summary>
    DWRITE_SCRIPT_SHAPES_DEFAULT    = 0,

    /// <summary>
    /// Text should leave no visual on display i.e. control or format control characters.
    /// </summary>
    DWRITE_SCRIPT_SHAPES_NO_VISUAL  = 1
  );

  /// <summary>
  /// Condition at the edges of inline object or text used to determine
  /// line-breaking behavior.
  /// </summary>
  DWRITE_BREAK_CONDITION = (
    /// <summary>
    /// Whether a break is allowed is determined by the condition of the
    /// neighboring text span or inline object.
    /// </summary>
    DWRITE_BREAK_CONDITION_NEUTRAL,

    /// <summary>
    /// A break is allowed, unless overruled by the condition of the
    /// neighboring text span or inline object, either prohibited by a
    /// May Not or forced by a Must.
    /// </summary>
    DWRITE_BREAK_CONDITION_CAN_BREAK,

    /// <summary>
    /// There should be no break, unless overruled by a Must condition from
    /// the neighboring text span or inline object.
    /// </summary>
    DWRITE_BREAK_CONDITION_MAY_NOT_BREAK,

    /// <summary>
    /// The break must happen, regardless of the condition of the adjacent
    /// text span or inline object.
    /// </summary>
    DWRITE_BREAK_CONDITION_MUST_BREAK
  );

  /// <summary>
  /// How to apply number substitution on digits and related punctuation.
  /// </summary>
  DWRITE_NUMBER_SUBSTITUTION_METHOD = (
    /// <summary>
    /// Specifies that the substitution method should be determined based
    /// on LOCALE_IDIGITSUBSTITUTION value of the specified text culture.
    /// </summary>
    DWRITE_NUMBER_SUBSTITUTION_METHOD_FROM_CULTURE,

    /// <summary>
    /// If the culture is Arabic or Farsi, specifies that the number shape
    /// depend on the context. Either traditional or nominal number shape
    /// are used depending on the nearest preceding strong character or (if
    /// there is none) the reading direction of the paragraph.
    /// </summary>
    DWRITE_NUMBER_SUBSTITUTION_METHOD_CONTEXTUAL,

    /// <summary>
    /// Specifies that code points 0x30-0x39 are always rendered as nominal numeral
    /// shapes (ones of the European number), i.e., no substitution is performed.
    /// </summary>
    DWRITE_NUMBER_SUBSTITUTION_METHOD_NONE,

    /// <summary>
    /// Specifies that number are rendered using the national number shape
    /// as specified by the LOCALE_SNATIVEDIGITS value of the specified text culture.
    /// </summary>
    DWRITE_NUMBER_SUBSTITUTION_METHOD_NATIONAL,

    /// <summary>
    /// Specifies that number are rendered using the traditional shape
    /// for the specified culture. For most cultures, this is the same as
    /// NativeNational. However, NativeNational results in Latin number
    /// for some Arabic cultures, whereas this value results in Arabic
    /// number for all Arabic cultures.
    /// </summary>
    DWRITE_NUMBER_SUBSTITUTION_METHOD_TRADITIONAL
  );

  /// <summary>
  /// The DWRITE_TEXTURE_TYPE enumeration identifies a type of alpha texture. An alpha texture is a bitmap of alpha values, each
  /// representing the darkness (i.e., opacity) of a pixel or subpixel.
  /// </summary>
  DWRITE_TEXTURE_TYPE = (
    /// <summary>
    /// Specifies an alpha texture for aliased text rendering (i.e., bi-level, where each pixel is either fully opaque or fully transparent),
    /// with one byte per pixel.
    /// </summary>
    DWRITE_TEXTURE_ALIASED_1x1,

    /// <summary>
    /// Specifies an alpha texture for ClearType text rendering, with three bytes per pixel in the horizontal dimension and
    /// one byte per pixel in the vertical dimension.
    /// </summary>
    DWRITE_TEXTURE_CLEARTYPE_3x1
  );

  {$ENDREGION}

{$REGION 'd2d1effects.h enums'}

  /// <summary>
  /// Specifies how the Crop effect handles the crop rectangle falling on fractional
  /// pixel coordinates.
  /// </summary>
  D2D1_BORDER_MODE = (

    D2D1_BORDER_MODE_SOFT         = 0,
    D2D1_BORDER_MODE_HARD         = 1,
    D2D1_BORDER_MODE_FORCE_DWORD  = Integer($FFFFFFFF)
  );

  /// <summary>
  /// Specifies the color channel the Displacement map effect extracts the intensity
  /// from and uses it to spatially displace the image in the X or Y direction.
  /// </summary>
  D2D1_CHANNEL_SELECTOR = (
    D2D1_CHANNEL_SELECTOR_R           = 0,
    D2D1_CHANNEL_SELECTOR_G           = 1,
    D2D1_CHANNEL_SELECTOR_B           = 2,
    D2D1_CHANNEL_SELECTOR_A           = 3,
    D2D1_CHANNEL_SELECTOR_FORCE_DWORD = Integer($FFFFFFFF)
  );

  /// <summary>
  /// Speficies whether a flip and/or rotation operation should be performed by the
  /// Bitmap source effect
  /// </summary>
  D2D1_BITMAPSOURCE_ORIENTATION = (

    D2D1_BITMAPSOURCE_ORIENTATION_DEFAULT                             = 1,
    D2D1_BITMAPSOURCE_ORIENTATION_FLIP_HORIZONTAL                     = 2,
    D2D1_BITMAPSOURCE_ORIENTATION_ROTATE_CLOCKWISE180                 = 3,
    D2D1_BITMAPSOURCE_ORIENTATION_ROTATE_CLOCKWISE180_FLIP_HORIZONTAL = 4,
    D2D1_BITMAPSOURCE_ORIENTATION_ROTATE_CLOCKWISE270_FLIP_HORIZONTAL = 5,
    D2D1_BITMAPSOURCE_ORIENTATION_ROTATE_CLOCKWISE90                  = 6,
    D2D1_BITMAPSOURCE_ORIENTATION_ROTATE_CLOCKWISE90_FLIP_HORIZONTAL  = 7,
    D2D1_BITMAPSOURCE_ORIENTATION_ROTATE_CLOCKWISE270                 = 8,
    D2D1_BITMAPSOURCE_ORIENTATION_FORCE_DWORD                         = Integer($FFFFFFFF)
  );

  /// <summary>
  /// The enumeration of the Gaussian Blur effect's top level properties.
  /// Effect description: Applies a gaussian blur to a bitmap with the specified blur
  /// radius and angle.
  /// </summary>
  D2D1_GAUSSIANBLUR_PROP = (

    /// <summary>
    /// Property Name: "StandardDeviation"
    /// Property Type: FLOAT
    /// </summary>
    D2D1_GAUSSIANBLUR_PROP_STANDARD_DEVIATION = 0,

    /// <summary>
    /// Property Name: "Optimization"
    /// Property Type: D2D1_GAUSSIANBLUR_OPTIMIZATION
    /// </summary>
    D2D1_GAUSSIANBLUR_PROP_OPTIMIZATION       = 1,

    /// <summary>
    /// Property Name: "BorderMode"
    /// Property Type: D2D1_BORDER_MODE
    /// </summary>
    D2D1_GAUSSIANBLUR_PROP_BORDER_MODE        = 2,
    D2D1_GAUSSIANBLUR_PROP_FORCE_DWORD        = Integer($FFFFFFFF)
  );

  D2D1_GAUSSIANBLUR_OPTIMIZATION = (

    D2D1_GAUSSIANBLUR_OPTIMIZATION_SPEED = 0,
    D2D1_GAUSSIANBLUR_OPTIMIZATION_BALANCED = 1,
    D2D1_GAUSSIANBLUR_OPTIMIZATION_QUALITY = 2,
    D2D1_GAUSSIANBLUR_OPTIMIZATION_FORCE_DWORD = Integer($FFFFFFFF)
  );

  /// <summary>
  /// The enumeration of the Directional Blur effect's top level properties.
  /// Effect description: Applies a directional blur to a bitmap with the specified
  /// blur radius and angle.
  /// </summary>
  D2D1_DIRECTIONALBLUR_PROP = (

    /// <summary>
    /// Property Name: "StandardDeviation"
    /// Property Type: FLOAT
    /// </summary>
    D2D1_DIRECTIONALBLUR_PROP_STANDARD_DEVIATION  = 0,

    /// <summary>
    /// Property Name: "Angle"
    /// Property Type: FLOAT
    /// </summary>
    D2D1_DIRECTIONALBLUR_PROP_ANGLE               = 1,

    /// <summary>
    /// Property Name: "Optimization"
    /// Property Type: D2D1_DIRECTIONALBLUR_OPTIMIZATION
    /// </summary>
    D2D1_DIRECTIONALBLUR_PROP_OPTIMIZATION        = 2,

    /// <summary>
    /// Property Name: "BorderMode"
    /// Property Type: D2D1_BORDER_MODE
    /// </summary>
    D2D1_DIRECTIONALBLUR_PROP_BORDER_MODE         = 3,
    D2D1_DIRECTIONALBLUR_PROP_FORCE_DWORD         = Integer($FFFFFFFF)
  );

  D2D1_DIRECTIONALBLUR_OPTIMIZATION = (
    D2D1_DIRECTIONALBLUR_OPTIMIZATION_SPEED       = 0,
    D2D1_DIRECTIONALBLUR_OPTIMIZATION_BALANCED    = 1,
    D2D1_DIRECTIONALBLUR_OPTIMIZATION_QUALITY     = 2,
    D2D1_DIRECTIONALBLUR_OPTIMIZATION_FORCE_DWORD = Integer($FFFFFFFF)
  );

  /// <summary>
  /// The enumeration of the Shadow effect's top level properties.
  /// Effect description: Applies a shadow to a bitmap based on its alpha channel.
  /// </summary>
  D2D1_SHADOW_PROP = (

    /// <summary>
    /// Property Name: "BlurStandardDeviation"
    /// Property Type: FLOAT
    /// </summary>
    D2D1_SHADOW_PROP_BLUR_STANDARD_DEVIATION  = 0,

    /// <summary>
    /// Property Name: "Color"
    /// Property Type: D2D1_VECTOR_4F
    /// </summary>
    D2D1_SHADOW_PROP_COLOR                    = 1,

    /// <summary>
    /// Property Name: "Optimization"
    /// Property Type: D2D1_SHADOW_OPTIMIZATION
    /// </summary>
    D2D1_SHADOW_PROP_OPTIMIZATION             = 2,
    D2D1_SHADOW_PROP_FORCE_DWORD              = Integer($FFFFFFFF)
  );

  D2D1_SHADOW_OPTIMIZATION = (
    D2D1_SHADOW_OPTIMIZATION_SPEED        = 0,
    D2D1_SHADOW_OPTIMIZATION_BALANCED     = 1,
    D2D1_SHADOW_OPTIMIZATION_QUALITY      = 2,
    D2D1_SHADOW_OPTIMIZATION_FORCE_DWORD  = Integer($FFFFFFFF)
  );

  /// <summary>
  /// The enumeration of the Blend effect's top level properties.
  /// Effect description: Blends a foreground and background using a pre-defined blend
  /// mode.
  /// </summary>
  D2D1_BLEND_PROP = (

    /// <summary>
    /// Property Name: "Mode"
    /// Property Type: D2D1_BLEND_MODE
    /// </summary>
    D2D1_BLEND_PROP_MODE        = 0,
    D2D1_BLEND_PROP_FORCE_DWORD = Integer($FFFFFFFF)
  );

  D2D1_BLEND_MODE = (

    D2D1_BLEND_MODE_MULTIPLY      = 0,
    D2D1_BLEND_MODE_SCREEN        = 1,
    D2D1_BLEND_MODE_DARKEN        = 2,
    D2D1_BLEND_MODE_LIGHTEN       = 3,
    D2D1_BLEND_MODE_DISSOLVE      = 4,
    D2D1_BLEND_MODE_COLOR_BURN    = 5,
    D2D1_BLEND_MODE_LINEAR_BURN   = 6,
    D2D1_BLEND_MODE_DARKER_COLOR  = 7,
    D2D1_BLEND_MODE_LIGHTER_COLOR = 8,
    D2D1_BLEND_MODE_COLOR_DODGE   = 9,
    D2D1_BLEND_MODE_LINEAR_DODGE  = 10,
    D2D1_BLEND_MODE_OVERLAY       = 11,
    D2D1_BLEND_MODE_SOFT_LIGHT    = 12,
    D2D1_BLEND_MODE_HARD_LIGHT    = 13,
    D2D1_BLEND_MODE_VIVID_LIGHT   = 14,
    D2D1_BLEND_MODE_LINEAR_LIGHT  = 15,
    D2D1_BLEND_MODE_PIN_LIGHT     = 16,
    D2D1_BLEND_MODE_HARD_MIX      = 17,
    D2D1_BLEND_MODE_DIFFERENCE    = 18,
    D2D1_BLEND_MODE_EXCLUSION     = 19,
    D2D1_BLEND_MODE_HUE           = 20,
    D2D1_BLEND_MODE_SATURATION    = 21,
    D2D1_BLEND_MODE_COLOR         = 22,
    D2D1_BLEND_MODE_LUMINOSITY    = 23,
    D2D1_BLEND_MODE_SUBTRACT      = 24,
    D2D1_BLEND_MODE_DIVISION      = 25,
    D2D1_BLEND_MODE_FORCE_DWORD   = Integer($FFFFFFFF)
  );

  /// <summary>
  /// The enumeration of the Saturation effect's top level properties.
  /// Effect description: Alters the saturation of the bitmap based on the user
  /// specified saturation value.
  /// </summary>
  D2D1_SATURATION_PROP = (

    /// <summary>
    /// Property Name: "Saturation"
    /// Property Type: FLOAT
    /// </summary>
    D2D1_SATURATION_PROP_SATURATION   = 0,
    D2D1_SATURATION_PROP_FORCE_DWORD  = Integer($FFFFFFFF)
  );

/// <summary>
  /// The enumeration of the Hue Rotation effect's top level properties.
  /// Effect description: Changes the Hue of a bitmap based on a user specified Hue
  /// Rotation angle.
  /// </summary>
  D2D1_HUEROTATION_PROP = (

    /// <summary>
    /// Property Name: "Angle"
    /// Property Type: FLOAT
    /// </summary>
    D2D1_HUEROTATION_PROP_ANGLE       = 0,
    D2D1_HUEROTATION_PROP_FORCE_DWORD = Integer($FFFFFFFF)
  );

  /// <summary>
  /// The enumeration of the Color Matrix effect's top level properties.
  /// Effect description: Applies a user specified color matrix to each channel of the
  /// input bitmap.
  /// </summary>
  D2D1_COLORMATRIX_PROP = (

    /// <summary>
    /// Property Name: "ColorMatrix"
    /// Property Type: D2D1_MATRIX_5X4_F
    /// </summary>
    D2D1_COLORMATRIX_PROP_COLOR_MATRIX  = 0,

    /// <summary>
    /// Property Name: "AlphaMode"
    /// Property Type: D2D1_COLORMATRIX_ALPHA_MODE
    /// </summary>
    D2D1_COLORMATRIX_PROP_ALPHA_MODE    = 1,

    /// <summary>
    /// Property Name: "ClampOutput"
    /// Property Type: BOOL
    /// </summary>
    D2D1_COLORMATRIX_PROP_CLAMP_OUTPUT  = 2,
    D2D1_COLORMATRIX_PROP_FORCE_DWORD   = Integer($FFFFFFFF)
  );

  D2D1_COLORMATRIX_ALPHA_MODE = (

    D2D1_COLORMATRIX_ALPHA_MODE_PREMULTIPLIED = 1,
    D2D1_COLORMATRIX_ALPHA_MODE_STRAIGHT = 2,
    D2D1_COLORMATRIX_ALPHA_MODE_FORCE_DWORD = Integer($FFFFFFFF)
  );

  /// <summary>
  /// The enumeration of the Bitmap Source effect's top level properties.
  /// Effect description: Provides an image source.
  /// </summary>
  D2D1_BITMAPSOURCE_PROP = (

    /// <summary>
    /// Property Name: "WicBitmapSource"
    /// Property Type: IUnknown *
    /// </summary>
    D2D1_BITMAPSOURCE_PROP_WIC_BITMAP_SOURCE      = 0,

    /// <summary>
    /// Property Name: "Scale"
    /// Property Type: D2D1_VECTOR_2F
    /// </summary>
    D2D1_BITMAPSOURCE_PROP_SCALE                  = 1,

    /// <summary>
    /// Property Name: "InterpolationMode"
    /// Property Type: D2D1_BITMAPSOURCE_INTERPOLATION_MODE
    /// </summary>
    D2D1_BITMAPSOURCE_PROP_INTERPOLATION_MODE     = 2,

    /// <summary>
    /// Property Name: "EnableDPICorrection"
    /// Property Type: BOOL
    /// </summary>
    D2D1_BITMAPSOURCE_PROP_ENABLE_DPI_CORRECTION  = 3,

    /// <summary>
    /// Property Name: "AlphaMode"
    /// Property Type: D2D1_BITMAPSOURCE_ALPHA_MODE
    /// </summary>
    D2D1_BITMAPSOURCE_PROP_ALPHA_MODE             = 4,

    /// <summary>
    /// Property Name: "Orientation"
    /// Property Type: D2D1_BITMAPSOURCE_ORIENTATION
    /// </summary>
    D2D1_BITMAPSOURCE_PROP_ORIENTATION            = 5,
    D2D1_BITMAPSOURCE_PROP_FORCE_DWORD            = Integer($FFFFFFFF)
  );

  D2D1_BITMAPSOURCE_INTERPOLATION_MODE = (

    D2D1_BITMAPSOURCE_INTERPOLATION_MODE_NEAREST_NEIGHBOR = 0,
    D2D1_BITMAPSOURCE_INTERPOLATION_MODE_LINEAR           = 1,
    D2D1_BITMAPSOURCE_INTERPOLATION_MODE_CUBIC            = 2,
    D2D1_BITMAPSOURCE_INTERPOLATION_MODE_FANT             = 6,
    D2D1_BITMAPSOURCE_INTERPOLATION_MODE_MIPMAP_LINEAR    = 7,
    D2D1_BITMAPSOURCE_INTERPOLATION_MODE_FORCE_DWORD      = Integer($FFFFFFFF)
  );

  D2D1_BITMAPSOURCE_ALPHA_MODE = (
    D2D1_BITMAPSOURCE_ALPHA_MODE_PREMULTIPLIED  = 1,
    D2D1_BITMAPSOURCE_ALPHA_MODE_STRAIGHT       = 2,
    D2D1_BITMAPSOURCE_ALPHA_MODE_FORCE_DWORD    = Integer($FFFFFFFF)
  );

  /// <summary>
  /// The enumeration of the Composite effect's top level properties.
  /// Effect description: Composites foreground and background images using the
  /// selected composition mode.
  /// </summary>
  D2D1_COMPOSITE_PROP = (

    /// <summary>
    /// Property Name: "Mode"
    /// Property Type: D2D1_COMPOSITE_MODE
    /// </summary>
    D2D1_COMPOSITE_PROP_MODE        = 0,
    D2D1_COMPOSITE_PROP_FORCE_DWORD = Integer($FFFFFFFF)
  );

  /// <summary>
  /// The enumeration of the 3D Transform effect's top level properties.
  /// Effect description: Applies a 3D transform to a bitmap.
  /// </summary>
  D2D1_3DTRANSFORM_PROP = (

    /// <summary>
    /// Property Name: "InterpolationMode"
    /// Property Type: D2D1_3DTRANSFORM_INTERPOLATION_MODE
    /// </summary>
    D2D1_3DTRANSFORM_PROP_INTERPOLATION_MODE  = 0,

    /// <summary>
    /// Property Name: "BorderMode"
    /// Property Type: D2D1_BORDER_MODE
    /// </summary>
    D2D1_3DTRANSFORM_PROP_BORDER_MODE         = 1,

    /// <summary>
    /// Property Name: "TransformMatrix"
    /// Property Type: D2D1_MATRIX_4X4_F
    /// </summary>
    D2D1_3DTRANSFORM_PROP_TRANSFORM_MATRIX    = 2,
    D2D1_3DTRANSFORM_PROP_FORCE_DWORD         = Integer($FFFFFFFF)
  );

  D2D1_3DTRANSFORM_INTERPOLATION_MODE = (

    D2D1_3DTRANSFORM_INTERPOLATION_MODE_NEAREST_NEIGHBOR    = 0,
    D2D1_3DTRANSFORM_INTERPOLATION_MODE_LINEAR              = 1,
    D2D1_3DTRANSFORM_INTERPOLATION_MODE_CUBIC               = 2,
    D2D1_3DTRANSFORM_INTERPOLATION_MODE_MULTI_SAMPLE_LINEAR = 3,
    D2D1_3DTRANSFORM_INTERPOLATION_MODE_ANISOTROPIC         = 4,
    D2D1_3DTRANSFORM_INTERPOLATION_MODE_FORCE_DWORD         = Integer($FFFFFFFF)
  );

  /// <summary>
  /// The enumeration of the 3D Perspective Transform effect's top level properties.
  /// Effect description: Applies a 3D perspective transform to a bitmap.
  /// </summary>
  D2D1_3DPERSPECTIVETRANSFORM_PROP = (

    /// <summary>
    /// Property Name: "InterpolationMode"
    /// Property Type: D2D1_3DPERSPECTIVETRANSFORM_INTERPOLATION_MODE
    /// </summary>
    D2D1_3DPERSPECTIVETRANSFORM_PROP_INTERPOLATION_MODE = 0,

    /// <summary>
    /// Property Name: "BorderMode"
    /// Property Type: D2D1_BORDER_MODE
    /// </summary>
    D2D1_3DPERSPECTIVETRANSFORM_PROP_BORDER_MODE        = 1,

    /// <summary>
    /// Property Name: "Depth"
    /// Property Type: FLOAT
    /// </summary>
    D2D1_3DPERSPECTIVETRANSFORM_PROP_DEPTH              = 2,

    /// <summary>
    /// Property Name: "PerspectiveOrigin"
    /// Property Type: D2D1_VECTOR_2F
    /// </summary>
    D2D1_3DPERSPECTIVETRANSFORM_PROP_PERSPECTIVE_ORIGIN = 3,

    /// <summary>
    /// Property Name: "LocalOffset"
    /// Property Type: D2D1_VECTOR_3F
    /// </summary>
    D2D1_3DPERSPECTIVETRANSFORM_PROP_LOCAL_OFFSET       = 4,

    /// <summary>
    /// Property Name: "GlobalOffset"
    /// Property Type: D2D1_VECTOR_3F
    /// </summary>
    D2D1_3DPERSPECTIVETRANSFORM_PROP_GLOBAL_OFFSET      = 5,

    /// <summary>
    /// Property Name: "RotationOrigin"
    /// Property Type: D2D1_VECTOR_3F
    /// </summary>
    D2D1_3DPERSPECTIVETRANSFORM_PROP_ROTATION_ORIGIN    = 6,

    /// <summary>
    /// Property Name: "Rotation"
    /// Property Type: D2D1_VECTOR_3F
    /// </summary>
    D2D1_3DPERSPECTIVETRANSFORM_PROP_ROTATION           = 7,
    D2D1_3DPERSPECTIVETRANSFORM_PROP_FORCE_DWORD        = Integer($FFFFFFFF)
  );

  D2D1_3DPERSPECTIVETRANSFORM_INTERPOLATION_MODE = (

    D2D1_3DPERSPECTIVETRANSFORM_INTERPOLATION_MODE_NEAREST_NEIGHBOR     = 0,
    D2D1_3DPERSPECTIVETRANSFORM_INTERPOLATION_MODE_LINEAR               = 1,
    D2D1_3DPERSPECTIVETRANSFORM_INTERPOLATION_MODE_CUBIC                = 2,
    D2D1_3DPERSPECTIVETRANSFORM_INTERPOLATION_MODE_MULTI_SAMPLE_LINEAR  = 3,
    D2D1_3DPERSPECTIVETRANSFORM_INTERPOLATION_MODE_ANISOTROPIC          = 4,
    D2D1_3DPERSPECTIVETRANSFORM_INTERPOLATION_MODE_FORCE_DWORD          = Integer($FFFFFFFF)
  );

  /// <summary>
  /// The enumeration of the 2D Affine Transform effect's top level properties.
  /// Effect description: Applies a 2D affine transform to a bitmap.
  /// </summary>
  D2D1_2DAFFINETRANSFORM_PROP = (

    /// <summary>
    /// Property Name: "InterpolationMode"
    /// Property Type: D2D1_2DAFFINETRANSFORM_INTERPOLATION_MODE
    /// </summary>
    D2D1_2DAFFINETRANSFORM_PROP_INTERPOLATION_MODE  = 0,

    /// <summary>
    /// Property Name: "BorderMode"
    /// Property Type: D2D1_BORDER_MODE
    /// </summary>
    D2D1_2DAFFINETRANSFORM_PROP_BORDER_MODE         = 1,

    /// <summary>
    /// Property Name: "TransformMatrix"
    /// Property Type: D2D1_MATRIX_3X2_F
    /// </summary>
    D2D1_2DAFFINETRANSFORM_PROP_TRANSFORM_MATRIX    = 2,

    /// <summary>
    /// Property Name: "Sharpness"
    /// Property Type: FLOAT
    /// </summary>
    D2D1_2DAFFINETRANSFORM_PROP_SHARPNESS           = 3,
    D2D1_2DAFFINETRANSFORM_PROP_FORCE_DWORD         = Integer($FFFFFFFF)
  );

  D2D1_2DAFFINETRANSFORM_INTERPOLATION_MODE = (

    D2D1_2DAFFINETRANSFORM_INTERPOLATION_MODE_NEAREST_NEIGHBOR    = 0,
    D2D1_2DAFFINETRANSFORM_INTERPOLATION_MODE_LINEAR              = 1,
    D2D1_2DAFFINETRANSFORM_INTERPOLATION_MODE_CUBIC               = 2,
    D2D1_2DAFFINETRANSFORM_INTERPOLATION_MODE_MULTI_SAMPLE_LINEAR = 3,
    D2D1_2DAFFINETRANSFORM_INTERPOLATION_MODE_ANISOTROPIC         = 4,
    D2D1_2DAFFINETRANSFORM_INTERPOLATION_MODE_HIGH_QUALITY_CUBIC  = 5,
    D2D1_2DAFFINETRANSFORM_INTERPOLATION_MODE_FORCE_DWORD         = Integer($FFFFFFFF)
  );

  /// <summary>
  /// The enumeration of the DPI Compensation effect's top level properties.
  /// Effect description: Scales according to the input DPI and the current context
  /// DPI
  /// </summary>
  D2D1_DPICOMPENSATION_PROP = (

    /// <summary>
    /// Property Name: "InterpolationMode"
    /// Property Type: D2D1_DPICOMPENSATION_INTERPOLATION_MODE
    /// </summary>
    D2D1_DPICOMPENSATION_PROP_INTERPOLATION_MODE  = 0,

    /// <summary>
    /// Property Name: "BorderMode"
    /// Property Type: D2D1_BORDER_MODE
    /// </summary>
    D2D1_DPICOMPENSATION_PROP_BORDER_MODE         = 1,

    /// <summary>
    /// Property Name: "InputDpi"
    /// Property Type: D2D1_VECTOR_2F
    /// </summary>
    D2D1_DPICOMPENSATION_PROP_INPUT_DPI           = 2,
    D2D1_DPICOMPENSATION_PROP_FORCE_DWORD         = Integer($FFFFFFFF)
  );

  D2D1_DPICOMPENSATION_INTERPOLATION_MODE = (

    D2D1_DPICOMPENSATION_INTERPOLATION_MODE_NEAREST_NEIGHBOR    = 0,
    D2D1_DPICOMPENSATION_INTERPOLATION_MODE_LINEAR              = 1,
    D2D1_DPICOMPENSATION_INTERPOLATION_MODE_CUBIC               = 2,
    D2D1_DPICOMPENSATION_INTERPOLATION_MODE_MULTI_SAMPLE_LINEAR = 3,
    D2D1_DPICOMPENSATION_INTERPOLATION_MODE_ANISOTROPIC         = 4,
    D2D1_DPICOMPENSATION_INTERPOLATION_MODE_HIGH_QUALITY_CUBIC  = 5,
    D2D1_DPICOMPENSATION_INTERPOLATION_MODE_FORCE_DWORD         = Integer($FFFFFFFF)
  );

  /// <summary>
  /// The enumeration of the Scale effect's top level properties.
  /// Effect description: Applies scaling operation to the bitmap.
  /// </summary>
  D2D1_SCALE_PROP = (

    /// <summary>
    /// Property Name: "Scale"
    /// Property Type: D2D1_VECTOR_2F
    /// </summary>
    D2D1_SCALE_PROP_SCALE               = 0,

    /// <summary>
    /// Property Name: "CenterPoint"
    /// Property Type: D2D1_VECTOR_2F
    /// </summary>
    D2D1_SCALE_PROP_CENTER_POINT        = 1,

    /// <summary>
    /// Property Name: "InterpolationMode"
    /// Property Type: D2D1_SCALE_INTERPOLATION_MODE
    /// </summary>
    D2D1_SCALE_PROP_INTERPOLATION_MODE  = 2,

    /// <summary>
    /// Property Name: "BorderMode"
    /// Property Type: D2D1_BORDER_MODE
    /// </summary>
    D2D1_SCALE_PROP_BORDER_MODE         = 3,

    /// <summary>
    /// Property Name: "Sharpness"
    /// Property Type: FLOAT
    /// </summary>
    D2D1_SCALE_PROP_SHARPNESS           = 4,
    D2D1_SCALE_PROP_FORCE_DWORD         = Integer($FFFFFFFF)
  );

  D2D1_SCALE_INTERPOLATION_MODE = (

    D2D1_SCALE_INTERPOLATION_MODE_NEAREST_NEIGHBOR = 0,
    D2D1_SCALE_INTERPOLATION_MODE_LINEAR = 1,
    D2D1_SCALE_INTERPOLATION_MODE_CUBIC = 2,
    D2D1_SCALE_INTERPOLATION_MODE_MULTI_SAMPLE_LINEAR = 3,
    D2D1_SCALE_INTERPOLATION_MODE_ANISOTROPIC = 4,
    D2D1_SCALE_INTERPOLATION_MODE_HIGH_QUALITY_CUBIC = 5,
    D2D1_SCALE_INTERPOLATION_MODE_FORCE_DWORD = Integer($FFFFFFFF)
  );

  /// <summary>
  /// The enumeration of the Turbulence effect's top level properties.
  /// Effect description: Generates a bitmap based on the Perlin noise turbulence
  /// function.
  /// </summary>
  D2D1_TURBULENCE_PROP = (

    /// <summary>
    /// Property Name: "Offset"
    /// Property Type: D2D1_VECTOR_2F
    /// </summary>
    D2D1_TURBULENCE_PROP_OFFSET         = 0,

    /// <summary>
    /// Property Name: "Size"
    /// Property Type: D2D1_VECTOR_2F
    /// </summary>
    D2D1_TURBULENCE_PROP_SIZE           = 1,

    /// <summary>
    /// Property Name: "BaseFrequency"
    /// Property Type: D2D1_VECTOR_2F
    /// </summary>
    D2D1_TURBULENCE_PROP_BASE_FREQUENCY = 2,

    /// <summary>
    /// Property Name: "NumOctaves"
    /// Property Type: UINT32
    /// </summary>
    D2D1_TURBULENCE_PROP_NUM_OCTAVES    = 3,

    /// <summary>
    /// Property Name: "Seed"
    /// Property Type: INT32
    /// </summary>
    D2D1_TURBULENCE_PROP_SEED           = 4,

    /// <summary>
    /// Property Name: "Noise"
    /// Property Type: D2D1_TURBULENCE_NOISE
    /// </summary>
    D2D1_TURBULENCE_PROP_NOISE        = 5,

    /// <summary>
    /// Property Name: "Stitchable"
    /// Property Type: BOOL
    /// </summary>
    D2D1_TURBULENCE_PROP_STITCHABLE   = 6,
    D2D1_TURBULENCE_PROP_FORCE_DWORD  = Integer($FFFFFFFF)
  );

  D2D1_TURBULENCE_NOISE = (

    D2D1_TURBULENCE_NOISE_FRACTAL_SUM = 0,
    D2D1_TURBULENCE_NOISE_TURBULENCE  = 1,
    D2D1_TURBULENCE_NOISE_FORCE_DWORD = Integer($FFFFFFFF)
  );

  /// <summary>
  /// The enumeration of the Displacement Map effect's top level properties.
  /// Effect description: Displaces a bitmap based on user specified setting and
  /// another bitmap.
  /// </summary>
  D2D1_DISPLACEMENTMAP_PROP = (

    /// <summary>
    /// Property Name: "Scale"
    /// Property Type: FLOAT
    /// </summary>
    D2D1_DISPLACEMENTMAP_PROP_SCALE             = 0,

    /// <summary>
    /// Property Name: "XChannelSelect"
    /// Property Type: D2D1_CHANNEL_SELECTOR
    /// </summary>
    D2D1_DISPLACEMENTMAP_PROP_X_CHANNEL_SELECT  = 1,

    /// <summary>
    /// Property Name: "YChannelSelect"
    /// Property Type: D2D1_CHANNEL_SELECTOR
    /// </summary>
    D2D1_DISPLACEMENTMAP_PROP_Y_CHANNEL_SELECT  = 2,
    D2D1_DISPLACEMENTMAP_PROP_FORCE_DWORD       = Integer($FFFFFFFF)
  );

  /// <summary>
  /// The enumeration of the Color Management effect's top level properties.
  /// Effect description: Changes colors based on user provided color contexts.
  /// </summary>
  D2D1_COLORMANAGEMENT_PROP = (

    /// <summary>
    /// Property Name: "SourceColorContext"
    /// Property Type: ID2D1ColorContext *
    /// </summary>
    D2D1_COLORMANAGEMENT_PROP_SOURCE_COLOR_CONTEXT          = 0,

    /// <summary>
    /// Property Name: "SourceRenderingIntent"
    /// Property Type: D2D1_RENDERING_INTENT
    /// </summary>
    D2D1_COLORMANAGEMENT_PROP_SOURCE_RENDERING_INTENT       = 1,

    /// <summary>
    /// Property Name: "DestinationColorContext"
    /// Property Type: ID2D1ColorContext *
    /// </summary>
    D2D1_COLORMANAGEMENT_PROP_DESTINATION_COLOR_CONTEXT     = 2,

    /// <summary>
    /// Property Name: "DestinationRenderingIntent"
    /// Property Type: D2D1_RENDERING_INTENT
    /// </summary>
    D2D1_COLORMANAGEMENT_PROP_DESTINATION_RENDERING_INTENT  = 3,

    /// <summary>
    /// Property Name: "AlphaMode"
    /// Property Type: D2D1_COLORMANAGEMENT_ALPHA_MODE
    /// </summary>
    D2D1_COLORMANAGEMENT_PROP_ALPHA_MODE                    = 4,

    /// <summary>
    /// Property Name: "Quality"
    /// Property Type: D2D1_COLORMANAGEMENT_QUALITY
    /// </summary>
    D2D1_COLORMANAGEMENT_PROP_QUALITY                       = 5,
    D2D1_COLORMANAGEMENT_PROP_FORCE_DWORD                   = Integer($FFFFFFFF)
  );

  D2D1_COLORMANAGEMENT_ALPHA_MODE = (

    D2D1_COLORMANAGEMENT_ALPHA_MODE_PREMULTIPLIED = 1,
    D2D1_COLORMANAGEMENT_ALPHA_MODE_STRAIGHT      = 2,
    D2D1_COLORMANAGEMENT_ALPHA_MODE_FORCE_DWORD   = Integer($FFFFFFFF)
  );

  D2D1_COLORMANAGEMENT_QUALITY = (

    D2D1_COLORMANAGEMENT_QUALITY_PROOF = 0,
    D2D1_COLORMANAGEMENT_QUALITY_NORMAL = 1,
    D2D1_COLORMANAGEMENT_QUALITY_BEST = 2,
    D2D1_COLORMANAGEMENT_QUALITY_FORCE_DWORD = Integer($FFFFFFFF)
  );

  /// <summary>
  /// Specifies which ICC rendering intent the Color management effect should use.
  /// </summary>
  D2D1_COLORMANAGEMENT_RENDERING_INTENT = (

    D2D1_COLORMANAGEMENT_RENDERING_INTENT_PERCEPTUAL            = 0,
    D2D1_COLORMANAGEMENT_RENDERING_INTENT_RELATIVE_COLORIMETRIC = 1,
    D2D1_COLORMANAGEMENT_RENDERING_INTENT_SATURATION            = 2,
    D2D1_COLORMANAGEMENT_RENDERING_INTENT_ABSOLUTE_COLORIMETRIC = 3,
    D2D1_COLORMANAGEMENT_RENDERING_INTENT_FORCE_DWORD           = Integer($FFFFFFFF)
  );

  /// <summary>
  /// The enumeration of the Histogram effect's top level properties.
  /// Effect description: Computes the histogram of an image.
  /// </summary>
  D2D1_HISTOGRAM_PROP = (

    /// <summary>
    /// Property Name: "NumBins"
    /// Property Type: UINT32
    /// </summary>
    D2D1_HISTOGRAM_PROP_NUM_BINS          = 0,

    /// <summary>
    /// Property Name: "ChannelSelect"
    /// Property Type: D2D1_CHANNEL_SELECTOR
    /// </summary>
    D2D1_HISTOGRAM_PROP_CHANNEL_SELECT    = 1,

    /// <summary>
    /// Property Name: "HistogramOutput"
    /// Property Type: (blob)
    /// </summary>
    D2D1_HISTOGRAM_PROP_HISTOGRAM_OUTPUT  = 2,
    D2D1_HISTOGRAM_PROP_FORCE_DWORD       = Integer($FFFFFFFF)
  );

  /// <summary>
  /// The enumeration of the Point-Specular effect's top level properties.
  /// Effect description: Creates a specular lighting effect with a point light
  /// source.
  /// </summary>
  D2D1_POINTSPECULAR_PROP = (

    /// <summary>
    /// Property Name: "LightPosition"
    /// Property Type: D2D1_VECTOR_3F
    /// </summary>
    D2D1_POINTSPECULAR_PROP_LIGHT_POSITION      = 0,

    /// <summary>
    /// Property Name: "SpecularExponent"
    /// Property Type: FLOAT
    /// </summary>
    D2D1_POINTSPECULAR_PROP_SPECULAR_EXPONENT   = 1,

    /// <summary>
    /// Property Name: "SpecularConstant"
    /// Property Type: FLOAT
    /// </summary>
    D2D1_POINTSPECULAR_PROP_SPECULAR_CONSTANT   = 2,

    /// <summary>
    /// Property Name: "SurfaceScale"
    /// Property Type: FLOAT
    /// </summary>
    D2D1_POINTSPECULAR_PROP_SURFACE_SCALE       = 3,

    /// <summary>
    /// Property Name: "Color"
    /// Property Type: D2D1_VECTOR_3F
    /// </summary>
    D2D1_POINTSPECULAR_PROP_COLOR               = 4,

    /// <summary>
    /// Property Name: "KernelUnitLength"
    /// Property Type: D2D1_VECTOR_2F
    /// </summary>
    D2D1_POINTSPECULAR_PROP_KERNEL_UNIT_LENGTH  = 5,

    /// <summary>
    /// Property Name: "ScaleMode"
    /// Property Type: D2D1_POINTSPECULAR_SCALE_MODE
    /// </summary>
    D2D1_POINTSPECULAR_PROP_SCALE_MODE          = 6,
    D2D1_POINTSPECULAR_PROP_FORCE_DWORD         = Integer($FFFFFFFF)
  );

  D2D1_POINTSPECULAR_SCALE_MODE = (

    D2D1_POINTSPECULAR_SCALE_MODE_NEAREST_NEIGHBOR    = 0,
    D2D1_POINTSPECULAR_SCALE_MODE_LINEAR              = 1,
    D2D1_POINTSPECULAR_SCALE_MODE_CUBIC               = 2,
    D2D1_POINTSPECULAR_SCALE_MODE_MULTI_SAMPLE_LINEAR = 3,
    D2D1_POINTSPECULAR_SCALE_MODE_ANISOTROPIC         = 4,
    D2D1_POINTSPECULAR_SCALE_MODE_HIGH_QUALITY_CUBIC  = 5,
    D2D1_POINTSPECULAR_SCALE_MODE_FORCE_DWORD         = Integer($FFFFFFFF)
  );

  /// <summary>
  /// The enumeration of the Spot-Specular effect's top level properties.
  /// Effect description: Creates a specular lighting effect with a spot light source.
  /// </summary>
  D2D1_SPOTSPECULAR_PROP = (

    /// <summary>
    /// Property Name: "LightPosition"
    /// Property Type: D2D1_VECTOR_3F
    /// </summary>
    D2D1_SPOTSPECULAR_PROP_LIGHT_POSITION       = 0,

    /// <summary>
    /// Property Name: "PointsAt"
    /// Property Type: D2D1_VECTOR_3F
    /// </summary>
    D2D1_SPOTSPECULAR_PROP_POINTS_AT            = 1,

    /// <summary>
    /// Property Name: "Focus"
    /// Property Type: FLOAT
    /// </summary>
    D2D1_SPOTSPECULAR_PROP_FOCUS                = 2,

    /// <summary>
    /// Property Name: "LimitingConeAngle"
    /// Property Type: FLOAT
    /// </summary>
    D2D1_SPOTSPECULAR_PROP_LIMITING_CONE_ANGLE  = 3,

    /// <summary>
    /// Property Name: "SpecularExponent"
    /// Property Type: FLOAT
    /// </summary>
    D2D1_SPOTSPECULAR_PROP_SPECULAR_EXPONENT    = 4,

    /// <summary>
    /// Property Name: "SpecularConstant"
    /// Property Type: FLOAT
    /// </summary>
    D2D1_SPOTSPECULAR_PROP_SPECULAR_CONSTANT    = 5,

    /// <summary>
    /// Property Name: "SurfaceScale"
    /// Property Type: FLOAT
    /// </summary>
    D2D1_SPOTSPECULAR_PROP_SURFACE_SCALE        = 6,

    /// <summary>
    /// Property Name: "Color"
    /// Property Type: D2D1_VECTOR_3F
    /// </summary>
    D2D1_SPOTSPECULAR_PROP_COLOR                = 7,

    /// <summary>
    /// Property Name: "KernelUnitLength"
    /// Property Type: D2D1_VECTOR_2F
    /// </summary>
    D2D1_SPOTSPECULAR_PROP_KERNEL_UNIT_LENGTH   = 8,

    /// <summary>
    /// Property Name: "ScaleMode"
    /// Property Type: D2D1_SPOTSPECULAR_SCALE_MODE
    /// </summary>
    D2D1_SPOTSPECULAR_PROP_SCALE_MODE           = 9,
    D2D1_SPOTSPECULAR_PROP_FORCE_DWORD          = Integer($FFFFFFFF)
  );

  D2D1_SPOTSPECULAR_SCALE_MODE = (

    D2D1_SPOTSPECULAR_SCALE_MODE_NEAREST_NEIGHBOR = 0,
    D2D1_SPOTSPECULAR_SCALE_MODE_LINEAR = 1,
    D2D1_SPOTSPECULAR_SCALE_MODE_CUBIC = 2,
    D2D1_SPOTSPECULAR_SCALE_MODE_MULTI_SAMPLE_LINEAR = 3,
    D2D1_SPOTSPECULAR_SCALE_MODE_ANISOTROPIC = 4,
    D2D1_SPOTSPECULAR_SCALE_MODE_HIGH_QUALITY_CUBIC = 5,
    D2D1_SPOTSPECULAR_SCALE_MODE_FORCE_DWORD = Integer($FFFFFFFF)
  );

  /// <summary>
  /// The enumeration of the Distant-Specular effect's top level properties.
  /// Effect description: Creates a specular lighting effect with a distant light
  /// source.
  /// </summary>
  D2D1_DISTANTSPECULAR_PROP = (

    /// <summary>
    /// Property Name: "Azimuth"
    /// Property Type: FLOAT
    /// </summary>
    D2D1_DISTANTSPECULAR_PROP_AZIMUTH             = 0,

    /// <summary>
    /// Property Name: "Elevation"
    /// Property Type: FLOAT
    /// </summary>
    D2D1_DISTANTSPECULAR_PROP_ELEVATION           = 1,

    /// <summary>
    /// Property Name: "SpecularExponent"
    /// Property Type: FLOAT
    /// </summary>
    D2D1_DISTANTSPECULAR_PROP_SPECULAR_EXPONENT   = 2,

    /// <summary>
    /// Property Name: "SpecularConstant"
    /// Property Type: FLOAT
    /// </summary>
    D2D1_DISTANTSPECULAR_PROP_SPECULAR_CONSTANT   = 3,

    /// <summary>
    /// Property Name: "SurfaceScale"
    /// Property Type: FLOAT
    /// </summary>
    D2D1_DISTANTSPECULAR_PROP_SURFACE_SCALE       = 4,

    /// <summary>
    /// Property Name: "Color"
    /// Property Type: D2D1_VECTOR_3F
    /// </summary>
    D2D1_DISTANTSPECULAR_PROP_COLOR               = 5,

    /// <summary>
    /// Property Name: "KernelUnitLength"
    /// Property Type: D2D1_VECTOR_2F
    /// </summary>
    D2D1_DISTANTSPECULAR_PROP_KERNEL_UNIT_LENGTH  = 6,

    /// <summary>
    /// Property Name: "ScaleMode"
    /// Property Type: D2D1_DISTANTSPECULAR_SCALE_MODE
    /// </summary>
    D2D1_DISTANTSPECULAR_PROP_SCALE_MODE          = 7,
    D2D1_DISTANTSPECULAR_PROP_FORCE_DWORD         = Integer($FFFFFFFF)
  );

  D2D1_DISTANTSPECULAR_SCALE_MODE = (

    D2D1_DISTANTSPECULAR_SCALE_MODE_NEAREST_NEIGHBOR = 0,
    D2D1_DISTANTSPECULAR_SCALE_MODE_LINEAR = 1,
    D2D1_DISTANTSPECULAR_SCALE_MODE_CUBIC = 2,
    D2D1_DISTANTSPECULAR_SCALE_MODE_MULTI_SAMPLE_LINEAR = 3,
    D2D1_DISTANTSPECULAR_SCALE_MODE_ANISOTROPIC = 4,
    D2D1_DISTANTSPECULAR_SCALE_MODE_HIGH_QUALITY_CUBIC = 5,
    D2D1_DISTANTSPECULAR_SCALE_MODE_FORCE_DWORD = Integer($FFFFFFFF)
  );

  /// <summary>
  /// The enumeration of the Point-Diffuse effect's top level properties.
  /// Effect description: Creates a diffuse lighting effect with a point light source.
  /// </summary>
  D2D1_POINTDIFFUSE_PROP = (

    /// <summary>
    /// Property Name: "LightPosition"
    /// Property Type: D2D1_VECTOR_3F
    /// </summary>
    D2D1_POINTDIFFUSE_PROP_LIGHT_POSITION     = 0,

    /// <summary>
    /// Property Name: "DiffuseConstant"
    /// Property Type: FLOAT
    /// </summary>
    D2D1_POINTDIFFUSE_PROP_DIFFUSE_CONSTANT   = 1,

    /// <summary>
    /// Property Name: "SurfaceScale"
    /// Property Type: FLOAT
    /// </summary>
    D2D1_POINTDIFFUSE_PROP_SURFACE_SCALE      = 2,

    /// <summary>
    /// Property Name: "Color"
    /// Property Type: D2D1_VECTOR_3F
    /// </summary>
    D2D1_POINTDIFFUSE_PROP_COLOR              = 3,

    /// <summary>
    /// Property Name: "KernelUnitLength"
    /// Property Type: D2D1_VECTOR_2F
    /// </summary>
    D2D1_POINTDIFFUSE_PROP_KERNEL_UNIT_LENGTH = 4,

    /// <summary>
    /// Property Name: "ScaleMode"
    /// Property Type: D2D1_POINTDIFFUSE_SCALE_MODE
    /// </summary>
    D2D1_POINTDIFFUSE_PROP_SCALE_MODE         = 5,
    D2D1_POINTDIFFUSE_PROP_FORCE_DWORD        = Integer($FFFFFFFF)
  );

  D2D1_POINTDIFFUSE_SCALE_MODE = (

    D2D1_POINTDIFFUSE_SCALE_MODE_NEAREST_NEIGHBOR     = 0,
    D2D1_POINTDIFFUSE_SCALE_MODE_LINEAR               = 1,
    D2D1_POINTDIFFUSE_SCALE_MODE_CUBIC                = 2,
    D2D1_POINTDIFFUSE_SCALE_MODE_MULTI_SAMPLE_LINEAR  = 3,
    D2D1_POINTDIFFUSE_SCALE_MODE_ANISOTROPIC          = 4,
    D2D1_POINTDIFFUSE_SCALE_MODE_HIGH_QUALITY_CUBIC   = 5,
    D2D1_POINTDIFFUSE_SCALE_MODE_FORCE_DWORD          = Integer($FFFFFFFF)
  );

  /// <summary>
  /// The enumeration of the Spot-Diffuse effect's top level properties.
  /// Effect description: Creates a diffuse lighting effect with a spot light source.
  /// </summary>
  D2D1_SPOTDIFFUSE_PROP = (

    /// <summary>
    /// Property Name: "LightPosition"
    /// Property Type: D2D1_VECTOR_3F
    /// </summary>
    D2D1_SPOTDIFFUSE_PROP_LIGHT_POSITION      = 0,

    /// <summary>
    /// Property Name: "PointsAt"
    /// Property Type: D2D1_VECTOR_3F
    /// </summary>
    D2D1_SPOTDIFFUSE_PROP_POINTS_AT           = 1,

    /// <summary>
    /// Property Name: "Focus"
    /// Property Type: FLOAT
    /// </summary>
    D2D1_SPOTDIFFUSE_PROP_FOCUS               = 2,

    /// <summary>
    /// Property Name: "LimitingConeAngle"
    /// Property Type: FLOAT
    /// </summary>
    D2D1_SPOTDIFFUSE_PROP_LIMITING_CONE_ANGLE = 3,

    /// <summary>
    /// Property Name: "DiffuseConstant"
    /// Property Type: FLOAT
    /// </summary>
    D2D1_SPOTDIFFUSE_PROP_DIFFUSE_CONSTANT    = 4,

    /// <summary>
    /// Property Name: "SurfaceScale"
    /// Property Type: FLOAT
    /// </summary>
    D2D1_SPOTDIFFUSE_PROP_SURFACE_SCALE       = 5,

    /// <summary>
    /// Property Name: "Color"
    /// Property Type: D2D1_VECTOR_3F
    /// </summary>
    D2D1_SPOTDIFFUSE_PROP_COLOR               = 6,

    /// <summary>
    /// Property Name: "KernelUnitLength"
    /// Property Type: D2D1_VECTOR_2F
    /// </summary>
    D2D1_SPOTDIFFUSE_PROP_KERNEL_UNIT_LENGTH  = 7,

    /// <summary>
    /// Property Name: "ScaleMode"
    /// Property Type: D2D1_SPOTDIFFUSE_SCALE_MODE
    /// </summary>
    D2D1_SPOTDIFFUSE_PROP_SCALE_MODE          = 8,
    D2D1_SPOTDIFFUSE_PROP_FORCE_DWORD         = Integer($FFFFFFFF)
  );

  D2D1_SPOTDIFFUSE_SCALE_MODE = (

    D2D1_SPOTDIFFUSE_SCALE_MODE_NEAREST_NEIGHBOR    = 0,
    D2D1_SPOTDIFFUSE_SCALE_MODE_LINEAR              = 1,
    D2D1_SPOTDIFFUSE_SCALE_MODE_CUBIC               = 2,
    D2D1_SPOTDIFFUSE_SCALE_MODE_MULTI_SAMPLE_LINEAR = 3,
    D2D1_SPOTDIFFUSE_SCALE_MODE_ANISOTROPIC         = 4,
    D2D1_SPOTDIFFUSE_SCALE_MODE_HIGH_QUALITY_CUBIC  = 5,
    D2D1_SPOTDIFFUSE_SCALE_MODE_FORCE_DWORD         = Integer($FFFFFFFF)
  );

  /// <summary>
  /// The enumeration of the Distant-Diffuse effect's top level properties.
  /// Effect description: Creates a diffuse lighting effect with a distant light
  /// source.
  /// </summary>
  D2D1_DISTANTDIFFUSE_PROP = (

    /// <summary>
    /// Property Name: "Azimuth"
    /// Property Type: FLOAT
    /// </summary>
    D2D1_DISTANTDIFFUSE_PROP_AZIMUTH            = 0,

    /// <summary>
    /// Property Name: "Elevation"
    /// Property Type: FLOAT
    /// </summary>
    D2D1_DISTANTDIFFUSE_PROP_ELEVATION          = 1,

    /// <summary>
    /// Property Name: "DiffuseConstant"
    /// Property Type: FLOAT
    /// </summary>
    D2D1_DISTANTDIFFUSE_PROP_DIFFUSE_CONSTANT   = 2,

    /// <summary>
    /// Property Name: "SurfaceScale"
    /// Property Type: FLOAT
    /// </summary>
    D2D1_DISTANTDIFFUSE_PROP_SURFACE_SCALE      = 3,

    /// <summary>
    /// Property Name: "Color"
    /// Property Type: D2D1_VECTOR_3F
    /// </summary>
    D2D1_DISTANTDIFFUSE_PROP_COLOR              = 4,

    /// <summary>
    /// Property Name: "KernelUnitLength"
    /// Property Type: D2D1_VECTOR_2F
    /// </summary>
    D2D1_DISTANTDIFFUSE_PROP_KERNEL_UNIT_LENGTH = 5,

    /// <summary>
    /// Property Name: "ScaleMode"
    /// Property Type: D2D1_DISTANTDIFFUSE_SCALE_MODE
    /// </summary>
    D2D1_DISTANTDIFFUSE_PROP_SCALE_MODE         = 6,
    D2D1_DISTANTDIFFUSE_PROP_FORCE_DWORD        = Integer($FFFFFFFF)
  );

  D2D1_DISTANTDIFFUSE_SCALE_MODE = (

    D2D1_DISTANTDIFFUSE_SCALE_MODE_NEAREST_NEIGHBOR     = 0,
    D2D1_DISTANTDIFFUSE_SCALE_MODE_LINEAR               = 1,
    D2D1_DISTANTDIFFUSE_SCALE_MODE_CUBIC                = 2,
    D2D1_DISTANTDIFFUSE_SCALE_MODE_MULTI_SAMPLE_LINEAR  = 3,
    D2D1_DISTANTDIFFUSE_SCALE_MODE_ANISOTROPIC          = 4,
    D2D1_DISTANTDIFFUSE_SCALE_MODE_HIGH_QUALITY_CUBIC   = 5,
    D2D1_DISTANTDIFFUSE_SCALE_MODE_FORCE_DWORD          = Integer($FFFFFFFF)
  );

  /// <summary>
  /// The enumeration of the Flood effect's top level properties.
  /// Effect description: Renders an infinite sized floodfill of the given color.
  /// </summary>
  D2D1_FLOOD_PROP = (

    /// <summary>
    /// Property Name: "Color"
    /// Property Type: D2D1_VECTOR_4F
    /// </summary>
    D2D1_FLOOD_PROP_COLOR       = 0,
    D2D1_FLOOD_PROP_FORCE_DWORD = Integer($FFFFFFFF)
  );

  /// <summary>
  /// The enumeration of the Linear Transfer effect's top level properties.
  /// Effect description: Remaps the color intensities of the input bitmap based on a
  /// user specified linear transfer function for each RGBA channel.
  /// </summary>
  D2D1_LINEARTRANSFER_PROP = (

    /// <summary>
    /// Property Name: "RedYIntercept"
    /// Property Type: FLOAT
    /// </summary>
    D2D1_LINEARTRANSFER_PROP_RED_Y_INTERCEPT    = 0,

    /// <summary>
    /// Property Name: "RedSlope"
    /// Property Type: FLOAT
    /// </summary>
    D2D1_LINEARTRANSFER_PROP_RED_SLOPE          = 1,

    /// <summary>
    /// Property Name: "RedDisable"
    /// Property Type: BOOL
    /// </summary>
    D2D1_LINEARTRANSFER_PROP_RED_DISABLE        = 2,

    /// <summary>
    /// Property Name: "GreenYIntercept"
    /// Property Type: FLOAT
    /// </summary>
    D2D1_LINEARTRANSFER_PROP_GREEN_Y_INTERCEPT  = 3,

    /// <summary>
    /// Property Name: "GreenSlope"
    /// Property Type: FLOAT
    /// </summary>
    D2D1_LINEARTRANSFER_PROP_GREEN_SLOPE        = 4,

    /// <summary>
    /// Property Name: "GreenDisable"
    /// Property Type: BOOL
    /// </summary>
    D2D1_LINEARTRANSFER_PROP_GREEN_DISABLE      = 5,

    /// <summary>
    /// Property Name: "BlueYIntercept"
    /// Property Type: FLOAT
    /// </summary>
    D2D1_LINEARTRANSFER_PROP_BLUE_Y_INTERCEPT   = 6,

    /// <summary>
    /// Property Name: "BlueSlope"
    /// Property Type: FLOAT
    /// </summary>
    D2D1_LINEARTRANSFER_PROP_BLUE_SLOPE         = 7,

    /// <summary>
    /// Property Name: "BlueDisable"
    /// Property Type: BOOL
    /// </summary>
    D2D1_LINEARTRANSFER_PROP_BLUE_DISABLE       = 8,

    /// <summary>
    /// Property Name: "AlphaYIntercept"
    /// Property Type: FLOAT
    /// </summary>
    D2D1_LINEARTRANSFER_PROP_ALPHA_Y_INTERCEPT  = 9,

    /// <summary>
    /// Property Name: "AlphaSlope"
    /// Property Type: FLOAT
    /// </summary>
    D2D1_LINEARTRANSFER_PROP_ALPHA_SLOPE        = 10,

    /// <summary>
    /// Property Name: "AlphaDisable"
    /// Property Type: BOOL
    /// </summary>
    D2D1_LINEARTRANSFER_PROP_ALPHA_DISABLE      = 11,

    /// <summary>
    /// Property Name: "ClampOutput"
    /// Property Type: BOOL
    /// </summary>
    D2D1_LINEARTRANSFER_PROP_CLAMP_OUTPUT       = 12,
    D2D1_LINEARTRANSFER_PROP_FORCE_DWORD        = Integer($FFFFFFFF)
  );

  /// <summary>
  /// The enumeration of the Gamma Transfer effect's top level properties.
  /// Effect description: Remaps the color intensities of the input bitmap based on a
  /// user specified gamma transfer function for each RGBA channel.
  /// </summary>
  D2D1_GAMMATRANSFER_PROP = (

    /// <summary>
    /// Property Name: "RedAmplitude"
    /// Property Type: FLOAT
    /// </summary>
    D2D1_GAMMATRANSFER_PROP_RED_AMPLITUDE = 0,

    /// <summary>
    /// Property Name: "RedExponent"
    /// Property Type: FLOAT
    /// </summary>
    D2D1_GAMMATRANSFER_PROP_RED_EXPONENT    = 1,

    /// <summary>
    /// Property Name: "RedOffset"
    /// Property Type: FLOAT
    /// </summary>
    D2D1_GAMMATRANSFER_PROP_RED_OFFSET      = 2,

    /// <summary>
    /// Property Name: "RedDisable"
    /// Property Type: BOOL
    /// </summary>
    D2D1_GAMMATRANSFER_PROP_RED_DISABLE     = 3,

    /// <summary>
    /// Property Name: "GreenAmplitude"
    /// Property Type: FLOAT
    /// </summary>
    D2D1_GAMMATRANSFER_PROP_GREEN_AMPLITUDE = 4,

    /// <summary>
    /// Property Name: "GreenExponent"
    /// Property Type: FLOAT
    /// </summary>
    D2D1_GAMMATRANSFER_PROP_GREEN_EXPONENT  = 5,

    /// <summary>
    /// Property Name: "GreenOffset"
    /// Property Type: FLOAT
    /// </summary>
    D2D1_GAMMATRANSFER_PROP_GREEN_OFFSET    = 6,

    /// <summary>
    /// Property Name: "GreenDisable"
    /// Property Type: BOOL
    /// </summary>
    D2D1_GAMMATRANSFER_PROP_GREEN_DISABLE   = 7,

    /// <summary>
    /// Property Name: "BlueAmplitude"
    /// Property Type: FLOAT
    /// </summary>
    D2D1_GAMMATRANSFER_PROP_BLUE_AMPLITUDE  = 8,

    /// <summary>
    /// Property Name: "BlueExponent"
    /// Property Type: FLOAT
    /// </summary>
    D2D1_GAMMATRANSFER_PROP_BLUE_EXPONENT   = 9,

    /// <summary>
    /// Property Name: "BlueOffset"
    /// Property Type: FLOAT
    /// </summary>
    D2D1_GAMMATRANSFER_PROP_BLUE_OFFSET     = 10,

    /// <summary>
    /// Property Name: "BlueDisable"
    /// Property Type: BOOL
    /// </summary>
    D2D1_GAMMATRANSFER_PROP_BLUE_DISABLE    = 11,

    /// <summary>
    /// Property Name: "AlphaAmplitude"
    /// Property Type: FLOAT
    /// </summary>
    D2D1_GAMMATRANSFER_PROP_ALPHA_AMPLITUDE = 12,

    /// <summary>
    /// Property Name: "AlphaExponent"
    /// Property Type: FLOAT
    /// </summary>
    D2D1_GAMMATRANSFER_PROP_ALPHA_EXPONENT  = 13,

    /// <summary>
    /// Property Name: "AlphaOffset"
    /// Property Type: FLOAT
    /// </summary>
    D2D1_GAMMATRANSFER_PROP_ALPHA_OFFSET    = 14,

    /// <summary>
    /// Property Name: "AlphaDisable"
    /// Property Type: BOOL
    /// </summary>
    D2D1_GAMMATRANSFER_PROP_ALPHA_DISABLE   = 15,

    /// <summary>
    /// Property Name: "ClampOutput"
    /// Property Type: BOOL
    /// </summary>
    D2D1_GAMMATRANSFER_PROP_CLAMP_OUTPUT    = 16,
    D2D1_GAMMATRANSFER_PROP_FORCE_DWORD     = Integer($FFFFFFFF)
  );


  /// <summary>
  /// The enumeration of the Table Transfer effect's top level properties.
  /// Effect description: Remaps the color intensities of the input bitmap based on a
  /// transfer function generated by a user specified list of values for each RGBA
  /// channel.
  /// </summary>
  D2D1_TABLETRANSFER_PROP = (

    /// <summary>
    /// Property Name: "RedTable"
    /// Property Type: (blob)
    /// </summary>
    D2D1_TABLETRANSFER_PROP_RED_TABLE     = 0,

    /// <summary>
    /// Property Name: "RedDisable"
    /// Property Type: BOOL
    /// </summary>
    D2D1_TABLETRANSFER_PROP_RED_DISABLE   = 1,

    /// <summary>
    /// Property Name: "GreenTable"
    /// Property Type: (blob)
    /// </summary>
    D2D1_TABLETRANSFER_PROP_GREEN_TABLE   = 2,

    /// <summary>
    /// Property Name: "GreenDisable"
    /// Property Type: BOOL
    /// </summary>
    D2D1_TABLETRANSFER_PROP_GREEN_DISABLE = 3,

    /// <summary>
    /// Property Name: "BlueTable"
    /// Property Type: (blob)
    /// </summary>
    D2D1_TABLETRANSFER_PROP_BLUE_TABLE    = 4,

    /// <summary>
    /// Property Name: "BlueDisable"
    /// Property Type: BOOL
    /// </summary>
    D2D1_TABLETRANSFER_PROP_BLUE_DISABLE  = 5,

    /// <summary>
    /// Property Name: "AlphaTable"
    /// Property Type: (blob)
    /// </summary>
    D2D1_TABLETRANSFER_PROP_ALPHA_TABLE   = 6,

    /// <summary>
    /// Property Name: "AlphaDisable"
    /// Property Type: BOOL
    /// </summary>
    D2D1_TABLETRANSFER_PROP_ALPHA_DISABLE = 7,

    /// <summary>
    /// Property Name: "ClampOutput"
    /// Property Type: BOOL
    /// </summary>
    D2D1_TABLETRANSFER_PROP_CLAMP_OUTPUT  = 8,
    D2D1_TABLETRANSFER_PROP_FORCE_DWORD   = Integer($FFFFFFFF)
  );

  /// <summary>
  /// The enumeration of the Discrete Transfer effect's top level properties.
  /// Effect description: Remaps the color intensities of the input bitmap based on a
  /// discrete function generated by a user specified list of values for each RGBA
  /// channel.
  /// </summary>
  D2D1_DISCRETETRANSFER_PROP = (

    /// <summary>
    /// Property Name: "RedTable"
    /// Property Type: (blob)
    /// </summary>
    D2D1_DISCRETETRANSFER_PROP_RED_TABLE      = 0,

    /// <summary>
    /// Property Name: "RedDisable"
    /// Property Type: BOOL
    /// </summary>
    D2D1_DISCRETETRANSFER_PROP_RED_DISABLE    = 1,

    /// <summary>
    /// Property Name: "GreenTable"
    /// Property Type: (blob)
    /// </summary>
    D2D1_DISCRETETRANSFER_PROP_GREEN_TABLE    = 2,

    /// <summary>
    /// Property Name: "GreenDisable"
    /// Property Type: BOOL
    /// </summary>
    D2D1_DISCRETETRANSFER_PROP_GREEN_DISABLE  = 3,

    /// <summary>
    /// Property Name: "BlueTable"
    /// Property Type: (blob)
    /// </summary>
    D2D1_DISCRETETRANSFER_PROP_BLUE_TABLE     = 4,

    /// <summary>
    /// Property Name: "BlueDisable"
    /// Property Type: BOOL
    /// </summary>
    D2D1_DISCRETETRANSFER_PROP_BLUE_DISABLE   = 5,

    /// <summary>
    /// Property Name: "AlphaTable"
    /// Property Type: (blob)
    /// </summary>
    D2D1_DISCRETETRANSFER_PROP_ALPHA_TABLE    = 6,

    /// <summary>
    /// Property Name: "AlphaDisable"
    /// Property Type: BOOL
    /// </summary>
    D2D1_DISCRETETRANSFER_PROP_ALPHA_DISABLE  = 7,

    /// <summary>
    /// Property Name: "ClampOutput"
    /// Property Type: BOOL
    /// </summary>
    D2D1_DISCRETETRANSFER_PROP_CLAMP_OUTPUT   = 8,
    D2D1_DISCRETETRANSFER_PROP_FORCE_DWORD    = Integer($FFFFFFFF)
  );

  /// <summary>
  /// The enumeration of the Convolve Matrix effect's top level properties.
  /// Effect description: Applies a user specified convolution kernel to a bitmap.
  /// </summary>
  D2D1_CONVOLVEMATRIX_PROP = (

    /// <summary>
    /// Property Name: "KernelUnitLength"
    /// Property Type: D2D1_VECTOR_2F
    /// </summary>
    D2D1_CONVOLVEMATRIX_PROP_KERNEL_UNIT_LENGTH = 0,

    /// <summary>
    /// Property Name: "ScaleMode"
    /// Property Type: D2D1_CONVOLVEMATRIX_SCALE_MODE
    /// </summary>
    D2D1_CONVOLVEMATRIX_PROP_SCALE_MODE         = 1,

    /// <summary>
    /// Property Name: "KernelSizeX"
    /// Property Type: UINT32
    /// </summary>
    D2D1_CONVOLVEMATRIX_PROP_KERNEL_SIZE_X      = 2,

    /// <summary>
    /// Property Name: "KernelSizeY"
    /// Property Type: UINT32
    /// </summary>
    D2D1_CONVOLVEMATRIX_PROP_KERNEL_SIZE_Y      = 3,

    /// <summary>
    /// Property Name: "KernelMatrix"
    /// Property Type: (blob)
    /// </summary>
    D2D1_CONVOLVEMATRIX_PROP_KERNEL_MATRIX      = 4,

    /// <summary>
    /// Property Name: "Divisor"
    /// Property Type: FLOAT
    /// </summary>
    D2D1_CONVOLVEMATRIX_PROP_DIVISOR            = 5,

    /// <summary>
    /// Property Name: "Bias"
    /// Property Type: FLOAT
    /// </summary>
    D2D1_CONVOLVEMATRIX_PROP_BIAS               = 6,

    /// <summary>
    /// Property Name: "KernelOffset"
    /// Property Type: D2D1_VECTOR_2F
    /// </summary>
    D2D1_CONVOLVEMATRIX_PROP_KERNEL_OFFSET      = 7,

    /// <summary>
    /// Property Name: "PreserveAlpha"
    /// Property Type: BOOL
    /// </summary>
    D2D1_CONVOLVEMATRIX_PROP_PRESERVE_ALPHA     = 8,

    /// <summary>
    /// Property Name: "BorderMode"
    /// Property Type: D2D1_BORDER_MODE
    /// </summary>
    D2D1_CONVOLVEMATRIX_PROP_BORDER_MODE        = 9,

    /// <summary>
    /// Property Name: "ClampOutput"
    /// Property Type: BOOL
    /// </summary>
    D2D1_CONVOLVEMATRIX_PROP_CLAMP_OUTPUT       = 10,
    D2D1_CONVOLVEMATRIX_PROP_FORCE_DWORD        = Integer($FFFFFFFF)
  );

  D2D1_CONVOLVEMATRIX_SCALE_MODE = (

    D2D1_CONVOLVEMATRIX_SCALE_MODE_NEAREST_NEIGHBOR     = 0,
    D2D1_CONVOLVEMATRIX_SCALE_MODE_LINEAR               = 1,
    D2D1_CONVOLVEMATRIX_SCALE_MODE_CUBIC                = 2,
    D2D1_CONVOLVEMATRIX_SCALE_MODE_MULTI_SAMPLE_LINEAR  = 3,
    D2D1_CONVOLVEMATRIX_SCALE_MODE_ANISOTROPIC          = 4,
    D2D1_CONVOLVEMATRIX_SCALE_MODE_HIGH_QUALITY_CUBIC   = 5,
    D2D1_CONVOLVEMATRIX_SCALE_MODE_FORCE_DWORD          = Integer($FFFFFFFF)
  );

  /// <summary>
  /// The enumeration of the Brightness effect's top level properties.
  /// Effect description: Adjusts the brightness of the image based on the specified
  /// white and black point.
  /// </summary>
  D2D1_BRIGHTNESS_PROP = (

    /// <summary>
    /// Property Name: "WhitePoint"
    /// Property Type: D2D1_VECTOR_2F
    /// </summary>
    D2D1_BRIGHTNESS_PROP_WHITE_POINT = 0,

    /// <summary>
    /// Property Name: "BlackPoint"
    /// Property Type: D2D1_VECTOR_2F
    /// </summary>
    D2D1_BRIGHTNESS_PROP_BLACK_POINT = 1,
    D2D1_BRIGHTNESS_PROP_FORCE_DWORD = Integer($FFFFFFFF)
  );

  /// <summary>
  /// The enumeration of the Arithmetic Composite effect's top level properties.
  /// Effect description: Composites two bitmaps based on the following algorithm:
  /// Output = Coefficients_1 * Source * Destination + Coefficients_2 * Source+
  /// Coefficients_3 * Destination + Coefficients_4.
  /// </summary>
  D2D1_ARITHMETICCOMPOSITE_PROP = (

    /// <summary>
    /// Property Name: "Coefficients"
    /// Property Type: D2D1_VECTOR_4F
    /// </summary>
    D2D1_ARITHMETICCOMPOSITE_PROP_COEFFICIENTS  = 0,

    /// <summary>
    /// Property Name: "ClampOutput"
    /// Property Type: BOOL
    /// </summary>
    D2D1_ARITHMETICCOMPOSITE_PROP_CLAMP_OUTPUT  = 1,
    D2D1_ARITHMETICCOMPOSITE_PROP_FORCE_DWORD   = Integer($FFFFFFFF)
  );

  /// <summary>
  /// The enumeration of the Crop effect's top level properties.
  /// Effect description: Crops the input bitmap according to the specified
  /// parameters.
  /// </summary>
  D2D1_CROP_PROP = (

    /// <summary>
    /// Property Name: "Rect"
    /// Property Type: D2D1_VECTOR_4F
    /// </summary>
    D2D1_CROP_PROP_RECT         = 0,

    /// <summary>
    /// Property Name: "BorderMode"
    /// Property Type: D2D1_BORDER_MODE
    /// </summary>
    D2D1_CROP_PROP_BORDER_MODE  = 1,
    D2D1_CROP_PROP_FORCE_DWORD  = Integer($FFFFFFFF)
  );

  /// <summary>
  /// The enumeration of the Border effect's top level properties.
  /// Effect description: Extends the region of the bitmap based on the selected
  /// border mode.
  /// </summary>
  D2D1_BORDER_PROP = (

    /// <summary>
    /// Property Name: "EdgeModeX"
    /// Property Type: D2D1_BORDER_EDGE_MODE
    /// </summary>
    D2D1_BORDER_PROP_EDGE_MODE_X = 0,

    /// <summary>
    /// Property Name: "EdgeModeY"
    /// Property Type: D2D1_BORDER_EDGE_MODE
    /// </summary>
    D2D1_BORDER_PROP_EDGE_MODE_Y = 1,
    D2D1_BORDER_PROP_FORCE_DWORD = Integer($FFFFFFFF)
  );

  /// <summary>
  /// The edge mode for the Border effect.
  /// </summary>
  D2D1_BORDER_EDGE_MODE = (
    D2D1_BORDER_EDGE_MODE_CLAMP       = 0,
    D2D1_BORDER_EDGE_MODE_WRAP        = 1,
    D2D1_BORDER_EDGE_MODE_MIRROR      = 2,
    D2D1_BORDER_EDGE_MODE_FORCE_DWORD = Integer($FFFFFFFF)
  );

  /// <summary>
  /// The enumeration of the Morphology effect's top level properties.
  /// Effect description: Erodes or dilates a bitmap by the given radius.
  /// </summary>
  D2D1_MORPHOLOGY_PROP = (

    /// <summary>
    /// Property Name: "Mode"
    /// Property Type: D2D1_MORPHOLOGY_MODE
    /// </summary>
    D2D1_MORPHOLOGY_PROP_MODE         = 0,

    /// <summary>
    /// Property Name: "Width"
    /// Property Type: UINT32
    /// </summary>
    D2D1_MORPHOLOGY_PROP_WIDTH        = 1,

    /// <summary>
    /// Property Name: "Height"
    /// Property Type: UINT32
    /// </summary>
    D2D1_MORPHOLOGY_PROP_HEIGHT       = 2,
    D2D1_MORPHOLOGY_PROP_FORCE_DWORD  = Integer($FFFFFFFF)
  );

  D2D1_MORPHOLOGY_MODE = (
    D2D1_MORPHOLOGY_MODE_ERODE        = 0,
    D2D1_MORPHOLOGY_MODE_DILATE       = 1,
    D2D1_MORPHOLOGY_MODE_FORCE_DWORD  = Integer($FFFFFFFF)
  );

  /// <summary>
  /// The enumeration of the Tile effect's top level properties.
  /// Effect description: Tiles the specified region of the input bitmap.
  /// </summary>
  D2D1_TILE_PROP = (

    /// <summary>
    /// Property Name: "Rect"
    /// Property Type: D2D1_VECTOR_4F
    /// </summary>
    D2D1_TILE_PROP_RECT = 0,
    D2D1_TILE_PROP_FORCE_DWORD = Integer($FFFFFFFF)
  );

  /// <summary>
  /// The enumeration of the Atlas effect's top level properties.
  /// Effect description: Changes the available area of the input to the specified
  /// rectangle. Provides an optimization for scenarios where a bitmap is used as an
  /// atlas.
  /// </summary>
  D2D1_ATLAS_PROP = (

    /// <summary>
    /// Property Name: "InputRect"
    /// Property Type: D2D1_VECTOR_4F
    /// </summary>
    D2D1_ATLAS_PROP_INPUT_RECT          = 0,

    /// <summary>
    /// Property Name: "InputPaddingRect"
    /// Property Type: D2D1_VECTOR_4F
    /// </summary>
    D2D1_ATLAS_PROP_INPUT_PADDING_RECT  = 1,
    D2D1_ATLAS_PROP_FORCE_DWORD         = Integer($FFFFFFFF)
  );

  /// <summary>
  /// The enumeration of the Opacity Metadata effect's top level properties.
  /// Effect description: Changes the rectangle which is assumed to be opaque.
  /// Provides optimizations in certain scenarios.
  /// </summary>
  D2D1_OPACITYMETADATA_PROP = (

    /// <summary>
    /// Property Name: "InputOpaqueRect"
    /// Property Type: D2D1_VECTOR_4F
    /// </summary>
    D2D1_OPACITYMETADATA_PROP_INPUT_OPAQUE_RECT = 0,
    D2D1_OPACITYMETADATA_PROP_FORCE_DWORD       = Integer($FFFFFFFF)
  );

{$ENDREGION}

{$REGION 'd2d1effectauthor.h enums'}

  /// <summary>
  /// Indicates what has changed since the last time the effect was asked to prepare
  /// to render.
  /// </summary>
  D2D1_CHANGE_TYPE = (

    /// <summary>
    /// Nothing has changed.
    /// </summary>
    D2D1_CHANGE_TYPE_NONE         = 0,

    /// <summary>
    /// The effect's properties have changed.
    /// </summary>
    D2D1_CHANGE_TYPE_PROPERTIES   = 1,

    /// <summary>
    /// The internal context has changed and should be inspected.
    /// </summary>
    D2D1_CHANGE_TYPE_CONTEXT      = 2,

    /// <summary>
    /// A new graph has been set due to a change in the input count.
    /// </summary>
    D2D1_CHANGE_TYPE_GRAPH        = 3,
    D2D1_CHANGE_TYPE_FORCE_DWORD  = Integer($FFFFFFFF)
  );


  /// <summary>
  /// Indicates options for drawing using a pixel shader.
  /// </summary>
  D2D1_PIXEL_OPTIONS = (

      /// <summary>
      /// Default pixel processing.
      /// </summary>
      D2D1_PIXEL_OPTIONS_NONE             = 0,

      /// <summary>
      /// Indicates that the shader samples its inputs only at exactly the same scene
      /// coordinate as the output pixel, and that it returns transparent black whenever
      /// the input pixels are also transparent black.
      /// </summary>
      D2D1_PIXEL_OPTIONS_TRIVIAL_SAMPLING = 1,
      D2D1_PIXEL_OPTIONS_FORCE_DWORD      = Integer($FFFFFFFF)
  );

  /// <summary>
  /// Indicates options for drawing custom vertices set by transforms.
  /// </summary>
  D2D1_VERTEX_OPTIONS = (

    /// <summary>
    /// Default vertex processing.
    /// </summary>
    D2D1_VERTEX_OPTIONS_NONE              = 0,

    /// <summary>
    /// Indicates that the output rectangle does not need to be cleared before drawing
    /// custom vertices. This must only be used by transforms whose custom vertices
    /// completely cover their output rectangle.
    /// </summary>
    D2D1_VERTEX_OPTIONS_DO_NOT_CLEAR      = 1,

    /// <summary>
    /// Causes a depth buffer to be used while drawing custom vertices. This impacts
    /// drawing behavior when primitives overlap one another.
    /// </summary>
    D2D1_VERTEX_OPTIONS_USE_DEPTH_BUFFER  = 2,

    /// <summary>
    /// Indicates that custom vertices do not form primitives which overlap one another.
    /// </summary>
    D2D1_VERTEX_OPTIONS_ASSUME_NO_OVERLAP = 4,
    D2D1_VERTEX_OPTIONS_FORCE_DWORD       = Integer($FFFFFFFF)
  );

  /// <summary>
  /// Describes how a vertex buffer is to be managed.
  /// </summary>
  D2D1_VERTEX_USAGE = (

    /// <summary>
    /// The vertex buffer content do not change frequently from frame to frame.
    /// </summary>
    D2D1_VERTEX_USAGE_STATIC      = 0,

    /// <summary>
    /// The vertex buffer is intended to be updated frequently.
    /// </summary>
    D2D1_VERTEX_USAGE_DYNAMIC     = 1,
    D2D1_VERTEX_USAGE_FORCE_DWORD = Integer($FFFFFFFF)
  );

  /// <summary>
  /// Describes a particular blend in the D2D1_BLEND_DESCRIPTION structure.
  /// </summary>
  D2D1_BLEND_OPERATION = (

    D2D1_BLEND_OPERATION_ADD          = 1,
    D2D1_BLEND_OPERATION_SUBTRACT     = 2,
    D2D1_BLEND_OPERATION_REV_SUBTRACT = 3,
    D2D1_BLEND_OPERATION_MIN          = 4,
    D2D1_BLEND_OPERATION_MAX          = 5,
    D2D1_BLEND_OPERATION_FORCE_DWORD  = Integer($FFFFFFFF)
  );

  /// <summary>
  /// Describes a particular blend in the D2D1_BLEND_DESCRIPTION structure.
  /// </summary>
  D2D1_BLEND = (

    D2D1_BLEND_ZERO             = 1,
    D2D1_BLEND_ONE              = 2,
    D2D1_BLEND_SRC_COLOR        = 3,
    D2D1_BLEND_INV_SRC_COLOR    = 4,
    D2D1_BLEND_SRC_ALPHA        = 5,
    D2D1_BLEND_INV_SRC_ALPHA    = 6,
    D2D1_BLEND_DEST_ALPHA       = 7,
    D2D1_BLEND_INV_DEST_ALPHA   = 8,
    D2D1_BLEND_DEST_COLOR       = 9,
    D2D1_BLEND_INV_DEST_COLOR   = 10,
    D2D1_BLEND_SRC_ALPHA_SAT    = 11,
    D2D1_BLEND_BLEND_FACTOR     = 14,
    D2D1_BLEND_INV_BLEND_FACTOR = 15,
    D2D1_BLEND_FORCE_DWORD      = Integer($FFFFFFFF)
  );

  /// <summary>
  /// Allows a caller to control the channel depth of a stage in the rendering
  /// pipeline.
  /// </summary>
  D2D1_CHANNEL_DEPTH = (

    D2D1_CHANNEL_DEPTH_DEFAULT      = 0,
    D2D1_CHANNEL_DEPTH_1            = 1,
    D2D1_CHANNEL_DEPTH_4            = 4,
    D2D1_CHANNEL_DEPTH_FORCE_DWORD  = Integer($FFFFFFFF)
  );

  /// <summary>
  /// Represents filtering modes transforms may select to use on their input textures.
  /// </summary>
  D2D1_FILTER = (

    D2D1_FILTER_MIN_MAG_MIP_POINT               = $00,
    D2D1_FILTER_MIN_MAG_POINT_MIP_LINEAR        = $01,
    D2D1_FILTER_MIN_POINT_MAG_LINEAR_MIP_POINT  = $04,
    D2D1_FILTER_MIN_POINT_MAG_MIP_LINEAR        = $05,
    D2D1_FILTER_MIN_LINEAR_MAG_MIP_POINT        = $10,
    D2D1_FILTER_MIN_LINEAR_MAG_POINT_MIP_LINEAR = $11,
    D2D1_FILTER_MIN_MAG_LINEAR_MIP_POINT        = $14,
    D2D1_FILTER_MIN_MAG_MIP_LINEAR              = $15,
    D2D1_FILTER_ANISOTROPIC                     = $55,
    D2D1_FILTER_FORCE_DWORD                     = Integer($FFFFFFFF)
  );

  /// <summary>
  /// Defines capabilities of the underlying D3D device which may be queried using
  /// CheckFeatureSupport.
  /// </summary>
  D2D1_FEATURE = (
    D2D1_FEATURE_DOUBLES                  = 0,
    D2D1_FEATURE_D3D10_X_HARDWARE_OPTIONS = 1,
    D2D1_FEATURE_FORCE_DWORD              = Integer($FFFFFFFF)
  );

{$ENDREGION}

{$REGION 'DocumentTypes.h enums'}

  PrintDocumentPackageCompletion = (
    PrintDocumentPackageCompletion_InProgress	= 0,
    PrintDocumentPackageCompletion_Completed	= (PrintDocumentPackageCompletion_InProgress + 1),
    PrintDocumentPackageCompletion_Canceled	  = (PrintDocumentPackageCompletion_Completed + 1),
    PrintDocumentPackageCompletion_Failed	    = (PrintDocumentPackageCompletion_Canceled + 1)
  );
{$ENDREGION}

{$REGION 'd2d1.h records'}

  D2D1_PIXEL_FORMAT = record
    DXGIFormat: DXGI_FORMAT;
    AlphaMode: D2D1_ALPHA_MODE
  end;

  PD2D1_PIXEL_FORMAT = ^D2D1_PIXEL_FORMAT;

  TD2D1PixelFormat = D2D1_PIXEL_FORMAT;
  PD2D1PixelFormat = ^TD2D1PixelFormat;

  D2D1_MATRIX_3X2_F = record
    M11: Single;
    M12: Single;
    M21: Single;
    M22: Single;
    M31: Single;
    M32: Single;
  end;

  PD2D1_MATRIX_3X2_F = ^D2D1_MATRIX_3X2_F;

  TD2D1Matrix3x2F = D2D1_MATRIX_3X2_F;
  PD2D1Matrix3x2F = ^TD2D1Matrix3x2F;

  D2D1_POINT_2F = record
    X: Single;
    Y: Single;
  end;

  PD2D1_POINT_2F = ^D2D1_POINT_2F;

  TD2D1PointF = D2D1_POINT_2F;
  PD2D1PointF = ^TD2D1PointF;

  D2D1_POINT_2U = record
    X: UInt32;
    Y: UInt32;
  end;

  PD2D1_POINT_2U = ^D2D1_POINT_2U;

  TD2D1PointU = D2D1_POINT_2U;
  PD2D1PointU = ^TD2D1PointU;

  D2D1_SIZE_F = record
    Width:  Single;
    Height: Single;
  end;

  PD2D1_SIZE_F = ^D2D1_SIZE_F;

  TD2D1SizeF = D2D1_SIZE_F;
  PD2D1SizeF = ^TD2D1SizeF;

  D2D1_SIZE_U = record
    Width:  UInt32;
    Height: UInt32;
  end;

  PD2D1_SIZE_U = ^D2D1_SIZE_U;

  TD2D1SizeU = D2D1_SIZE_U;
  PD2D1SizeU = ^TD2D1SizeU;

  D2D1_RECT_F = record
    Left:   Single;
    Top:    Single;
    Right:  Single;
    Bottom: Single;
  end;

  PD2D1_RECT_F = ^D2D1_RECT_F;

  TD2D1RectF = D2D1_RECT_F;
  PD2D1RectF = ^TD2D1RectF;

  D2D1_RECT_U = record
    Left:   UInt32;
    Top:    UInt32;
    Right:  UInt32;
    Bottom: UInt32;
  end;

  PD2D1_RECT_U = ^D2D1_RECT_U;

  TD2D1RectU = D2D1_RECT_U;
  PD2D1RectU = ^TD2D1RectU;

  /// <summary>
  /// Contains the dimensions and corner radii of a rounded rectangle.
  /// </summary>
  D2D1_ROUNDED_RECT = record
    Rect    : D2D1_RECT_F;
    RadiusX : Single;
    RadiusY : Single;
  end;

  PD2D1_ROUNDED_RECT = ^D2D1_ROUNDED_RECT;

  TD2D1RoundedRect = D2D1_ROUNDED_RECT;
  PD2D1RoundedRect = ^TD2D1RoundedRect;

  /// <summary>
  /// Describes a triangle.
  /// </summary>
  D2D1_TRIANGLE = record
    Point1: D2D1_POINT_2F;
    Point2: D2D1_POINT_2F;
    Point3: D2D1_POINT_2F;
  end;

  PD2D1_TRIANGLE = ^D2D1_TRIANGLE;

  TD2D1Triangle = D2D1_TRIANGLE;
  PD2D1Triangle = ^TD2D1Triangle;

  /// <summary>
  /// Describes an arc that is defined as part of a path.
  /// </summary>
  D2D1_ARC_SEGMENT = record
    Point         : D2D1_POINT_2F;
    Size          : D2D1_SIZE_F;
    RotationAngle : Single;
    SweepDirection: D2D1_SWEEP_DIRECTION;
    ArcSize       : D2D1_ARC_SIZE;
  end;

  PD2D1_ARC_SEGMENT = ^D2D1_ARC_SEGMENT;

  TD2D1ArcSegment = D2D1_ARC_SEGMENT;
  PD2D1ArcSegment = ^TD2D1ArcSegment;

  /// <summary>
  /// Contains the center point, x-radius, and y-radius of an ellipse.
  /// </summary>
  D2D1_ELLIPSE = record
    Point   : D2D1_POINT_2F;
    RadiusX : Single;
    RadiusY : Single;
  end;

  PD2D1_ELLIPSE = ^D2D1_ELLIPSE;

  TD2D1Ellipse = D2D1_ELLIPSE;
  PD2D1Ellipse = ^TD2D1Ellipse;

  /// <summary>
  /// Describes a cubic bezier in a path.
  /// </summary>
  D2D1_BEZIER_SEGMENT = record
    Point1: D2D1_POINT_2F;
    Point2: D2D1_POINT_2F;
    Point3: D2D1_POINT_2F;
  end;

  PD2D1_BEZIER_SEGMENT = ^D2D1_BEZIER_SEGMENT;

  TD2D1BezierSegment = D2D1_BEZIER_SEGMENT;
  PD2D1BezierSegment = ^TD2D1BezierSegment;

  /// <summary>
  /// Contains the control point and end point for a quadratic Bezier segment.
  /// </summary>
  D2D1_QUADRATIC_BEZIER_SEGMENT = record
    Point1: D2D1_POINT_2F;
    Point2: D2D1_POINT_2F;
  end;

  PD2D1_QUADRATIC_BEZIER_SEGMENT = ^D2D1_QUADRATIC_BEZIER_SEGMENT;

  TD2D1QuadraticBezierSegment = D2D1_QUADRATIC_BEZIER_SEGMENT;
  PD2D1QuadraticBezierSegment = ^TD2D1QuadraticBezierSegment;

  /// <summary>
  /// Properties, aside from the width, that allow geometric penning to be specified.
  /// </summary>
  D2D1_STROKE_STYLE_PROPERTIES = record
    StartCap  : D2D1_CAP_STYLE;
    EndCap    : D2D1_CAP_STYLE;
    DashCap   : D2D1_CAP_STYLE;
    LineJoin  : D2D1_LINE_JOIN;
    MiterLimit: Single;
    DashStyle : D2D1_DASH_STYLE;
    DashOffset: Single;
  end;

  PD2D1_STROKE_STYLE_PROPERTIES = ^D2D1_STROKE_STYLE_PROPERTIES;

  TD2D1StrokeStyleProperties = D2D1_STROKE_STYLE_PROPERTIES;
  PD2D1StrokeStyleProperties = ^TD2D1StrokeStyleProperties;

  D2D1_LAYER_PARAMETERS = record
    ContentBounds     : D2D1_RECT_F;
    GeometricMask     : ID2D1Geometry;
    MaskAntialiasMode : D2D1_ANTIALIAS_MODE;
    MaskTransform     : D2D1_MATRIX_3X2_F;
    Opacity           : Single;
    PpacityBrush      : ID2D1Brush;
    LayerOptions      : D2D1_LAYER_OPTIONS;
  end;

  PD2D1_LAYER_PARAMETERS = ^D2D1_LAYER_PARAMETERS;

  TD2D1LayerParameters = D2D1_LAYER_PARAMETERS;
  PD2D1LayerParameters = ^TD2D1LayerParameters;

  /// <summary>
  /// Contains rendering options (hardware or software), pixel format, DPI
  /// information, remoting options, and Direct3D support requirements for a render
  /// target.
  /// </summary>
  D2D1_RENDER_TARGET_PROPERTIES = record
    &Type       : D2D1_RENDER_TARGET_TYPE;
    PixelFormat : D2D1_PIXEL_FORMAT;
    DpiX        : Single;
    DpiY        : Single;
    Usage       : D2D1_RENDER_TARGET_USAGE;
    MinLevel    : D2D1_FEATURE_LEVEL;
  end;

  PD2D1_RENDER_TARGET_PROPERTIES = ^D2D1_RENDER_TARGET_PROPERTIES;

  TD2D1RenderTargetProperties = D2D1_RENDER_TARGET_PROPERTIES;
  PD2D1RenderTargetProperties = ^TD2D1renderTargetProperties;

  /// <summary>
  /// Contains the HWND, pixel size, and presentation options for an
  /// ID2D1HwndRenderTarget.
  /// </summary>
  D2D1_HWND_RENDER_TARGET_PROPERTIES = record
    Hwnd          : HWND;
    PixelSize     : D2D1_SIZE_U;
    PresentOptions: D2D1_PRESENT_OPTIONS;
  end;

  PD2D1_HWND_RENDER_TARGET_PROPERTIES = ^D2D1_HWND_RENDER_TARGET_PROPERTIES;

  TD2D1HwndRenderTargetProperties = D2D1_HWND_RENDER_TARGET_PROPERTIES;
  PD2D1HwndRenderTargetProperties = ^TD2D1HwndRenderTargetProperties;

  /// <summary>
  /// Allows the drawing state to be atomically created. This also specifies the
  /// drawing state that is saved into an IDrawingStateBlock object.
  /// </summary>
  D2D1_DRAWING_STATE_DESCRIPTION = record
    AntialiasMode: D2D1_ANTIALIAS_MODE;
    TextAntialiasMode: D2D1_TEXT_ANTIALIAS_MODE;
    Tag1: D2D1_TAG;
    Tag2: D2D1_TAG;
    Transform: D2D1_MATRIX_3X2_F;
  end;

  PD2D1_DRAWING_STATE_DESCRIPTION = ^D2D1_DRAWING_STATE_DESCRIPTION;

  TD2D1DrawingStateDescription = D2D1_DRAWING_STATE_DESCRIPTION;
  PD2D1DrawingStateDescription = ^TD2D1DrawingStateDescription;

  /// <summary>
  /// Allows additional parameters for factory creation.
  /// </summary>
  D2D1_FACTORY_OPTIONS = record
    /// <summary>
    /// Requests a certain level of debugging information from the debug layer. This
    /// parameter is ignored if the debug layer DLL is not present.
    /// </summary>
    DebugLevel: D2D1_DEBUG_LEVEL;
  end;

  PD2D1_FACTORY_OPTIONS = ^D2D1_FACTORY_OPTIONS;

  TD2D1FactoryOptions = D2D1_FACTORY_OPTIONS;
  PD2D1FactoryOptions = ^TD2D1FactoryOptions;

  /// <summary>
  /// Describes the pixel format and dpi of a bitmap.
  /// </summary>
  D2D1_BITMAP_PROPERTIES = record
    PixelFormat : D2D1_PIXEL_FORMAT;
    DpiX        : Single;
    DpiY        : Single;
  end;

  PD2D1_BITMAP_PROPERTIES = ^D2D1_BITMAP_PROPERTIES;

  TD2D1BitmapProperties = D2D1_BITMAP_PROPERTIES;
  PD2D1BitmapProperties = ^TD2D1BitmapProperties;

  /// <summary>
  /// Contains the position and color of a gradient stop.
  /// </summary>
  D2D1_GRADIENT_STOP = record
    Position: Single;
    Color   : D2D1_COLOR_F;
  end;

  PD2D1_GRADIENT_STOP = ^D2D1_GRADIENT_STOP;

  TD2D1GradientStop = D2D1_GRADIENT_STOP;
  PD2D1GradientStop = ^TD2D1GradientStop;

  /// <summary>
  /// Describes the opacity and transformation of a brush.
  /// </summary>
  D2D1_BRUSH_PROPERTIES = record
    Opacity   : Single;
    Transform : D2D1_MATRIX_3X2_F;
  end;

  PD2D1_BRUSH_PROPERTIES = ^D2D1_BRUSH_PROPERTIES;

  TD2D1BrushProperties = D2D1_BRUSH_PROPERTIES;
  PD2D1BrushProperties = ^TD2D1BrushProperties;

  /// <summary>
  /// Describes the extend modes and the interpolation mode of an ID2D1BitmapBrush.
  /// </summary>
  D2D1_BITMAP_BRUSH_PROPERTIES = record
    ExtendModeX       : D2D1_EXTEND_MODE;
    ExtendModeY       : D2D1_EXTEND_MODE;
    InterpolationMode : D2D1_BITMAP_INTERPOLATION_MODE;
  end;

  PD2D1_BITMAP_BRUSH_PROPERTIES = ^D2D1_BITMAP_BRUSH_PROPERTIES;

  TD2D1BitmapBrushProperties = D2D1_BITMAP_BRUSH_PROPERTIES;
  PD2D1BitmapBrushProperties = ^TD2D1BitmapBrushProperties;

  /// <summary>
  /// Contains the starting point and endpoint of the gradient axis for an
  /// ID2D1LinearGradientBrush.
  /// </summary>
  D2D1_LINEAR_GRADIENT_BRUSH_PROPERTIES = record
    StartPoint: D2D1_POINT_2F;
    EndPoint  : D2D1_POINT_2F;
  end;

  PD2D1_LINEAR_GRADIENT_BRUSH_PROPERTIES = ^D2D1_LINEAR_GRADIENT_BRUSH_PROPERTIES;

  TD2D1LinearGradientBrushProperties = D2D1_LINEAR_GRADIENT_BRUSH_PROPERTIES;
  PD2D1LinearGradientBrushProperties = ^TD2D1LinearGradientBrushProperties;

  /// <summary>
  /// Contains the gradient origin offset and the size and position of the gradient
  /// ellipse for an ID2D1RadialGradientBrush.
  /// </summary>
  D2D1_RADIAL_GRADIENT_BRUSH_PROPERTIES = record
    Center              : D2D1_POINT_2F;
    GradientOriginOffset: D2D1_POINT_2F
  end;

  PD2D1_RADIAL_GRADIENT_BRUSH_PROPERTIES = ^D2D1_RADIAL_GRADIENT_BRUSH_PROPERTIES;

  TD2D1RadialGradientBrushProperties = D2D1_RADIAL_GRADIENT_BRUSH_PROPERTIES;
  PD2D1RadialGradientBrushProperties = ^TD2D1RadialGradientBrushProperties;

{$ENDREGION}

{$REGION 'd2d1_1.h records'}

  D2D1_MATRIX_4X4_F = record
    M11, M12, M13, M14: Single;
    M21, M22, M23, M24: Single;
    M31, M32, M33, M34: Single;
    M41, M42, M43, M44: Single;
  end;

  PD2D1_MATRIX_4X4_F = ^D2D1_MATRIX_4X4_F;

  /// <summary>
  /// Extended bitmap properties.
  /// </summary>
  D2D1_BITMAP_PROPERTIES1 = record
   PixelFormat: D2D1_PIXEL_FORMAT;
    DpiX: Single;
    DpiY: Single;

    /// <summary>
    /// Specifies how the bitmap can be used.
    /// </summary>
    BitmapOptions: D2D1_BITMAP_OPTIONS;
    ColorContext: ID2D1ColorContext;
  end;

  PD2D1_BITMAP_PROPERTIES1 = ^D2D1_BITMAP_PROPERTIES1;

  /// <summary>
  /// Describes mapped memory from the ID2D1Bitmap1::Map API.
  /// </summary>
  D2D1_MAPPED_RECT = record
    Pitch: UINT32;
    Bits: PByte;
  end;

  PD2D1_MAPPED_RECT = ^D2D1_MAPPED_RECT;

  /// <summary>
  /// This controls advanced settings of the Direct2D imaging pipeline.
  /// </summary>
  D2D1_RENDERING_CONTROLS = record

    /// <summary>
    /// The default buffer precision, used if the precision isn't otherwise specified.
    /// </summary>
    BufferPrecision: D2D1_BUFFER_PRECISION;

    /// <summary>
    /// The size of allocated tiles used to render imaging effects.
    /// </summary>
    TileSize: D2D1_SIZE_U;
  end;

  PD2D1_RENDERING_CONTROLS = ^D2D1_RENDERING_CONTROLS;

  /// <summary>
  /// This identifies a certain input connection of a certain effect.
  /// </summary>
  D2D1_EFFECT_INPUT_DESCRIPTION = record

    /// <summary>
    /// The effect whose input connection is being specified.
    /// </summary>
    Effect: ID2D1Effect;

    /// <summary>
    /// The index of the input connection into the specified effect.
    /// </summary>
    InputIndex: UInt32;

    /// <summary>
    /// The rectangle which would be available on the specified input connection during
    /// render operations.
    /// </summary>
    InputRectangle: D2D1_RECT_F;
  end;

  PD2D1_EFFECT_INPUT_DESCRIPTION = ^D2D1_EFFECT_INPUT_DESCRIPTION;

  /// <summary>
  /// Describes a point along a path.
  /// </summary>
  D2D1_POINT_DESCRIPTION = record
    Point: D2D1_POINT_2F;
    UnitTangentVector: D2D1_POINT_2F;
    EndSegment: UInt32;
    EndFigure: UInt32;
    LengthToEndSegment: Single;
  end;

  PD2D1_POINT_DESCRIPTION = ^D2D1_POINT_DESCRIPTION;

  /// <summary>
  /// Creation properties for an image brush.
  /// </summary>
  D2D1_IMAGE_BRUSH_PROPERTIES = record
    SourceRectangle: D2D1_RECT_F;
    ExtendModeX: D2D1_EXTEND_MODE;
    ExtendModeY: D2D1_EXTEND_MODE;
    InterpolationMode: D2D1_INTERPOLATION_MODE;
  end;

  PD2D1_IMAGE_BRUSH_PROPERTIES = ^D2D1_IMAGE_BRUSH_PROPERTIES;

  /// <summary>
  /// Describes the extend modes and the interpolation mode of an ID2D1BitmapBrush.
  /// </summary>
  D2D1_BITMAP_BRUSH_PROPERTIES1 = record
    ExtendModeX: D2D1_EXTEND_MODE;
    ExtendModeY: D2D1_EXTEND_MODE;
    InterpolationMode: D2D1_INTERPOLATION_MODE;
  end;

  PD2D1_BITMAP_BRUSH_PROPERTIES1 = ^D2D1_BITMAP_BRUSH_PROPERTIES1;

  /// <summary>
  /// This defines how geometries should be drawn and widened.
  /// </summary>
  D2D1_STROKE_STYLE_PROPERTIES1 = record
    StartCap    : D2D1_CAP_STYLE;
    EndCap      : D2D1_CAP_STYLE;
    DashCap     : D2D1_CAP_STYLE;
    LineJoin    : D2D1_LINE_JOIN;
    MiterLimit  : Single;
    DashStyle   :D2D1_DASH_STYLE;
    DashOffset  : Single;

    /// <summary>
    /// How the nib of the stroke is influenced by the context properties.
    /// </summary>
    TransformType: D2D1_STROKE_TRANSFORM_TYPE;
  end;

  PD2D1_STROKE_STYLE_PROPERTIES1 = ^D2D1_STROKE_STYLE_PROPERTIES1;

  /// <summary>
  /// All parameters related to pushing a layer.
  /// </summary>
  D2D1_LAYER_PARAMETERS1 = record
    ContentBounds: D2D1_RECT_F;
    GeometricMask: ID2D1Geometry;
    MaskAntialiasMode: D2D1_ANTIALIAS_MODE;
    MaskTransform: D2D1_MATRIX_3X2_F;
    Opacity: Single;
    OpacityBrush: ID2D1Brush;
    LayerOptions: D2D1_LAYER_OPTIONS1;
  end;

  PD2D1_LAYER_PARAMETERS1 = ^D2D1_LAYER_PARAMETERS1;

  /// <summary>
  /// This describes the drawing state.
  /// </summary>
  D2D1_DRAWING_STATE_DESCRIPTION1 = record
    AntialiasMode: D2D1_ANTIALIAS_MODE;
    TextAntialiasMode: D2D1_TEXT_ANTIALIAS_MODE;
    Tag1: D2D1_TAG;
    Tag2: D2D1_TAG;
    Transform: D2D1_MATRIX_3X2_F;
    PrimitiveBlend: D2D1_PRIMITIVE_BLEND;
    UnitMode: D2D1_UNIT_MODE;
  end;

  PD2D1_DRAWING_STATE_DESCRIPTION1 = ^D2D1_DRAWING_STATE_DESCRIPTION1;

  /// <summary>
  /// The creation properties for a ID2D1PrintControl object.
  /// </summary>
  D2D1_PRINT_CONTROL_PROPERTIES = record

    FontSubset: D2D1_PRINT_FONT_SUBSET_MODE;

    /// <summary>
    /// DPI for rasterization of all unsupported D2D commands or options, defaults to
    /// 150.0
    /// </summary>
    RasterDPI: Single;

    /// <summary>
    /// Color space for vector graphics in XPS package
    /// </summary>
    ColorSpace: D2D1_COLOR_SPACE;
  end;

  PD2D1_PRINT_CONTROL_PROPERTIES = ^D2D1_PRINT_CONTROL_PROPERTIES;

  /// <summary>
  /// This specifies the options while simultaneously creating the device, factory,
  /// and device context.
  /// </summary>
  D2D1_CREATION_PROPERTIES = record

    /// <summary>
    /// Describes locking behavior of D2D resources
    /// </summary>
    ThreadingMode: D2D1_THREADING_MODE;
    DebugLevel: D2D1_DEBUG_LEVEL;
    Options: D2D1_DEVICE_CONTEXT_OPTIONS;
  end;

  PD2D1_CREATION_PROPERTIES = ^D2D1_CREATION_PROPERTIES;

{$ENDREGION}

{$REGION 'd2d1_2.h records'}

//
{$ENDREGION}

{$REGION 'd2d1_3.h records'}

  /// <summary>
  /// Properties of a transformed image source.
  /// </summary>
  D2D1_TRANSFORMED_IMAGE_SOURCE_PROPERTIES = record

    /// <summary>
    /// The orientation at which the image source is drawn.
    /// </summary>
    Orientation: D2D1_ORIENTATION;

    /// <summary>
    /// The horizontal scale factor at which the image source is drawn.
    /// </summary>
    ScaleX: Single;

    /// <summary>
    /// The vertical scale factor at which the image source is drawn.
    /// </summary>
    ScaleY: Single;

    /// <summary>
    /// The interpolation mode used when the image source is drawn.  This is ignored if
    /// the image source is drawn using the DrawImage method, or using an image brush.
    /// </summary>
    InterpolationMode: D2D1_INTERPOLATION_MODE;

    /// <summary>
    /// Option flags.
    /// </summary>
    Options: D2D1_TRANSFORMED_IMAGE_SOURCE_OPTIONS;
  end;

  PD2D1_TRANSFORMED_IMAGE_SOURCE_PROPERTIES = ^D2D1_TRANSFORMED_IMAGE_SOURCE_PROPERTIES;

  /// <summary>
  /// Represents a point, radius pair that makes up part of a D2D1_INK_BEZIER_SEGMENT.
  /// </summary>
  D2D1_INK_POINT = record
    X: Single;
    Y: Single;
    Radius: Single
  end;

  PD2D1_INK_POINT = ^D2D1_INK_POINT;

  /// <summary>
  /// Represents a Bezier segment to be used in the creation of an ID2D1Ink object.
  /// This structure differs from D2D1_BEZIER_SEGMENT in that it is composed of
  /// D2D1_INK_POINT s, which contain a radius in addition to x- and y-coordinates.
  /// </summary>
  D2D1_INK_BEZIER_SEGMENT = record
    Point1: D2D1_INK_POINT;
    Point2: D2D1_INK_POINT;
    Point3: D2D1_INK_POINT;
  end;

  PD2D1_INK_BEZIER_SEGMENT = ^D2D1_INK_BEZIER_SEGMENT;

  /// <summary>
  /// Defines the general pen tip shape and the transform used in an ID2D1InkStyle
  /// object.
  /// </summary>
  D2D1_INK_STYLE_PROPERTIES = record

    /// <summary>
    /// The general shape of the nib used to draw a given ink object.
    /// </summary>
    NibShape: D2D1_INK_NIB_SHAPE;

    /// <summary>
    /// The transform applied to shape of the nib. _31 and _32 are ignored.
    /// </summary>
    NibTransform: D2D1_MATRIX_3X2_F;
  end;

  PD2D1_INK_STYLE_PROPERTIES = ^D2D1_INK_STYLE_PROPERTIES;

  /// <summary>
  /// Represents a tensor patch with 16 control points, 4 corner colors, and boundary
  /// flags. An ID2D1GradientMesh is made up of 1 or more gradient mesh patches. Use
  /// the GradientMeshPatch function or the GradientMeshPatchFromCoonsPatch function
  /// to create one.
  /// </summary>
  D2D1_GRADIENT_MESH_PATCH = record
    /// <summary>
    /// The gradient mesh patch control point at position 00.
    /// </summary>
    Point00: D2D1_POINT_2F;

    /// <summary>
    /// The gradient mesh patch control point at position 01.
    /// </summary>
    Point01: D2D1_POINT_2F;

    /// <summary>
    /// The gradient mesh patch control point at position 02.
    /// </summary>
    Point02: D2D1_POINT_2F;

    /// <summary>
    /// The gradient mesh patch control point at position 03.
    /// </summary>
    Point03: D2D1_POINT_2F;

    /// <summary>
    /// The gradient mesh patch control point at position 10.
    /// </summary>
    Point10: D2D1_POINT_2F;

    /// <summary>
    /// The gradient mesh patch control point at position 11.
    /// </summary>
    Point11: D2D1_POINT_2F;

    /// <summary>
    /// The gradient mesh patch control point at position 12.
    /// </summary>
    Point12: D2D1_POINT_2F;

    /// <summary>
    /// The gradient mesh patch control point at position 13.
    /// </summary>
    Point13: D2D1_POINT_2F;

    /// <summary>
    /// The gradient mesh patch control point at position 20.
    /// </summary>
    Point20: D2D1_POINT_2F;

    /// <summary>
    /// The gradient mesh patch control point at position 21.
    /// </summary>
    Point21: D2D1_POINT_2F;

    /// <summary>
    /// The gradient mesh patch control point at position 22.
    /// </summary>
    Point22: D2D1_POINT_2F;

    /// <summary>
    /// The gradient mesh patch control point at position 23.
    /// </summary>
    Point23: D2D1_POINT_2F;

    /// <summary>
    /// The gradient mesh patch control point at position 30.
    /// </summary>
    Point30: D2D1_POINT_2F;

    /// <summary>
    /// The gradient mesh patch control point at position 31.
    /// </summary>
    Point31: D2D1_POINT_2F;

    /// <summary>
    /// The gradient mesh patch control point at position 32.
    /// </summary>
    Point32: D2D1_POINT_2F;

    /// <summary>
    /// The gradient mesh patch control point at position 33.
    /// </summary>
    Point33: D2D1_POINT_2F;

    /// <summary>
    /// The color associated with control point at position 00.
    /// </summary>
    Color00: D2D1_COLOR_F;

    /// <summary>
    /// The color associated with control point at position 03.
    /// </summary>
    Color03: D2D1_COLOR_F;

    /// <summary>
    /// The color associated with control point at position 30.
    /// </summary>
    Color30: D2D1_COLOR_F;

    /// <summary>
    /// The color associated with control point at position 33.
    /// </summary>
    Color33: D2D1_COLOR_F;

    /// <summary>
    /// The edge mode for the top edge of the patch.
    /// </summary>
    TopEdgeMode: D2D1_PATCH_EDGE_MODE;

    /// <summary>
    /// The edge mode for the left edge of the patch.
    /// </summary>
    LeftEdgeMode: D2D1_PATCH_EDGE_MODE;

    /// <summary>
    /// The edge mode for the bottom edge of the patch.
    /// </summary>
    BottomEdgeMode: D2D1_PATCH_EDGE_MODE;

    /// <summary>
    /// The edge mode for the right edge of the patch.
    /// </summary>
    RightEdgeMode: D2D1_PATCH_EDGE_MODE;
  end;

  PD2D1_GRADIENT_MESH_PATCH = ^D2D1_GRADIENT_MESH_PATCH;

  /// <summary>
  /// Simple description of a color space.
  /// </summary>
  D2D1_SIMPLE_COLOR_PROFILE = record
    /// <summary>
    /// The XY coordinates of the red primary in CIEXYZ space.
    /// </summary>
    RedPrimary: D2D1_POINT_2F;

    /// <summary>
    /// The XY coordinates of the green primary in CIEXYZ space.
    /// </summary>
    GreenPrimary: D2D1_POINT_2F;

    /// <summary>
    /// The XY coordinates of the blue primary in CIEXYZ space.
    /// </summary>
    BluePrimary: D2D1_POINT_2F;

    /// <summary>
    /// The X/Z tristimulus values for the whitepoint, normalized for relative
    /// luminance.
    /// </summary>
    WhitePointXZ: D2D1_POINT_2F;

    /// <summary>
    /// The gamma encoding to use for this color space.
    /// </summary>
    Gamma: D2D1_GAMMA1;
  end;

  PD2D1_SIMPLE_COLOR_PROFILE = ^D2D1_SIMPLE_COLOR_PROFILE;

{$ENDREGION}

{$REGION 'dwrite.h records'}
  /// <summary>
  /// The DWRITE_FONT_METRICS structure specifies the metrics of a font face that
  /// are applicable to all glyphs within the font face.
  /// </summary>
  DWRITE_FONT_METRICS = record
    /// <summary>
    /// The number of font design units per em unit.
    /// Font files use their own coordinate system of font design units.
    /// A font design unit is the smallest measurable unit in the em square,
    /// an imaginary square that is used to size and align glyphs.
    /// The concept of em square is used as a reference scale factor when defining font size and device transformation semantics.
    /// The size of one em square is also commonly used to compute the paragraph indentation value.
    /// </summary>
    DesignUnitsPerEm: UInt16;

    /// <summary>
    /// Ascent value of the font face in font design units.
    /// Ascent is the distance from the top of font character alignment box to English baseline.
    /// </summary>
    Ascent: UInt16;

    /// <summary>
    /// Descent value of the font face in font design units.
    /// Descent is the distance from the bottom of font character alignment box to English baseline.
    /// </summary>
    Descent: UInt16;

    /// <summary>
    /// Line gap in font design units.
    /// Recommended additional white space to add between lines to improve legibility. The recommended line spacing
    /// (baseline-to-baseline distance) is thus the sum of ascent, descent, and lineGap. The line gap is usually
    /// positive or zero but can be negative, in which case the recommended line spacing is less than the height
    /// of the character alignment box.
    /// </summary>
    LineGap: UInt16;

    /// <summary>
    /// Cap height value of the font face in font design units.
    /// Cap height is the distance from English baseline to the top of a typical English capital.
    /// Capital "H" is often used as a reference character for the purpose of calculating the cap height value.
    /// </summary>
    CapHeight: UInt16;

    /// <summary>
    /// x-height value of the font face in font design units.
    /// x-height is the distance from English baseline to the top of lowercase letter "x", or a similar lowercase character.
    /// </summary>
    XHeight: UInt16;

    /// <summary>
    /// The underline position value of the font face in font design units.
    /// Underline position is the position of underline relative to the English baseline.
    /// The value is usually made negative in order to place the underline below the baseline.
    /// </summary>
    UnderlinePosition: Int16;

    /// <summary>
    /// The suggested underline thickness value of the font face in font design units.
    /// </summary>
    UnderlineThickness: UInt16;

    /// <summary>
    /// The strikethrough position value of the font face in font design units.
    /// Strikethrough position is the position of strikethrough relative to the English baseline.
    /// The value is usually made positive in order to place the strikethrough above the baseline.
    /// </summary>
    StrikethroughPosition: Int16;

    /// <summary>
    /// The suggested strikethrough thickness value of the font face in font design units.
    /// </summary>
    StrikethroughThickness: UInt16;
  end;

  PDWRITE_FONT_METRICS = ^DWRITE_FONT_METRICS;

  /// <summary>
  /// The DWRITE_GLYPH_METRICS structure specifies the metrics of an individual glyph.
  /// The units depend on how the metrics are obtained.
  /// </summary>
  DWRITE_GLYPH_METRICS = record

    /// <summary>
    /// Specifies the X offset from the glyph origin to the left edge of the black box.
    /// The glyph origin is the current horizontal writing position.
    /// A negative value means the black box extends to the left of the origin (often true for lowercase italic 'f').
    /// </summary>
    LeftSideBearing: Int32;

    /// <summary>
    /// Specifies the X offset from the origin of the current glyph to the origin of the next glyph when writing horizontally.
    /// </summary>
    AdvanceWidth: UInt32;

    /// <summary>
    /// Specifies the X offset from the right edge of the black box to the origin of the next glyph when writing horizontally.
    /// The value is negative when the right edge of the black box overhangs the layout box.
    /// </summary>
    RightSideBearing: Int32;

    /// <summary>
    /// Specifies the vertical offset from the vertical origin to the top of the black box.
    /// Thus, a positive value adds whitespace whereas a negative value means the glyph overhangs the top of the layout box.
    /// </summary>
    TopSideBearing: Int32;

    /// <summary>
    /// Specifies the Y offset from the vertical origin of the current glyph to the vertical origin of the next glyph when writing vertically.
    /// (Note that the term "origin" by itself denotes the horizontal origin. The vertical origin is different.
    /// Its Y coordinate is specified by verticalOriginY value,
    /// and its X coordinate is half the advanceWidth to the right of the horizontal origin).
    /// </summary>
    AdvanceHeight: UInt32;

    /// <summary>
    /// Specifies the vertical distance from the black box's bottom edge to the advance height.
    /// Positive when the bottom edge of the black box is within the layout box.
    /// Negative when the bottom edge of black box overhangs the layout box.
    /// </summary>
    BottomSideBearing: Int32;

    /// <summary>
    /// Specifies the Y coordinate of a glyph's vertical origin, in the font's design coordinate system.
    /// The y coordinate of a glyph's vertical origin is the sum of the glyph's top side bearing
    /// and the top (i.e. yMax) of the glyph's bounding box.
    /// </summary>
    VerticalOriginY: Int32;
  end;

  PDWRITE_GLYPH_METRICS = ^DWRITE_GLYPH_METRICS;

  /// <summary>
  /// Optional adjustment to a glyph's position. A glyph offset changes the position of a glyph without affecting
  /// the pen position. Offsets are in logical, pre-transform units.
  /// </summary>
  DWRITE_GLYPH_OFFSET = record
    AdvanceOffset : Single;
    AscenderOffset: Single;
  end;

  PDWRITE_GLYPH_OFFSET = ^DWRITE_GLYPH_OFFSET;

  /// <summary>
  /// The DWRITE_MATRIX structure specifies the graphics transform to be applied
  /// to rendered glyphs.
  /// </summary>
  DWRITE_MATRIX = record

    /// <summary>
    /// Horizontal scaling / cosine of rotation
    /// </summary>
    M11: Single;

    /// <summary>
    /// Vertical shear / sine of rotation
    /// </summary>
    M12: Single;

    /// <summary>
    /// Horizontal shear / negative sine of rotation
    /// </summary>
    M21: Single;

    /// <summary>
    /// Vertical scaling / cosine of rotation
    /// </summary>
    M22: Single;

    /// <summary>
    /// Horizontal shift (always orthogonal regardless of rotation)
    /// </summary>
    DX: Single;

    /// <summary>
    /// Vertical shift (always orthogonal regardless of rotation)
    /// </summary>
    DY: Single;
  end;

  PDWRITE_MATRIX = ^DWRITE_MATRIX;

  /// <summary>
  /// The DWRITE_TEXT_RANGE structure specifies a range of text positions where format is applied.
  /// </summary>
  DWRITE_TEXT_RANGE = record

    /// <summary>
    /// The start text position of the range.
    /// </summary>
    StartPosition: UInt32;

    /// <summary>
    /// The number of text positions in the range.
    /// </summary>
    Length: UInt32;
  end;

  PDWRITE_TEXT_RANGE = ^DWRITE_TEXT_RANGE;

  /// <summary>
  /// The DWRITE_FONT_FEATURE structure specifies properties used to identify and execute typographic feature in the font.
  /// </summary>
  DWRITE_FONT_FEATURE = record

    /// <summary>
    /// The feature OpenType name identifier.
    /// </summary>
    NameTag: DWRITE_FONT_FEATURE_TAG;

    /// <summary>
    /// Execution parameter of the feature.
    /// </summary>
    /// <remarks>
    /// The parameter should be non-zero to enable the feature.  Once enabled, a feature can't be disabled again within
    /// the same range.  Features requiring a selector use this value to indicate the selector index.
    /// </remarks>
    Parameter: UInt32;
  end;

  PDWRITE_FONT_FEATURE = ^DWRITE_FONT_FEATURE;

  /// <summary>
  /// Defines a set of typographic features to be applied during shaping.
  /// Notice the character range which this feature list spans is specified
  /// as a separate parameter to GetGlyphs.
  /// </summary>
  DWRITE_TYPOGRAPHIC_FEATURES = record

    /// <summary>
    /// Array of font features.
    /// </summary>
    Features: DWRITE_FONT_FEATURE;

    /// <summary>
    /// The number of features.
    /// </summary>
    FeatureCount: UInt32;
  end;

  PDWRITE_TYPOGRAPHIC_FEATURES = ^DWRITE_TYPOGRAPHIC_FEATURES;

  /// <summary>
  /// The DWRITE_TRIMMING structure specifies the trimming option for text overflowing the layout box.
  /// </summary>
  DWRITE_TRIMMING = record
    /// <summary>
    /// Text granularity of which trimming applies.
    /// </summary>
    Granularity: DWRITE_TRIMMING_GRANULARITY;

    /// <summary>
    /// Character code used as the delimiter signaling the beginning of the portion of text to be preserved,
    /// most useful for path ellipsis, where the delimiter would be a slash. Leave this zero if there is no
    /// delimiter.
    /// </summary>
    Delimiter: UInt32;

    /// <summary>
    /// How many occurrences of the delimiter to step back. Leave this zero if there is no delimiter.
    /// </summary>
    DelimiterCount: UInt32;
  end;

  PDWRITE_TRIMMING = ^DWRITE_TRIMMING;

  /// <summary>
  /// Association of text and its writing system script as well as some display attributes.
  /// </summary>
  DWRITE_SCRIPT_ANALYSIS = record
    /// <summary>
    /// Zero-based index representation of writing system script.
    /// </summary>
    Script: UInt16;

    /// <summary>
    /// Additional shaping requirement of text.
    /// </summary>
    Shapes: DWRITE_SCRIPT_SHAPES;
  end;

  PDWRITE_SCRIPT_ANALYSIS = ^DWRITE_SCRIPT_ANALYSIS;

  /// <summary>
  /// Line breakpoint characteristics of a character.
  /// </summary>
  DWRITE_LINE_BREAKPOINT = record
    Data: UInt8;
    private
      function  GetByte(const AIndex: Integer): UInt8;
      procedure SetByte(const AIndex: Integer; AValue: UInt8);
    public
      /// <summary>
      /// Breaking condition before the character.
      /// </summary>
      property BreakConditionBefore : UInt8 Index $0003 read GetByte write SetByte; // offset 0, mask $0003, size 2

    /// <summary>
    /// Breaking condition after the character.
    /// </summary>
      property BreakConditionAfter  : UInt8 Index $0203 read GetByte write SetByte; // offset 2, mask $0003, size 2

    /// <summary>
    /// The character is some form of whitespace, which may be meaningful
    /// for justification.
    /// </summary>
      property IsWhiteSpace         : UInt8 Index $0401 read GetByte write SetByte; // offset 4, mask $0001, size 1

    /// <summary>
    /// The character is a soft hyphen, often used to indicate hyphenation
    /// points inside words.
    /// </summary>
      property IsSoftHyphen         : UInt8 Index $0501 read GetByte write SetByte; // offset 5, mask $0001, size 1
      property Padding              : UInt8 Index $0603 read GetByte write SetByte; // offset 6, mask $0003, size 2
  end;

  PDWRITE_LINE_BREAKPOINT = ^DWRITE_LINE_BREAKPOINT;

  /// <summary>
  /// Shaping output properties per input character.
  /// </summary>
  DWRITE_SHAPING_TEXT_PROPERTIES = record
    Data: UInt16;
    private
      function  GetWord(const AIndex: Integer): UInt16;
      procedure SetWord(const AIndex: Integer; AValue: UInt16);
    public
      /// <summary>
      /// This character can be shaped independently from the others
      /// (usually set for the space character).
      /// </summary>
      property IsShapedAlone        : UInt16 Index $00000001 read GetWord write SetWord; // offset 0, mask $0001, size 1

      /// <summary>
      /// Reserved for use by shaping engine.
      /// </summary>
      property Reserved1            : UInt16 Index $00010001 read GetWord write SetWord; // offset 1, mask $0001, size 1

      /// <summary>
      /// Glyph shaping can be cut after this point without affecting shaping
      /// before or after it. Otherwise, splitting a call to GetGlyphs would
      /// cause a reflow of glyph advances and shapes.
      /// </summary>
      property CanBreakShapingAfter : UInt16 Index $00020001 read GetWord write SetWord; // offset 2, mask $0001, size 1

      /// <summary>
      /// Reserved for use by shaping engine.
      /// </summary>
      property Reserved             : UInt16 Index $00031FFF read GetWord write SetWord; // offset 3, mask $1FFF, size 13
  end;

  PDWRITE_SHAPING_TEXT_PROPERTIES = ^DWRITE_SHAPING_TEXT_PROPERTIES;

  /// <summary>
  /// Shaping output properties per output glyph.
  /// </summary>
  DWRITE_SHAPING_GLYPH_PROPERTIES = record
    Data: UInt16;
    private
      function  GetWord(const AIndex: Integer): UInt16;
      procedure SetWord(const AIndex: Integer; AValue: UInt16);
    public
      /// <summary>
      /// Justification class, whether to use spacing, kashidas, or
      /// another method. This exists for backwards compatibility
      /// with Uniscribe's SCRIPT_JUSTIFY enum.
      /// </summary>
      property Justification    : UInt16 Index $0000000F read GetWord write SetWord; // offset 0, mask $000F, size 4

      /// <summary>
      /// Indicates glyph is the first of a cluster.
      /// </summary>
      property IsClusterStart   : UInt16 Index $00040001 read GetWord write SetWord; // offset 4, mask $0001, size 1

      /// <summary>
      /// Glyph is a diacritic.
      /// </summary>
      property IsDiacritic      : UInt16 Index $00050001 read GetWord write SetWord; // offset 5, mask $0001, size 1

      /// <summary>
      /// Glyph has no width, mark, ZWJ, ZWNJ, ZWSP, LRM etc.
      /// This flag is not limited to just U+200B.
      /// </summary>
      property IsZeroWidthSpace : UInt16 Index $00060001 read GetWord write SetWord; // offset 6, mask $0001, size 1

      /// <summary>
      /// Reserved for use by shaping engine.
      /// </summary>
      property Reserved         : UInt16 Index $000701FF read GetWord write SetWord; // offset 7, mask $01FF, size 9
  end;

  PDWRITE_SHAPING_GLYPH_PROPERTIES = ^DWRITE_SHAPING_GLYPH_PROPERTIES;

  /// <summary>
  /// The DWRITE_GLYPH_RUN structure contains the information needed by renderers
  /// to draw glyph runs. All coordinates are in device independent pixels (DIPs).
  /// </summary>
  DWRITE_GLYPH_RUN = record

    /// <summary>
    /// The physical font face to draw with.
    /// </summary>
    FontFace      : IDWriteFontFace;

    /// <summary>
    /// Logical size of the font in DIPs, not points (equals 1/96 inch).
    /// </summary>
    FontEmSize    : Single;

    /// <summary>
    /// The number of glyphs.
    /// </summary>
    GlyphCount    : UInt32;

    /// <summary>
    /// The indices to render.
    /// </summary>
    GlyphIndices  : PWORD;

    /// <summary>
    /// Glyph advance widths.
    /// </summary>
    GlyphAdvances : PSingle;

    /// <summary>
    /// Glyph offsets.
    /// </summary>
    GlyphOffsets  : PDWRITE_GLYPH_OFFSET;

    /// <summary>
    /// If true, specifies that glyphs are rotated 90 degrees to the left and
    /// vertical metrics are used. Vertical writing is achieved by specifying
    /// isSideways = true and rotating the entire run 90 degrees to the right
    /// via a rotate transform.
    /// </summary>
    IsSideways    : BOOL;

    /// <summary>
    /// The implicit resolved bidi level of the run. Odd levels indicate
    /// right-to-left languages like Hebrew and Arabic, while even levels
    /// indicate left-to-right languages like English and Japanese (when
    /// written horizontally). For right-to-left languages, the text origin
    /// is on the right, and text should be drawn to the left.
    /// </summary>
    BidiLevel     : UInt32;
  end;

  PDWRITE_GLYPH_RUN = ^DWRITE_GLYPH_RUN;

  /// <summary>
  /// The DWRITE_GLYPH_RUN_DESCRIPTION structure contains additional properties
  /// related to those in DWRITE_GLYPH_RUN.
  /// </summary>
  DWRITE_GLYPH_RUN_DESCRIPTION = record

    /// <summary>
    /// The locale name associated with this run.
    /// </summary>
    LocaleName: PWChar;

    /// <summary>
    /// The text associated with the glyphs.
    /// </summary>
    &String: PWChar;

    /// <summary>
    /// The number of characters (UTF16 code-units).
    /// Note that this may be different than the number of glyphs.
    /// </summary>
    StringLength: UInt32;

    /// <summary>
    /// An array of indices to the glyph indices array, of the first glyphs of
    /// all the glyph clusters of the glyphs to render.
    /// </summary>
    ClusterMap: PWORD;

    /// <summary>
    /// Corresponding text position in the original string
    /// this glyph run came from.
    /// </summary>
    TextPosition: UInt32;
  end;

  PDWRITE_GLYPH_RUN_DESCRIPTION = ^DWRITE_GLYPH_RUN_DESCRIPTION;

  /// <summary>
  /// The DWRITE_UNDERLINE structure contains information about the size and
  /// placement of underlines. All coordinates are in device independent
  /// pixels (DIPs).
  /// </summary>
  DWRITE_UNDERLINE = record

    /// <summary>
    /// Width of the underline, measured parallel to the baseline.
    /// </summary>
    Width: Single;

    /// <summary>
    /// Thickness of the underline, measured perpendicular to the
    /// baseline.
    /// </summary>
    Thickness: Single;

    /// <summary>
    /// Offset of the underline from the baseline.
    /// A positive offset represents a position below the baseline and
    /// a negative offset is above.
    /// </summary>
    Offset: Single;

    /// <summary>
    /// Height of the tallest run where the underline applies.
    /// </summary>
    RunHeight: Single;

    /// <summary>
    /// Reading direction of the text associated with the underline.  This
    /// value is used to interpret whether the width value runs horizontally
    /// or vertically.
    /// </summary>
    ReadingDirection: DWRITE_READING_DIRECTION;

    /// <summary>
    /// Flow direction of the text associated with the underline.  This value
    /// is used to interpret whether the thickness value advances top to
    /// bottom, left to right, or right to left.
    /// </summary>
    FlowDirection: DWRITE_FLOW_DIRECTION;

    /// <summary>
    /// Locale of the text the underline is being drawn under. Can be
    /// pertinent where the locale affects how the underline is drawn.
    /// For example, in vertical text, the underline belongs on the
    /// left for Chinese but on the right for Japanese.
    /// This choice is completely left up to higher levels.
    /// </summary>
    LocaleName: PWChar;

    /// <summary>
    /// The measuring mode can be useful to the renderer to determine how
    /// underlines are rendered, e.g. rounding the thickness to a whole pixel
    /// in GDI-compatible modes.
    /// </summary>
    MeasuringMode: DWRITE_MEASURING_MODE;
  end;

  PDWRITE_UNDERLINE = ^DWRITE_UNDERLINE;

  /// <summary>
  /// The DWRITE_STRIKETHROUGH structure contains information about the size and
  /// placement of strikethroughs. All coordinates are in device independent
  /// pixels (DIPs).
  /// </summary>
  DWRITE_STRIKETHROUGH = record

    /// <summary>
    /// Width of the strikethrough, measured parallel to the baseline.
    /// </summary>
    Width: Single;

    /// <summary>
    /// Thickness of the strikethrough, measured perpendicular to the
    /// baseline.
    /// </summary>
    Thickness: Single;

    /// <summary>
    /// Offset of the strikethrough from the baseline.
    /// A positive offset represents a position below the baseline and
    /// a negative offset is above.
    /// </summary>
    Offset: Single;

    /// <summary>
    /// Reading direction of the text associated with the strikethrough.  This
    /// value is used to interpret whether the width value runs horizontally
    /// or vertically.
    /// </summary>
    ReadingDirection: DWRITE_READING_DIRECTION;

    /// <summary>
    /// Flow direction of the text associated with the strikethrough.  This
    /// value is used to interpret whether the thickness value advances top to
    /// bottom, left to right, or right to left.
    /// </summary>
    FlowDirection: DWRITE_FLOW_DIRECTION;

    /// <summary>
    /// Locale of the range. Can be pertinent where the locale affects the style.
    /// </summary>
    LocaleName: PWChar;

    /// <summary>
    /// The measuring mode can be useful to the renderer to determine how
    /// underlines are rendered, e.g. rounding the thickness to a whole pixel
    /// in GDI-compatible modes.
    /// </summary>
    MeasuringMode: DWRITE_MEASURING_MODE;
  end;

  PDWRITE_STRIKETHROUGH = ^DWRITE_STRIKETHROUGH;

  /// <summary>
  /// The DWRITE_LINE_METRICS structure contains information about a formatted
  /// line of text.
  /// </summary>
  DWRITE_LINE_METRICS = record

    /// <summary>
    /// The number of total text positions in the line.
    /// This includes any trailing whitespace and newline characters.
    /// </summary>
    Length: UInt32;

    /// <summary>
    /// The number of whitespace positions at the end of the line.  Newline
    /// sequences are considered whitespace.
    /// </summary>
    TrailingWhitespaceLength: UInt32;

    /// <summary>
    /// The number of characters in the newline sequence at the end of the line.
    /// If the count is zero, then the line was either wrapped or it is the
    /// end of the text.
    /// </summary>
    NewlineLength: UInt32;

    /// <summary>
    /// Height of the line as measured from top to bottom.
    /// </summary>
    Height: Single;

    /// <summary>
    /// Distance from the top of the line to its baseline.
    /// </summary>
    Baseline: Single;

    /// <summary>
    /// The line is trimmed.
    /// </summary>
    IsTrimmed: BOOL;
  end;

  PDWRITE_LINE_METRICS = ^DWRITE_LINE_METRICS;

  /// <summary>
  /// The DWRITE_CLUSTER_METRICS structure contains information about a glyph cluster.
  /// </summary>

  DWRITE_CLUSTER_METRICS = record
      /// <summary>
      /// The total advance width of all glyphs in the cluster.
      /// </summary>
      Width:  Single;

      /// <summary>
      /// The number of text positions in the cluster.
      /// </summary>
      Length: UInt16;
      Data: UInt16;
    private
      function  GetWord(const AIndex: Integer): UInt16;
      procedure SetWord(const AIndex: Integer; AValue: UInt16);
    public

      property CanWrapLineAfter : UInt16 Index $00000001 read GetWord write SetWord; // offset 0, mask $0001, size 1
      property IsWhitespace     : UInt16 Index $00010001 read GetWord write SetWord; // offset 1, mask $0001, size 1
      property IsNewline        : UInt16 Index $00020001 read GetWord write SetWord; // offset 2, mask $0001, size 1
      property IsSoftHyphen     : UInt16 Index $00030001 read GetWord write SetWord; // offset 3, mask $0001, size 1
      property IsRightToLeft    : UInt16 Index $00040001 read GetWord write SetWord; // offset 4, mask $0001, size 1
      property Padding          : UInt16 Index $0005000B read GetWord write SetWord; // offset 5, mask $000B, size 11
  end;

  PDWRITE_CLUSTER_METRICS = ^DWRITE_CLUSTER_METRICS;

  /// <summary>
  /// Overall metrics associated with text after layout.
  /// All coordinates are in device independent pixels (DIPs).
  /// </summary>
  DWRITE_TEXT_METRICS = record

    /// <summary>
    /// Left-most point of formatted text relative to layout box
    /// (excluding any glyph overhang).
    /// </summary>
    Left: Single;

    /// <summary>
    /// Top-most point of formatted text relative to layout box
    /// (excluding any glyph overhang).
    /// </summary>
    Top: Single;

    /// <summary>
    /// The width of the formatted text ignoring trailing whitespace
    /// at the end of each line.
    /// </summary>
    Width: Single;

    /// <summary>
    /// The width of the formatted text taking into account the
    /// trailing whitespace at the end of each line.
    /// </summary>
    WidthIncludingTrailingWhitespace: Single;

    /// <summary>
    /// The height of the formatted text. The height of an empty string
    /// is determined by the size of the default font's line height.
    /// </summary>
    Height: Single;

    /// <summary>
    /// Initial width given to the layout. Depending on whether the text
    /// was wrapped or not, it can be either larger or smaller than the
    /// text content width.
    /// </summary>
    LayoutWidth: Single;

    /// <summary>
    /// Initial height given to the layout. Depending on the length of the
    /// text, it may be larger or smaller than the text content height.
    /// </summary>
    LayoutHeight: Single;

    /// <summary>
    /// The maximum reordering count of any line of text, used
    /// to calculate the most number of hit-testing boxes needed.
    /// If the layout has no bidirectional text or no text at all,
    /// the minimum level is 1.
    /// </summary>
    MaxBidiReorderingDepth: UInt32;

    /// <summary>
    /// Total number of lines.
    /// </summary>
    LineCount: UInt32;
  end;

  PDWRITE_TEXT_METRICS = ^DWRITE_TEXT_METRICS;

  /// <summary>
  /// Properties describing the geometric measurement of an
  /// application-defined inline object.
  /// </summary>
  DWRITE_INLINE_OBJECT_METRICS = record

    /// <summary>
    /// Width of the inline object.
    /// </summary>
    Width: Single;

    /// <summary>
    /// Height of the inline object as measured from top to bottom.
    /// </summary>
    Height: Single;

    /// <summary>
    /// Distance from the top of the object to the baseline where it is lined up with the adjacent text.
    /// If the baseline is at the bottom, baseline simply equals height.
    /// </summary>
    Baseline: Single;

    /// <summary>
    /// Flag indicating whether the object is to be placed upright or alongside the text baseline
    /// for vertical text.
    /// </summary>
    SupportsSideways: BOOL;
  end;

  PDWRITE_INLINE_OBJECT_METRICS = ^DWRITE_INLINE_OBJECT_METRICS;

  /// <summary>
  /// The DWRITE_OVERHANG_METRICS structure holds how much any visible pixels
  /// (in DIPs) overshoot each side of the layout or inline objects.
  /// </summary>
  /// <remarks>
  /// Positive overhangs indicate that the visible area extends outside the layout
  /// box or inline object, while negative values mean there is whitespace inside.
  /// The returned values are unaffected by rendering transforms or pixel snapping.
  /// Additionally, they may not exactly match final target's pixel bounds after
  /// applying grid fitting and hinting.
  /// </remarks>
  DWRITE_OVERHANG_METRICS = record

    /// <summary>
    /// The distance from the left-most visible DIP to its left alignment edge.
    /// </summary>
    Left: Single;

    /// <summary>
    /// The distance from the top-most visible DIP to its top alignment edge.
    /// </summary>
    Top: Single;

    /// <summary>
    /// The distance from the right-most visible DIP to its right alignment edge.
    /// </summary>
    Right: Single;

    /// <summary>
    /// The distance from the bottom-most visible DIP to its bottom alignment edge.
    /// </summary>
    Bottom: Single;
  end;

  PDWRITE_OVERHANG_METRICS = ^DWRITE_OVERHANG_METRICS;

  /// <summary>
  /// Geometry enclosing of text positions.
  /// </summary>
  DWRITE_HIT_TEST_METRICS = record

      /// <summary>
      /// First text position within the geometry.
      /// </summary>
      TextPosition: UInt32;

      /// <summary>
      /// Number of text positions within the geometry.
      /// </summary>
      Length: UInt32;

      /// <summary>
      /// Left position of the top-left coordinate of the geometry.
      /// </summary>
      Left: Single;

      /// <summary>
      /// Top position of the top-left coordinate of the geometry.
      /// </summary>
      Top: Single;

      /// <summary>
      /// Geometry's width.
      /// </summary>
      Width: Single;

      /// <summary>
      /// Geometry's height.
      /// </summary>
      Height: Single;

      /// <summary>
      /// Bidi level of text positions enclosed within the geometry.
      /// </summary>
      BidiLevel: UInt32;

      /// <summary>
      /// Geometry encloses text?
      /// </summary>
      IsText: BOOL;

      /// <summary>
      /// Range is trimmed.
      /// </summary>
      IsTrimmed: BOOL;
  end;

  PDWRITE_HIT_TEST_METRICS = ^DWRITE_HIT_TEST_METRICS;

{$ENDREGION}

{$REGION 'D2D1EffectAuthor.h records'}

  /// <summary>
  /// Defines a property binding to a function. The name must match the property
  /// defined in the registration schema.
  /// </summary>
  D2D1_PROPERTY_BINDING = record

    /// <summary>
    /// The name of the property.
    /// </summary>
    PropertyName: LPCWSTR;

    /// <summary>
    /// The function that will receive the data to set.
    /// </summary>
    SetFunction: PD2D1_PROPERTY_SET_FUNCTION;

    /// <summary>
    /// The function that will be asked to write the output data.
    /// </summary>
    GetFunction: PD2D1_PROPERTY_GET_FUNCTION;
  end;

  PD2D1_PROPERTY_BINDING = ^D2D1_PROPERTY_BINDING;

  /// <summary>
  /// This is used to define a resource texture when that resource texture is created.
  /// </summary>
  D2D1_RESOURCE_TEXTURE_PROPERTIES = record
    Extents: PUint32;
    Dimensions: UInt32;
    BufferPrecision: D2D1_BUFFER_PRECISION;
    ChannelDepth: D2D1_CHANNEL_DEPTH;
    Filter: D2D1_FILTER;
    ExtendModes: PD2D1_EXTEND_MODE;
  end;

  PD2D1_RESOURCE_TEXTURE_PROPERTIES = ^D2D1_RESOURCE_TEXTURE_PROPERTIES;

  /// <summary>
  /// This defines a single element of the vertex layout.
  /// </summary>
  D2D1_INPUT_ELEMENT_DESC = record

    SemanticName: LPCSTR;
    SemanticIndex: UInt32;
    Format: DXGI_FORMAT;
    InputSlot: UInt32;
    AlignedByteOffset: UInt32;
  end;

 PD2D1_INPUT_ELEMENT_DESC = ^D2D1_INPUT_ELEMENT_DESC;

  /// <summary>
  /// This defines the properties of a vertex buffer which uses the default vertex
  /// layout.
  /// </summary>
  D2D1_VERTEX_BUFFER_PROPERTIES = record

    InputCount: UInt32;
    Usage: D2D1_VERTEX_USAGE;
    Data: PByte;
    ByteWidth: UInt32;
  end;

  PD2D1_VERTEX_BUFFER_PROPERTIES = ^D2D1_VERTEX_BUFFER_PROPERTIES;

  /// <summary>
  /// This defines the input layout of vertices and the vertex shader which processes
  /// them.
  /// </summary>
  D2D1_CUSTOM_VERTEX_BUFFER_PROPERTIES = record

    ShaderBufferWithInputSignature: PByte;
    ShaderBufferSize: UInt32;
    InputElements: PD2D1_INPUT_ELEMENT_DESC;
    ElementCount: UInt32;
    Stride: UInt32;
  end;

  PD2D1_CUSTOM_VERTEX_BUFFER_PROPERTIES = ^D2D1_CUSTOM_VERTEX_BUFFER_PROPERTIES;

  /// <summary>
  /// This defines the range of vertices from a vertex buffer to draw.
  /// </summary>
  D2D1_VERTEX_RANGE = record
    StartVertex: UInt32;
    VertexCount: UInt32;
  end;

  PD2D1_VERTEX_RANGE = ^D2D1_VERTEX_RANGE;

  /// <summary>
  /// Blend description which configures a blend transform object.
  /// </summary>
  D2D1_BLEND_DESCRIPTION = record

    SourceBlend: D2D1_BLEND;
    DestinationBlend: D2D1_BLEND;
    BlendOperation: D2D1_BLEND_OPERATION;
    SourceBlendAlpha: D2D1_BLEND;
    DestinationBlendAlpha: D2D1_BLEND;
    BlendOperationAlpha: D2D1_BLEND_OPERATION ;
    BlendFactor: Array[0..3] of Single;
  end;

  PD2D1_BLEND_DESCRIPTION = ^D2D1_BLEND_DESCRIPTION;

  /// <summary>
  /// Describes options transforms may select to use on their input textures.
  /// </summary>
  D2D1_INPUT_DESCRIPTION = record
    Filter: D2D1_FILTER;
    LevelOfDetailCount: UInt32;
  end;

  PD2D1_INPUT_DESCRIPTION = ^D2D1_INPUT_DESCRIPTION;

  /// <summary>
  /// Indicates whether shader support for doubles is present on the underlying
  /// hardware.  This may be populated using CheckFeatureSupport.
  /// </summary>
  D2D1_FEATURE_DATA_DOUBLES = record
    DoublePrecisionFloatShaderOps: BOOL;
  end;

  PD2D1_FEATURE_DATA_DOUBLES = ^D2D1_FEATURE_DATA_DOUBLES;

  /// <summary>
  /// Indicates support for features which are optional on D3D10 feature levels.  This
  /// may be populated using CheckFeatureSupport.
  /// </summary>
  D2D1_FEATURE_DATA_D3D10_X_HARDWARE_OPTIONS = record
    ComputeShaders_Plus_RawAndStructuredBuffers_Via_Shader_4_x: BOOL;
  end;

{$ENDREGION}

{$REGION 'DocumentTypes.h' records}
  PrintDocumentPackageStatus = record
    JobId: UInt32;
    CurrentDocument: Int32;
    CurrentPage: Int32;
    CurrentPageTotal: Int32;
    Completion: PrintDocumentPackageCompletion;
    PackageStatus: HRESULT;
  end;
{$ENDREGION}

{$REGION 'd2d1.h interfaces'}
  ID2D1Resource = interface(IUnknown)
    /// <summary>
    /// Retrieve the factory associated with this resource.
    /// </summary>

    procedure GetFactory(out AFactory: ID2D1Factory); stdcall;
  end;

  ID2D1Image = interface(ID2D1Resource)

  end;

  ID2D1Bitmap = interface(ID2D1Image)

    /// <summary>
    /// Returns the size of the bitmap in resolution independent units.
    /// </summary>
    function GetSize: D2D1_SIZE_F; stdcall;

    /// <summary>
    /// Returns the size of the bitmap in resolution dependent units, (pixels).
    /// </summary>
    function GetPixelSize: D2D1_SIZE_U; stdcall;

    /// <summary>
    /// Retrieve the format of the bitmap.
    /// </summary>
    function GetPixelFormat: D2D1_PIXEL_FORMAT; stdcall;

    /// <summary>
    /// Return the DPI of the bitmap.
    /// </summary>
    procedure GetDpi(out ADpiX, ADpiY: Single); stdcall;

    function CopyFromBitmap(const ADestPoint: PD2D1_POINT_2U; ABitmap: ID2D1Bitmap; const ASrcRect: PD2D1_RECT_U): HRESULT; stdcall;

    function CopyFromRenderTarget(const ADestPoint: PD2D1_POINT_2U; ARenderTarget: ID2D1RenderTarget; const ASrcRect: PD2D1_RECT_U): HRESULT; stdcall;

    function CopyFromMemory(const ADstRect: PD2D1_RECT_U; const ASrcData: Pointer; APitch: UInt32): HRESULT; stdcall;
  end;

  ID2D1GradientStopCollection = interface(ID2D1Resource)

    /// <summary>
    /// Returns the number of stops in the gradient.
    /// </summary>
    function GetGradientStopCount: UInt32; stdcall;

    /// <summary>
    /// Copies the gradient stops from the collection into the caller's interface.  The
    /// returned colors have straight alpha.
    /// </summary>
    procedure GetGradientStops(AGradientStops: PD2D1_GRADIENT_STOP; AGradientStopsCount: UInt32); stdcall;

    /// <summary>
    /// Returns whether the interpolation occurs with 1.0 or 2.2 gamma.
    /// </summary>
    function GetColorInterpolationGamma: D2D1_GAMMA; stdcall;

    function GetExtendMode: D2D1_EXTEND_MODE; stdcall;
  end;

  ID2D1Brush = interface(ID2D1Resource)

    /// <summary>
    /// Sets the opacity for when the brush is drawn over the entire fill of the brush.
    /// </summary>
    procedure SetOpacity(AOpacity: Single); stdcall;

    /// <summary>
    /// Sets the transform that applies to everything drawn by the brush.
    /// </summary>
    procedure SetTransform(const ATransform: PD2D1_MATRIX_3X2_F); stdcall;

    function GetOpacity: Single; stdcall;

    procedure GetTransform(ATransform: PD2D1_MATRIX_3X2_F); stdcall;
  end;

  ID2D1BitmapBrush = interface(ID2D1Brush)

    /// <summary>
    /// Sets how the bitmap is to be treated outside of its natural extent on the X
    /// axis.
    /// </summary>
    procedure SetExtendModeX(AExtendModeX: D2D1_EXTEND_MODE); stdcall;

    /// <summary>
    /// Sets how the bitmap is to be treated outside of its natural extent on the X
    /// axis.
    /// </summary>
    procedure SetExtendModeY(AExtendModeY: D2D1_EXTEND_MODE); stdcall;

    /// <summary>
    /// Sets the interpolation mode used when this brush is used.
    /// </summary>
    procedure SetInterpolationMode(AInterpolationMode: D2D1_BITMAP_INTERPOLATION_MODE); stdcall;

    /// <summary>
    /// Sets the bitmap associated as the source of this brush.
    /// </summary>
    procedure SetBitmap(ABitmap: ID2D1Bitmap); stdcall;

    function GetExtendModeX: D2D1_EXTEND_MODE; stdcall;

    function GetExtendModeY: D2D1_EXTEND_MODE; stdcall;

    function GetInterpolationMode: D2D1_BITMAP_INTERPOLATION_MODE; stdcall;

    procedure GetBitmap(out ABitmap: ID2D1Bitmap); stdcall;
  end;

  ID2D1SolidColorBrush = interface(ID2D1Brush)
    procedure SetColor(const AColor: PD2D1_COLOR_F); stdcall;

    function GetColor: D2D1_COLOR_F; stdcall;
  end;

  ID2D1LinearGradientBrush = interface(ID2D1Brush)

    procedure SetStartPoint(AStartPoint: D2D1_POINT_2F); stdcall;

    /// <summary>
    /// Sets the end point of the gradient in local coordinate space. This is not
    /// influenced by the geometry being filled.
    /// </summary>
    procedure SetEndPoint(AStartPoint: D2D1_POINT_2F); stdcall;

    function GetStartPoint: D2D1_POINT_2F; stdcall;

    function GetEndPoint: D2D1_POINT_2F; stdcall;

    procedure GetGradientStopCollection(out AGradientStopCollection: ID2D1GradientStopCollection); stdcall;
  end;

  ID2D1RadialGradientBrush = interface(ID2D1Brush)

    /// <summary>
    /// Sets the center of the radial gradient. This will be in local coordinates and
    /// will not depend on the geometry being filled.
    /// </summary>
    procedure SetCenter(ACenter: D2D1_POINT_2F); stdcall;

    /// <summary>
    /// Sets offset of the origin relative to the radial gradient center.
    /// </summary>
    procedure SetGradientOriginOffset(AGradientOriginOffset: D2D1_POINT_2F); stdcall;

    procedure SetRadiusX(ARadiusX: Single); stdcall;

    procedure SetRadiusY(ARadiusY: Single); stdcall;

    function GetCenter: D2D1_POINT_2F; stdcall;

    function GetGradientOriginOffset: D2D1_POINT_2F; stdcall;

    function GetRadiusX: Single;

    function GetRadiusY: Single;

    procedure GetGradientStopCollection(out AGradientStopCollection: ID2D1GradientStopCollection); stdcall;
  end;

  ID2D1StrokeStyle = interface(ID2D1Resource)

    function GetStartCap: D2D1_CAP_STYLE; stdcall;

    function GetEndCap: D2D1_CAP_STYLE; stdcall;

    function GetDashCap: D2D1_CAP_STYLE; stdcall;

    function GetMiterLimit: Single; stdcall;

    function GetLineJoin: D2D1_LINE_JOIN; stdcall;

    function GetDashOffset: Single; stdcall;

    function GetDashStyle: D2D1_DASH_STYLE; stdcall;

    function GetDashesCount: UInt32; stdcall;

    /// <summary>
    /// Returns the dashes from the object into a user allocated array. The user must
    /// call GetDashesCount to retrieve the required size.
    /// </summary>
    procedure GetDashes(
      ADashes: PSingle;
      ADashesCount: UInt32); stdcall;
  end;

  ID2D1Geometry = interface(ID2D1Resource)

    /// <summary>
    /// Retrieve the bounds of the geometry, with an optional applied transform.
    /// </summary>
    function GetBounds(
      const AWorldTransform: PD2D1_MATRIX_3X2_F;
      out ABounds: D2D1_RECT_F): HRESULT; stdcall;

    /// <summary>
    /// Get the bounds of the corresponding geometry after it has been widened or have
    /// an optional pen style applied.
    /// </summary>
    function GetWidenedBounds(
      AStrokeWidth: Single;
      AStrokeStyle: ID2D1StrokeStyle;
      const AWorldTransform: PD2D1_MATRIX_3X2_F;
      AFlatteningTolerance: Single;
      out ABounds: D2D1_RECT_F): HRESULT; stdcall;

    /// <summary>
    /// Checks to see whether the corresponding penned and widened geometry contains the
    /// given point.
    /// </summary>
    function StrokeContainsPoint(
      APoint: D2D1_POINT_2F;
      AStrokeWidth: Single;
      AStrokeStyle: ID2D1StrokeStyle;
      const AWorldTransform: PD2D1_MATRIX_3X2_F;
      AFlatteningTolerance: Single;
      out AContains: BOOL): HRESULT; stdcall;

    /// <summary>
    /// Test whether the given fill of this geometry would contain this point.
    /// </summary>
    function FillContainsPoint(
      APoint: D2D1_POINT_2F;
      const AWorldTransform: PD2D1_MATRIX_3X2_F;
      AFlatteningTolerance: Single;
      out AContains: BOOL): HRESULT; stdcall;

    /// <summary>
    /// Compare how one geometry intersects or contains another geometry.
    /// </summary>
    function CompareWithGeometry(
      AInputGeometry: ID2D1Geometry;
      AInputGeometryTransform: PD2D1_MATRIX_3X2_F;
      AFlatteningTolerance: Single;
      out ARelation: D2D1_GEOMETRY_RELATION): HRESULT; stdcall;

    /// <summary>
    /// Converts a geometry to a simplified geometry that has arcs and quadratic beziers
    /// removed.
    /// </summary>
    function Simplify(
      ASimplificationOption: D2D1_GEOMETRY_SIMPLIFICATION_OPTION;
      const AWorldTransform: PD2D1_MATRIX_3X2_F;
      AFlatteningTolerance: Single;
      AGeometrySink: ID2D1SimplifiedGeometrySink): HRESULT; stdcall;

    /// <summary>
    /// Tessellates a geometry into triangles.
    /// </summary>
    function Tessellate(
      const AWorldTransform: PD2D1_MATRIX_3X2_F;
      AFlatteningTolerance: Single;
      ATessellationSink: ID2D1TessellationSink): HRESULT; stdcall;

    /// <summary>
    /// Performs a combine operation between the two geometries to produce a resulting
    /// geometry.
    /// </summary>
    function CombineWithGeometry(
      AInputGeometry: ID2D1Geometry;
      ACombineMode: D2D1_COMBINE_MODE;
      const AInputGeometryTransform: PD2D1_MATRIX_3X2_F;
      AFlatteningTolerance: Single;
      AGeometrySink: ID2D1SimplifiedGeometrySink): HRESULT; stdcall;

    /// <summary>
    /// Computes the outline of the geometry. The result is written back into a
    /// simplified geometry sink.
    /// </summary>
    function Outline(
      const AWorldTransform: PD2D1_MATRIX_3X2_F;
      AFlatteningTolerance: Single;
      AGeometrySink: ID2D1SimplifiedGeometrySink): HRESULT; stdcall;

    /// <summary>
    /// Computes the area of the geometry.
    /// </summary>
    function ComputeArea(
      const AWorldTransform: PD2D1_MATRIX_3X2_F;
      AFlatteningTolerance: Single;
      out AArea: Single): HRESULT; stdcall;

    /// <summary>
    /// Computes the length of the geometry.
    /// </summary>
    function ComputeLength(
      const AWorldTransform: PD2D1_MATRIX_3X2_F;
      AFlatteningTolerance: Single;
      out ALength: Single): HRESULT; stdcall;

    /// <summary>
    /// Computes the point and tangent a given distance along the path.
    /// </summary>
    function ComputePointAtLength(
      const AWorldTransform: PD2D1_MATRIX_3X2_F;
      AFlatteningTolerance: Single;
      out APoint: D2D1_POINT_2F;
      out AUnitTangentVector: D2D1_POINT_2F): HRESULT; stdcall;

    /// <summary>
    /// Get the geometry and widen it as well as apply an optional pen style.
    /// </summary>
    function Widen(
      AStrokeWidth: Single;
      AStrokeStyle: ID2D1StrokeStyle;
      const AWorldTransform: PD2D1_MATRIX_3X2_F;
      AFlatteningTolerance: Single;
      AGeometrySink: ID2D1SimplifiedGeometrySink): HRESULT; stdcall;
  end;

  ID2D1RectangleGeometry = interface(ID2D1Geometry)

    procedure GetRect(out ARect: D2D1_RECT_F); stdcall;
  end;

  ID2D1RoundedRectangleGeometry = interface(ID2D1Geometry)

    procedure GetRoundedRect(out ARoundedRect: D2D1_ROUNDED_RECT); stdcall;
  end;

  ID2D1EllipseGeometry = interface(ID2D1Geometry)

    procedure GetEllipse(out AEllipse: D2D1_ELLIPSE); stdcall;
  end;

  ID2D1GeometryGroup = interface(ID2D1Geometry)

    function GetFillMode: D2D1_FILL_MODE; stdcall;

    function GetSourceGeometryCount: UInt32; stdcall;

    procedure GetSourceGeometries(
      AGeometries: PID2D1Geometry;
      AGeometriesCount: UInt32); stdcall;
  end;

  ID2D1TransformedGeometry = interface(ID2D1Geometry)

    procedure GetSourceGeometry(out ASourceGeometry: ID2D1Geometry); stdcall;

    procedure GetTransform(ATransform: PD2D1_MATRIX_3X2_F); stdcall;
  end;

  ID2D1SimplifiedGeometrySink = interface(IUnknown)

    procedure SetFillMode(AFillMode: D2D1_FILL_MODE); stdcall;

    procedure SetSegmentFlags(AVertexFlags: D2D1_PATH_SEGMENT); stdcall;

    procedure BeginFigure(
      AStartPoint: D2D1_POINT_2F;
      AFigureBegin: D2D1_FIGURE_BEGIN); stdcall;

    procedure AddLines(
      const APoints: PD2D1_POINT_2F;
      APointsCount: UInt32); stdcall;

    procedure AddBeziers(
      const ABeziers: PD2D1_BEZIER_SEGMENT;
      ABeziersCount: UInt32); stdcall;

    procedure EndFigure(AFigureEnd: D2D1_FIGURE_END); stdcall;

    function Close: HRESULT; stdcall;
  end;

  ID2D1GeometrySink = interface(ID2D1SimplifiedGeometrySink)

    procedure AddLine(APoint: D2D1_POINT_2F); stdcall;

    procedure AddBezier(const ABezier: PD2D1_BEZIER_SEGMENT); stdcall;

    procedure AddQuadraticBezier(const ABezier: PD2D1_QUADRATIC_BEZIER_SEGMENT); stdcall;

    procedure AddQuadraticBeziers(
      const ABeziers: PD2D1_QUADRATIC_BEZIER_SEGMENT;
      ABeziersCount: UInt32); stdcall;

    procedure AddArc(const AArc: PD2D1_ARC_SEGMENT); stdcall;
  end;

  ID2D1TessellationSink = interface(IUnknown)

    procedure AddTriangles(
      const ATriangles: PD2D1_TRIANGLE;
      ATrianglesCount: UInt32); stdcall;

   function Close: HRESULT; stdcall;
  end;

  ID2D1PathGeometry = interface(ID2D1Geometry)

    /// <summary>
    /// Opens a geometry sink that will be used to create this path geometry.
    /// </summary>
    function Open(out AGeometrySink: ID2D1GeometrySink): HRESULT; stdcall;

    /// <summary>
    /// Retrieve the contents of this geometry. The caller passes an implementation of a
    /// ID2D1GeometrySink interface to receive the data.
    /// </summary>
    function Stream(AGeometrySink: ID2D1GeometrySink): HRESULT; stdcall;

    function GetSegmentCount(out ACount: UInt32): HRESULT; stdcall;

    function GetFigureCount(out ACount: UInt32): HRESULT; stdcall;
  end;

  ID2D1Mesh = interface(ID2D1Resource)

    function Open(out ATessellationSink: ID2D1TessellationSink): HRESULT; stdcall;
  end;

  ID2D1Layer = interface(ID2D1Resource)

    function GetSize: D2D1_SIZE_F; stdcall;
  end;

  ID2D1DrawingStateBlock = interface(ID2D1Resource)

    /// <summary>
    /// Retrieves the state currently contained within this state block resource.
    /// </summary>
    procedure GetDescription(out AStateDescription: D2D1_DRAWING_STATE_DESCRIPTION); stdcall;

    /// <summary>
    /// Sets the state description of this state block resource.
    /// </summary>
    procedure SetDescription(AStateDescription: D2D1_DRAWING_STATE_DESCRIPTION); stdcall;

    /// <summary>
    /// Sets the text rendering parameters of this state block resource.
    /// </summary>
    procedure SetTextRenderingParams(ATextRenderingParams: IDWriteRenderingParams = nil); stdcall;

    /// <summary>
    /// Retrieves the text rendering parameters contained within this state block
    /// resource. If a NULL text rendering parameter was specified, NULL will be
    /// returned.
    /// </summary>
    procedure GetTextRenderingParams(out ATextRenderingParams: IDWriteRenderingParams); stdcall;
  end;

  ID2D1RenderTarget = interface(ID2D1Resource)

    /// <summary>
    /// Create a D2D bitmap by copying from memory, or create uninitialized.
    /// </summary>
    function CreateBitmap(
      ASize: D2D1_SIZE_U;
      const ASrcData: Pointer;
      APitch: UInt32;
      const ABitmapProperties: PD2D1_BITMAP_PROPERTIES;
      out ABitmap: ID2D1Bitmap): HRESULT; stdcall;

    /// <summary>
    /// Create a D2D bitmap by copying a WIC bitmap.
    /// </summary>
    function CreateBitmapFromWicBitmap(
      AWicBitmapSource: IWICBitmapSource;
      const ABitmapProperties: PD2D1_BITMAP_PROPERTIES;
      out ABitmap: ID2D1Bitmap): HRESULT; stdcall;

    /// <summary>
    /// Create a D2D bitmap by sharing bits from another resource. The bitmap must be
    /// compatible with the render target for the call to succeed. For example, an
    /// IWICBitmap can be shared with a software target, or a DXGI surface can be shared
    /// with a DXGI render target.
    /// </summary>
    function CreateSharedBitmap(
      ARiid: TGUID;
      AData: Pointer;
      const ABitmapProperties: PD2D1_BITMAP_PROPERTIES;
      out ABitmap: ID2D1Bitmap): HRESULT; stdcall;

    /// <summary>
    /// Creates a bitmap brush. The bitmap is scaled, rotated, skewed or tiled to fill
    /// or pen a geometry.
    /// </summary>
    function CreateBitmapBrush(
      ABitmap: ID2D1Bitmap;
      const ABitmapBrushProperties: PD2D1_BITMAP_BRUSH_PROPERTIES;
      const ABrushProperties: PD2D1_BRUSH_PROPERTIES;
      out ABitmapBrush: ID2D1BitmapBrush): HRESULT; stdcall;

    function CreateSolidColorBrush(
      const AColor: PD2D1_COLOR_F;
      const ABrushProperties: PD2D1_BRUSH_PROPERTIES;
      out ASolidColorBrush: ID2D1SolidColorBrush): HRESULT; stdcall;

    /// <summary>
    /// A gradient stop collection represents a set of stops in an ideal unit length.
    /// This is the source resource for a linear gradient and radial gradient brush.
    /// </summary>
    /// <param name="colorInterpolationGamma">Specifies which space the color
    /// interpolation occurs in.</param>
    /// <param name="extendMode">Specifies how the gradient will be extended outside of
    /// the unit length.</param>
    function CreateGradientStopCollection(
      const AGradientStops: PD2D1_GRADIENT_STOP;
      AGradientStopsCount: UInt32;
      AColorInterpolationGamma: D2D1_GAMMA;
      AExtendMode: D2D1_EXTEND_MODE;
      out AGradientStopCollection: ID2D1GradientStopCollection): HRESULT; stdcall;

    function CreateLinearGradientBrush(
      const ALinearGradientBrushProperties: PD2D1_LINEAR_GRADIENT_BRUSH_PROPERTIES;
      const ABrushProperties: PD2D1_BRUSH_PROPERTIES;
      AGradientStopCollection: ID2D1GradientStopCollection;
      out ALinearGradientBrush: ID2D1LinearGradientBrush): HRESULT; stdcall;

    function CreateRadialGradientBrush(
      const ARadialGradientBrushProperties: PD2D1_RADIAL_GRADIENT_BRUSH_PROPERTIES;
      const ABrushProperties: PD2D1_BRUSH_PROPERTIES;
      AGradientStopCollection: ID2D1GradientStopCollection;
      out ARadialGradientBrush: ID2D1RadialGradientBrush): HRESULT; stdcall;

    /// <summary>
    /// Creates a bitmap render target whose bitmap can be used as a source for
    /// rendering in the API.
    /// </summary>
    /// <param name="desiredSize">The requested size of the target in DIPs. If the pixel
    /// size is not specified, the DPI is inherited from the parent target. However, the
    /// render target will never contain a fractional number of pixels.</param>
    /// <param name="desiredPixelSize">The requested size of the render target in
    /// pixels. If the DIP size is also specified, the DPI is calculated from these two
    /// values. If the desired size is not specified, the DPI is inherited from the
    /// parent render target. If neither value is specified, the compatible render
    /// target will be the same size and have the same DPI as the parent target.</param>
    /// <param name="desiredFormat">The desired pixel format. The format must be
    /// compatible with the parent render target type. If the format is not specified,
    /// it will be inherited from the parent render target.</param>
    /// <param name="options">Allows the caller to retrieve a GDI compatible render
    /// target.</param>
    /// <param name="bitmapRenderTarget">The returned bitmap render target.</param>
    function CreateCompatibleRenderTarget(
      const ADesiredSize: PD2D1_SIZE_F;
      const ADesiredPixelSize: PD2D1_SIZE_U;
      const ADesiredFormat: PD2D1_PIXEL_FORMAT;
      AOptions: D2D1_COMPATIBLE_RENDER_TARGET_OPTIONS;
      out ABitmapRenderTarget: ID2D1BitmapRenderTarget): HRESULT; stdcall;

    /// <summary>
    /// Creates a layer resource that can be used on any target and which will resize
    /// under the covers if necessary.
    /// </summary>
    /// <param name="size">The resolution independent minimum size hint for the layer
    /// resource. Specify this to prevent unwanted reallocation of the layer backing
    /// store. The size is in DIPs, but, it is unaffected by the current world
    /// transform. If the size is unspecified, the returned resource is a placeholder
    /// and the backing store will be allocated to be the minimum size that can hold the
    /// content when the layer is pushed.</param>
    function CreateLayer(
      const ASize: PD2D1_SIZE_F;
      out ALayer: ID2D1Layer): HRESULT; stdcall;

    /// <summary>
    /// Create a D2D mesh.
    /// </summary>
    function CreateMesh(out AMesh: ID2D1Mesh): HRESULT; stdcall;

    procedure DrawLine(
      APoint0: D2D1_POINT_2F;
      APoint1: D2D1_POINT_2F;
      ABrush: ID2D1Brush;
      AStrokeWidth: Single = 1.0;
      AStrokeStyle: ID2D1StrokeStyle = nil); stdcall;

    procedure DrawRectangle(
      const ARect: PD2D1_RECT_F;
      ABrush: ID2D1Brush;
      AStrokeWidth: Single = 1.0;
      AStrokeStyle: ID2D1StrokeStyle = nil); stdcall;

    procedure FillRectangle(
      const ARect: PD2D1_RECT_F;
      ABrush: ID2D1Brush); stdcall;

    procedure DrawRoundedRectangle(
      const ARoundedRect: PD2D1_ROUNDED_RECT;
      ABrush: ID2D1Brush;
      AStrokeWidth: Single = 1.0;
      AStrokeStyle: ID2D1StrokeStyle = nil); stdcall;

    procedure FillRoundedRectangle(
      const ARoundedRect: PD2D1_ROUNDED_RECT;
      ABrush: ID2D1Brush); stdcall;

    procedure DrawEllipse(
      const AEllipse: PD2D1_ELLIPSE;
      ABrush: ID2D1Brush;
      AStrokeWidth: Single = 1.0;
      AStrokeStyle: ID2D1StrokeStyle = nil); stdcall;

    procedure FillEllipse(
      const AEllipse: PD2D1_ELLIPSE;
      ABrush: ID2D1Brush); stdcall;

    procedure DrawGeometry(
      AGeometry: ID2D1Geometry;
      ABrush: ID2D1Brush;
      AStrokeWidth: Single = 1.0;
      AStrokeStyle: ID2D1StrokeStyle = nil); stdcall;

    /// <param name="opacityBrush">An optionally specified opacity brush. Only the alpha
    /// channel of the corresponding brush will be sampled and will be applied to the
    /// entire fill of the geometry. If this brush is specified, the fill brush must be
    /// a bitmap brush with an extend mode of D2D1_EXTEND_MODE_CLAMP.</param>
    procedure FillGeometry(
      AGeometry: ID2D1Geometry;
      ABrush: ID2D1Brush;
      AOpacityBrush: ID2D1Brush = nil); stdcall;

    /// <summary>
    /// Fill a mesh. Since meshes can only render aliased content, the render target
    /// antialiasing mode must be set to aliased.
    /// </summary>
    procedure FillMesh(
      AMesh: ID2D1Mesh;
      ABrush: ID2D1Brush); stdcall;

    /// <summary>
    /// Fill using the alpha channel of the supplied opacity mask bitmap. The brush
    /// opacity will be modulated by the mask. The render target antialiasing mode must
    /// be set to aliased.
    /// </summary>
    procedure FillOpacityMask(
      AOpacityMask: ID2D1Bitmap;
      ABrush: ID2D1Brush;
      AContent: D2D1_OPACITY_MASK_CONTENT;
      const ADestinationRectangle: PD2D1_RECT_F = nil;
      const ASourceRectangle: PD2D1_RECT_F = nil); stdcall;

    procedure DrawBitmap(
      ABitmap: ID2D1Bitmap;
      const ADestinationRectangle: PD2D1_RECT_F;
      AOpacity: Single = 1.0;
      AInterpolationMode: D2D1_BITMAP_INTERPOLATION_MODE = D2D1_BITMAP_INTERPOLATION_MODE_LINEAR;
      const ASourceRectangle: PD2D1_RECT_F = nil); stdcall;

    /// <summary>
    /// Draws the text within the given layout rectangle and by default also performs
    /// baseline snapping.
    /// </summary>
    procedure DrawText(
      const AString: PWChar;
      AStringLength: UInt32;
      ATextFormat: IDWriteTextFormat;
      const ALayoutRect: PD2D1_RECT_F;
      ADefaultFillBrush: ID2D1Brush;
      AOptions: D2D1_DRAW_TEXT_OPTIONS = D2D1_DRAW_TEXT_OPTIONS_NONE;
      AMeasuringMode: DWRITE_MEASURING_MODE = DWRITE_MEASURING_MODE_NATURAL); stdcall;

    /// <summary>
    /// Draw a text layout object. If the layout is not subsequently changed, this can
    /// be more efficient than DrawText when drawing the same layout repeatedly.
    /// </summary>
    /// <param name="options">The specified text options. If D2D1_DRAW_TEXT_OPTIONS_CLIP
    /// is used, the text is clipped to the layout bounds. These bounds are derived from
    /// the origin and the layout bounds of the corresponding IDWriteTextLayout object.
    /// </param>
    procedure DrawTextLayout(
      AOrigin: D2D1_POINT_2F;
      ATextLayout: IDWriteTextLayout;
      ADefaultFillBrush: ID2D1Brush;
      AOptions: D2D1_DRAW_TEXT_OPTIONS = D2D1_DRAW_TEXT_OPTIONS_NONE); stdcall;

    procedure DrawGlyphRun(
      ABaselineOrigin: D2D1_POINT_2F;
      const AGlyphRun: PDWRITE_GLYPH_RUN;
      AForegroundBrush: ID2D1Brush;
      AMeasuringMode: DWRITE_MEASURING_MODE = DWRITE_MEASURING_MODE_NATURAL); stdcall;

    procedure SetTransform(const ATransform: PD2D1_MATRIX_3X2_F); stdcall;

    procedure GetTransform(out ATransform: D2D1_MATRIX_3X2_F); stdcall;

    procedure SetAntialiasMode(AAntialiasMode: D2D1_ANTIALIAS_MODE); stdcall;

    function GetAntialiasMode: D2D1_ANTIALIAS_MODE; stdcall;

    procedure SetTextAntialiasMode(ATextAntialiasMode: D2D1_TEXT_ANTIALIAS_MODE); stdcall;

    function GetTextAntialiasMode: D2D1_TEXT_ANTIALIAS_MODE; stdcall;

    procedure SetTextRenderingParams(ATextRenderingParams: IDWriteRenderingParams = nil); stdcall;

    /// <summary>
    /// Retrieve the text render parameters. NOTE: If NULL is specified to
    /// SetTextRenderingParameters, NULL will be returned.
    /// </summary>
    procedure GetTextRenderingParams(out ATextRenderingParams: IDWriteRenderingParams); stdcall;

    /// <summary>
    /// Set a tag to correspond to the succeeding primitives. If an error occurs
    /// rendering a primitive, the tags can be returned from the Flush or EndDraw call.
    /// </summary>
    procedure SetTags(ATag1, ATag2: D2D1_TAG); stdcall;

    /// <summary>
    /// Retrieves the currently set tags. This does not retrieve the tags corresponding
    /// to any primitive that is in error.
    /// </summary>
    procedure GetTags(
      ATag1: PD2D1_TAG = nil;
      ATag2: PD2D1_TAG = nil); stdcall;

    /// <summary>
    /// Start a layer of drawing calls. The way in which the layer must be resolved is
    /// specified first as well as the logical resource that stores the layer
    /// parameters. The supplied layer resource might grow if the specified content
    /// cannot fit inside it. The layer will grow monotonically on each axis.  If a NULL
    /// ID2D1Layer is provided, then a layer resource will be allocated automatically.
    /// </summary>
    procedure PushLayer(
      const ALayerParameters: PD2D1_LAYER_PARAMETERS;
      var ALayer: ID2D1Layer); stdcall;

    /// <summary>
    /// Ends a layer that was defined with particular layer resources.
    /// </summary>
    procedure PopLayer; stdcall;

    procedure Flush(
      ATag1: PD2D1Tag = nil;
      ATag2: PD2D1Tag = nil); stdcall;

    /// <summary>
    /// Gets the current drawing state and saves it into the supplied
    /// IDrawingStatckBlock.
    /// </summary>
    procedure SaveDrawingState(ADrawingStateBlock: ID2D1DrawingStateBlock); stdcall;

    /// <summary>
    /// Copies the state stored in the block interface.
    /// </summary>
    procedure RestoreDrawingState(ADrawingStateBlock: ID2D1DrawingStateBlock); stdcall;

    /// <summary>
    /// Pushes a clip. The clip can be antialiased. The clip must be axis aligned. If
    /// the current world transform is not axis preserving, then the bounding box of the
    /// transformed clip rect will be used. The clip will remain in effect until a
    /// PopAxisAligned clip call is made.
    /// </summary>
    procedure PushAxisAlignedClip(
      const AClipRect: PD2D1_RECT_F;
      AAntialiasMode: D2D1_ANTIALIAS_MODE); stdcall;

    procedure PopAxisAlignedClip; stdcall;

    procedure Clear(const AClearColor: PD2D1_COLOR_F = nil); stdcall;

    /// <summary>
    /// Start drawing on this render target. Draw calls can only be issued between a
    /// BeginDraw and EndDraw call.
    /// </summary>
    procedure BeginDraw; stdcall;

    /// <summary>
    /// Ends drawing on the render target, error results can be retrieved at this time,
    /// or when calling flush.
    /// </summary>
    procedure EndDraw(
      ATag1: PD2D1_TAG = nil;
      ATag2: PD2D1_TAG = nil); stdcall;

    function GetPixelFormat: D2D1_PIXEL_FORMAT; stdcall;
    /// <summary>
    /// Sets the DPI on the render target. This results in the render target being
    /// interpreted to a different scale. Neither DPI can be negative. If zero is
    /// specified for both, the system DPI is chosen. If one is zero and the other
    /// unspecified, the DPI is not changed.
    /// </summary>
    procedure SetDpi(ADpiX, ADpiY: Single); stdcall;

    /// <summary>
    /// Return the current DPI from the target.
    /// </summary>
    procedure GetDpi(out ADpiX, ADpiY: Single); stdcall;

    /// <summary>
    /// Returns the size of the render target in DIPs.
    /// </summary>
    function GetSize: D2D1_SIZE_F; stdcall;

    /// <summary>
    /// Returns the size of the render target in pixels.
    /// </summary>
    function GetPixelSize: D2D1_SIZE_U; stdcall;

    /// <summary>
    /// Returns the maximum bitmap and render target size that is guaranteed to be
    /// supported by the render target.
    /// </summary>
    function GetMaximumBitmapSize: UInt32; stdcall;

    /// <summary>
    /// Returns true if the given properties are supported by this render target. The
    /// DPI is ignored. NOTE: If the render target type is software, then neither
    /// D2D1_FEATURE_LEVEL_9 nor D2D1_FEATURE_LEVEL_10 will be considered to be
    /// supported.
    /// </summary>
    function IsSupported(const ARenderTargetProperties: PD2D1_RENDER_TARGET_PROPERTIES): BOOL; stdcall;
  end;

  ID2D1BitmapRenderTarget = interface(ID2D1RenderTarget)
    function GetBitmap(out ABitmap: ID2D1Bitmap): HRESULT; stdcall;
  end;

  ID2D1HwndRenderTarget = interface(ID2D1RenderTarget)

    function CheckWindowState: D2D1_WINDOW_STATE; stdcall;

    /// <summary>
    /// Resize the buffer underlying the render target. This operation might fail if
    /// there is insufficient video memory or system memory, or if the render target is
    /// resized beyond the maximum bitmap size. If the method fails, the render target
    /// will be placed in a zombie state and D2DERR_RECREATE_TARGET will be returned
    /// from it when EndDraw is called. In addition an appropriate failure result will
    /// be returned from Resize.
    /// </summary>
    function Resize(const APixelSize: PD2D1_SIZE_U): HRESULT; stdcall;

    function GetHwnd: HWND; stdcall;
  end;

  ID2D1GdiInteropRenderTarget = interface(IUnknown)
    function GetDC(
      AMode: D2D1_DC_INITIALIZE_MODE;
      out AHdc: HDC): HRESULT; stdcall;

    function ReleaseDC(const AUpdate: PRect): HRESULT; stdcall;
  end;

  ID2D1DCRenderTarget = interface(ID2D1RenderTarget)
    function BindDC(const AHdc: HDC; const ASubRect: PRect): HRESULT; stdcall;
  end;

  ID2D1Factory = interface(IUnknown)
    ['{06152247-6f50-465a-9245-118bfd3b6007}']
    /// <summary>
    /// Cause the factory to refresh any system metrics that it might have been snapped
    /// on factory creation.
    /// </summary>
    function ReloadSystemMetrics: HRESULT; stdcall;

    /// <summary>
    /// Retrieves the current desktop DPI. To refresh this, call ReloadSystemMetrics.
    /// </summary>
    procedure GetDesktopDpi(out ADpiX, ADpiY: Single);

    function CreateRectangleGeometry(
      const ARectangle: PD2D1_RECT_F;
      out ARectangleGeometry: ID2D1RectangleGeometry): HRESULT; stdcall;

    function CreateRoundedRectangleGeometry(
      const ARoundedRectangle: PD2D1_ROUNDED_RECT;
      out ARoundedRectangleGeometry: ID2D1RoundedRectangleGeometry): HRESULT; stdcall;

    function CreateEllipseGeometry(
      const AEllipse: PD2D1_ELLIPSE;
      out AEllipseGeometry: ID2D1EllipseGeometry): HRESULT; stdcall;

    /// <summary>
    /// Create a geometry which holds other geometries.
    /// </summary>
    function CreateGeometryGroup(
      AFillMode: D2D1_FILL_MODE;
      AGeometries: PID2D1Geometry;
      AGeometriesCount: UInt32;
      out AGeometryGroup: ID2D1GeometryGroup): HRESULT; stdcall;

    function CreateTransformedGeometry(
      ASourceGeometry: ID2D1Geometry;
      const ATransform: PD2D1_MATRIX_3X2_F;
      out ATransformedGeometry: ID2D1TransformedGeometry): HRESULT; stdcall;

    /// <summary>
    /// Returns an initially empty path geometry interface. A geometry sink is created
    /// off the interface to populate it.
    /// </summary>
    function CreatePathGeometry(out APathGeometry: ID2D1PathGeometry): HRESULT; stdcall;

    /// <summary>
    /// Allows a non-default stroke style to be specified for a given geometry at draw
    /// time.
    /// </summary>
    function CreateStrokeStyle(
      const AStrokeStyleProperties: D2D1_STROKE_STYLE_PROPERTIES;
      const ADashes: PSingle;
      ADashesCount: UInt32;
      out AStrokeStyle: ID2D1StrokeStyle): HRESULT; stdcall;

    /// <summary>
    /// Creates a new drawing state block, this can be used in subsequent
    /// SaveDrawingState and RestoreDrawingState operations on the render target.
    /// </summary>
    function CreateDrawingStateBlock(
      const ADrawingStateDescription: PD2D1_DRAWING_STATE_DESCRIPTION;
      ATextRenderingParams: IDWriteRenderingParams;
      out ADrawingStateBlock: ID2D1DrawingStateBlock): HRESULT; stdcall;

    /// <summary>
    /// Creates a render target which is a source of bitmaps.
    /// </summary>
    function CreateWicBitmapRenderTarget(
      ATarget: IWICBitmap;
      const ARenderTargetProperties: PD2D1_RENDER_TARGET_PROPERTIES;
      out ARenderTarget: ID2D1RenderTarget): HRESULT; stdcall;

    /// <summary>
    /// Creates a render target that appears on the display.
    /// </summary>
    function CreateHwndRenderTarget(
      const ARenderTargetProperties: PD2D1_RENDER_TARGET_PROPERTIES;
      const AHwndRenderTargetProperties: PD2D1_HWND_RENDER_TARGET_PROPERTIES;
      out AHwndRenderTarget: ID2D1HwndRenderTarget): HRESULT; stdcall;

    /// <summary>
    /// Creates a render target that draws to a DXGI Surface. The device that owns the
    /// surface is used for rendering.
    /// </summary>
    function CreateDxgiSurfaceRenderTarget(
      ADXGISurface: IDXGISurface;
      const ARenderTargetProperties: PD2D1_RENDER_TARGET_PROPERTIES;
      ARenderTarget: ID2D1RenderTarget): HRESULT; stdcall;

    /// <summary>
    /// Creates a render target that draws to a GDI device context.
    /// </summary>
    function CreateDCRenderTarget(
    const ARenderTargetProperties: PD2D1_RENDER_TARGET_PROPERTIES;
    out ADcRenderTarget: ID2D1DCRenderTarget): HRESULT; stdcall;
  end;
{$ENDREGION}

{$REGION 'd2d1_1.h interfaces'}

  ID2D1GdiMetafileSink = interface(IUnknown)
    ['{82237326-8111-4f7c-bcf4-b5c1175564fe}']

    function ProcessRecord(
      ARecordType: DWORD;
      const ARecordData: Pointer;
      ARecordDataSize: DWORD
    ): HResult; stdcall;

  end;

  ID2D1GdiMetafile = interface(ID2D1Resource)
    ['{2f543dc3-cfc1-4211-864f-cfd91c6f3395}']

    function Stream(out ASink: ID2D1GdiMetafileSink): HRESULT; stdcall;
    function GetBounds(out ABounds: D2D1_RECT_F): HRESULT; stdcall;
  end;

  ID2D1CommandSink = interface(IUnknown)
    ['{54d7898a-a061-40a7-bec7-e465bcba2c4f}']

    function BeginDraw: HRESULT; stdcall;

    function EndDraw: HRESULT; stdcall;

    function SetAntialiasMode(AAntialiasMode: D2D1_ANTIALIAS_MODE): HRESULT; stdcall;

    function SetTags(ATag1, ATag2: D2D1_TAG): HRESULT; stdcall;

    function SetTextAntialiasMode(ATextAntialiasMode: D2D1_TEXT_ANTIALIAS_MODE): HRESULT; stdcall;

    function SetTextRenderingParams(ATextRenderingParams: IDWriteRenderingParams): HRESULT; stdcall;

    function SetTransform(const ATtransform: PD2D1_MATRIX_3X2_F): HRESULT; stdcall;

    function SetPrimitiveBlend(APrimitiveBlend: D2D1_PRIMITIVE_BLEND): HRESULT; stdcall;

    function SetUnitMode(AUnitMode: D2D1_UNIT_MODE): HRESULT; stdcall;

    function Clear(const AColor: PD2D1_COLOR_F): HRESULT; stdcall;

    function DrawGlyphRun(
      ABaselineOrigin: D2D1_POINT_2F;
      const AGlyphRun: PDWRITE_GLYPH_RUN;
      const AGlyphRunDescription: PDWRITE_GLYPH_RUN_DESCRIPTION;
      AForegroundBrush: ID2D1Brush;
      AMeasuringMode: DWRITE_MEASURING_MODE): HRESULT; stdcall;

    function DrawLine(
      APoint0: D2D1_POINT_2F;
      APpoint1: D2D1_POINT_2F;
      ABrush: ID2D1Brush;
      AStrokeWidth: Single;
      AStrokeStyle: ID2D1StrokeStyle): HRESULT; stdcall;

    function DrawGeometry(
      AGeometry: ID2D1Geometry;
      ABrush: ID2D1Brush;
      AStrokeWidth: Single;
      AStrokeStyle: ID2D1StrokeStyle): HRESULT; stdcall;

    function DrawRectangle(
      const ARect:PD2D1_RECT_F;
      ABrush: ID2D1Brush;
      AStrokeWidth: Single;
      AStrokeStyle: ID2D1StrokeStyle): HRESULT; stdcall;

    function DrawBitmap(
      ABitmap: ID2D1Bitmap;
      const ADestinationRectangle: PD2D1_RECT_F;
      AOpacity: Single;
      AInterpolationMode: D2D1_INTERPOLATION_MODE;
      const ASourceRectangle: PD2D1_RECT_F;
      const APerspectiveTransform: PD2D1_MATRIX_4X4_F): HRESULT; stdcall;

    function DrawImage(
      AImage: ID2D1Image;
      const ATargetOffset: PD2D1_POINT_2F;
      const AImageRectangle: PD2D1_RECT_F;
      AIinterpolationMode: D2D1_INTERPOLATION_MODE;
      ACompositeMode: D2D1_COMPOSITE_MODE): HRESULT; stdcall;

    function DrawGdiMetafile(
      AGdiMetafile: ID2D1GdiMetafile;
      const ATargetOffset: PD2D1_POINT_2F): HRESULT; stdcall;

    function FillMesh(
      AMmesh: ID2D1Mesh;
      ABrush: ID2D1Brush): HRESULT; stdcall;

    function FillOpacityMask(
      AOopacityMask: ID2D1Bitmap;
      ABbrush: ID2D1Brush;
      const ADestinationRectangle: PD2D1_RECT_F;
      const ASourceRectangle: PD2D1_RECT_F): HRESULT; stdcall;

    function FillGeometry(
      AGeometry: ID2D1Geometry;
      ABrush: ID2D1Brush;
      AOpacityBrush: ID2D1Brush): HRESULT; stdcall;

    function FillRectangle(
      const ARrect: PD2D1_RECT_F;
      ABrush: ID2D1Brush): HRESULT; stdcall;

    function PushAxisAlignedClip(
      const clipRect: PD2D1_RECT_F;
      AAntialiasMode: D2D1_ANTIALIAS_MODE): HRESULT; stdcall;

    function PushLayer(
      const ALayerParameters1: PD2D1_LAYER_PARAMETERS1;
      ALayer: ID2D1Layer): HRESULT; stdcall;

    function PopAxisAlignedClip: HRESULT; stdcall;

    function PopLayer: HRESULT; stdcall;
  end;

  ID2D1CommandList = interface(ID2D1Image)
    ['{b4f34a19-2383-4d76-94f6-ec343657c3dc}']

    function Stream(ASink: ID2D1CommandSink): HRESULT; stdcall;

    function Close: HRESULT; stdcall;
  end;

  ID2D1PrintControl = interface(IUnknown)
    ['{2c1d867d-c290-41c8-ae7e-34a98702e9a5}']
    function AddPage(
      ACommandList: ID2D1CommandList;
      APageSize: D2D1_SIZE_F;
      APagePrintTicketStream: IStream;
      ATag1: PD2D1_TAG = nil;
      ATag2: PD2D1_TAG = nil): HRESULT; stdcall;

    function Close: HRESULT; stdcall;
  end;

  ID2D1ImageBrush = interface(ID2D1Brush)
    ['{fe9e984d-3f95-407c-b5db-cb94d4e8f87c}']

    procedure SetImage(AImage: ID2D1Image); stdcall;

    procedure SetExtendModeX(AExtendModeX: D2D1_EXTEND_MODE); stdcall;

    procedure SetExtendModeY(AExtendModeY: D2D1_EXTEND_MODE); stdcall;

    procedure SetInterpolationMode(AInterpolationMode: D2D1_INTERPOLATION_MODE); stdcall;

    procedure SetSourceRectangle(const ASourceRectangle: PD2D1_RECT_F); stdcall;

    procedure GetImage(out AImage: ID2D1Image); stdcall;

    function GetExtendModeX: D2D1_EXTEND_MODE; stdcall;

    function GetExtendModeY: D2D1_EXTEND_MODE; stdcall;

    function GetInterpolationMode: D2D1_INTERPOLATION_MODE; stdcall;

    procedure GetSourceRectangle(out ASourceRectangle: D2D1_RECT_F); stdcall;

  end;

  ID2D1BitmapBrush1 = interface(ID2D1BitmapBrush)
    ['{41343a53-e41a-49a2-91cd-21793bbb62e5}']

    procedure SetInterpolationMode1(AInterpolationMode: D2D1_INTERPOLATION_MODE); stdcall;

    function GetInterpolationMode1: D2D1_INTERPOLATION_MODE; stdcall;
  end;

  ID2D1StrokeStyle1 = interface(ID2D1StrokeStyle)
    ['{10a72a66-e91c-43f4-993f-ddf4b82b0b4a}']

      function GetStrokeTransformType: D2D1_STROKE_TRANSFORM_TYPE; stdcall;
  end;

  ID2D1PathGeometry1 = interface(ID2D1PathGeometry)
    ['{62baa2d2-ab54-41b7-b872-787e0106a421}']

    function ComputePointAndSegmentAtLength(
      ALength: Single;
      AStartSegment: UInt32;
      const AWorldTransform: PD2D1_MATRIX_3X2_F;
      AFlatteningTolerance: Single;
      out APointDescription: D2D1_POINT_DESCRIPTION): HRESULT; stdcall;

  end;

  ID2D1Properties = interface(IUnknown)
    ['{483473d7-cd46-4f9d-9d3a-3112aa80159d}']

   function GetPropertyCount: UInt32; stdcall;

    function GetPropertyName(
      AIndex: UINT32;
      AName: LPWSTR;
      NameCount: UInt32): HRESULT; stdcall;

    function GetPropertyNameLength(AIndex: UInt32): UInt32; stdcall;

    function GetType(AIndex: UINT32): D2D1_PROPERTY_TYPE; stdcall;

    /// <summary>
    /// I'm not sure if this one is correct, the original one is like this: PCWSTR name
    /// </summary>
    function GetPropertyIndex(AName: LPCWSTR): UInt32; stdcall;

    /// <summary>
    /// I'm not sure if this one is correct, the original one is like this: PCWSTR name
    /// </summary>
    function SetValueByName(
      AName: LPCWSTR;
      AType: D2D1_PROPERTY_TYPE;
      dataSize: UInt32): HRESULT; stdcall;

    function SetValue(
      AIndex: UInt32;
      AType: D2D1_PROPERTY_TYPE;
      AData: PByte;
      ADataSize: UInt32): HRESULT; stdcall;

    /// <summary>
    /// I'm not sure if this one is correct, the original one is like this: PCWSTR name
    /// </summary>
    function GetValueByName(
      AName: LPCWSTR;
      AType: D2D1_PROPERTY_TYPE;
      AData: PByte;
      ADataSize: UInt32): HRESULT; stdcall;

    function GetValue(
      AIndex: UINT32;
      AType: D2D1_PROPERTY_TYPE;
      AData: PByte;
      ADataSize: UInt32): HRESULT; stdcall;

    function GetValueSize(AIndex: UINT32): UInt32; stdcall;

    function GetSubProperties(
      AIindex: UInt32;
      out ASubProperties: ID2D1Properties): HRESULT; stdcall;
  end;

  ID2D1Effect = interface(ID2D1Properties)
    ['{28211a43-7d89-476f-8181-2d6159b220ad}']

    procedure SetInput(
      AIindex: UInt32;
      AInput: ID2D1Image;
      AInvalidate: BOOL = True); stdcall;

    function SetInputCount(inputCount: UINT32): HRESULT; stdcall;

    procedure GetInput(
      AIndex: UINT32;
      out AInput: ID2D1Image); stdcall;

    function GetInputCount: UInt32; stdcall;

    procedure GetOutput(out AOutputImage: ID2D1Image); stdcall;

  end;

  ID2D1Bitmap1 = interface(ID2D1Bitmap)
    ['{a898a84c-3873-4588-b08b-ebbf978df041}']

    procedure GetColorContext(out AColorContext: ID2D1ColorContext); stdcall;

    function GetOptions: D2D1_BITMAP_OPTIONS; stdcall;

    function GetSurface(out ADXGISurface: IDXGISurface): HRESULT; stdcall;

    function Map(
      AOptions: D2D1_MAP_OPTIONS;
      AMappedRect: PD2D1_MAPPED_RECT): HRESULT; stdcall;

    function Unmap: HRESULT; stdcall;
  end;

  ID2D1ColorContext = interface(ID2D1Resource)
    ['{1c4820bb-5771-4518-a581-2fe4dd0ec657}']

    function GetColorSpace: D2D1_COLOR_SPACE; stdcall;

    function GetProfileSize: UInt32; stdcall;

    function GetProfile(
      AProfile: PByte;
      AProfileSize: UInt32): HRESULT; stdcall;
  end;

  ID2D1GradientStopCollection1 = interface(ID2D1GradientStopCollection)
    ['{ae1572f4-5dd0-4777-998b-9279472ae63b}']

    procedure GetGradientStops1(
      out AGradientStops: D2D1_GRADIENT_STOP;
      AGradientStopsCount: UInt32); stdcall;

    function GetPreInterpolationSpace: D2D1_COLOR_SPACE; stdcall;

    function GetPostInterpolationSpace: D2D1_COLOR_SPACE; stdcall;

    function GetBufferPrecision: D2D1_BUFFER_PRECISION; stdcall;

    function GetColorInterpolationMode: D2D1_COLOR_INTERPOLATION_MODE; stdcall;
  end;

  ID2D1DrawingStateBlock1 = interface(ID2D1DrawingStateBlock)
    ['{689f1f85-c72e-4e33-8f19-85754efd5ace}']

    procedure GetDescription(out AStateDescription: D2D1_DRAWING_STATE_DESCRIPTION1); stdcall;

    procedure SetDescription(AStateDescription: PD2D1_DRAWING_STATE_DESCRIPTION1); stdcall;
  end;

  ID2D1DeviceContext = interface(ID2D1RenderTarget)
    ['{e8f7fe7a-191c-466d-ad95-975678bda998}']

    function CreateBitmap(
      ASize: D2D1_SIZE_U;
      ASourceData: PByte;
      APitch: UInt32;
      const ABitmapProperties: PD2D1_BITMAP_PROPERTIES1;
      out ABitmap: ID2D1Bitmap1): HRESULT; stdcall;

    function CreateBitmapFromWicBitmap(
      AWicBitmapSource: IWICBitmapSource;
      const ABitmapProperties: PD2D1_BITMAP_PROPERTIES1;
      out ABitmap: ID2D1Bitmap1): HRESULT; stdcall;

    function CreateColorContext(
      ASpace: D2D1_COLOR_SPACE;
      AProfile: PByte;
      AProfileSize: UInt32;
      out AColorContext: ID2D1ColorContext): HRESULT; stdcall;

    function CreateColorContextFromFilename(
      AFilename: LPCWSTR;
      out AColorContext: ID2D1ColorContext): HRESULT; stdcall;

    function CreateColorContextFromWicColorContext(
      AWicColorContext: IWICColorContext;
      out AColorContext: ID2D1ColorContext): HRESULT; stdcall;

    function CreateBitmapFromDxgiSurface(
      ASurface: IDXGISurface;
      const ABitmapProperties: PD2D1_BITMAP_PROPERTIES1;
      out ABitmap: ID2D1Bitmap1): HRESULT; stdcall;

    function CreateEffect(
      AEffectId: TGUID;
      out AEffect: ID2D1Effect): HRESULT; stdcall;

    function CreateGradientStopCollection(
      const AStraightAlphaGradientStops: PD2D1_GRADIENT_STOP;
      straightAlphaGradientStopsCount: UInt32;
      preInterpolationSpace: D2D1_COLOR_SPACE;
      postInterpolationSpace: D2D1_COLOR_SPACE;
      bufferPrecision: D2D1_BUFFER_PRECISION;
      extendMode: D2D1_EXTEND_MODE;
      colorInterpolationMode: D2D1_COLOR_INTERPOLATION_MODE;
      out gradientStopCollection1: ID2D1GradientStopCollection1): HRESULT; stdcall;

    function CreateImageBrush(
      AIimage: ID2D1Image;
      const AImageBrushProperties: PD2D1_IMAGE_BRUSH_PROPERTIES;
      const ABrushProperties: PD2D1_BRUSH_PROPERTIES;
      out AImageBrush: ID2D1ImageBrush): HRESULT; stdcall;

    function CreateBitmapBrush(
      ABbitmap: ID2D1Bitmap;
      const ABitmapBrushProperties: PD2D1_BITMAP_BRUSH_PROPERTIES1;
      const ABrushProperties: PD2D1_BRUSH_PROPERTIES;
      out ABitmapBrush: ID2D1BitmapBrush1): HRESULT; stdcall;

    function CreateCommandList(out ACommandList: ID2D1CommandList): HRESULT; stdcall;

    function IsDxgiFormatSupported(AFormat: DXGI_FORMAT): BOOL; stdcall;

    function IsBufferPrecisionSupported(ABufferPrecision: D2D1_BUFFER_PRECISION): BOOL; stdcall;

    function GetImageLocalBounds(
      AImage: ID2D1Image;
      out ALocalBounds: D2D1_RECT_F): HRESULT; stdcall;

    function GetImageWorldBounds(
      AIimage: ID2D1Image;
      out AWorldBounds: D2D1_RECT_F): HRESULT; stdcall;

    function GetGlyphRunWorldBounds(
      ABaselineOrigin: D2D1_POINT_2F;
      const AGlyphRun: PDWRITE_GLYPH_RUN;
      AMeasuringMode: DWRITE_MEASURING_MODE;
      out ABounds: D2D1_RECT_F): HRESULT; stdcall;

    procedure GetDevice(out ADevice: ID2D1Device); stdcall;

    procedure SetTarget(AImage: ID2D1Image); stdcall;

    procedure GetTarget(out AImage: ID2D1Image); stdcall;

    procedure SetRenderingControls(const ARenderingControls: PD2D1_RENDERING_CONTROLS); stdcall;

    procedure GetRenderingControls(out ARenderingControls: D2D1_RENDERING_CONTROLS); stdcall;

    procedure SetPrimitiveBlend(APrimitiveBlend: D2D1_PRIMITIVE_BLEND); stdcall;

    function GetPrimitiveBlend: D2D1_PRIMITIVE_BLEND; stdcall;

    procedure SetUnitMode(AUnitMode: D2D1_UNIT_MODE); stdcall;

    function GetUnitMode: D2D1_UNIT_MODE; stdcall;

    procedure DrawGlyphRun(
      ABaselineOrigin: D2D1_POINT_2F;
      const AGlyphRun: PDWRITE_GLYPH_RUN;
      const AGlyphRunDescription: PDWRITE_GLYPH_RUN_DESCRIPTION;
      AForegroundBrush: ID2D1Brush;
      AMeasuringMode: DWRITE_MEASURING_MODE = DWRITE_MEASURING_MODE_NATURAL); stdcall;

    procedure DrawImage(
      AImage: ID2D1Image;
      const ATargetOffset: PD2D1_POINT_2F = nil;
      const AImageRectangle: PD2D1_RECT_F = nil;
      AInterpolationMode: D2D1_INTERPOLATION_MODE  = D2D1_INTERPOLATION_MODE_LINEAR;
      ACompositeMode: D2D1_COMPOSITE_MODE  = D2D1_COMPOSITE_MODE_SOURCE_OVER); stdcall;

    procedure DrawGdiMetafile(
      AGdiMetafile: ID2D1GdiMetafile;
      const ATargetOffset: PD2D1_POINT_2F = nil); stdcall;

    procedure DrawBitmap(
      ABitmap: ID2D1Bitmap;
      const ADestinationRectangle: PD2D1_RECT_F;
      AOpacity: Single;
      interpolationMode: D2D1_INTERPOLATION_MODE;
      const sourceRectangle: PD2D1_RECT_F = nil;
      const perspectiveTransform: PD2D1_MATRIX_4X4_F = nil); stdcall;

    procedure PushLayer(
      const ALayerParameters:  PD2D1_LAYER_PARAMETERS1;
      ALayer: ID2D1Layer); stdcall;

    function InvalidateEffectInputRectangle(
      AEffect: ID2D1Effect;
      AInput: UINT32;
      const AIinputRectangle: PD2D1_RECT_F): HRESULT; stdcall;

    function GetEffectInvalidRectangleCount(
      AEffect: ID2D1Effect;
      out ARrectangleCount: UInt32): HRESULT; stdcall;

    function GetEffectInvalidRectangles(
      AEeffect: ID2D1Effect;
      out ARectangles: D2D1_RECT_F;
      ARectanglesCount: UInt32): HRESULT; stdcall;

    function GetEffectRequiredInputRectangles(
      ARenderEffect: ID2D1Effect;
      const ARenderImageRectangle: PD2D1_RECT_F;
      const inputDescriptions: PD2D1_EFFECT_INPUT_DESCRIPTION;
      out requiredInputRects: D2D1_RECT_F): HRESULT; stdcall;

    procedure FillOpacityMask(
      AOpacityMask: ID2D1Bitmap;
      ABrush: ID2D1Brush;
      const ADestinationRectangle: PD2D1_RECT_F = nil;
      const ASourceRectangle: PD2D1_RECT_F = nil); stdcall;
  end;

  ID2D1Device = interface(ID2D1Resource)
    ['{47dd575d-ac05-4cdd-8049-9b02cd16f44c}']

    function CreateDeviceContext(
      AOptions: D2D1_DEVICE_CONTEXT_OPTIONS;
      out ADeviceContext: ID2D1DeviceContext): HRESULT; stdcall;

    function CreatePrintControl(
      AWicFactory: IWICImagingFactory;
      ADocumentTarget: IPrintDocumentPackageTarget;
      const APrintControlProperties: PD2D1_PRINT_CONTROL_PROPERTIES;
      out APrintControl: ID2D1PrintControl): HRESULT; stdcall;

    procedure SetMaximumTextureMemory(AMaximumInBytes: UInt64); stdcall;

    function GetMaximumTextureMemory: UInt64; stdcall;

    procedure ClearResources(AMillisecondsSinceUse: UInt32 = 0); stdcall;

  end;

  ID2D1Factory1 = interface(ID2D1Factory)
    ['{bb12d362-daee-4b9a-aa1d-14ba401cfa1f}']

    function CreateDevice(
      ADXGIDevice: IDXGIDevice;
      out AD2DDevice: ID2D1Device): HRESULT; stdcall;

    function CreateStrokeStyle(
      const AStrokeStyleProperties: PD2D1_STROKE_STYLE_PROPERTIES1;
      const ADashes: PSingle;
      ADashesCount: UInt32;
      out strokeStyle: ID2D1StrokeStyle1): HRESULT; stdcall;

    function CreatePathGeometry(APathGeometry: ID2D1PathGeometry1): HRESULT; stdcall;

    function CreateDrawingStateBlock(
      const ADrawingStateDescription: PD2D1_DRAWING_STATE_DESCRIPTION1;
      ATextRenderingParams: IDWriteRenderingParams;
      out ADrawingStateBlock: ID2D1DrawingStateBlock1): HRESULT; stdcall;

    function CreateGdiMetafile(
      AMmetafileStream: IStream;
      out AMetafile: ID2D1GdiMetafile): HRESULT; stdcall;

    function RegisterEffectFromStream(
      AClassId: TGUID;
      APropertyXml: IStream;
      const ABindings: PD2D1_PROPERTY_BINDING;
      BindingsCount: UInt32;
      EffectFactory: PD2D1_EFFECT_FACTORY): HRESULT; stdcall;

    function RegisterEffectFromString(
      AClassId: TGUID;
      APropertyXml: LPCWSTR;
      const Bindings: PD2D1_PROPERTY_BINDING;
      BindingsCount: UInt32): HRESULT; stdcall;

    function UnregisterEffect(AClassId: TGUID): HRESULT; stdcall;

    function GetRegisteredEffects(
      effects: PGUID;
      effectsCount: UInt32;
      out effectsReturned: UInt32;
      out effectsRegistered: UInt32): HRESULT; stdcall;

    function GetEffectProperties(
      AEffectId: TGUID;
      out properties: ID2D1Properties): HRESULT; stdcall;
  end;

  ID2D1Multithread = interface(IUnknown)
    ['{31e6e7bc-e0ff-4d46-8c64-a0a8c41c15d3}']

  end;
{$ENDREGION}

{$REGION 'd2d1_2.h interfaces'}
  ID2D1GeometryRealization = interface(ID2D1Resource)
    ['{a16907d7-bc02-4801-99e8-8cf7f485f774}']

  end;

  ID2D1DeviceContext1 = interface(ID2D1DeviceContext)
    ['{d37f57e4-6908-459f-a199-e72f24f79987}']

    function CreateFilledGeometryRealization(
      AGeometry: ID2D1Geometry;
      AFlatteningTolerance: Single;
      out geometryRealization: ID2D1GeometryRealization): HRESULT; stdcall;

    function CreateStrokedGeometryRealization(
      AGeometry: ID2D1Geometry;
      AFlatteningTolerance: Single;
      AStrokeWidth: Single;
      AStrokeStyle: ID2D1StrokeStyle;
      out AGeometryRealization: ID2D1GeometryRealization): HRESULT; stdcall;

    procedure DrawGeometryRealization(
      AGeometryRealization: ID2D1GeometryRealization;
      ABrush: ID2D1Brush); stdcall;
  end;

  ID2D1Device1 = interface(ID2D1Device)
    ['{d21768e1-23a4-4823-a14b-7c3eba85d658}']

    function GetRenderingPriority: D2D1_RENDERING_PRIORITY; stdcall;

    procedure SetRenderingPriority(ARenderingPriority: D2D1_RENDERING_PRIORITY); stdcall;

    function CreateDeviceContext(
      AOptions: D2D1_DEVICE_CONTEXT_OPTIONS;
      out ADeviceContext1: ID2D1DeviceContext1): HRESULT; stdcall;
  end;

  ID2D1Factory2 = interface(ID2D1Factory1)
    ['{94f81a73-9212-4376-9c58-b16a3a0d3992}']

    function CreateDevice(
      ADXGIDevice: IDXGIDevice;
      out AD2DDevice1: ID2D1Device1): HRESULT; stdcall;
  end;

  ID2D1CommandSink1 = interface(ID2D1CommandSink)
    ['{9eb767fd-4269-4467-b8c2-eb30cb305743}']
    function SetPrimitiveBlend1(APrimitiveBlend: D2D1_PRIMITIVE_BLEND): HRESULT; stdcall;
  end;

{$ENDREGION}

{$REGION 'd2d1_3.h interfaces'}
  ID2D1InkStyle = interface(ID2D1Resource)
    ['{bae8b344-23fc-4071-8cb5-d05d6f073848}']
    procedure SetNibTransform(const ATtransform: PD2D1_MATRIX_3X2_F); stdcall;

    procedure GetNibTransform(out ATransform: D2D1_MATRIX_3X2_F); stdcall;

    procedure SetNibShape(ANibShape: D2D1_INK_NIB_SHAPE); stdcall;

    function GetNibShape: D2D1_INK_NIB_SHAPE; stdcall;
  end;

  ID2D1Ink = interface(ID2D1Resource)
    ['{b499923b-7029-478f-a8b3-432c7c5f5312}']

    procedure SetStartPoint(const AStartPoint: PD2D1_INK_POINT); stdcall;

    function GetStartPoint: D2D1_INK_POINT; stdcall;

    function AddSegments(
      const ASegments: PD2D1_INK_BEZIER_SEGMENT;
      ASegmentsCount: UInt32): HRESULT; stdcall;

    function RemoveSegmentsAtEnd(segmentsCount: UInt32): HRESULT; stdcall;

    function SetSegments(
      AStartSegment: PUint32;
      const ASegments: PD2D1_INK_BEZIER_SEGMENT;
      ASegmentsCount: UInt32): HRESULT; stdcall;

    function SetSegmentAtEnd(const ASegment: PD2D1_INK_BEZIER_SEGMENT): HRESULT; stdcall;

    function GetSegmentCount: UInt32; stdcall;

    function GetSegments(
      startSegment: UInt32;
      const ASegments: PD2D1_INK_BEZIER_SEGMENT;
      segmentsCount: UInt32): HRESULT; stdcall;

    function StreamAsGeometry(
      AInkStyle: ID2D1InkStyle;
      const AWorldTransform: PD2D1_MATRIX_3X2_F;
      AFlatteningTolerance: Single;
      AGeometrySink: ID2D1SimplifiedGeometrySink): HRESULT; stdcall;

    function GetBounds(
      AInkStyle: ID2D1InkStyle;
      const AWorldTransform: PD2D1_MATRIX_3X2_F;
      out ABounds: D2D1_RECT_F): HRESULT; stdcall;
  end;

  ID2D1GradientMesh = interface(ID2D1Resource)
    ['{f292e401-c050-4cde-83d7-04962d3b23c2}']

    function GetPatchCount: UInt32; stdcall;

    function GetPatches(
      AStartIndex: UInt32;
      out patches: D2D1_GRADIENT_MESH_PATCH;
      patchesCount: UInt32): HRESULT; stdcall;
  end;

  ID2D1ImageSource = interface(ID2D1Image)
    ['{c9b664e5-74a1-4378-9ac2-eefc37a3f4d8}']

    function OfferResources: HRESULT; stdcall;

    function TryReclaimResources(out AResourcesDiscarded: BOOL): HRESULT; stdcall;

  end;

  ID2D1ImageSourceFromWic = interface(ID2D1ImageSource)
    ['{77395441-1c8f-4555-8683-f50dab0fe792}']

    function EnsureCached(const ARectangleToFill: PD2D1_RECT_U): HRESULT; stdcall;

    function TrimCache(const ARectangleToPreserve: PD2D1_RECT_U): HRESULT; stdcall;

    procedure GetSource(out  AWicBitmapSource: IWICBitmapSource); stdcall;

  end;

  ID2D1TransformedImageSource = interface(ID2D1Image)
    ['{7f1f79e5-2796-416c-8f55-700f911445e5}']
    procedure GetSource(out AImageSource: ID2D1ImageSource); stdcall;

    procedure GetProperties(out AProperties: D2D1_TRANSFORMED_IMAGE_SOURCE_PROPERTIES); stdcall;

  end;

  ID2D1LookupTable3D = interface(ID2D1Resource)
    ['{53dd9855-a3b0-4d5b-82e1-26e25c5e5797}']

  end;

  ID2D1DeviceContext2 = interface(ID2D1DeviceContext1)
    ['{394ea6a3-0c34-4321-950b-6ca20f0be6c7}']
    function CreateInk(
      const AStartPoint: PD2D1_INK_POINT;
      out AInk: ID2D1Ink): HRESULT; stdcall;

    function CreateInkStyle(
      const AInkStyleProperties: D2D1_INK_STYLE_PROPERTIES;
      out AInkStyle: ID2D1InkStyle): HRESULT; stdcall;

    function CreateGradientMesh(
      const APatches: PD2D1_GRADIENT_MESH_PATCH;
      patchesCount: UInt32;
      out gradientMesh: ID2D1GradientMesh): HRESULT; stdcall;

    function CreateImageSourceFromWic(
      AWicBitmapSource: IWICBitmapSource;
      ALoadingOptions: D2D1_IMAGE_SOURCE_LOADING_OPTIONS;
      AAlphaMode: D2D1_ALPHA_MODE;
      out AImageSource: ID2D1ImageSourceFromWic): HRESULT; stdcall;

    function CreateLookupTable3D(
      APrecision: D2D1_BUFFER_PRECISION;
      const AExtents: PUint32;
      const AData: PByte;
      ADataCount: UINT32;
      const AStrides: PUint32;
      out ALookupTable: ID2D1LookupTable3D): HRESULT; stdcall;

    /// <summary>
    /// surfaces should be Pointer of IDXGISurface
    /// original: IDXGISurface **surfaces,
    /// </summary>
    function CreateImageSourceFromDxgi(
      var surfaces: IDXGISurface;
      ASurfaceCount: UINT32;
      AColorSpace: DXGI_COLOR_SPACE_TYPE;
      AOptions: D2D1_IMAGE_SOURCE_FROM_DXGI_OPTIONS;
      out AImageSource:ID2D1ImageSource): HRESULT; stdcall;

    function GetGradientMeshWorldBounds(
      AGradientMesh: ID2D1GradientMesh;
      out pBounds: D2D1_RECT_F): HRESULT; stdcall;

    procedure DrawInk(
      AInk: ID2D1Ink;
      ABrush: ID2D1Brush;
      AInkStyle: ID2D1InkStyle); stdcall;

    procedure DrawGradientMesh(AGradientMesh: ID2D1GradientMesh); stdcall;

    procedure DrawGdiMetafile(
      AGdiMetafile: ID2D1GdiMetafile;
      const ADestinationRectangle: PD2D1_RECT_F;
      const sourceRectangle: PD2D1_RECT_F = nil); stdcall;

    function CreateTransformedImageSource(
      AImageSource: ID2D1ImageSource;
      const AProperties:  PD2D1_TRANSFORMED_IMAGE_SOURCE_PROPERTIES;
      out ATransformedImageSource: ID2D1TransformedImageSource): HRESULT; stdcall;
  end;

  ID2D1Device2 = interface(ID2D1Device1)
    ['{a44472e1-8dfb-4e60-8492-6e2861c9ca8b}']

    function CreateDeviceContext(
      AOptions: D2D1_DEVICE_CONTEXT_OPTIONS;
      out deviceContext2: ID2D1DeviceContext2): HRESULT; stdcall;

    procedure FlushDeviceContexts(ABitmap: ID2D1Bitmap); stdcall;

    function GetDxgiDevice(out ADXGIDevice: IDXGIDevice): HRESULT; stdcall;

  end;

  ID2D1Factory3 = interface(ID2D1Factory2)
    ['{0869759f-4f00-413f-b03e-2bda45404d0f}']
    function CreateDevice(
      ADXGIDevice: IDXGIDevice;
      out AD2DDevice2: ID2D1Device2): HRESULT; stdcall;
  end;

  ID2D1CommandSink2 = interface(ID2D1CommandSink1)
    ['{3bab440e-417e-47df-a2e2-bc0be6a00916}']
    function DrawInk(
      AInk: ID2D1Ink;
      ABrush: ID2D1Brush;
      AInkStyle: ID2D1InkStyle): HRESULT; stdcall;

    function DrawGradientMesh(AGradientMesh: ID2D1GradientMesh): HRESULT; stdcall;

    function DrawGdiMetafile(
      AGdiMetafile: ID2D1GdiMetafile;
      const ADestinationRectangle: PD2D1_RECT_F;
      const ASourceRectangle: PD2D1_RECT_F): HRESULT; stdcall;
  end;

  ID2D1GdiMetafile1 = interface(ID2D1GdiMetafile)
    ['{2e69f9e8-dd3f-4bf9-95ba-c04f49d788df}']

    function GetDpi(
      out ADpiX: Single;
      out ADpiY: Single): HRESULT; stdcall;

    function GetSourceBounds(out ABounds: D2D1_RECT_F): HRESULT; stdcall;

  end;

  ID2D1GdiMetafileSink1 = interface(ID2D1GdiMetafileSink)
    ['{fd0ecb6b-91e6-411e-8655-395e760f91b4}']

    function ProcessRecord(
      ARecordType: DWORD;
      const ARecordData: Pointer;
      ARecordDataSize: DWORD;
      AFlags: UINT32): HRESULT; stdcall;
  end;

  ID2D1SpriteBatch = interface(ID2D1Resource)
    ['{4dc583bf-3a10-438a-8722-e9765224f1f1}']
    function AddSprites(
      ASpriteCount: UInt32;
      const ADestinationRectangles: PD2D1_RECT_F;
      const ASourceRectangles: PD2D1_RECT_U = nil;
      const AColors: PD2D1_COLOR_F = nil;
      const ATransforms: PD2D1_MATRIX_3X2_F = nil;
      ADestinationRectanglesStride: UInt32 = SizeOf(D2D1_RECT_F);
      ASourceRectanglesStride: UInt32 = SizeOf(D2D1_RECT_U);
      AColorsStride: UInt32 = SizeOf(D2D1_COLOR_F);
      ATransformsStride: UInt32 = SizeOf(D2D1_MATRIX_3X2_F)): HRESULT; stdcall;

    function SetSprites(
      AStartIndex: UINT32;
      ASpriteCount: UINT32;
      const ADestinationRectangles: PD2D1_RECT_F;
      const ASourceRectangles: PD2D1_RECT_U = nil;
      const AColors: PD2D1_COLOR_F = nil;
      const ATransforms: PD2D1_MATRIX_3X2_F = nil;
      ADestinationRectanglesStride: UInt32 = SizeOf(D2D1_RECT_F);
      ASourceRectanglesStride: UInt32 = SizeOf(D2D1_RECT_U);
      AColorsStride: UInt32 = SizeOf(D2D1_COLOR_F);
      ATransformsStride: UInt32 = SizeOf(D2D1_MATRIX_3X2_F)): HRESULT; stdcall;

    function GetSprites(
      AStartIndex: UINT32;
      ASpriteCount: UINT32;
      out ADestinationRectangles: D2D1_RECT_F;
      out ASourceRectangles: D2D1_RECT_U;
      out AColors: D2D1_COLOR_F;
      out ATransforms: D2D1_MATRIX_3X2_F): HRESULT; stdcall;

    function GetSpriteCount: UInt32; stdcall;

    procedure Clear; stdcall;

  end;

  ID2D1DeviceContext3 = interface(ID2D1DeviceContext2)
    ['{235a7496-8351-414c-bcd4-6672ab2d8e00}']

    function CreateSpriteBatch(out ASpriteBatch: ID2D1SpriteBatch): HRESULT; stdcall;

    procedure DrawSpriteBatch(
      ASpriteBatch: ID2D1SpriteBatch;
      AStartIndex: UInt32;
      ASpriteCount: UInt32;
      ABitmap: ID2D1Bitmap;
      AInterpolationMode: D2D1_BITMAP_INTERPOLATION_MODE = D2D1_BITMAP_INTERPOLATION_MODE_LINEAR;
      ASpriteOptions: D2D1_SPRITE_OPTIONS = D2D1_SPRITE_OPTIONS_NONE); stdcall;
  end;

  ID2D1Device3 = interface(ID2D1Device2)
    ['{852f2087-802c-4037-ab60-ff2e7ee6fc01}']

    function CreateDeviceContext(
      AOptions: D2D1_DEVICE_CONTEXT_OPTIONS;
      out deviceContext3: ID2D1DeviceContext3): HRESULT; stdcall;

  end;

  ID2D1Factory4 = interface(ID2D1Factory3)
    ['{bd4ec2d2-0662-4bee-ba8e-6f29f032e096}']

    function CreateDevice(
      ADXGIDevice: IDXGIDevice;
      out AD2DDevice3: ID2D1Device3): HRESULT; stdcall;

  end;

  ID2D1CommandSink3 = interface(ID2D1CommandSink2)
    ['{18079135-4cf3-4868-bc8e-06067e6d242d}']

    function DrawSpriteBatch(
      ASpriteBatch: ID2D1SpriteBatch;
      AStartIndex: UInt32;
      ASpriteCount: UInt32;
      ABitmap: ID2D1Bitmap;
      AInterpolationMode: D2D1_BITMAP_INTERPOLATION_MODE;
      ASpriteOptions: D2D1_SPRITE_OPTIONS): HRESULT; stdcall;

  end;

  ID2D1SvgGlyphStyle = interface(ID2D1Resource)
    ['{af671749-d241-4db8-8e41-dcc2e5c1a438}']

    function SetFill(ABrush: ID2D1Brush): HRESULT; stdcall;

    procedure GetFill(ABrush: ID2D1Brush); stdcall;

    function SetStroke(
      ABrush: ID2D1Brush;
      strokeWidth: Single = 1.0;
      const ADashes: PSingle = nil;
      ADashesCount: UInt32 = 0;
      ADashOffset: Single = 1.0): HRESULT; stdcall;

    function GetStrokeDashesCount: UInt32; stdcall;

    procedure GetStroke(
      out ABrush: ID2D1Brush;
      out AStrokeWidth: Single;
      ADashes: PSingle = nil;
      ADashesCount: UInt32 = 0;
      ADashOffset: PSingle = nil); stdcall;
  end;

  ID2D1DeviceContext4 = interface(ID2D1DeviceContext3)
    ['{8c427831-3d90-4476-b647-c4fae349e4db}']

    function CreateSvgGlyphStyle(out ASvgGlyphStyle: ID2D1SvgGlyphStyle): HRESULT; stdcall;

    procedure DrawText(
      const AString: PWChar;
      AStringLength: UInt32;
      ATextFormat: IDWriteTextFormat;
      const ALayoutRect: PD2D1_RECT_F;
      ADefaultFillBrush: ID2D1Brush;
      ASvgGlyphStyle: ID2D1SvgGlyphStyle;
      AColorPaletteIndex: UInt32  = 0;
      AOptions: D2D1_DRAW_TEXT_OPTIONS = D2D1_DRAW_TEXT_OPTIONS_ENABLE_COLOR_FONT;
      AMeasuringMode: DWRITE_MEASURING_MODE = DWRITE_MEASURING_MODE_NATURAL); stdcall;

    procedure DrawTextLayout(
      AOrigin: D2D1_POINT_2F;
      ATextLayout: IDWriteTextLayout;
      ADefaultFillBrush: ID2D1Brush;
      ASvgGlyphStyle: ID2D1SvgGlyphStyle;
      AColorPaletteIndex: UINT32 = 0;
      AOptions: D2D1_DRAW_TEXT_OPTIONS = D2D1_DRAW_TEXT_OPTIONS_ENABLE_COLOR_FONT); stdcall;

    procedure DrawColorBitmapGlyphRun(
      AGlyphImageFormat: DWRITE_GLYPH_IMAGE_FORMATS;
      ABaselineOrigin: D2D1_POINT_2F;
      const AGlyphRun: PDWRITE_GLYPH_RUN;
      AMeasuringMode: DWRITE_MEASURING_MODE = DWRITE_MEASURING_MODE_NATURAL;
      ABitmapSnapOption: D2D1_COLOR_BITMAP_GLYPH_SNAP_OPTION = D2D1_COLOR_BITMAP_GLYPH_SNAP_OPTION_DEFAULT); stdcall;

    procedure DrawSvgGlyphRun(
      ABaselineOrigin: D2D1_POINT_2F;
      const AGlyphRun: PDWRITE_GLYPH_RUN;
      ADefaultFillBrush: ID2D1Brush = nil;
      ASvgGlyphStyle: ID2D1SvgGlyphStyle = nil;
      AColorPaletteIndex: UInt32 = 0;
      AMeasuringMode:DWRITE_MEASURING_MODE = DWRITE_MEASURING_MODE_NATURAL); stdcall;

    function GetColorBitmapGlyphImage(
      AGlyphImageFormat: DWRITE_GLYPH_IMAGE_FORMATS;
      AGlyphOrigin: D2D1_POINT_2F;
      AFontFace: IDWriteFontFace;
      AFontEmSize: Single;
      AGlyphIndex: UInt16;
      AIsSideways: BOOL;
      const AWorldTransform: PD2D1_MATRIX_3X2_F;
      ADpiX: Single;
      ADpiY: Single;
      out AGlyphTransform: D2D1_MATRIX_3X2_F;
      out AGlyphImage: ID2D1Image): HRESULT; stdcall;

    function GetSvgGlyphImage(
      AGlyphOrigin: D2D1_POINT_2F;
      AFontFace: IDWriteFontFace;
      AFontEmSize: Single;
      AGlyphIndex: UInt16;
      AIsSideways: BOOL;
      const AWorldTransform: PD2D1_MATRIX_3X2_F;
      ADefaultFillBrush: ID2D1Brush;
      ASvgGlyphStyle: ID2D1SvgGlyphStyle;
      ACcolorPaletteIndex: UInt32;
      out AGlyphTransform: D2D1_MATRIX_3X2_F;
      out AGlyphImage: ID2D1CommandList): HRESULT; stdcall;

  end;

  ID2D1Device4 = interface(ID2D1Device3)
    ['{d7bdb159-5683-4a46-bc9c-72dc720b858b}']

    function CreateDeviceContext(
      AOptions: D2D1_DEVICE_CONTEXT_OPTIONS;
      out ADeviceContext4: ID2D1DeviceContext4): HRESULT; stdcall;

    procedure SetMaximumColorGlyphCacheMemory(AMaximumInBytes: UInt64); stdcall;

    function GetMaximumColorGlyphCacheMemory: UInt64; stdcall;

  end;

  ID2D1Factory5 = interface(ID2D1Factory4)
    ['{c4349994-838e-4b0f-8cab-44997d9eeacc}']

    function CreateDevice(
      ADXGIDevice: IDXGIDevice;
      out d2dDevice4: ID2D1Device4): HRESULT; stdcall;

  end;

  ID2D1CommandSink4 = interface(ID2D1CommandSink3)
    ['{c78a6519-40d6-4218-b2de-beeeb744bb3e}']

    function SetPrimitiveBlend2(APrimitiveBlend: D2D1_PRIMITIVE_BLEND): HRESULT; stdcall;

  end;

  ID2D1ColorContext1 = interface(ID2D1ColorContext)
    ['{1ab42875-c57f-4be9-bd85-9cd78d6f55ee}']

    function GetColorContextType: D2D1_COLOR_CONTEXT_TYPE; stdcall;

    function GetDXGIColorSpace: DXGI_COLOR_SPACE_TYPE; stdcall;

    function GetSimpleColorProfile(out ASimpleProfile: D2D1_SIMPLE_COLOR_PROFILE): HRESULT; stdcall;

  end;

  ID2D1DeviceContext5 = interface(ID2D1DeviceContext4)
    ['{7836d248-68cc-4df6-b9e8-de991bf62eb7}']

    function CreateSvgDocument(
      AInputXmlStream: IStream;
      AViewportSize: D2D1_SIZE_F;
      out ASvgDocument: ID2D1SvgDocument): HRESULT; stdcall;

    procedure DrawSvgDocument(ASvgDocument: ID2D1SvgDocument); stdcall;

    function CreateColorContextFromDxgiColorSpace(
      AColorSpace: DXGI_COLOR_SPACE_TYPE;
      out AColorContext: ID2D1ColorContext1): HRESULT; stdcall;

    function CreateColorContextFromSimpleColorProfile(
      const simpleProfile: PD2D1_SIMPLE_COLOR_PROFILE;
      out colorContext: ID2D1ColorContext1): HRESULT; stdcall;

  end;

  ID2D1Device5 = interface(ID2D1Device4)
    ['{d55ba0a4-6405-4694-aef5-08ee1a4358b4}']

    function CreateDeviceContext(
      AOptions: D2D1_DEVICE_CONTEXT_OPTIONS;
      out ADeviceContext5: ID2D1DeviceContext5): HRESULT; stdcall;

  end;

  ID2D1Factory6 = interface(ID2D1Factory5)
    ['{f9976f46-f642-44c1-97ca-da32ea2a2635}']

    function CreateDevice(
      ADXGIDevice: IDXGIDevice;
      out d2dDevice5: ID2D1Device5): HRESULT; stdcall;

  end;

  ID2D1CommandSink5 = interface(ID2D1CommandSink4)
    ['{7047dd26-b1e7-44a7-959a-8349e2144fa8}']

    function BlendImage(
      AImage: ID2D1Image;
      ABlendMode: D2D1_BLEND_MODE;
      const ATargetOffset: PD2D1_POINT_2F;
      const AImageRectangle: PD2D1_RECT_F;
      AInterpolationMode: D2D1_INTERPOLATION_MODE): HRESULT; stdcall;

  end;

  ID2D1DeviceContext6 = interface(ID2D1DeviceContext5)
    ['{985f7e37-4ed0-4a19-98a3-15b0edfde306}']

    procedure BlendImage(
      AImage: ID2D1Image;
      ABlendMode: D2D1_BLEND_MODE;
      const ATargetOffset: PD2D1_POINT_2F = nil;
      const AImageRectangle: PD2D1_RECT_F = nil;
      AInterpolationMode: D2D1_INTERPOLATION_MODE = D2D1_INTERPOLATION_MODE_LINEAR); stdcall;

  end;

  ID2D1Device6 = interface(ID2D1Device5)
    ['{7bfef914-2d75-4bad-be87-e18ddb077b6d}']

    function CreateDeviceContext(
      AOptions: D2D1_DEVICE_CONTEXT_OPTIONS;
      out deviceContext6: ID2D1DeviceContext6): HRESULT; stdcall;

  end;

  ID2D1Factory7 = interface(ID2D1Factory6)
    ['{bdc2bdd3-b96c-4de6-bdf7-99d4745454de}']

    function CreateDevice(
      ADXGIDevice: IDXGIDevice;
      out d2dDevice6: ID2D1Device6): HRESULT; stdcall;
  end;

{$ENDREGION}

{$REGION 'dwrite interfaces'}
  IDWriteFontFileLoader = interface(IUnknown)
    ['{727cad4e-d6af-4c9e-8a08-d695b11caa49}']

    function CreateStreamFromKey(
      AFontFileReferenceKey: Pointer;
      AFontFileReferenceKeySize: UInt32;
      out AFontFileStream: IDWriteFontFileStream): HRESULT; stdcall;
  end;

  IDWriteLocalFontFileLoader = interface(IDWriteFontFileLoader)
    ['{b2d9f3ec-c9fe-4a11-a2ec-d86208f7c0a2}']

    function GetFilePathLengthFromKey(
      AFontFileReferenceKey: Pointer;
      AFontFileReferenceKeySize: UInt32;
      out AFilePathLength: UInt32): HRESULT; stdcall;

    function GetFilePathFromKey(
      AFontFileReferenceKey: Pointer;
      AFontFileReferenceKeySize: UInt32;
      out AFilePath: WChar;
      AFilePathSize: UInt32): HRESULT; stdcall;

    function GetLastWriteTimeFromKey(
      AFontFileReferenceKey: Pointer;
      AFontFileReferenceKeySize: UInt32;
      out ALastWriteTime: FILETIME): HRESULT; stdcall;
  end;

  IDWriteFontFileStream = interface(IUnknown)
    ['{6d4865fe-0ab8-4d91-8f62-5dd6be34a3e0}']

    function ReadFileFragment(
      out fragmentStart: Pointer;
      AFileOffset: UInt64;
      AFragmentSize: UInt64;
      out AFragmentContext: Pointer): HRESULT; stdcall;

    procedure ReleaseFileFragment(AFragmentContext: Pointer); stdcall;

    function GetFileSize(out AFileSize: UInt64): HRESULT; stdcall;

    function GetLastWriteTime(ALastWriteTime: UInt64): HRESULT; stdcall;

  end;

  IDWriteFontFile = interface(IUnknown)
    ['{739d886a-cef5-47dc-8769-1a8b41bebbb0}']

    function GetReferenceKey(
    out AFontFileReferenceKey: Pointer;
    out AFontFileReferenceKeySize: UInt64): HRESULT; stdcall;

    function GetLoader(out AFontFileLoader: IDWriteFontFileLoader): HRESULT; stdcall;

    function Analyze(
      out AIsSupportedFontType: BOOL;
      out AFontFileType: DWRITE_FONT_FILE_TYPE;
      out AFontFaceType: DWRITE_FONT_FACE_TYPE;
      out ANumberOfFaces: UINT32): HRESULT; stdcall;
  end;

  IDWriteRenderingParams = interface(IUnknown)
    ['{2f0da53a-2add-47cd-82ee-d9ec34688e75}']

    function GetGamma: Single; stdcall;

    function GetEnhancedContrast: Single; stdcall;

    function GetClearTypeLevel: Single; stdcall;

    function GetPixelGeometry: DWRITE_PIXEL_GEOMETRY; stdcall;

    function GetRenderingMode: DWRITE_RENDERING_MODE; stdcall;

  end;

  IDWriteFontFace = interface(IUnknown)
    ['{5f49804d-7024-4d43-bfa9-d25984f53849}']

    function GetType: DWRITE_FONT_FACE_TYPE; stdcall;

    function GetFiles(
      var numberOfFiles: UInt32;
      out fontFiles: IDWriteFontFile): HRESULT; stdcall;

    function GetIndex: UInt32; stdcall;

    function GetSimulations: DWRITE_FONT_SIMULATIONS; stdcall;

    function IsSymbolFont: BOOL; stdcall;

    procedure GetMetrics(out AFontFaceMetrics: DWRITE_FONT_METRICS); stdcall;

    function GetGlyphCount: UInt16; stdcall;

    function GetDesignGlyphMetrics(
      AGlyphIndices: PWORD;
      AGlyphCount: UInt32;
      AGlyphMetrics: PDWRITE_GLYPH_METRICS;
      AIsSideways: BOOL = False): HRESULT; stdcall;

    function GetGlyphIndices(
      ACodePoints: PUint32;
      ACodePointCount: UInt32;
      out glyphIndices: UInt16): HRESULT; stdcall;

    function TryGetFontTable(
        AOpenTypeTableTag: UInt32;
        out ATableData: Pointer;
        out ATableSize: UInt32;
        out ATableContext: Pointer;
        out AExists: BOOL): HRESULT; stdcall;

    procedure ReleaseFontTable(tableContext: Pointer); stdcall;

    function GetGlyphRunOutline(
        AEmSize: Single;
        const AGlyphIndices: PWORD;
        const AGlyphAdvances: PSingle;
        const AGlyphOffsets: PDWRITE_GLYPH_OFFSET;
        AGlyphCount: UInt32;
        AIsSideways: BOOL;
        AIsRightToLeft: BOOL;
        AGeometrySink: IDWriteGeometrySink): HRESULT; stdcall;

    function GetRecommendedRenderingMode(
      AEmSize: Single;
      APixelsPerDip: Single;
      AMeasuringMode: DWRITE_MEASURING_MODE;
      ARenderingParams: IDWriteRenderingParams;
      out ARenderingMode: DWRITE_RENDERING_MODE): HRESULT; stdcall;

    function GetGdiCompatibleMetrics(
      AEmSize: Single;
      APixelsPerDip: Single;
      const ATransform: PDWRITE_MATRIX;
      out AFontFaceMetrics: DWRITE_FONT_METRICS): HRESULT; stdcall;

    function GetGdiCompatibleGlyphMetrics(
      AEmSize: Single;
      APixelsPerDip: Single;
      ATransform: PDWRITE_MATRIX;
      AUseGdiNatural: BOOL;
      AGlyphIndices: PWORD;
      AGlyphCount: UInt32;
      AGlyphMetrics: PDWRITE_GLYPH_METRICS;
      AIsSideways: BOOL = False): HRESULT; stdcall;
  end;

  IDWriteFontCollectionLoader = interface(IUnknown)
    ['{cca920e4-52f0-492b-bfa8-29c72ee0a468}']

    function CreateEnumeratorFromKey(
      AFactory: IDWriteFactory;
      collectionKey: Pointer;
      collectionKeySize: UInt32;
      out fontFileEnumerator: IDWriteFontFileEnumerator): HRESULT; stdcall;
  end;

  IDWriteFontFileEnumerator = interface(IUnknown)
    ['{72755049-5ff7-435d-8348-4be97cfa6c7c}']

    function MoveNext(out AHasCurrentFile: BOOL): HRESULT; stdcall;

    function GetCurrentFontFile(out AFontFile: IDWriteFontFile): HRESULT; stdcall;
  end;

  IDWriteLocalizedStrings = interface(IUnknown)
    ['{08256209-099a-4b34-b86d-c22b110e7771}']

    function GetCount: UInt32; stdcall;

    function FindLocaleName(
      const ALocaleName: PWCHAR;
      out AIndex: UInt32;
      out AExists: BOOL): HRESULT; stdcall;

    function GetLocaleNameLength(
      AIndex: UInt32;
      out ALength: UInt32): HRESULT; stdcall;

    function GetLocaleName(
      AIndex: UInt32;
      ALocaleName: PWChar;
      ASize: UInt32
    ): HRESULT; stdcall;

    function GetStringLength(
      AIndex: UInt32;
      ALength: UInt32): HRESULT; stdcall;

    function GetString(
      AIndex: UInt32;
      AStringBuffer: PWChar;
      ASize: UInt32): HRESULT; stdcall;
  end;

  IDWriteFontCollection = interface(IUnknown)
    ['{a84cee02-3eea-4eee-a827-87c1a02a0fcc}']

    function GetFontFamilyCount: UInt32; stdcall;

    function GetFontFamily(
      AIndex: UINT32;
      out AFontFamily: IDWriteFontFamily): HRESULT; stdcall;

    function FindFamilyName(
      const familyName: PWChar;
      out AIndex: UInt32;
      out AExists: BOOL): HRESULT; stdcall;

    function GetFontFromFontFace(
      AFontFace: IDWriteFontFace;
      out AFont: IDWriteFont): HRESULT; stdcall;
  end;

  IDWriteFontList = interface(IUnknown)
    ['{1a0d8438-1d97-4ec1-aef9-a2fb86ed6acb}']

    function GetFontCollection(out AFontCollection: IDWriteFontCollection): HRESULT; stdcall;

    function GetFontCount: UInt32; stdcall;

    function GetFont(
      AIndex: UINT32;
      out AFont: IDWriteFont): HRESULT; stdcall;
  end;

  IDWriteFontFamily = interface(IDWriteFontList)
    ['{da20d8ef-812a-4c43-9802-62ec4abd7add}']

    function GetFamilyNames(ANames: IDWriteLocalizedStrings): HRESULT; stdcall;

    function GetFirstMatchingFont(
      AWeight: DWRITE_FONT_WEIGHT;
      AStretch: DWRITE_FONT_STRETCH;
      AStyle: DWRITE_FONT_STYLE;
      out AMatchingFont: IDWriteFont): HRESULT; stdcall;

    function GetMatchingFonts(
      AWeight: DWRITE_FONT_WEIGHT;
      AStretch: DWRITE_FONT_STRETCH;
      AStyle: DWRITE_FONT_STYLE;
      out AMatchingFonts: IDWriteFontList): HRESULT; stdcall;
  end;

  IDWriteFont = interface(IUnknown)
    ['{acd16696-8c14-4f5d-877e-fe3fc1d32737}']

    function GetFontFamily(out AFontFamily: IDWriteFontFamily): HRESULT; stdcall;

    function GetWeight: DWRITE_FONT_WEIGHT; stdcall;

    function GetStretch: DWRITE_FONT_STRETCH; stdcall;

    function GetStyle: DWRITE_FONT_STYLE; stdcall;

    function IsSymbolFont: BOOL; stdcall;

    function GetFaceNames(ANames: IDWriteLocalizedStrings): HRESULT; stdcall;

    function GetInformationalStrings(
      AInformationalStringID: DWRITE_INFORMATIONAL_STRING_ID;
      out AInformationalStrings: IDWriteLocalizedStrings;
      out AExists: BOOL): HRESULT; stdcall;

    function GetSimulations: DWRITE_FONT_SIMULATIONS; stdcall;

    procedure GetMetrics(out AFontMetrics: DWRITE_FONT_METRICS); stdcall;

    function HasCharacter(
      AUnicodeValue: UInt32;
      out AExists: BOOL): HRESULT; stdcall;

    function CreateFontFace(out AFontFace: IDWriteFontFace): HRESULT; stdcall;
  end;

  IDWriteTextFormat = interface(IUnknown)
    ['{9c906818-31d7-4fd3-a151-7c5e225db55a}']

    function SetTextAlignment(ATextAlignment: DWRITE_TEXT_ALIGNMENT): HRESULT; stdcall;

    function SetParagraphAlignment(AParagraphAlignment: DWRITE_PARAGRAPH_ALIGNMENT): HRESULT; stdcall;

    function SetWordWrapping(AWordWrapping: DWRITE_WORD_WRAPPING): HRESULT; stdcall;

    function SetReadingDirection(AReadingDirection: DWRITE_READING_DIRECTION): HRESULT; stdcall;

    function SetFlowDirection(AFlowDirection: DWRITE_FLOW_DIRECTION): HRESULT; stdcall;

    function SetIncrementalTabStop(AIncrementalTabStop: Single): HRESULT; stdcall;

    function SetTrimming(
      const ATrimmingOptions: PDWRITE_TRIMMING;
      ATrimmingSign: IDWriteInlineObject): HRESULT; stdcall;

    function SetLineSpacing(
      ALlineSpacingMethod: DWRITE_LINE_SPACING_METHOD;
      ALineSpacing: Single;
      ABaseline: Single): HRESULT; stdcall;

    function GetTextAlignment: DWRITE_TEXT_ALIGNMENT; stdcall;

    function GetParagraphAlignment: DWRITE_PARAGRAPH_ALIGNMENT; stdcall;

    function GetWordWrapping: DWRITE_WORD_WRAPPING; stdcall;

    function GetReadingDirection: DWRITE_READING_DIRECTION; stdcall;

    function GetFlowDirection: DWRITE_FLOW_DIRECTION; stdcall;

    function GetIncrementalTabStop: Single; stdcall;

    function GetTrimming(
      out ATrimmingOptions: DWRITE_TRIMMING;
      out ATrimmingSign: IDWriteInlineObject): HRESULT; stdcall;

    function GetLineSpacing(
      out ALineSpacingMethod: DWRITE_LINE_SPACING_METHOD;
      out ALineSpacing: PSingle;
      out ABaseline: PSingle): HRESULT; stdcall;

    function GetFontCollection(out AFontCollection: IDWriteFontCollection): HRESULT; stdcall;

    function GetFontFamilyNameLength: UInt32; stdcall;

    function GetFontFamilyName(
      out AFontFamilyName: WChar;
      ANameSize: UInt32): HRESULT; stdcall;

    function GetFontWeight: DWRITE_FONT_WEIGHT; stdcall;

    function GetFontStyle: DWRITE_FONT_STYLE; stdcall;

    function GetFontStretch: DWRITE_FONT_STRETCH; stdcall;

    function GetFontSize: Single; stdcall;

    function GetLocaleNameLength: UInt32; stdcall;

    function GetLocaleName(
      out ALocaleName: WCHAR;
      ANameSize: UInt32): HRESULT; stdcall;
  end;

  IDWriteTypography = interface(IUnknown)
    ['{55f1112b-1dc2-4b3c-9541-f46894ed85b6}']

    function AddFontFeature(AFontFeature: DWRITE_FONT_FEATURE): HRESULT; stdcall;

    function GetFontFeatureCount: UInt32; stdcall;

    function GetFontFeature(
      AFontFeatureIndex: UInt32;
      out AFontFeature: DWRITE_FONT_FEATURE): HRESULT; stdcall;
  end;

  IDWriteNumberSubstitution = interface(IUnknown)
    ['{14885cc9-bab0-4f90-b6ed-5c366a2cd03d}']

  end;

  IDWriteTextAnalysisSource = interface(IUnknown)
    ['{688e1a58-5094-47c8-adc8-fbcea60ae92b}']
    function GetTextAtPosition(
      ATextPosition: UINT32;
      out ATextString: PWChar;
      out ATextLength: UInt32): HRESULT; stdcall;

    function GetTextBeforePosition(
      ATextPosition: UINT32;
      out ATextString: PWChar;
      out ATextLength: UInt32): HRESULT; stdcall;

    function GetParagraphReadingDirection: DWRITE_READING_DIRECTION; stdcall;

    function GetLocaleName(
      ATextPosition: UInt32;
      out ATextLength: UInt32;
      out ALocaleName: PWCHAR): HRESULT; stdcall;

    function GetNumberSubstitution(
      ATextPosition: UInt32;
      out ATextLength: UInt32;
      out ANumberSubstitution: IDWriteNumberSubstitution): HRESULT; stdcall;
  end;

  IDWriteTextAnalysisSink = interface(IUnknown)
    ['{5810cd44-0ca0-4701-b3fa-bec5182ae4f6}']

    function SetScriptAnalysis(
      ATextPosition: UInt32;
      ATextLength: UInt32;
      const AScriptAnalysis: PDWRITE_SCRIPT_ANALYSIS): HRESULT; stdcall;

    function SetLineBreakpoints(
      textPosition: UINT32;
      textLength: UINT32;
      const lineBreakpoints: DWRITE_LINE_BREAKPOINT): HRESULT; stdcall;

    function SetBidiLevel(
      ATextPosition: UInt32;
      ATextLength: UInt32;
      AExplicitLevel: UInt8;
      AResolvedLevel: UInt8): HRESULT; stdcall;

    function SetNumberSubstitution(
      ATextPosition: UInt32;
      ATextLength: UInt32;
      ANumberSubstitution: IDWriteNumberSubstitution): HRESULT; stdcall;
  end;

  IDWriteTextAnalyzer = interface(IUnknown)
    ['{b7e6163e-7f46-43b4-84b3-e4e6249c365d}']

    function AnalyzeScript(
      AAnalysisSource: IDWriteTextAnalysisSource;
      ATextPosition: UInt32;
      ATextLength: UInt32;
      AAnalysisSink: IDWriteTextAnalysisSink): HRESULT; stdcall;

    function AnalyzeBidi(
      AAnalysisSource: IDWriteTextAnalysisSource;
      ATextPosition: UInt32;
      ATextLength: UInt32;
      AAnalysisSink: IDWriteTextAnalysisSink): HRESULT; stdcall;

    function AnalyzeNumberSubstitution(
      AAnalysisSource: IDWriteTextAnalysisSource;
      ATextPosition: UInt32;
      ATextLength: UInt32;
      AAnalysisSink: IDWriteTextAnalysisSink): HRESULT; stdcall;

    function AnalyzeLineBreakpoints(
      AAnalysisSource: IDWriteTextAnalysisSource;
      ATextPosition: UInt32;
      ATextLength: UInt32;
      AAnalysisSink: IDWriteTextAnalysisSink): HRESULT; stdcall;

    function GetGlyphs(
      ATextString: PWCHAR;
      ATextLength: UInt32;
      AFontFace: IDWriteFontFace;
      AIsSideways: BOOL;
      AIsRightToLeft: BOOL;
      const AScriptAnalysis: PDWRITE_SCRIPT_ANALYSIS;
      ALocaleName: PWCHAR;
      ANumberSubstitution: IDWriteNumberSubstitution;
      AFeatures: PDWRITE_TYPOGRAPHIC_FEATURES;
      AFeatureRangeLengths: PUInt32;
      AFeatureRanges: UInt32;
      AMaxGlyphCount: UInt32;
      out AClusterMap: UInt16;
      out ATextProps: DWRITE_SHAPING_TEXT_PROPERTIES;
      out AGlyphIndices: UInt16;
      out AGlyphProps: DWRITE_SHAPING_GLYPH_PROPERTIES;
      out AActualGlyphCount: UInt32): HRESULT; stdcall;

    function GetGlyphPlacements(
      ATextString: PWCHAR;
      AClusterMap: PWORD;
      ATextProps: PDWRITE_SHAPING_TEXT_PROPERTIES;
      ATextLength: UInt32;
      AGlyphIndices: PWORD;
      AGlyphProps: PDWRITE_SHAPING_GLYPH_PROPERTIES;
      AGlyphCount: UInt32;
      AFontFace: IDWriteFontFace;
      AFontEmSize: Single;
      AIsSideways: BOOL;
      AIsRightToLeft: BOOL;
      const AScriptAnalysis: PDWRITE_SCRIPT_ANALYSIS;
      ALocaleName: PWCHAR;
      const AFeatures: PDWRITE_TYPOGRAPHIC_FEATURES;
      const AFeatureRangeLengths: PUInt32;
      AFeatureRanges: UINT32;
      out AGlyphAdvances: Single;
      out AGlyphOffsets: DWRITE_GLYPH_OFFSET): HRESULT; stdcall;

    function GetGdiCompatibleGlyphPlacements(
      ATextString: PWCHAR;
      AClusterMap: PWORD;
      ATextProps: PDWRITE_SHAPING_TEXT_PROPERTIES;
      ATextLength: UInt32;
      AGlyphIndices: PWORD;
      const AGlyphProps: PDWRITE_SHAPING_GLYPH_PROPERTIES;
      AGlyphCount: UInt32;
      AFontFace: IDWriteFontFace;
      AFontEmSize: Single;
      APixelsPerDip: Single;
      const ATransform: PDWRITE_MATRIX;
      AUseGdiNatural: BOOL;
      AIsSideways: BOOL;
      AIsRightToLeft: BOOL;
      AScriptAnalysis: PDWRITE_SCRIPT_ANALYSIS;
      ALocaleName: PWCHAR;
      AFeatures: PDWRITE_TYPOGRAPHIC_FEATURES;
      AFeatureRangeLengths: PUint32;
      AFeatureRanges: UInt32;
      out AGlyphAdvances: Single;
      out AGlyphOffsets: DWRITE_GLYPH_OFFSET): HRESULT; stdcall;
  end;

  IDWriteInlineObject = interface(IUnknown)
    ['{8339fde3-106f-47ab-8373-1c6295eb10b3}']

    function Draw(
      AClientDrawingContext: Pointer;
      ARenderer: IDWriteTextRenderer;
      AOriginX: Single;
      AOriginY: Single;
      AIsSideways: BOOL;
      AIsRightToLeft: BOOL;
      AClientDrawingEffect: IUnknown): HRESULT; stdcall;

  function GetMetrics(out AMetrics: DWRITE_INLINE_OBJECT_METRICS): HRESULT; stdcall;

  function GetOverhangMetrics(out AOverhangs: DWRITE_OVERHANG_METRICS): HRESULT; stdcall;

  function GetBreakConditions(
    out ABreakConditionBefore: DWRITE_BREAK_CONDITION;
    out ABreakConditionAfter: DWRITE_BREAK_CONDITION): HRESULT; stdcall;
  end;

  IDWritePixelSnapping = interface(IUnknown)
    ['{eaf3a2da-ecf4-4d24-b644-b34f6842024b}']

    function IsPixelSnappingDisabled(
      AClientDrawingContext: Pointer;
      out AIsDisabled: BOOL): HRESULT; stdcall;

    function GetCurrentTransform(
      AClientDrawingContext: Pointer;
      out ATransform: DWRITE_MATRIX): HRESULT; stdcall;

    function GetPixelsPerDip(
      AClientDrawingContext: Pointer;
      out APixelsPerDip: Single): HRESULT; stdcall;
  end;

  IDWriteTextRenderer = interface(IDWritePixelSnapping)
    ['{ef8a8135-5cc6-45fe-8825-c5a0724eb819}']

    function DrawGlyphRun(
      AClientDrawingContext: Pointer;
      ABaselineOriginX: Single;
      ABaselineOriginY: Single;
      AMeasuringMode: DWRITE_MEASURING_MODE;
      const AGlyphRun: PDWRITE_GLYPH_RUN;
      const AGlyphRunDescription: PDWRITE_GLYPH_RUN_DESCRIPTION;
      AClientDrawingEffect: IUnknown): HRESULT; stdcall;

    function DrawUnderline(
      AClientDrawingContext: Pointer;
      ABaselineOriginX: Single;
      ABaselineOriginY: Single;
      const AUnderline: PDWRITE_UNDERLINE;
      AClientDrawingEffect: IUnknown): HRESULT; stdcall;

    function DrawStrikethrough(
      AClientDrawingContext: Pointer;
      ABaselineOriginX: Single;
      ABaselineOriginY: Single;
      const AStrikethrough: PDWRITE_STRIKETHROUGH;
      AClientDrawingEffect: IUnknown): HRESULT; stdcall;

    function DrawInlineObject(
      AClientDrawingContext: Pointer;
      AOriginX: Single;
      AOriginY: Single;
      AInlineObject: IDWriteInlineObject;
      AIsSideways: BOOL;
      AIsRightToLeft: BOOL;
      AClientDrawingEffect: IUnknown): HRESULT; stdcall;
  end;

  IDWriteTextLayout = interface(IDWriteTextFormat)
    ['{53737037-6d14-410b-9bfe-0b182bb70961}']

    function SetMaxWidth(AMaxWidth: Single): HRESULT; stdcall;

    function SetMaxHeight(AMaxHeight: Single): HRESULT; stdcall;

    function SetFontCollection(
      AFontCollection: IDWriteFontCollection;
      ATextRange: DWRITE_TEXT_RANGE): HRESULT; stdcall;

    function SetFontFamilyName(
      AFontFamilyName: PWCHAR;
      ATextRange: DWRITE_TEXT_RANGE): HRESULT; stdcall;

    function SetFontWeight(
      AFontWeight: DWRITE_FONT_WEIGHT;
      ATextRange: DWRITE_TEXT_RANGE): HRESULT; stdcall;

    function SetFontStyle(
      AFontStyle: DWRITE_FONT_STYLE;
      ATextRange: DWRITE_TEXT_RANGE): HRESULT; stdcall;

    function SetFontStretch(
      AFontStretch: DWRITE_FONT_STRETCH;
      ATextRange: DWRITE_TEXT_RANGE): HRESULT; stdcall;

    function SetFontSize(
      AFontSize: Single;
      ATextRange: DWRITE_TEXT_RANGE): HRESULT; stdcall;

    function SetUnderline(
      AHasUnderline: BOOL;
      ATextRange: DWRITE_TEXT_RANGE): HRESULT; stdcall;

    function SetStrikethrough(
      AHasStrikethrough: BOOL;
      ATextRange: DWRITE_TEXT_RANGE): HRESULT; stdcall;

    function SetDrawingEffect(
      ADrawingEffect: IUnknown;
      ATextRange: DWRITE_TEXT_RANGE): HRESULT; stdcall;

    function SetInlineObject(
      AInlineObject: IDWriteInlineObject;
      ATextRange: DWRITE_TEXT_RANGE): HRESULT; stdcall;

    function SetTypography(
      ATypography: IDWriteTypography;
      ATextRange: DWRITE_TEXT_RANGE): HRESULT; stdcall;

    function SetLocaleName(
      ALocaleName: PWCHAR;
      ATextRange: DWRITE_TEXT_RANGE): HRESULT; stdcall;

    function GetMaxWidth: Single; stdcall;

    function GetMaxHeight: Single; stdcall;

    function GetFontCollection(
      ACurrentPosition: UInt32;
      out AFontCollection: IDWriteFontCollection;
      out ATextRange: DWRITE_TEXT_RANGE): HRESULT; stdcall;

    function GetFontFamilyNameLength(
      ACurrentPosition: UInt32;
      out ANameLength: UInt32;
      out ATextRange: DWRITE_TEXT_RANGE): HRESULT; stdcall;

    function GetFontFamilyName(
      ACurrentPosition: UInt32;
      AFontFamilyName: PWCHAR;
      ANameSize: UInt32;
      out ATextRange: DWRITE_TEXT_RANGE): HRESULT; stdcall;

    function GetFontWeight(
      ACurrentPosition: UInt32;
      out AFontWeight: DWRITE_FONT_WEIGHT;
      out ATextRange: DWRITE_TEXT_RANGE): HRESULT; stdcall;

    function GetFontStyle(
      ACurrentPosition: UInt32;
      out AFontStyle: DWRITE_FONT_STYLE;
      out ATextRange: DWRITE_TEXT_RANGE): HRESULT; stdcall;

    function GetFontStretch(
      ACurrentPosition: UInt32;
      out AFontStretch: DWRITE_FONT_STRETCH;
      out ATextRange: DWRITE_TEXT_RANGE): HRESULT; stdcall;

    function GetFontSize(
      ACurrentPosition: UInt32;
      out AFontSize: Single;
      out ATextRange: DWRITE_TEXT_RANGE): HRESULT; stdcall;

    function GetUnderline(
      ACurrentPosition: UInt32;
      out AHasUnderline: BOOL;
      out ATextRange: DWRITE_TEXT_RANGE): HRESULT; stdcall;

    function GetStrikethrough(
      ACurrentPosition: UInt32;
      out AHasStrikethrough: BOOL;
      out ATextRange: DWRITE_TEXT_RANGE): HRESULT; stdcall;

    function GetDrawingEffect(
      ACurrentPosition: UInt32;
      out ADrawingEffect: IUnknown;
      out ATextRange: DWRITE_TEXT_RANGE): HRESULT; stdcall;

    function GetInlineObject(
      ACurrentPosition: UInt32;
      out AInlineObject: IDWriteInlineObject;
      out ATextRange: DWRITE_TEXT_RANGE): HRESULT; stdcall;

    function GetTypography(
      ACurrentPosition: UInt32;
      out ATtypography: IDWriteTypography;
      out ATextRange: DWRITE_TEXT_RANGE): HRESULT; stdcall;

    function GetLocaleNameLength(
      ACurrentPosition: UINT32;
      out ANameLength: UINT32;
      out ATextRange: DWRITE_TEXT_RANGE
    ): HRESULT; stdcall;

    function GetLocaleName(
      ACurrentPosition: UInt32;
      ALocaleName: PWCHAR;
      ANameSize: UInt32;
      out ATextRange: DWRITE_TEXT_RANGE): HRESULT; stdcall;

    function Draw(
      AClientDrawingContext: Pointer;
      ARenderer: IDWriteTextRenderer;
      AOriginX: Single;
      AOriginY: Single): HRESULT; stdcall;

    function GetLineMetrics(
      out ALineMetrics: DWRITE_LINE_METRICS;
      AMaxLineCount: UInt32;
      out AActualLineCount: UInt32): HRESULT; stdcall;

    function GetMetrics(out ATextMetrics: DWRITE_TEXT_METRICS): HRESULT; stdcall;

    function GetOverhangMetrics(AOverhangs: DWRITE_OVERHANG_METRICS): HRESULT; stdcall;

    function GetClusterMetrics(
      out AClusterMetrics: DWRITE_CLUSTER_METRICS;
      AMaxClusterCount: UInt32;
      out AActualClusterCount: UInt32): HRESULT; stdcall;

    function DetermineMinWidth(out AMinWidth: Single): HRESULT; stdcall;

    function HitTestPoint(
      APointX: Single;
      APointY: Single;
      out AIsTrailingHit: BOOL;
      out AIsInside: BOOL;
      out AHitTestMetrics: DWRITE_HIT_TEST_METRICS): HRESULT; stdcall;

    function HitTestTextPosition(
      ATextPosition: UInt32;
      AIsTrailingHit: BOOL;
      out APointX: Single;
      out APointY: Single;
      out AHitTestMetrics: DWRITE_HIT_TEST_METRICS): HRESULT; stdcall;

    function HitTestTextRange(
      ATextPosition: UInt32;
      ATextLength: UInt32;
      AOriginX: Single;
      AOriginY: Single;
      out AHitTestMetrics: DWRITE_HIT_TEST_METRICS;
      AMaxHitTestMetricsCount: UInt32;
      AOutactualHitTestMetricsCount: UInt32): HRESULT; stdcall;
  end;

  IDWriteBitmapRenderTarget = interface(IUnknown)
    ['{5e5a32a3-8dff-4773-9ff6-0696eab77267}']

    function DrawGlyphRun(
      ABaselineOriginX: Single;
      ABaselineOriginY: Single;
      AMeasuringMode: DWRITE_MEASURING_MODE;
      const AGlyphRun: PDWRITE_GLYPH_RUN;
      ARenderingParams: IDWriteRenderingParams;
      ATextColor: COLORREF;
      ABlackBoxRect: PRect): HRESULT; stdcall;

    function GetMemoryDC: HDC; stdcall;

    function GetPixelsPerDip: Single; stdcall;

    function SetPixelsPerDip(APixelsPerDip: Single): HRESULT; stdcall;

    function GetCurrentTransform(out ATransform: DWRITE_MATRIX): HRESULT; stdcall;

    function SetCurrentTransform(const ATransform: PDWRITE_MATRIX): HRESULT; stdcall;

    function GetSize(out ASize: SIZE): HRESULT; stdcall;

    function Resize(
      AWidth: UInt32;
      AHeight: UInt32): HRESULT; stdcall;
  end;

  IDWriteGdiInterop = interface(IUnknown)
    ['{1edd9491-9853-4299-898f-6432983b6f3a}']

    function CreateFontFromLOGFONT(
      ALogFont: PLOGFONTW;
      out AFont: IDWriteFont): HRESULT; stdcall;

    function ConvertFontToLOGFONT(
      AFont: IDWriteFont;
      out ALogFont: LOGFONTW;
      out AIsSystemFont: BOOL): HRESULT; stdcall;

    function ConvertFontFaceToLOGFONT(
      AFont: IDWriteFontFace;
      out ALogFont: LOGFONTW): HRESULT; stdcall;

    function CreateFontFaceFromHdc(
      AHdc: HDC;
      out AFontFace: IDWriteFontFace): HRESULT; stdcall;

    function CreateBitmapRenderTarget(
      AHdc: HDC;
      AWidth: UInt32;
      AHeight: UInt32;
      out ARenderTarget: IDWriteBitmapRenderTarget): HRESULT; stdcall;
  end;

  IDWriteGlyphRunAnalysis = interface(IUnknown)
    ['{7d97dbf7-e085-42d4-81e3-6a883bded118}']

    function GetAlphaTextureBounds(
      ATextureType: DWRITE_TEXTURE_TYPE;
      out ATextureBounds: TRect): HRESULT; stdcall;

    function CreateAlphaTexture(
      ATextureType: DWRITE_TEXTURE_TYPE;
      ATextureBounds:  PRect;
      AAlphaValues: PByte;
      ABufferSize: UInt32): HRESULT; stdcall;

    function GetAlphaBlendParams(
      ARenderingParams: IDWriteRenderingParams;
      out ABlendGamma: Single;
      out ABlendEnhancedContrast: Single;
      out ABlendClearTypeLevel: Single): HRESULT; stdcall;
  end;

  IDWriteFactory = interface(IUnknown)
    ['{b859ee5a-d838-4b5b-a2e8-1adc7d93db48}']

    function GetSystemFontCollection(
      out AFontCollection: IDWriteFontCollection;
      ACheckForUpdates: BOOL = False): HRESULT; stdcall;

    function CreateCustomFontCollection(
      ACollectionLoader: IDWriteFontCollectionLoader;
      ACollectionKey: Pointer;
      ACollectionKeySize: UInt32;
      out AFontCollection: IDWriteFontCollection): HRESULT; stdcall;

    function RegisterFontCollectionLoader(AFontCollectionLoader: IDWriteFontCollectionLoader): HRESULT; stdcall;

    function UnregisterFontCollectionLoader(AFontCollectionLoader: IDWriteFontCollectionLoader): HRESULT; stdcall;

    function CreateFontFileReference(
      AFilePath: PWCHAR;
      ALastWriteTime: PFILETIME;
      out AFontFile: IDWriteFontFile): HRESULT; stdcall;

    function CreateCustomFontFileReference(
      AFilePath: PWCHAR;
      ALastWriteTime: PFILETIME;
      out fontFile: IDWriteFontFile): HRESULT; stdcall;

    function CreateFontFace(
      AFontFaceType: DWRITE_FONT_FACE_TYPE;
      ANumberOfFiles: UInt32;
      AFontFiles: PIDWriteFontFile;
      AFaceIndex: UInt32;
      AFontFaceSimulationFlags: DWRITE_FONT_SIMULATIONS;
      out AFontFace: IDWriteFontFace): HRESULT; stdcall;

    function CreateRenderingParams(out ARenderingParams: IDWriteRenderingParams): HRESULT; stdcall;

    function CreateMonitorRenderingParams(
      AMonitor: HMONITOR;
      out ARenderingParams: IDWriteRenderingParams): HRESULT; stdcall;

    function CreateCustomRenderingParams(
      gamma: Single;
      enhancedContrast: Single;
      clearTypeLevel: Single;
      pixelGeometry: DWRITE_PIXEL_GEOMETRY;
      renderingMode: DWRITE_RENDERING_MODE;
      out renderingParams: IDWriteRenderingParams): HRESULT; stdcall;

    function RegisterFontFileLoader(AFontFileLoader: IDWriteFontFileLoader): HRESULT; stdcall;

    function UnregisterFontFileLoader(AFontFileLoader: IDWriteFontFileLoader): HRESULT; stdcall;

    function CreateTextFormat(
      fontFamilyName: PWCHAR;
      fontCollection: IDWriteFontCollection;
      fontWeight: DWRITE_FONT_WEIGHT;
      fontStyle: DWRITE_FONT_STYLE;
      fontStretch: DWRITE_FONT_STRETCH;
      fontSize: Single;
      localeName: PWCHAR;
      out textFormat: IDWriteTextFormat): HRESULT; stdcall;

    function CreateTypography(ATypography: IDWriteTypography): HRESULT; stdcall;

    function GetGdiInterop(AGdiInterop: IDWriteGdiInterop): HRESULT; stdcall;

    function CreateTextLayout(
      AString: PWCHAR;
      AStringLength: UInt32;
      ATextFormat: IDWriteTextFormat;
      AMaxWidth: Single;
      AMaxHeight: Single;
      out ATextLayout: IDWriteTextLayout): HRESULT; stdcall;

    function CreateGdiCompatibleTextLayout(
      AString: PWCHAR;
      AStringLength: UInt32;
      ATextFormat: IDWriteTextFormat;
      ALayoutWidth: Single;
      ALayoutHeight: Single;
      APixelsPerDip: Single;
      ATransform: PDWRITE_MATRIX;
      AUseGdiNatural: BOOL;
      out ATextLayout: IDWriteTextLayout): HRESULT; stdcall;

    function CreateEllipsisTrimmingSign(
      textFormat: IDWriteTextFormat;
      out trimmingSign: IDWriteInlineObject): HRESULT; stdcall;

    function CreateTextAnalyzer(out ATextAnalyzer: IDWriteTextAnalyzer): HRESULT; stdcall;

    function CreateNumberSubstitution(
      ASubstitutionMethod: DWRITE_NUMBER_SUBSTITUTION_METHOD;
      ALocaleName: PWCHAR;
      AIgnoreUserOverride: BOOL;
      out ANumberSubstitution: IDWriteNumberSubstitution): HRESULT; stdcall;

    function CreateGlyphRunAnalysis(
      glyphRun: PDWRITE_GLYPH_RUN;
      pixelsPerDip: Single;
      transform: PDWRITE_MATRIX;
      renderingMode: DWRITE_RENDERING_MODE;
      measuringMode: DWRITE_MEASURING_MODE;
      baselineOriginX: Single;
      baselineOriginY: Single;
      out glyphRunAnalysis: IDWriteGlyphRunAnalysis): HRESULT; stdcall;
  end;

{$ENDREGION}

{$REGION 'd2d1effectauthor.h interfaces'}
  ID2D1VertexBuffer = interface(IUnknown)
    ['{9b8b1336-00a5-4668-92b7-ced5d8bf9b7b}']

  end;

  ID2D1ResourceTexture = interface(IUnknown)
    ['{688d15c3-02b0-438d-b13a-d1b44c32c39a}']

  end;

  ID2D1RenderInfo = interface(IUnknown)
    ['{519ae1bd-d19a-420d-b849-364f594776b7}']

  end;

  ID2D1DrawInfo = interface(ID2D1RenderInfo)
    ['{693ce632-7f2f-45de-93fe-18d88b37aa21}']

  end;

  ID2D1ComputeInfo = interface(ID2D1RenderInfo)
    ['{5598b14b-9fd7-48b7-9bdb-8f0964eb38bc}']

  end;

  ID2D1TransformNode = interface(IUnknown)
    ['{b2efe1e7-729f-4102-949f-505fa21bf666}']

  end;

  ID2D1TransformGraph = interface(IUnknown)
    ['{13d29038-c3e6-4034-9081-13b53a417992}']

  end;

  ID2D1Transform = interface(ID2D1TransformNode)
    ['{ef1a287d-342a-4f76-8fdb-da0d6ea9f92b}']

  end;

  ID2D1DrawTransform = interface(ID2D1Transform)
    ['{36bfdcb6-9739-435d-a30d-a653beff6a6f}']

  end;

  ID2D1ComputeTransform = interface(ID2D1Transform)
    ['{0d85573c-01e3-4f7d-bfd9-0d60608bf3c3}']

  end;

  ID2D1AnalysisTransform = interface(IUnknown)
    ['{0359dc30-95e6-4568-9055-27720d130e93}']

  end;

  ID2D1SourceTransform = interface(ID2D1Transform)
    ['{db1800dd-0c34-4cf9-be90-31cc0a5653e1}']

  end;

  ID2D1ConcreteTransform = interface(ID2D1TransformNode)
    ['{1a799d8a-69f7-4e4c-9fed-437ccc6684cc}']

  end;

  ID2D1BlendTransform = interface(ID2D1ConcreteTransform)
    ['{63ac0b32-ba44-450f-8806-7f4ca1ff2f1b}']

  end;

  ID2D1BorderTransform = interface(ID2D1ConcreteTransform)
    ['{4998735c-3a19-473c-9781-656847e3a347}']

  end;

  ID2D1OffsetTransform = interface(ID2D1TransformNode)
    ['{3fe6adea-7643-4f53-bd14-a0ce63f24042}']

  end;

  ID2D1BoundsAdjustmentTransform = interface(ID2D1TransformNode)
    ['{90f732e2-5092-4606-a819-8651970baccd}']

  end;

  ID2D1EffectImpl = interface(IUnknown)
    ['{a248fd3f-3e6c-4e63-9f03-7f68ecc91db9}']

  end;

  ID2D1EffectContext = interface(IUnknown)
    ['{3d9f916b-27dc-4ad7-b4f1-64945340f563}']

  end;
{$ENDREGION}

{$REGION 'DocumentTarget.h interfaces'}
  IPrintDocumentPackageTarget = interface(IUnknown)
    ['{1b8efec4-3019-4c27-964e-367202156906}']

    function GetPackageTargetTypes(
      out ATargetCount: UInt32;
      out ATargetTypes: PGUID): HRESULT; stdcall;

    function GetPackageTarget(
      AGuidTargetType: TGUID;
      ARiid: TGUID;
      out APpvTarget: Pointer): HRESULT; stdcall;

    function Cancel: HRESULT; stdcall;
  end;

  IPrintDocumentPackageTargetFactory = interface(IUnknown)
    ['{d2959bf7-b31b-4a3d-9600-712eb1335ba4}']

    function CreateDocumentPackageTargetForPrintJob(
      PrinterName: LPCWSTR;
      JobName: LPCWSTR;
      jobOutputStream: IStream;
      jobPrintTicketStream: IStream;
      out docPackageTarget: IPrintDocumentPackageTarget): HRESULT; stdcall;
  end;

  IPrintDocumentPackageStatusEvent = interface(IDispatch)
    ['{ed90c8ad-5c34-4d05-a1ec-0e8a9b3ad7af}']

     function PackageStatusUpdated(APackageStatus: PrintDocumentPackageStatus): HRESULT; stdcall;
  end;

{$ENDREGION}

const
  dwritelib = 'DWRITE.DLL';
  d2d1lib = 'd2d1.dll';

function D2D1CreateFactory(
  AFactoryType: D2D1_FACTORY_TYPE;
  const ARiid: TGUID;
  const AFactoryOptions: PD2D1_FACTORY_OPTIONS;
  out AIFactory): HRESULT; stdcall; external d2d1lib;

function DWriteCreateFactory(
  AFactoryType: DWRITE_FACTORY_TYPE;
  const AIid: TGUID;
  out AFactory: IUnknown): HRESULT; stdcall; external dwritelib;

{$REGION 'xxx yyy zzz'}

{$ENDREGION}

implementation

{=========================================================================================================================================}
function DWRITE_LINE_BREAKPOINT.GetByte(const AIndex: Integer): Byte;
begin
  Result := ((Data shr (AIndex shr 8)) and (AIndex and $FF));
end;

{=========================================================================================================================================}
procedure DWRITE_LINE_BREAKPOINT.SetByte(const AIndex: Integer; AValue: Byte);
begin
  // offset = index shr 8           , 2 in example
  // mask = index and $FF           , $0003 in example
  // shifted mask = mask shl offset , $000B in example
  Data := (Data and (not ((AIndex and $FF) shl (AIndex shr 8)))) or
    ((AValue and AIndex and $FF) shl (AIndex shr 8));
end;

{=========================================================================================================================================}
function DWRITE_SHAPING_TEXT_PROPERTIES.GetWord(const AIndex: Integer): WORD;
begin
  Result := ((Data shr (AIndex shr 16)) and (AIndex and $FFFF));
end;

{=========================================================================================================================================}
procedure DWRITE_SHAPING_TEXT_PROPERTIES.SetWord(const AIndex: Integer; AValue: WORD);
begin
  // offset = index shr 16          , 1 in example
  // mask = index and $FFFF         , $7FFF in example
  // shifted mask = mask shl offset , $FFFE in example
  Data := (Data and (not ((AIndex and $FFFF) shl (AIndex shr 16)))) or
    ((AValue and AIndex and $FFFF) shl (AIndex shr 16));
end;

{=========================================================================================================================================}
function DWRITE_SHAPING_GLYPH_PROPERTIES.GetWord(const AIndex: Integer): WORD;
begin
  Result := ((Data shr (AIndex shr 16)) and (AIndex and $FFFF));
end;

{=========================================================================================================================================}
procedure DWRITE_SHAPING_GLYPH_PROPERTIES.SetWord(const AIndex: Integer; AValue: WORD);
begin
  // offset = index shr 16          , 4 in example
  // mask = index and $FFFF         , $0001 in example
  // shifted mask = mask shl offset , $FFFE in example
  Data := (Data and (not ((AIndex and $FFFF) shl (AIndex shr 16)))) or
    ((AValue and AIndex and $FFFF) shl (AIndex shr 16));
end;

{=========================================================================================================================================}
function DWRITE_CLUSTER_METRICS.GetWord(const AIndex: Integer): WORD;
begin
  Result := ((Data shr (AIndex shr 16)) and (AIndex and $FFFF));
end;

{=========================================================================================================================================}
procedure DWRITE_CLUSTER_METRICS.SetWord(const AIndex: Integer; AValue: WORD);
begin
  // offset = index shr 16          , 4 in example
  // mask = index and $FFFF         , $0001 in example
  // shifted mask = mask shl offset , $FFFE in example
  Data := (Data and (not ((AIndex and $FFFF) shl (AIndex shr 16)))) or
    ((AValue and AIndex and $FFFF) shl (AIndex shr 16));
end;

{=========================================================================================================================================}

//var
//  hDWRITE: HMODULE;
//  hD2D1: HMODULE;
//
//procedure InitD2D1; inline;
//begin
//  if hD2D1 = 0 then
//    hD2D1 := LoadLibrary(d2d1lib);
//end;
//
//procedure FreeD2D1; inline;
//begin
//  if hD2D1 > 0 then
//    FreeLibrary(hD2D1);
//end;
//
//procedure InitDWRITE; inline;
//begin
//  if hDWRITE = 0 then
//    hDWRITE := LoadLibrary(dwritelib);
//end;
//
//procedure FreeDWRITE; inline;
//begin
//  if hDWRITE > 0 then
//    FreeLibrary(hDWRITE);
//end;

//var
//  _DWriteCreateFactory: function(factoryType: DWRITE_FACTORY_TYPE;
//    const iid: TGUID; out factory: IUnknown): HRESULT; stdcall;

//var
//  _D2D1CreateFactory: function(AFactoryType: D2D1_FACTORY_TYPE; const ARiid: TGUID; const AFactoryOptions: PD2D1_FACTORY_OPTIONS; out AIFactory): HRESULT; stdcall;
//  _D2D1MakeRotateMatrix: procedure(angle: Single; center: D2D1_POINT_2F; matrix: PD2D1Matrix3x2F); stdcall;
//  _D2D1MakeSkewMatrix: procedure(angleX: Single; angleY: Single; center: D2D1_POINT_2F; matrix: PD2D1Matrix3x2F); stdcall;
//  _D2D1IsMatrixInvertible: function(matrix: PD2D1Matrix3x2F): BOOL; stdcall;
//  _D2D1InvertMatrix: function(matrix: PD2D1Matrix3x2F): BOOL; stdcall;
//
//function D2D1CreateFactory(AFactoryType: D2D1_FACTORY_TYPE; const ARiid: TGUID; const AFactoryOptions: PD2D1_FACTORY_OPTIONS; out AIFactory): HRESULT;
//begin
//  if Assigned(_D2D1CreateFactory) then
//    begin
//      Result := _D2D1CreateFactory(AFactoryType, ARiid, AFactoryOptions, AIFactory)
//    end
//
//  else
//    begin
//      InitD2D1;
//      Result := E_NOTIMPL;
//      if hD2D1 > 0 then
//      begin
//        _D2D1CreateFactory := GetProcAddress(hD2D1, 'D2D1CreateFactory'); // Do not localize
//        if Assigned(_D2D1CreateFactory) then
//          Result := _D2D1CreateFactory(AFactoryType, ARiid, AFactoryOptions, AIFactory);
//      end;
//    end;
//end;
//
//procedure D2D1MakeRotateMatrix(angle: Single; center: D2D1_POINT_2F;
//  matrix: PD2D1Matrix3x2F);
//begin
//  if Assigned(_D2D1MakeRotateMatrix) then
//    _D2D1MakeRotateMatrix(angle, center, matrix)
//  else
//  begin
//    InitD2D1;
//    if hD2D1 > 0 then
//    begin
//      _D2D1MakeRotateMatrix := GetProcAddress(hD2D1, 'D2D1MakeRotateMatrix'); // Do not localize
//      if Assigned(_D2D1MakeRotateMatrix) then
//        _D2D1MakeRotateMatrix(angle, center, matrix);
//    end;
//  end;
//end;
//
//procedure D2D1MakeSkewMatrix(angleX: Single; angleY: Single;
//  center: D2D1_POINT_2F; matrix: PD2D1Matrix3x2F);
//begin
//  if Assigned(_D2D1MakeSkewMatrix) then
//    _D2D1MakeSkewMatrix(angleX, angleY, center, matrix)
//  else
//  begin
//    InitD2D1;
//    if hD2D1 > 0 then
//    begin
//      _D2D1MakeSkewMatrix := GetProcAddress(hD2D1, 'D2D1MakeSkewMatrix'); // Do not localize
//      if Assigned(_D2D1MakeSkewMatrix) then
//        _D2D1MakeSkewMatrix(angleX, angleY, center, matrix);
//    end;
//  end;
//end;
//
//function D2D1IsMatrixInvertible(matrix: PD2D1Matrix3x2F): BOOL;
//begin
//  if Assigned(_D2D1IsMatrixInvertible) then
//    Result := _D2D1IsMatrixInvertible(matrix)
//  else
//  begin
//    InitD2D1;
//    Result := FALSE;
//    if hD2D1 > 0 then
//    begin
//      _D2D1IsMatrixInvertible := GetProcAddress(hD2D1, 'D2D1IsMatrixInvertible'); // Do not localize
//      if Assigned(_D2D1IsMatrixInvertible) then
//        Result := _D2D1IsMatrixInvertible(matrix);
//    end;
//  end;
//end;
//
//function D2D1InvertMatrix(matrix: PD2D1Matrix3x2F): BOOL;
//begin
//  if Assigned(_D2D1InvertMatrix) then
//    Result := _D2D1InvertMatrix(matrix)
//  else
//  begin
//    InitD2D1;
//    Result := FALSE;
//    if hD2D1 > 0 then
//    begin
//      _D2D1InvertMatrix := GetProcAddress(hD2D1, 'D2D1InvertMatrix'); // Do not localize
//      if Assigned(_D2D1InvertMatrix) then
//        Result := _D2D1InvertMatrix(matrix);
//    end;
//  end;
//end;

initialization

finalization
//  FreeDWRITE;
//  FreeD2D1;

end.