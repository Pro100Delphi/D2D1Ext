{
  This file contains translation of data types and interfaces taken from the
  "Windows Kits\10\Include\10.0.22621.0\um" SDK library

  There are no guarantees of the identity of the translation of built-in data types.

  As the library is used, it is planned to conduct regular testing and fix any errors found.

  There are no restrictions on the use of this material. Everyone can do with it what they want.

  Included files:
    DocumentTarget.h
    d2d1.h
    d2d1_1.h
    d2d1_1helper.h
    d2d1_2.h
    d2d1_2helper.h
    d2d1_3.h
    d2d1_3helper.h
    d2d1effectauthor.h
    d2d1effectauthor_1.h
    d2d1effecthelpers.h
    d2d1effects.h
    d2d1effects_1.h
    d2d1helper.h
    d2d1svg.h
    d2dbasetypes.h
    d2derr.h
    dcommon.h
    dwrite.h
    dwrite_1.h
    dwrite_2.h
    dwrite_3.h

  07 Feb 2025 - beginning work on the library, collecting materials and first structure
  12 Feb 2025 - all the main base types have been translated

  Pustowalow W.
}

unit D2D1Ext;

interface

uses Winapi.DxgiFormat, Winapi.Windows, Winapi.Wincodec, Winapi.DXGI, Winapi.DxgiType, Winapi.D3DCommon, ActiveX, Graphics;


// Determines whether data is aligned or packed
{$ALIGN ON}

// Sets the minimum storage used to hold enumerated types
{$MINENUMSIZE 4}

type

  REFGUID = TGUID;
  REFIID = TIID;

{$REGION 'D2DBaseTypes.h'}

//=========================================================================================================================================
// D2DBaseTypes.h
//=========================================================================================================================================

  D2D1_COLOR_F = record
    R, G, B, A: Single;
  end;

  TD2D1ColorF = D2D1_COLOR_F;
  PD2D1ColorF = ^TD2D1ColorF;

  DWRITE_COLOR_F = D2D1_COLOR_F;

  TDWriteColorF = DWRITE_COLOR_F;
  PDWriteColorF = ^TDWriteColorF;

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

  // dwrite
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

  // dwrite_1
  IID_IDWriteFactory1               : TGUID = '{30572f99-dac6-41db-a16e-0486307e606a}';
  IID_IDWriteFontFace1              : TGUID = '{a71efdb4-9fdb-4838-ad90-cfc3be8c3daf}';
  IID_IDWriteFont1                  : TGUID = '{acd16696-8c14-4f5d-877e-fe3fc1d32738}';
  IID_IDWriteRenderingParams1       : TGUID = '{94413cf4-a6fc-4248-8b50-6674348fcad3}';
  IID_IDWriteTextAnalyzer1          : TGUID = '{80dad800-e21f-4e83-96ce-bfcce500db7c}';
  IID_IDWriteTextAnalysisSource1    : TGUID = '{639cfad8-0fb4-4b21-a58a-067920120009}';
  IID_IDWriteTextAnalysisSink1      : TGUID = '{b0d941a0-85e7-4d8b-9fd3-5ced9934482a}';
  IID_IDWriteTextLayout1            : TGUID = '{9064d822-80a7-465c-a986-df65f78b8feb}';
  IID_IDWriteBitmapRenderTarget1    : TGUID = '{791e8298-3ef3-4230-9880-c9bdecc42064}';

  // dwrite_2
  IID_IDWriteTextRenderer1          : TGUID = '{d3e0e934-22a0-427e-aae4-7d9574b59db1}';
  IID_IDWriteTextFormat1            : TGUID = '{5f174b49-0d8b-4cfb-8bca-f1cce9d06c67}';
  IID_IDWriteTextLayout2            : TGUID = '{1093c18f-8d5e-43f0-b064-0917311b525e}';
  IID_IDWriteTextAnalyzer2          : TGUID = '{553a9ff3-5693-4df7-b52b-74806f7f2eb9}';
  IID_IDWriteFontFallback           : TGUID = '{efa008f9-f7a1-48bf-b05c-f224713cc0ff}';
  IID_IDWriteFontFallbackBuilder    : TGUID = '{fd882d06-8aba-4fb8-b849-8be8b73e14de}';
  IID_IDWriteFont2                  : TGUID = '{29748ed6-8c9c-4a6a-be0b-d912e8538944}';
  IID_IDWriteFontFace2              : TGUID = '{d8b768ff-64bc-4e66-982b-ec8e87f693f7}';
  IID_IDWriteColorGlyphRunEnumerator: TGUID = '{d31fbe17-f157-41a2-8d24-cb779e0560e8}';
  IID_IDWriteRenderingParams2       : TGUID = '{f9d711c3-9777-40ae-87e8-3e5af9bf0948}';
  IID_IDWriteFactory2               : TGUID = '{0439fc60-ca44-4994-8dee-3a9af7b732ec}';

  // dwrite_3
  IID_IDWriteRenderingParams3       : TGUID = '{b7924baa-391b-412a-8c5c-e44cc2d867dc}';
  IID_IDWriteFactory3               : TGUID = '{9a1b41c3-d3bb-466a-87fc-fe67556a3b65}';
  IID_IDWriteFontSet                : TGUID = '{53585141-d9f8-4095-8321-d73cf6bd116b}';
  IID_IDWriteFontSetBuilder         : TGUID = '{2f642afe-9c68-4f40-b8be-457401afcb3d}';
  IID_IDWriteFontCollection1        : TGUID = '{53585141-d9f8-4095-8321-d73cf6bd116c}';
  IID_IDWriteFontFamily1            : TGUID = '{da20d8ef-812a-4c43-9802-62ec4abd7adf}';
  IID_IDWriteFontList1              : TGUID = '{da20d8ef-812a-4c43-9802-62ec4abd7ade}';
  IID_IDWriteFontFaceReference      : TGUID = '{5e7fa7ca-dde3-424c-89f0-9fcd6fed58cd}';
  IID_IDWriteFont3                  : TGUID = '{29748ed6-8c9c-4a6a-be0b-d912e8538944}';
  IID_IDWriteFontFace3              : TGUID = '{d37d7598-09be-4222-a236-2081341cc1f2}';
  IID_IDWriteStringList             : TGUID = '{cfee3140-1157-47ca-8b85-31bfcf3f2d0e}';
  IID_IDWriteFontDownloadListener   : TGUID = '{b06fe5b9-43ec-4393-881b-dbe4dc72fda7}';
  IID_IDWriteFontDownloadQueue      : TGUID = '{b71e6052-5aea-4fa3-832e-f60d431f7e91}';
  IID_IDWriteGdiInterop1            : TGUID = '{4556be70-3abd-4f70-90be-421780a6f515}';
  IID_IDWriteTextFormat2            : TGUID = '{f67e0edd-9e3d-4ecc-8c32-4183253dfe70}';
  IID_IDWriteTextLayout3            : TGUID = '{07ddcd52-020e-4de8-ac33-6c953d83f92d}';
  IID_IDWriteColorGlyphRunEnumerator1: TGUID = '{7c5f86da-c7a1-4f05-b8e1-55a179fe5a35}';
  IID_IDWriteFontFace4              : TGUID = '{27f2a904-4eb8-441d-9678-0563f53e3e2f}';
  IID_IDWriteFactory4               : TGUID = '{4b0b5bd3-0797-4549-8ac5-fe915cc53856}';
  IID_IDWriteFontSetBuilder1        : TGUID = '{3ff7715f-3cdc-4dc6-9b72-ec5621dccafd}';
  IID_IDWriteAsyncResult            : TGUID = '{ce25f8fd-863b-4d13-9651-c1f88dc73fe2}';
  IID_IDWriteRemoteFontFileStream   : TGUID = '{4db3757a-2c72-4ed9-b2b6-1ababe1aff9c}';
  IID_IDWriteRemoteFontFileLoader   : TGUID = '{68648c83-6ede-46c0-ab46-20083a887fde}';
  IID_IDWriteInMemoryFontFileLoader : TGUID = '{dc102f47-a12d-4b1c-822d-9e117e33043f}';
  IID_IDWriteFactory5               : TGUID = '{958db99a-be2a-4f09-af7d-65189803d1d3}';
  IID_IDWriteFactory6               : TGUID = '{f3744d80-21f7-42eb-b35d-995bc72fc223}';
  IID_IDWriteFontFace5              : TGUID = '{98eff3a5-b667-479a-b145-e2fa5b9fdc29}';
  IID_IDWriteFontResource           : TGUID = '{1f803a76-6871-48e8-987f-b975551c50f2}';
  IID_IDWriteFontFaceReference1     : TGUID = '{c081fe77-2fd1-41ac-a5a3-34983c4ba61a}';
  IID_IDWriteFontSetBuilder2        : TGUID = '{ee5ba612-b131-463c-8f4f-3189b9401e45}';
  IID_IDWriteFontSet1               : TGUID = '{7e9fda85-6c92-4053-bc47-7ae3530db4d3}';
  IID_IDWriteFontList2              : TGUID = '{c0763a34-77af-445a-b735-08c37b0a5bf5}';
  IID_IDWriteFontFamily2            : TGUID = '{3ed49e77-a398-4261-b9cf-c126c2131ef3}';
  IID_IDWriteFontCollection2        : TGUID = '{514039c6-4617-4064-bf8b-92ea83e506e0}';
  IID_IDWriteTextLayout4            : TGUID = '{05a9bf42-223f-4441-b5fb-8263685f55e9}';
  IID_IDWriteTextFormat3            : TGUID = '{6d3b5641-e550-430d-a85b-b7bf48a93427}';
  IID_IDWriteFontFallback1          : TGUID = '{2397599d-dd0d-4681-bd6a-f4f31eaade77}';
  IID_IDWriteFontSet2               : TGUID = '{dc7ead19-e54c-43af-b2da-4e2b79ba3f7f}';
  IID_IDWriteFontCollection3        : TGUID = '{a4d055a6-f9e3-4e25-93b7-9e309f3af8e9}';
  IID_IDWriteFactory7               : TGUID = '{35d0e0b3-9076-4d2e-a016-a91b568a06b4}';
  IID_IDWriteFontSet3               : TGUID = '{7c073ef2-a7f4-4045-8c32-8ab8ae640f90}';
  IID_IDWriteFontFace6              : TGUID = '{c4b1fe1b-6e84-47d5-b54c-a597981b06ad}';

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

  // d2d1effects_1.h
  CLSID_D2D1YCbCr                   : TGUID = '{99503cc1-66c7-45c9-a875-8ad8a7914401}';

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

  // d2d1effectauthor_1.h
  IID_ID2D1EffectContext1           : TGUID = '{84ab595a-fc81-4546-bacd-e8ef4d8abe7a}';
  IID_ID2D1EffectContext2           : TGUID = '{577ad2a0-9fc7-4dda-8b18-dab810140052}';

  // d2d1svg.h
  IID_ID2D1SvgAttribute             : TGUID = '{c9cdb0dd-f8c9-4e70-b7c2-301c80292c5e}';
  IID_ID2D1SvgPaint                 : TGUID = '{d59bab0a-68a2-455b-a5dc-9eb2854e2490}';
  IID_ID2D1SvgStrokeDashArray       : TGUID = '{f1c0ca52-92a3-4f00-b4ce-f35691efd9d9}';
  IID_ID2D1SvgPointCollection       : TGUID = '{9dbe4c0d-3572-4dd9-9825-5530813bb712}';
  IID_ID2D1SvgPathData              : TGUID = '{c095e4f4-bb98-43d6-9745-4d1b84ec9888}';
  IID_ID2D1SvgElement               : TGUID = '{ac7b67a6-183e-49c1-a823-0ebe40b0db29}';
  IID_ID2D1SvgDocument              : TGUID = '{86b88e4d-afa4-4d7b-88e4-68a51c4a0aec}';

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

  // dwrite_1.h
  IDWriteFactory1                 = interface;
  IDWriteFontFace1                = interface;
  IDWriteFont1                    = interface;
  IDWriteRenderingParams1         = interface;
  IDWriteTextAnalyzer1            = interface;
  IDWriteTextAnalysisSource1      = interface;
  IDWriteTextAnalysisSink1        = interface;
  IDWriteTextLayout1              = interface;
  IDWriteBitmapRenderTarget1      = interface;

  // dwrite_2.h
  IDWriteTextRenderer1            = interface;
  IDWriteTextFormat1              = interface;
  IDWriteTextLayout2              = interface;
  IDWriteTextAnalyzer2            = interface;
  IDWriteFontFallback             = interface;
  IDWriteFontFallbackBuilder      = interface;
  IDWriteFont2                    = interface;
  IDWriteFontFace2                = interface;
  IDWriteColorGlyphRunEnumerator  = interface;
  IDWriteRenderingParams2         = interface;
  IDWriteFactory2                 = interface;

  // dwrite_3.h
  IDWriteRenderingParams3         = interface;
  IDWriteFactory3                 = interface;
  IDWriteFontSet                  = interface;
  IDWriteFontSetBuilder           = interface;
  IDWriteFontCollection1          = interface;
  IDWriteFontFamily1              = interface;
  IDWriteFontList1                = interface;
  IDWriteFontFaceReference        = interface;
  IDWriteFont3                    = interface;
  IDWriteFontFace3                = interface;
  IDWriteStringList               = interface;
  IDWriteFontDownloadListener     = interface;
  IDWriteFontDownloadQueue        = interface;
  IDWriteGdiInterop1              = interface;
  IDWriteTextFormat2              = interface;
  IDWriteTextLayout3              = interface;
  IDWriteColorGlyphRunEnumerator1 = interface;
  IDWriteFontFace4                = interface;
  IDWriteFactory4                 = interface;
  IDWriteFontSetBuilder1          = interface;
  IDWriteAsyncResult              = interface;
  IDWriteRemoteFontFileStream     = interface;
  IDWriteRemoteFontFileLoader     = interface;
  IDWriteInMemoryFontFileLoader   = interface;
  IDWriteFactory5                 = interface;
  IDWriteFactory6                 = interface;
  IDWriteFontFace5                = interface;
  IDWriteFontResource             = interface;
  IDWriteFontFaceReference1       = interface;
  IDWriteFontSetBuilder2          = interface;
  IDWriteFontSet1                 = interface;
  IDWriteFontList2                = interface;
  IDWriteFontFamily2              = interface;
  IDWriteFontCollection2          = interface;
  IDWriteTextLayout4              = interface;
  IDWriteTextFormat3              = interface;
  IDWriteFontFallback1            = interface;
  IDWriteFontSet2                 = interface;
  IDWriteFontCollection3          = interface;
  IDWriteFactory7                 = interface;
  IDWriteFontSet3                 = interface;
  IDWriteFontFace6                = interface;

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

  // d2d1effectauthor_1.h
  ID2D1EffectContext1             = interface;
  ID2D1EffectContext2             = interface;

  // d2d1svg.h
  ID2D1SvgAttribute               = interface;
  ID2D1SvgPaint                   = interface;
  ID2D1SvgStrokeDashArray         = interface;
  ID2D1SvgPointCollection         = interface;
  ID2D1SvgPathData                = interface;
  ID2D1SvgElement                 = interface;
  ID2D1SvgDocument                = interface;

  // DocumentTarget.h
  IPrintDocumentPackageTarget       = interface;
  IPrintDocumentPackageStatusEvent  = interface;
  IPrintDocumentPackageTargetFactory= interface;


  D2D1_TAG = UInt64;

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

  TD2D1FactoryType = D2D1_FACTORY_TYPE;
  PD2D1FactoryType = ^TD2D1FactoryType;

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

  TD2D1PropertyType = D2D1_PROPERTY_TYPE;
  PD2D1PropertyType = ^TD2D1PropertyType;

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

  TD2D1Property = D2D1_PROPERTY;
  PD2D1Property = ^TD2D1Property;

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

  TD2D1Subproperty = D2D1_SUBPROPERTY;
  PD2D1Subproperty = ^TD2D1Subproperty;

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

	TD2D1BitmapOptions = D2D1_BITMAP_OPTIONS;
	PD2D1BitmapOptions = ^TD2D1BitmapOptions;

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

	TD2D1CompositeMode = D2D1_COMPOSITE_MODE;
	PD2D1CompositeMode = ^TD2D1CompositeMode;

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

	TD2D1BufferPrecision = D2D1_BUFFER_PRECISION;
	PD2D1BufferPrecision = ^TD2D1BufferPrecision;

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

	TD2D1MapOptions = D2D1_MAP_OPTIONS;
	PD2D1MapOptions = ^TD2D1MapOptions;

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

	TD2D1InterpolationMode = D2D1_INTERPOLATION_MODE;
	PD2D1InterpolationMode = ^TD2D1InterpolationMode;

  /// <summary>
  /// This specifies what units should be accepted by the D2D API.
  /// </summary>
  D2D1_UNIT_MODE = (
    D2D1_UNIT_MODE_DIPS         = 0,
    D2D1_UNIT_MODE_PIXELS       = 1,
    D2D1_UNIT_MODE_FORCE_DWORD  = Integer($FFFFFFFF)
  );

	TD2D1UnitMode = D2D1_UNIT_MODE;
	PD2D1UnitMode = ^TD2D1UnitMode;

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

	TD2D1ColorSpace = D2D1_COLOR_SPACE;
	PD2D1ColorSpace = ^TD2D1ColorSpace;

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

	TD2D1DeviceContextOptions = D2D1_DEVICE_CONTEXT_OPTIONS;
	PD2D1DeviceContextOptions = ^TD2D1DeviceContextOptions;

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

	TD2D1StrokeTransformType = D2D1_STROKE_TRANSFORM_TYPE;
	PD2D1StrokeTransformType = ^TD2D1StrokeTransformType;

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

	TD2D1PrimitiveBlend = D2D1_PRIMITIVE_BLEND;
	PD2D1PrimitiveBlend = ^TD2D1PrimitiveBlend;

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

	TD2D1ThreadingMode = D2D1_THREADING_MODE;
	PD2D1ThreadingMode = ^TD2D1ThreadingMode;

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

	TD2D1ColorInterpolationMode = D2D1_COLOR_INTERPOLATION_MODE;
	PD2D1ColorInterpolationMode = ^TD2D1ColorInterpolationMode;

  /// <summary>
  /// Specifies how the layer contents should be prepared.
  /// </summary>
  D2D1_LAYER_OPTIONS1 = (
    D2D1_LAYER_OPTIONS1_NONE                        = 0,
    D2D1_LAYER_OPTIONS1_INITIALIZE_FROM_BACKGROUND  = 1,
    D2D1_LAYER_OPTIONS1_IGNORE_ALPHA                = 2,
    D2D1_LAYER_OPTIONS1_FORCE_DWORD                 = Integer($FFFFFFFF)
  );

	TD2D1LayerOptions1 = D2D1_LAYER_OPTIONS1;
	PD2D1LayerOptions1 = ^TD2D1LayerOptions1;

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

	TD2D1PrintFontSubsetMode = D2D1_PRINT_FONT_SUBSET_MODE;
	PD2D1PrintFontSubsetMode = ^TD2D1PrintFontSubsetMode;

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

	TD2D1RenderingPriority = D2D1_RENDERING_PRIORITY;
	PD2D1RenderingPriority = ^TD2D1RenderingPriority;

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

	TD2D1InkNibShape = D2D1_INK_NIB_SHAPE;
	PD2D1InkNibShape = ^TD2D1InkNibShape;

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

	TD2D1Orientation = D2D1_ORIENTATION;
	PD2D1Orientation = ^TD2D1Orientation;

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

	TD2D1ImageSourceLoadingOptions = D2D1_IMAGE_SOURCE_LOADING_OPTIONS;
	PD2D1ImageSourceLoadingOptions = ^TD2D1ImageSourceLoadingOptions;

  /// <summary>
  /// Option flags controlling primary conversion performed by
  /// CreateImageSourceFromDxgi, if any.
  /// </summary>
  D2D1_IMAGE_SOURCE_FROM_DXGI_OPTIONS = (
    D2D1_IMAGE_SOURCE_FROM_DXGI_OPTIONS_NONE                            = 0,
    D2D1_IMAGE_SOURCE_FROM_DXGI_OPTIONS_LOW_QUALITY_PRIMARY_CONVERSION  = 1,
    D2D1_IMAGE_SOURCE_FROM_DXGI_OPTIONS_FORCE_DWORD                     = Integer($FFFFFFFF)
  );

	TD2D1ImageSourceFromDxgiOptions = D2D1_IMAGE_SOURCE_FROM_DXGI_OPTIONS;
	PD2D1ImageSourceFromDxgiOptions = ^TD2D1ImageSourceFromDxgiOptions;

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

	TD2D1TransformedImageSourceOptions = D2D1_TRANSFORMED_IMAGE_SOURCE_OPTIONS;
	PD2D1TransformedImageSourceOptions = ^TD2D1TransformedImageSourceOptions;

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

	TD2D1PatchEdgeMode = D2D1_PATCH_EDGE_MODE;
	PD2D1PatchEdgeMode = ^TD2D1PatchEdgeMode;

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

	TD2D1SpriteOptions = D2D1_SPRITE_OPTIONS;
	PD2D1SpriteOptions = ^TD2D1SpriteOptions;

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

	TD2D1ColorBitmapGlyphSnapOption = D2D1_COLOR_BITMAP_GLYPH_SNAP_OPTION;
	PD2D1ColorBitmapGlyphSnapOption = ^TD2D1ColorBitmapGlyphSnapOption;

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

	TD2D1Gamma1 = D2D1_GAMMA1;
	PD2D1Gamma1 = ^TD2D1Gamma1;

  /// <summary>
  /// Specifies which way a color profile is defined.
  /// </summary>
  D2D1_COLOR_CONTEXT_TYPE = (
    D2D1_COLOR_CONTEXT_TYPE_ICC         = 0,
    D2D1_COLOR_CONTEXT_TYPE_SIMPLE      = 1,
    D2D1_COLOR_CONTEXT_TYPE_DXGI        = 2,
    D2D1_COLOR_CONTEXT_TYPE_FORCE_DWORD = Integer($FFFFFFFF)
  );

	TD2D1ColorContextType = D2D1_COLOR_CONTEXT_TYPE;
	PD2D1ColorContextType = ^TD2D1ColorContextType;

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

	TDWriteMeasuringMode = DWRITE_MEASURING_MODE;
	PDWriteMeasuringMode = ^TDWriteMeasuringMode;

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

	TDWriteGlyphImageFormats = DWRITE_GLYPH_IMAGE_FORMATS;
	PDWriteGlyphImageFormats = ^TDWriteGlyphImageFormats;

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

	TDWriteFontFileType = DWRITE_FONT_FILE_TYPE;
	PDWriteFontFileType = ^TDWriteFontFileType;

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

	TDWriteFontFaceType = DWRITE_FONT_FACE_TYPE;
	PDWriteFontFaceType = ^TDWriteFontFaceType;

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

	TDWriteFontSimulations = DWRITE_FONT_SIMULATIONS;
	PDWriteFontSimulations = ^TDWriteFontSimulations;

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

	TDWriteFontWeight = DWRITE_FONT_WEIGHT;
	PDWriteFontWeight = ^TDWriteFontWeight;

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

	TDWriteFontStretch = DWRITE_FONT_STRETCH;
	PDWriteFontStretch = ^TDWriteFontStretch;

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

	TDWriteFontStyle = DWRITE_FONT_STYLE;
	PDWriteFontStyle = ^TDWriteFontStyle;

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

	TDWriteInformationalStringId = DWRITE_INFORMATIONAL_STRING_ID;
	PDWriteInformationalStringId = ^TDWriteInformationalStringId;

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

	TDWriteFactoryType = DWRITE_FACTORY_TYPE;
	PDWriteFactoryType = ^TDWriteFactoryType;

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

	TDWritePixelGeometry = DWRITE_PIXEL_GEOMETRY;
	PDWritePixelGeometry = ^TDWritePixelGeometry;

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

	TDWriteRenderingMode = DWRITE_RENDERING_MODE;
	PDWriteRenderingMode = ^TDWriteRenderingMode;

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

	TDWriteReadingDirection = DWRITE_READING_DIRECTION;
	PDWriteReadingDirection = ^TDWriteReadingDirection;

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

	TDWriteFlowDirection = DWRITE_FLOW_DIRECTION;
	PDWriteFlowDirection = ^TDWriteFlowDirection;

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

	TDWriteTextAlignment = DWRITE_TEXT_ALIGNMENT;
	PDWriteTextAlignment = ^TDWriteTextAlignment;

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

	TDWriteParagraphAlignment = DWRITE_PARAGRAPH_ALIGNMENT;
	PDWriteParagraphAlignment = ^TDWriteParagraphAlignment;

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

	TDWriteWordWrapping = DWRITE_WORD_WRAPPING;
	PDWriteWordWrapping = ^TDWriteWordWrapping;

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

	TDWriteLineSpacingMethod = DWRITE_LINE_SPACING_METHOD;
	PDWriteLineSpacingMethod = ^TDWriteLineSpacingMethod;

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

	TDWriteTrimmingGranularity = DWRITE_TRIMMING_GRANULARITY;
	PDWriteTrimmingGranularity = ^TDWriteTrimmingGranularity;

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

	TDWriteFontFeatureTag = DWRITE_FONT_FEATURE_TAG;
	PDWriteFontFeatureTag = ^TDWriteFontFeatureTag;

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

	TDWriteScriptShapes = DWRITE_SCRIPT_SHAPES;
	PDWriteScriptShapes = ^TDWriteScriptShapes;

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

	TDWriteBreakCondition = DWRITE_BREAK_CONDITION;
	PDWriteBreakCondition = ^TDWriteBreakCondition;

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

	TDWriteNumberSubstitutionMethod = DWRITE_NUMBER_SUBSTITUTION_METHOD;
	PDWriteNumberSubstitutionMethod = ^TDWriteNumberSubstitutionMethod;

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

	TDWriteTextureType = DWRITE_TEXTURE_TYPE;
	PDWriteTextureType = ^TDWriteTextureType;

{$ENDREGION}

{$REGION 'dwrite_1 enums'}

  DWRITE_PANOSE_FAMILY = (
    DWRITE_PANOSE_FAMILY_ANY          = 0,
    DWRITE_PANOSE_FAMILY_NO_FIT       = 1,
    DWRITE_PANOSE_FAMILY_TEXT_DISPLAY = 2,
    DWRITE_PANOSE_FAMILY_SCRIPT       = 3, // or hand written
    DWRITE_PANOSE_FAMILY_DECORATIVE   = 4,
    DWRITE_PANOSE_FAMILY_SYMBOL       = 5, // or symbol
    DWRITE_PANOSE_FAMILY_PICTORIAL    = DWRITE_PANOSE_FAMILY_SYMBOL
  );

  DWRITE_PANOSE_SERIF_STYLE = (

    DWRITE_PANOSE_SERIF_STYLE_ANY                 = 0,
    DWRITE_PANOSE_SERIF_STYLE_NO_FIT              = 1,
    DWRITE_PANOSE_SERIF_STYLE_COVE                = 2,
    DWRITE_PANOSE_SERIF_STYLE_OBTUSE_COVE         = 3,
    DWRITE_PANOSE_SERIF_STYLE_SQUARE_COVE         = 4,
    DWRITE_PANOSE_SERIF_STYLE_OBTUSE_SQUARE_COVE  = 5,
    DWRITE_PANOSE_SERIF_STYLE_SQUARE              = 6,
    DWRITE_PANOSE_SERIF_STYLE_THIN                = 7,
    DWRITE_PANOSE_SERIF_STYLE_OVAL                = 8,
    DWRITE_PANOSE_SERIF_STYLE_EXAGGERATED         = 9,
    DWRITE_PANOSE_SERIF_STYLE_TRIANGLE            = 10,
    DWRITE_PANOSE_SERIF_STYLE_NORMAL_SANS         = 11,
    DWRITE_PANOSE_SERIF_STYLE_OBTUSE_SANS         = 12,
    DWRITE_PANOSE_SERIF_STYLE_PERPENDICULAR_SANS  = 13,
    DWRITE_PANOSE_SERIF_STYLE_FLARED              = 14,
    DWRITE_PANOSE_SERIF_STYLE_ROUNDED             = 15,
    DWRITE_PANOSE_SERIF_STYLE_SCRIPT              = 16,
    DWRITE_PANOSE_SERIF_STYLE_PERP_SANS           = DWRITE_PANOSE_SERIF_STYLE_PERPENDICULAR_SANS,
    DWRITE_PANOSE_SERIF_STYLE_BONE                = DWRITE_PANOSE_SERIF_STYLE_OVAL
  );

  DWRITE_PANOSE_WEIGHT = (

    DWRITE_PANOSE_WEIGHT_ANY          = 0,
    DWRITE_PANOSE_WEIGHT_NO_FIT       = 1,
    DWRITE_PANOSE_WEIGHT_VERY_LIGHT   = 2,
    DWRITE_PANOSE_WEIGHT_LIGHT        = 3,
    DWRITE_PANOSE_WEIGHT_THIN         = 4,
    DWRITE_PANOSE_WEIGHT_BOOK         = 5,
    DWRITE_PANOSE_WEIGHT_MEDIUM       = 6,
    DWRITE_PANOSE_WEIGHT_DEMI         = 7,
    DWRITE_PANOSE_WEIGHT_BOLD         = 8,
    DWRITE_PANOSE_WEIGHT_HEAVY        = 9,
    DWRITE_PANOSE_WEIGHT_BLACK        = 10,
    DWRITE_PANOSE_WEIGHT_EXTRA_BLACK  = 11,
    DWRITE_PANOSE_WEIGHT_NORD         = DWRITE_PANOSE_WEIGHT_EXTRA_BLACK
  );

  DWRITE_PANOSE_PROPORTION = (

    DWRITE_PANOSE_PROPORTION_ANY            = 0,
    DWRITE_PANOSE_PROPORTION_NO_FIT         = 1,
    DWRITE_PANOSE_PROPORTION_OLD_STYLE      = 2,
    DWRITE_PANOSE_PROPORTION_MODERN         = 3,
    DWRITE_PANOSE_PROPORTION_EVEN_WIDTH     = 4,
    DWRITE_PANOSE_PROPORTION_EXPANDED       = 5,
    DWRITE_PANOSE_PROPORTION_CONDENSED      = 6,
    DWRITE_PANOSE_PROPORTION_VERY_EXPANDED  = 7,
    DWRITE_PANOSE_PROPORTION_VERY_CONDENSED = 8,
    DWRITE_PANOSE_PROPORTION_MONOSPACED     = 9
  );

  DWRITE_PANOSE_CONTRAST = (
    DWRITE_PANOSE_CONTRAST_ANY                = 0,
    DWRITE_PANOSE_CONTRAST_NO_FIT             = 1,
    DWRITE_PANOSE_CONTRAST_NONE               = 2,
    DWRITE_PANOSE_CONTRAST_VERY_LOW           = 3,
    DWRITE_PANOSE_CONTRAST_LOW                = 4,
    DWRITE_PANOSE_CONTRAST_MEDIUM_LOW         = 5,
    DWRITE_PANOSE_CONTRAST_MEDIUM             = 6,
    DWRITE_PANOSE_CONTRAST_MEDIUM_HIGH        = 7,
    DWRITE_PANOSE_CONTRAST_HIGH               = 8,
    DWRITE_PANOSE_CONTRAST_VERY_HIGH          = 9,
    DWRITE_PANOSE_CONTRAST_HORIZONTAL_LOW     = 10,
    DWRITE_PANOSE_CONTRAST_HORIZONTAL_MEDIUM  = 11,
    DWRITE_PANOSE_CONTRAST_HORIZONTAL_HIGH    = 12,
    DWRITE_PANOSE_CONTRAST_BROKEN             = 13
  );

  DWRITE_PANOSE_STROKE_VARIATION = (

    DWRITE_PANOSE_STROKE_VARIATION_ANY                  = 0,
    DWRITE_PANOSE_STROKE_VARIATION_NO_FIT               = 1,
    DWRITE_PANOSE_STROKE_VARIATION_NO_VARIATION         = 2,
    DWRITE_PANOSE_STROKE_VARIATION_GRADUAL_DIAGONAL     = 3,
    DWRITE_PANOSE_STROKE_VARIATION_GRADUAL_TRANSITIONAL = 4,
    DWRITE_PANOSE_STROKE_VARIATION_GRADUAL_VERTICAL     = 5,
    DWRITE_PANOSE_STROKE_VARIATION_GRADUAL_HORIZONTAL   = 6,
    DWRITE_PANOSE_STROKE_VARIATION_RAPID_VERTICAL       = 7,
    DWRITE_PANOSE_STROKE_VARIATION_RAPID_HORIZONTAL     = 8,
    DWRITE_PANOSE_STROKE_VARIATION_INSTANT_VERTICAL     = 9,
    DWRITE_PANOSE_STROKE_VARIATION_INSTANT_HORIZONTAL   = 10
  );

  DWRITE_PANOSE_ARM_STYLE = (

    DWRITE_PANOSE_ARM_STYLE_ANY                           = 0,
    DWRITE_PANOSE_ARM_STYLE_NO_FIT                        = 1,
    DWRITE_PANOSE_ARM_STYLE_STRAIGHT_ARMS_HORIZONTAL      = 2,
    DWRITE_PANOSE_ARM_STYLE_STRAIGHT_ARMS_WEDGE           = 3,
    DWRITE_PANOSE_ARM_STYLE_STRAIGHT_ARMS_VERTICAL        = 4,
    DWRITE_PANOSE_ARM_STYLE_STRAIGHT_ARMS_SINGLE_SERIF    = 5,
    DWRITE_PANOSE_ARM_STYLE_STRAIGHT_ARMS_DOUBLE_SERIF    = 6,
    DWRITE_PANOSE_ARM_STYLE_NONSTRAIGHT_ARMS_HORIZONTAL   = 7,
    DWRITE_PANOSE_ARM_STYLE_NONSTRAIGHT_ARMS_WEDGE        = 8,
    DWRITE_PANOSE_ARM_STYLE_NONSTRAIGHT_ARMS_VERTICAL     = 9,
    DWRITE_PANOSE_ARM_STYLE_NONSTRAIGHT_ARMS_SINGLE_SERIF = 10,
    DWRITE_PANOSE_ARM_STYLE_NONSTRAIGHT_ARMS_DOUBLE_SERIF = 11,
    DWRITE_PANOSE_ARM_STYLE_STRAIGHT_ARMS_HORZ            = DWRITE_PANOSE_ARM_STYLE_STRAIGHT_ARMS_HORIZONTAL,
    DWRITE_PANOSE_ARM_STYLE_STRAIGHT_ARMS_VERT            = DWRITE_PANOSE_ARM_STYLE_STRAIGHT_ARMS_VERTICAL,
    DWRITE_PANOSE_ARM_STYLE_BENT_ARMS_HORZ                = DWRITE_PANOSE_ARM_STYLE_NONSTRAIGHT_ARMS_HORIZONTAL,
    DWRITE_PANOSE_ARM_STYLE_BENT_ARMS_WEDGE               = DWRITE_PANOSE_ARM_STYLE_NONSTRAIGHT_ARMS_WEDGE,
    DWRITE_PANOSE_ARM_STYLE_BENT_ARMS_VERT                = DWRITE_PANOSE_ARM_STYLE_NONSTRAIGHT_ARMS_VERTICAL,
    DWRITE_PANOSE_ARM_STYLE_BENT_ARMS_SINGLE_SERIF        = DWRITE_PANOSE_ARM_STYLE_NONSTRAIGHT_ARMS_SINGLE_SERIF,
    DWRITE_PANOSE_ARM_STYLE_BENT_ARMS_DOUBLE_SERIF        = DWRITE_PANOSE_ARM_STYLE_NONSTRAIGHT_ARMS_DOUBLE_SERIF
  );

  DWRITE_PANOSE_LETTERFORM = (

    DWRITE_PANOSE_LETTERFORM_ANY                = 0,
    DWRITE_PANOSE_LETTERFORM_NO_FIT             = 1,
    DWRITE_PANOSE_LETTERFORM_NORMAL_CONTACT     = 2,
    DWRITE_PANOSE_LETTERFORM_NORMAL_WEIGHTED    = 3,
    DWRITE_PANOSE_LETTERFORM_NORMAL_BOXED       = 4,
    DWRITE_PANOSE_LETTERFORM_NORMAL_FLATTENED   = 5,
    DWRITE_PANOSE_LETTERFORM_NORMAL_ROUNDED     = 6,
    DWRITE_PANOSE_LETTERFORM_NORMAL_OFF_CENTER  = 7,
    DWRITE_PANOSE_LETTERFORM_NORMAL_SQUARE      = 8,
    DWRITE_PANOSE_LETTERFORM_OBLIQUE_CONTACT    = 9,
    DWRITE_PANOSE_LETTERFORM_OBLIQUE_WEIGHTED   = 10,
    DWRITE_PANOSE_LETTERFORM_OBLIQUE_BOXED      = 11,
    DWRITE_PANOSE_LETTERFORM_OBLIQUE_FLATTENED  = 12,
    DWRITE_PANOSE_LETTERFORM_OBLIQUE_ROUNDED    = 13,
    DWRITE_PANOSE_LETTERFORM_OBLIQUE_OFF_CENTER = 14,
    DWRITE_PANOSE_LETTERFORM_OBLIQUE_SQUARE     = 15
  );

  DWRITE_PANOSE_MIDLINE = (

    DWRITE_PANOSE_MIDLINE_ANY               = 0,
    DWRITE_PANOSE_MIDLINE_NO_FIT            = 1,
    DWRITE_PANOSE_MIDLINE_STANDARD_TRIMMED  = 2,
    DWRITE_PANOSE_MIDLINE_STANDARD_POINTED  = 3,
    DWRITE_PANOSE_MIDLINE_STANDARD_SERIFED  = 4,
    DWRITE_PANOSE_MIDLINE_HIGH_TRIMMED      = 5,
    DWRITE_PANOSE_MIDLINE_HIGH_POINTED      = 6,
    DWRITE_PANOSE_MIDLINE_HIGH_SERIFED      = 7,
    DWRITE_PANOSE_MIDLINE_CONSTANT_TRIMMED  = 8,
    DWRITE_PANOSE_MIDLINE_CONSTANT_POINTED  = 9,
    DWRITE_PANOSE_MIDLINE_CONSTANT_SERIFED  = 10,
    DWRITE_PANOSE_MIDLINE_LOW_TRIMMED       = 11,
    DWRITE_PANOSE_MIDLINE_LOW_POINTED       = 12,
    DWRITE_PANOSE_MIDLINE_LOW_SERIFED       = 13
  );

  DWRITE_PANOSE_XHEIGHT = (

    DWRITE_PANOSE_XHEIGHT_ANY               = 0,
    DWRITE_PANOSE_XHEIGHT_NO_FIT            = 1,
    DWRITE_PANOSE_XHEIGHT_CONSTANT_SMALL    = 2,
    DWRITE_PANOSE_XHEIGHT_CONSTANT_STANDARD = 3,
    DWRITE_PANOSE_XHEIGHT_CONSTANT_LARGE    = 4,
    DWRITE_PANOSE_XHEIGHT_DUCKING_SMALL     = 5,
    DWRITE_PANOSE_XHEIGHT_DUCKING_STANDARD  = 6,
    DWRITE_PANOSE_XHEIGHT_DUCKING_LARGE     = 7,
    DWRITE_PANOSE_XHEIGHT_CONSTANT_STD      = DWRITE_PANOSE_XHEIGHT_CONSTANT_STANDARD,
    DWRITE_PANOSE_XHEIGHT_DUCKING_STD       = DWRITE_PANOSE_XHEIGHT_DUCKING_STANDARD
  );

  DWRITE_PANOSE_TOOL_KIND = (

    DWRITE_PANOSE_TOOL_KIND_ANY                 = 0,
    DWRITE_PANOSE_TOOL_KIND_NO_FIT              = 1,
    DWRITE_PANOSE_TOOL_KIND_FLAT_NIB            = 2,
    DWRITE_PANOSE_TOOL_KIND_PRESSURE_POINT      = 3,
    DWRITE_PANOSE_TOOL_KIND_ENGRAVED            = 4,
    DWRITE_PANOSE_TOOL_KIND_BALL                = 5,
    DWRITE_PANOSE_TOOL_KIND_BRUSH               = 6,
    DWRITE_PANOSE_TOOL_KIND_ROUGH               = 7,
    DWRITE_PANOSE_TOOL_KIND_FELT_PEN_BRUSH_TIP  = 8,
    DWRITE_PANOSE_TOOL_KIND_WILD_BRUSH          = 9
  );

  DWRITE_PANOSE_SPACING = (

    DWRITE_PANOSE_SPACING_ANY                 = 0,
    DWRITE_PANOSE_SPACING_NO_FIT              = 1,
    DWRITE_PANOSE_SPACING_PROPORTIONAL_SPACED = 2,
    DWRITE_PANOSE_SPACING_MONOSPACED          = 3
  );

  DWRITE_PANOSE_ASPECT_RATIO = (

    DWRITE_PANOSE_ASPECT_RATIO_ANY            = 0,
    DWRITE_PANOSE_ASPECT_RATIO_NO_FIT         = 1,
    DWRITE_PANOSE_ASPECT_RATIO_VERY_CONDENSED = 2,
    DWRITE_PANOSE_ASPECT_RATIO_CONDENSED      = 3,
    DWRITE_PANOSE_ASPECT_RATIO_NORMAL         = 4,
    DWRITE_PANOSE_ASPECT_RATIO_EXPANDED       = 5,
    DWRITE_PANOSE_ASPECT_RATIO_VERY_EXPANDED  = 6
  );

  DWRITE_PANOSE_SCRIPT_TOPOLOGY = (

    DWRITE_PANOSE_SCRIPT_TOPOLOGY_ANY                       = 0,
    DWRITE_PANOSE_SCRIPT_TOPOLOGY_NO_FIT                    = 1,
    DWRITE_PANOSE_SCRIPT_TOPOLOGY_ROMAN_DISCONNECTED        = 2,
    DWRITE_PANOSE_SCRIPT_TOPOLOGY_ROMAN_TRAILING            = 3,
    DWRITE_PANOSE_SCRIPT_TOPOLOGY_ROMAN_CONNECTED           = 4,
    DWRITE_PANOSE_SCRIPT_TOPOLOGY_CURSIVE_DISCONNECTED      = 5,
    DWRITE_PANOSE_SCRIPT_TOPOLOGY_CURSIVE_TRAILING          = 6,
    DWRITE_PANOSE_SCRIPT_TOPOLOGY_CURSIVE_CONNECTED         = 7,
    DWRITE_PANOSE_SCRIPT_TOPOLOGY_BLACKLETTER_DISCONNECTED  = 8,
    DWRITE_PANOSE_SCRIPT_TOPOLOGY_BLACKLETTER_TRAILING      = 9,
    DWRITE_PANOSE_SCRIPT_TOPOLOGY_BLACKLETTER_CONNECTED     = 10
  );

  DWRITE_PANOSE_SCRIPT_FORM = (

    DWRITE_PANOSE_SCRIPT_FORM_ANY = 0,
    DWRITE_PANOSE_SCRIPT_FORM_NO_FIT = 1,
    DWRITE_PANOSE_SCRIPT_FORM_UPRIGHT_NO_WRAPPING           = 2,
    DWRITE_PANOSE_SCRIPT_FORM_UPRIGHT_SOME_WRAPPING         = 3,
    DWRITE_PANOSE_SCRIPT_FORM_UPRIGHT_MORE_WRAPPING         = 4,
    DWRITE_PANOSE_SCRIPT_FORM_UPRIGHT_EXTREME_WRAPPING      = 5,
    DWRITE_PANOSE_SCRIPT_FORM_OBLIQUE_NO_WRAPPING           = 6,
    DWRITE_PANOSE_SCRIPT_FORM_OBLIQUE_SOME_WRAPPING         = 7,
    DWRITE_PANOSE_SCRIPT_FORM_OBLIQUE_MORE_WRAPPING         = 8,
    DWRITE_PANOSE_SCRIPT_FORM_OBLIQUE_EXTREME_WRAPPING      = 9,
    DWRITE_PANOSE_SCRIPT_FORM_EXAGGERATED_NO_WRAPPING       = 10,
    DWRITE_PANOSE_SCRIPT_FORM_EXAGGERATED_SOME_WRAPPING     = 11,
    DWRITE_PANOSE_SCRIPT_FORM_EXAGGERATED_MORE_WRAPPING     = 12,
    DWRITE_PANOSE_SCRIPT_FORM_EXAGGERATED_EXTREME_WRAPPING  = 13
  );

  DWRITE_PANOSE_FINIALS = (

    DWRITE_PANOSE_FINIALS_ANY                   = 0,
    DWRITE_PANOSE_FINIALS_NO_FIT                = 1,
    DWRITE_PANOSE_FINIALS_NONE_NO_LOOPS         = 2,
    DWRITE_PANOSE_FINIALS_NONE_CLOSED_LOOPS     = 3,
    DWRITE_PANOSE_FINIALS_NONE_OPEN_LOOPS       = 4,
    DWRITE_PANOSE_FINIALS_SHARP_NO_LOOPS        = 5,
    DWRITE_PANOSE_FINIALS_SHARP_CLOSED_LOOPS    = 6,
    DWRITE_PANOSE_FINIALS_SHARP_OPEN_LOOPS      = 7,
    DWRITE_PANOSE_FINIALS_TAPERED_NO_LOOPS      = 8,
    DWRITE_PANOSE_FINIALS_TAPERED_CLOSED_LOOPS  = 9,
    DWRITE_PANOSE_FINIALS_TAPERED_OPEN_LOOPS    = 10,
    DWRITE_PANOSE_FINIALS_ROUND_NO_LOOPS        = 11,
    DWRITE_PANOSE_FINIALS_ROUND_CLOSED_LOOPS    = 12,
    DWRITE_PANOSE_FINIALS_ROUND_OPEN_LOOPS      = 13
  );

  DWRITE_PANOSE_XASCENT = (

    DWRITE_PANOSE_XASCENT_ANY       = 0,
    DWRITE_PANOSE_XASCENT_NO_FIT    = 1,
    DWRITE_PANOSE_XASCENT_VERY_LOW  = 2,
    DWRITE_PANOSE_XASCENT_LOW       = 3,
    DWRITE_PANOSE_XASCENT_MEDIUM    = 4,
    DWRITE_PANOSE_XASCENT_HIGH      = 5,
    DWRITE_PANOSE_XASCENT_VERY_HIGH = 6
  );

  DWRITE_PANOSE_DECORATIVE_CLASS = (

    DWRITE_PANOSE_DECORATIVE_CLASS_ANY                  = 0,
    DWRITE_PANOSE_DECORATIVE_CLASS_NO_FIT               = 1,
    DWRITE_PANOSE_DECORATIVE_CLASS_DERIVATIVE           = 2,
    DWRITE_PANOSE_DECORATIVE_CLASS_NONSTANDARD_TOPOLOGY = 3,
    DWRITE_PANOSE_DECORATIVE_CLASS_NONSTANDARD_ELEMENTS = 4,
    DWRITE_PANOSE_DECORATIVE_CLASS_NONSTANDARD_ASPECT   = 5,
    DWRITE_PANOSE_DECORATIVE_CLASS_INITIALS             = 6,
    DWRITE_PANOSE_DECORATIVE_CLASS_CARTOON              = 7,
    DWRITE_PANOSE_DECORATIVE_CLASS_PICTURE_STEMS        = 8,
    DWRITE_PANOSE_DECORATIVE_CLASS_ORNAMENTED           = 9,
    DWRITE_PANOSE_DECORATIVE_CLASS_TEXT_AND_BACKGROUND  = 10,
    DWRITE_PANOSE_DECORATIVE_CLASS_COLLAGE              = 11,
    DWRITE_PANOSE_DECORATIVE_CLASS_MONTAGE              = 12
  );

  DWRITE_PANOSE_ASPECT = (

    DWRITE_PANOSE_ASPECT_ANY              = 0,
    DWRITE_PANOSE_ASPECT_NO_FIT           = 1,
    DWRITE_PANOSE_ASPECT_SUPER_CONDENSED  = 2,
    DWRITE_PANOSE_ASPECT_VERY_CONDENSED   = 3,
    DWRITE_PANOSE_ASPECT_CONDENSED        = 4,
    DWRITE_PANOSE_ASPECT_NORMAL           = 5,
    DWRITE_PANOSE_ASPECT_EXTENDED         = 6,
    DWRITE_PANOSE_ASPECT_VERY_EXTENDED    = 7,
    DWRITE_PANOSE_ASPECT_SUPER_EXTENDED   = 8,
    DWRITE_PANOSE_ASPECT_MONOSPACED       = 9
  );

  DWRITE_PANOSE_FILL = (

    DWRITE_PANOSE_FILL_ANY                  = 0,
    DWRITE_PANOSE_FILL_NO_FIT               = 1,
    DWRITE_PANOSE_FILL_STANDARD_SOLID_FILL  = 2,
    DWRITE_PANOSE_FILL_NO_FILL              = 3,
    DWRITE_PANOSE_FILL_PATTERNED_FILL       = 4,
    DWRITE_PANOSE_FILL_COMPLEX_FILL         = 5,
    DWRITE_PANOSE_FILL_SHAPED_FILL          = 6,
    DWRITE_PANOSE_FILL_DRAWN_DISTRESSED     = 7
  );

  DWRITE_PANOSE_LINING = (

    DWRITE_PANOSE_LINING_ANY      = 0,
    DWRITE_PANOSE_LINING_NO_FIT   = 1,
    DWRITE_PANOSE_LINING_NONE     = 2,
    DWRITE_PANOSE_LINING_INLINE   = 3,
    DWRITE_PANOSE_LINING_OUTLINE  = 4,
    DWRITE_PANOSE_LINING_ENGRAVED = 5,
    DWRITE_PANOSE_LINING_SHADOW   = 6,
    DWRITE_PANOSE_LINING_RELIEF   = 7,
    DWRITE_PANOSE_LINING_BACKDROP = 8
  );

  DWRITE_PANOSE_DECORATIVE_TOPOLOGY = (

    DWRITE_PANOSE_DECORATIVE_TOPOLOGY_ANY                       = 0,
    DWRITE_PANOSE_DECORATIVE_TOPOLOGY_NO_FIT                    = 1,
    DWRITE_PANOSE_DECORATIVE_TOPOLOGY_STANDARD                  = 2,
    DWRITE_PANOSE_DECORATIVE_TOPOLOGY_SQUARE                    = 3,
    DWRITE_PANOSE_DECORATIVE_TOPOLOGY_MULTIPLE_SEGMENT          = 4,
    DWRITE_PANOSE_DECORATIVE_TOPOLOGY_ART_DECO                  = 5,
    DWRITE_PANOSE_DECORATIVE_TOPOLOGY_UNEVEN_WEIGHTING          = 6,
    DWRITE_PANOSE_DECORATIVE_TOPOLOGY_DIVERSE_ARMS              = 7,
    DWRITE_PANOSE_DECORATIVE_TOPOLOGY_DIVERSE_FORMS             = 8,
    DWRITE_PANOSE_DECORATIVE_TOPOLOGY_LOMBARDIC_FORMS           = 9,
    DWRITE_PANOSE_DECORATIVE_TOPOLOGY_UPPER_CASE_IN_LOWER_CASE  = 10,
    DWRITE_PANOSE_DECORATIVE_TOPOLOGY_IMPLIED_TOPOLOGY          = 11,
    DWRITE_PANOSE_DECORATIVE_TOPOLOGY_HORSESHOE_E_AND_A         = 12,
    DWRITE_PANOSE_DECORATIVE_TOPOLOGY_CURSIVE                   = 13,
    DWRITE_PANOSE_DECORATIVE_TOPOLOGY_BLACKLETTER               = 14,
    DWRITE_PANOSE_DECORATIVE_TOPOLOGY_SWASH_VARIANCE            = 15
  );

  DWRITE_PANOSE_CHARACTER_RANGES = (

    DWRITE_PANOSE_CHARACTER_RANGES_ANY                  = 0,
    DWRITE_PANOSE_CHARACTER_RANGES_NO_FIT               = 1,
    DWRITE_PANOSE_CHARACTER_RANGES_EXTENDED_COLLECTION  = 2,
    DWRITE_PANOSE_CHARACTER_RANGES_LITERALS             = 3,
    DWRITE_PANOSE_CHARACTER_RANGES_NO_LOWER_CASE        = 4,
    DWRITE_PANOSE_CHARACTER_RANGES_SMALL_CAPS           = 5
  );

  DWRITE_PANOSE_SYMBOL_KIND = (

    DWRITE_PANOSE_SYMBOL_KIND_ANY               = 0,
    DWRITE_PANOSE_SYMBOL_KIND_NO_FIT            = 1,
    DWRITE_PANOSE_SYMBOL_KIND_MONTAGES          = 2,
    DWRITE_PANOSE_SYMBOL_KIND_PICTURES          = 3,
    DWRITE_PANOSE_SYMBOL_KIND_SHAPES            = 4,
    DWRITE_PANOSE_SYMBOL_KIND_SCIENTIFIC        = 5,
    DWRITE_PANOSE_SYMBOL_KIND_MUSIC             = 6,
    DWRITE_PANOSE_SYMBOL_KIND_EXPERT            = 7,
    DWRITE_PANOSE_SYMBOL_KIND_PATTERNS          = 8,
    DWRITE_PANOSE_SYMBOL_KIND_BOARDERS          = 9,
    DWRITE_PANOSE_SYMBOL_KIND_ICONS             = 10,
    DWRITE_PANOSE_SYMBOL_KIND_LOGOS             = 11,
    DWRITE_PANOSE_SYMBOL_KIND_INDUSTRY_SPECIFIC = 12
  );

  DWRITE_PANOSE_SYMBOL_ASPECT_RATIO = (

    DWRITE_PANOSE_SYMBOL_ASPECT_RATIO_ANY                 = 0,
    DWRITE_PANOSE_SYMBOL_ASPECT_RATIO_NO_FIT              = 1,
    DWRITE_PANOSE_SYMBOL_ASPECT_RATIO_NO_WIDTH            = 2,
    DWRITE_PANOSE_SYMBOL_ASPECT_RATIO_EXCEPTIONALLY_WIDE  = 3,
    DWRITE_PANOSE_SYMBOL_ASPECT_RATIO_SUPER_WIDE          = 4,
    DWRITE_PANOSE_SYMBOL_ASPECT_RATIO_VERY_WIDE           = 5,
    DWRITE_PANOSE_SYMBOL_ASPECT_RATIO_WIDE                = 6,
    DWRITE_PANOSE_SYMBOL_ASPECT_RATIO_NORMAL              = 7,
    DWRITE_PANOSE_SYMBOL_ASPECT_RATIO_NARROW              = 8,
    DWRITE_PANOSE_SYMBOL_ASPECT_RATIO_VERY_NARROW         = 9
  );

  DWRITE_OUTLINE_THRESHOLD = (

    DWRITE_OUTLINE_THRESHOLD_ANTIALIASED,
    DWRITE_OUTLINE_THRESHOLD_ALIASED
  );

  DWRITE_BASELINE = (
    DWRITE_BASELINE_DEFAULT,
    DWRITE_BASELINE_ROMAN,
    DWRITE_BASELINE_CENTRAL,
    DWRITE_BASELINE_MATH,
    DWRITE_BASELINE_HANGING,
    DWRITE_BASELINE_IDEOGRAPHIC_BOTTOM,
    DWRITE_BASELINE_IDEOGRAPHIC_TOP,
    DWRITE_BASELINE_MINIMUM,
    DWRITE_BASELINE_MAXIMUM
  );

  DWRITE_VERTICAL_GLYPH_ORIENTATION = (
    DWRITE_VERTICAL_GLYPH_ORIENTATION_DEFAULT,
    DWRITE_VERTICAL_GLYPH_ORIENTATION_STACKED
  );

  DWRITE_GLYPH_ORIENTATION_ANGLE = (
    DWRITE_GLYPH_ORIENTATION_ANGLE_0_DEGREES,
    DWRITE_GLYPH_ORIENTATION_ANGLE_90_DEGREES,
    DWRITE_GLYPH_ORIENTATION_ANGLE_180_DEGREES,
    DWRITE_GLYPH_ORIENTATION_ANGLE_270_DEGREES
  );

  DWRITE_TEXT_ANTIALIAS_MODE = (

    DWRITE_TEXT_ANTIALIAS_MODE_CLEARTYPE,
    DWRITE_TEXT_ANTIALIAS_MODE_GRAYSCALE
  );

{$ENDREGION}

{$REGION 'dwrite_2 enums'}
  DWRITE_OPTICAL_ALIGNMENT = (
    DWRITE_OPTICAL_ALIGNMENT_NONE,
    DWRITE_OPTICAL_ALIGNMENT_NO_SIDE_BEARINGS
  );

 DWRITE_GRID_FIT_MODE = (

    DWRITE_GRID_FIT_MODE_DEFAULT,
    DWRITE_GRID_FIT_MODE_DISABLED,
    DWRITE_GRID_FIT_MODE_ENABLED
  );
{$ENDREGION}

{$REGION 'dwrite_3 enums'}

  DWRITE_FONT_PROPERTY_ID = (

    DWRITE_FONT_PROPERTY_ID_NONE,
    DWRITE_FONT_PROPERTY_ID_WEIGHT_STRETCH_STYLE_FAMILY_NAME,
    DWRITE_FONT_PROPERTY_ID_TYPOGRAPHIC_FAMILY_NAME,
    DWRITE_FONT_PROPERTY_ID_WEIGHT_STRETCH_STYLE_FACE_NAME,
    DWRITE_FONT_PROPERTY_ID_FULL_NAME,
    DWRITE_FONT_PROPERTY_ID_WIN32_FAMILY_NAME,
    DWRITE_FONT_PROPERTY_ID_POSTSCRIPT_NAME,
    DWRITE_FONT_PROPERTY_ID_DESIGN_SCRIPT_LANGUAGE_TAG,
    DWRITE_FONT_PROPERTY_ID_SUPPORTED_SCRIPT_LANGUAGE_TAG,
    DWRITE_FONT_PROPERTY_ID_SEMANTIC_TAG,
    DWRITE_FONT_PROPERTY_ID_WEIGHT,
    DWRITE_FONT_PROPERTY_ID_STRETCH,
    DWRITE_FONT_PROPERTY_ID_STYLE,
    DWRITE_FONT_PROPERTY_ID_TYPOGRAPHIC_FACE_NAME,
    DWRITE_FONT_PROPERTY_ID_TOTAL                 = DWRITE_FONT_PROPERTY_ID_STYLE + 1,
    DWRITE_FONT_PROPERTY_ID_TOTAL_RS3             = DWRITE_FONT_PROPERTY_ID_TYPOGRAPHIC_FACE_NAME + 1,

    // Obsolete aliases kept to avoid breaking existing code.
    DWRITE_FONT_PROPERTY_ID_PREFERRED_FAMILY_NAME = DWRITE_FONT_PROPERTY_ID_TYPOGRAPHIC_FAMILY_NAME,
    DWRITE_FONT_PROPERTY_ID_FAMILY_NAME           = DWRITE_FONT_PROPERTY_ID_WEIGHT_STRETCH_STYLE_FAMILY_NAME,
    DWRITE_FONT_PROPERTY_ID_FACE_NAME             = DWRITE_FONT_PROPERTY_ID_WEIGHT_STRETCH_STYLE_FACE_NAME
  );

  DWRITE_LOCALITY = (

    DWRITE_LOCALITY_REMOTE,
    DWRITE_LOCALITY_PARTIAL,
    DWRITE_LOCALITY_LOCAL
  );

  DWRITE_RENDERING_MODE1 = (
    DWRITE_RENDERING_MODE1_DEFAULT = 0,
    DWRITE_RENDERING_MODE1_ALIASED = 1,
    DWRITE_RENDERING_MODE1_GDI_CLASSIC = 2,
    DWRITE_RENDERING_MODE1_GDI_NATURAL = 3,
    DWRITE_RENDERING_MODE1_NATURAL = 4,
    DWRITE_RENDERING_MODE1_NATURAL_SYMMETRIC = 5,
    DWRITE_RENDERING_MODE1_OUTLINE = 6,
    DWRITE_RENDERING_MODE1_NATURAL_SYMMETRIC_DOWNSAMPLED
  );

  DWRITE_FONT_LINE_GAP_USAGE = (
    DWRITE_FONT_LINE_GAP_USAGE_DEFAULT,
    DWRITE_FONT_LINE_GAP_USAGE_DISABLED,
    DWRITE_FONT_LINE_GAP_USAGE_ENABLED
  );

  DWRITE_CONTAINER_TYPE = (

    DWRITE_CONTAINER_TYPE_UNKNOWN,
    DWRITE_CONTAINER_TYPE_WOFF,
    DWRITE_CONTAINER_TYPE_WOFF2
  );

  DWRITE_FONT_AXIS_TAG = (

    DWRITE_FONT_AXIS_TAG_WEIGHT         = $74686777,
    DWRITE_FONT_AXIS_TAG_WIDTH          = $68746477,
    DWRITE_FONT_AXIS_TAG_SLANT          = $746E6C73,
    DWRITE_FONT_AXIS_TAG_OPTICAL_SIZE   = $7A73706F,
    DWRITE_FONT_AXIS_TAG_ITALIC         = $6C617469
  );

  DWRITE_FONT_FAMILY_MODEL = (
    DWRITE_FONT_FAMILY_MODEL_TYPOGRAPHIC,
    DWRITE_FONT_FAMILY_MODEL_WEIGHT_STRETCH_STYLE
  );

  DWRITE_AUTOMATIC_FONT_AXES = (

    DWRITE_AUTOMATIC_FONT_AXES_NONE         = $0000,
    DWRITE_AUTOMATIC_FONT_AXES_OPTICAL_SIZE = $0001
  );

  DWRITE_FONT_AXIS_ATTRIBUTES = (

    DWRITE_FONT_AXIS_ATTRIBUTES_NONE     = $0000,
    DWRITE_FONT_AXIS_ATTRIBUTES_VARIABLE = $0001,
    DWRITE_FONT_AXIS_ATTRIBUTES_HIDDEN   = $0002
  );

  DWRITE_FONT_SOURCE_TYPE = (
    DWRITE_FONT_SOURCE_TYPE_UNKNOWN,
    DWRITE_FONT_SOURCE_TYPE_PER_MACHINE,
    DWRITE_FONT_SOURCE_TYPE_PER_USER,
    DWRITE_FONT_SOURCE_TYPE_APPX_PACKAGE,
    DWRITE_FONT_SOURCE_TYPE_REMOTE_FONT_PROVIDER
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

	TD2D1BorderMode = D2D1_BORDER_MODE;
	PD2D1BorderMode = ^TD2D1BorderMode;

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

	TD2D1ChannelSelector = D2D1_CHANNEL_SELECTOR;
	PD2D1ChannelSelector = ^TD2D1ChannelSelector;

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

	TD2D1BitmapsourceOrientation = D2D1_BITMAPSOURCE_ORIENTATION;
	PD2D1BitmapsourceOrientation = ^TD2D1BitmapsourceOrientation;

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

	TD2D1GaussianblurProp = D2D1_GAUSSIANBLUR_PROP;
	PD2D1GaussianblurProp = ^TD2D1GaussianblurProp;

  D2D1_GAUSSIANBLUR_OPTIMIZATION = (

    D2D1_GAUSSIANBLUR_OPTIMIZATION_SPEED = 0,
    D2D1_GAUSSIANBLUR_OPTIMIZATION_BALANCED = 1,
    D2D1_GAUSSIANBLUR_OPTIMIZATION_QUALITY = 2,
    D2D1_GAUSSIANBLUR_OPTIMIZATION_FORCE_DWORD = Integer($FFFFFFFF)
  );

	TD2D1GaussianblurOptimization = D2D1_GAUSSIANBLUR_OPTIMIZATION;
	PD2D1GaussianblurOptimization = ^TD2D1GaussianblurOptimization;


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

	TD2D1DirectionalblurProp = D2D1_DIRECTIONALBLUR_PROP;
	PD2D1DirectionalblurProp = ^TD2D1DirectionalblurProp;

  D2D1_DIRECTIONALBLUR_OPTIMIZATION = (
    D2D1_DIRECTIONALBLUR_OPTIMIZATION_SPEED       = 0,
    D2D1_DIRECTIONALBLUR_OPTIMIZATION_BALANCED    = 1,
    D2D1_DIRECTIONALBLUR_OPTIMIZATION_QUALITY     = 2,
    D2D1_DIRECTIONALBLUR_OPTIMIZATION_FORCE_DWORD = Integer($FFFFFFFF)
  );

	TD2D1DirectionalblurOptimization = D2D1_DIRECTIONALBLUR_OPTIMIZATION;
	PD2D1DirectionalblurOptimization = ^TD2D1DirectionalblurOptimization;

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

	TD2D1ShadowProp = D2D1_SHADOW_PROP;
	PD2D1ShadowProp = ^TD2D1ShadowProp;

  D2D1_SHADOW_OPTIMIZATION = (
    D2D1_SHADOW_OPTIMIZATION_SPEED        = 0,
    D2D1_SHADOW_OPTIMIZATION_BALANCED     = 1,
    D2D1_SHADOW_OPTIMIZATION_QUALITY      = 2,
    D2D1_SHADOW_OPTIMIZATION_FORCE_DWORD  = Integer($FFFFFFFF)
  );

	TD2D1ShadowOptimization = D2D1_SHADOW_OPTIMIZATION;
	PD2D1ShadowOptimization = ^TD2D1ShadowOptimization;

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

	TD2D1BlendProp = D2D1_BLEND_PROP;
	PD2D1BlendProp = ^TD2D1BlendProp;

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

	TD2D1BlendMode = D2D1_BLEND_MODE;
	PD2D1BlendMode = ^TD2D1BlendMode;

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

	TD2D1SaturationProp = D2D1_SATURATION_PROP;
	PD2D1SaturationProp = ^TD2D1SaturationProp;

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

	TD2D1HuerotationProp = D2D1_HUEROTATION_PROP;
	PD2D1HuerotationProp = ^TD2D1HuerotationProp;

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

	TD2D1ColormatrixProp = D2D1_COLORMATRIX_PROP;
	PD2D1ColormatrixProp = ^TD2D1ColormatrixProp;

  D2D1_COLORMATRIX_ALPHA_MODE = (

    D2D1_COLORMATRIX_ALPHA_MODE_PREMULTIPLIED = 1,
    D2D1_COLORMATRIX_ALPHA_MODE_STRAIGHT = 2,
    D2D1_COLORMATRIX_ALPHA_MODE_FORCE_DWORD = Integer($FFFFFFFF)
  );

	TD2D1ColormatrixAlphaMode = D2D1_COLORMATRIX_ALPHA_MODE;
	PD2D1ColormatrixAlphaMode = ^TD2D1ColormatrixAlphaMode;

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

	TD2D1BitmapsourceProp = D2D1_BITMAPSOURCE_PROP;
	PD2D1BitmapsourceProp = ^TD2D1BitmapsourceProp;

  D2D1_BITMAPSOURCE_INTERPOLATION_MODE = (

    D2D1_BITMAPSOURCE_INTERPOLATION_MODE_NEAREST_NEIGHBOR = 0,
    D2D1_BITMAPSOURCE_INTERPOLATION_MODE_LINEAR           = 1,
    D2D1_BITMAPSOURCE_INTERPOLATION_MODE_CUBIC            = 2,
    D2D1_BITMAPSOURCE_INTERPOLATION_MODE_FANT             = 6,
    D2D1_BITMAPSOURCE_INTERPOLATION_MODE_MIPMAP_LINEAR    = 7,
    D2D1_BITMAPSOURCE_INTERPOLATION_MODE_FORCE_DWORD      = Integer($FFFFFFFF)
  );

	TD2D1BitmapsourceInterpolationMode = D2D1_BITMAPSOURCE_INTERPOLATION_MODE;
	PD2D1BitmapsourceInterpolationMode = ^TD2D1BitmapsourceInterpolationMode;

  D2D1_BITMAPSOURCE_ALPHA_MODE = (
    D2D1_BITMAPSOURCE_ALPHA_MODE_PREMULTIPLIED  = 1,
    D2D1_BITMAPSOURCE_ALPHA_MODE_STRAIGHT       = 2,
    D2D1_BITMAPSOURCE_ALPHA_MODE_FORCE_DWORD    = Integer($FFFFFFFF)
  );

	TD2D1BitmapsourceAlphaMode = D2D1_BITMAPSOURCE_ALPHA_MODE;
	PD2D1BitmapsourceAlphaMode = ^TD2D1BitmapsourceAlphaMode;

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

	TD2D1CompositeProp = D2D1_COMPOSITE_PROP;
	PD2D1CompositeProp = ^TD2D1CompositeProp;

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

	TD2D13DtransformProp = D2D1_3DTRANSFORM_PROP;
	PD2D13DtransformProp = ^TD2D13DtransformProp;

  D2D1_3DTRANSFORM_INTERPOLATION_MODE = (

    D2D1_3DTRANSFORM_INTERPOLATION_MODE_NEAREST_NEIGHBOR    = 0,
    D2D1_3DTRANSFORM_INTERPOLATION_MODE_LINEAR              = 1,
    D2D1_3DTRANSFORM_INTERPOLATION_MODE_CUBIC               = 2,
    D2D1_3DTRANSFORM_INTERPOLATION_MODE_MULTI_SAMPLE_LINEAR = 3,
    D2D1_3DTRANSFORM_INTERPOLATION_MODE_ANISOTROPIC         = 4,
    D2D1_3DTRANSFORM_INTERPOLATION_MODE_FORCE_DWORD         = Integer($FFFFFFFF)
  );

	TD2D13DtransformInterpolationMode = D2D1_3DTRANSFORM_INTERPOLATION_MODE;
	PD2D13DtransformInterpolationMode = ^TD2D13DtransformInterpolationMode;

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

	TD2D13DperspectivetransformProp = D2D1_3DPERSPECTIVETRANSFORM_PROP;
	PD2D13DperspectivetransformProp = ^TD2D13DperspectivetransformProp;

  D2D1_3DPERSPECTIVETRANSFORM_INTERPOLATION_MODE = (

    D2D1_3DPERSPECTIVETRANSFORM_INTERPOLATION_MODE_NEAREST_NEIGHBOR     = 0,
    D2D1_3DPERSPECTIVETRANSFORM_INTERPOLATION_MODE_LINEAR               = 1,
    D2D1_3DPERSPECTIVETRANSFORM_INTERPOLATION_MODE_CUBIC                = 2,
    D2D1_3DPERSPECTIVETRANSFORM_INTERPOLATION_MODE_MULTI_SAMPLE_LINEAR  = 3,
    D2D1_3DPERSPECTIVETRANSFORM_INTERPOLATION_MODE_ANISOTROPIC          = 4,
    D2D1_3DPERSPECTIVETRANSFORM_INTERPOLATION_MODE_FORCE_DWORD          = Integer($FFFFFFFF)
  );

	TD2D13DperspectivetransformInterpolationMode = D2D1_3DPERSPECTIVETRANSFORM_INTERPOLATION_MODE;
	PD2D13DperspectivetransformInterpolationMode = ^TD2D13DperspectivetransformInterpolationMode;

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
    /// Property Type: TD2D1Matrix3x2F
    /// </summary>
    D2D1_2DAFFINETRANSFORM_PROP_TRANSFORM_MATRIX    = 2,

    /// <summary>
    /// Property Name: "Sharpness"
    /// Property Type: FLOAT
    /// </summary>
    D2D1_2DAFFINETRANSFORM_PROP_SHARPNESS           = 3,
    D2D1_2DAFFINETRANSFORM_PROP_FORCE_DWORD         = Integer($FFFFFFFF)
  );

	TD2D12DAffinetransformProp = D2D1_2DAFFINETRANSFORM_PROP;
	PD2D12DAffinetransformProp = ^TD2D12DAffinetransformProp;

  D2D1_2DAFFINETRANSFORM_INTERPOLATION_MODE = (

    D2D1_2DAFFINETRANSFORM_INTERPOLATION_MODE_NEAREST_NEIGHBOR    = 0,
    D2D1_2DAFFINETRANSFORM_INTERPOLATION_MODE_LINEAR              = 1,
    D2D1_2DAFFINETRANSFORM_INTERPOLATION_MODE_CUBIC               = 2,
    D2D1_2DAFFINETRANSFORM_INTERPOLATION_MODE_MULTI_SAMPLE_LINEAR = 3,
    D2D1_2DAFFINETRANSFORM_INTERPOLATION_MODE_ANISOTROPIC         = 4,
    D2D1_2DAFFINETRANSFORM_INTERPOLATION_MODE_HIGH_QUALITY_CUBIC  = 5,
    D2D1_2DAFFINETRANSFORM_INTERPOLATION_MODE_FORCE_DWORD         = Integer($FFFFFFFF)
  );

	TD2D12DAffinetransformInterpolationMode = D2D1_2DAFFINETRANSFORM_INTERPOLATION_MODE;
	PD2D12DAffinetransformInterpolationMode = ^TD2D12DAffinetransformInterpolationMode;

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

	TD2D1DpicompensationProp = D2D1_DPICOMPENSATION_PROP;
	PD2D1DpicompensationProp = ^TD2D1DpicompensationProp;

  D2D1_DPICOMPENSATION_INTERPOLATION_MODE = (

    D2D1_DPICOMPENSATION_INTERPOLATION_MODE_NEAREST_NEIGHBOR    = 0,
    D2D1_DPICOMPENSATION_INTERPOLATION_MODE_LINEAR              = 1,
    D2D1_DPICOMPENSATION_INTERPOLATION_MODE_CUBIC               = 2,
    D2D1_DPICOMPENSATION_INTERPOLATION_MODE_MULTI_SAMPLE_LINEAR = 3,
    D2D1_DPICOMPENSATION_INTERPOLATION_MODE_ANISOTROPIC         = 4,
    D2D1_DPICOMPENSATION_INTERPOLATION_MODE_HIGH_QUALITY_CUBIC  = 5,
    D2D1_DPICOMPENSATION_INTERPOLATION_MODE_FORCE_DWORD         = Integer($FFFFFFFF)
  );

	TD2D1DpicompensationInterpolationMode = D2D1_DPICOMPENSATION_INTERPOLATION_MODE;
	PD2D1DpicompensationInterpolationMode = ^TD2D1DpicompensationInterpolationMode;


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

	TD2D1ScaleProp = D2D1_SCALE_PROP;
	PD2D1ScaleProp = ^TD2D1ScaleProp;

  D2D1_SCALE_INTERPOLATION_MODE = (

    D2D1_SCALE_INTERPOLATION_MODE_NEAREST_NEIGHBOR = 0,
    D2D1_SCALE_INTERPOLATION_MODE_LINEAR = 1,
    D2D1_SCALE_INTERPOLATION_MODE_CUBIC = 2,
    D2D1_SCALE_INTERPOLATION_MODE_MULTI_SAMPLE_LINEAR = 3,
    D2D1_SCALE_INTERPOLATION_MODE_ANISOTROPIC = 4,
    D2D1_SCALE_INTERPOLATION_MODE_HIGH_QUALITY_CUBIC = 5,
    D2D1_SCALE_INTERPOLATION_MODE_FORCE_DWORD = Integer($FFFFFFFF)
  );

	TD2D1ScaleInterpolationMode = D2D1_SCALE_INTERPOLATION_MODE;
	PD2D1ScaleInterpolationMode = ^TD2D1ScaleInterpolationMode;

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

	TD2D1TurbulenceProp = D2D1_TURBULENCE_PROP;
	PD2D1TurbulenceProp = ^TD2D1TurbulenceProp;

  D2D1_TURBULENCE_NOISE = (

    D2D1_TURBULENCE_NOISE_FRACTAL_SUM = 0,
    D2D1_TURBULENCE_NOISE_TURBULENCE  = 1,
    D2D1_TURBULENCE_NOISE_FORCE_DWORD = Integer($FFFFFFFF)
  );

	TD2D1TurbulenceNoise = D2D1_TURBULENCE_NOISE;
	PD2D1TurbulenceNoise = ^TD2D1TurbulenceNoise;

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

	TD2D1DisplacementmapProp = D2D1_DISPLACEMENTMAP_PROP;
	PD2D1DisplacementmapProp = ^TD2D1DisplacementmapProp;

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

	TD2D1ColormanagementProp = D2D1_COLORMANAGEMENT_PROP;
	PD2D1ColormanagementProp = ^TD2D1ColormanagementProp;

  D2D1_COLORMANAGEMENT_ALPHA_MODE = (

    D2D1_COLORMANAGEMENT_ALPHA_MODE_PREMULTIPLIED = 1,
    D2D1_COLORMANAGEMENT_ALPHA_MODE_STRAIGHT      = 2,
    D2D1_COLORMANAGEMENT_ALPHA_MODE_FORCE_DWORD   = Integer($FFFFFFFF)
  );

	TD2D1ColormanagementAlphaMode = D2D1_COLORMANAGEMENT_ALPHA_MODE;
	PD2D1ColormanagementAlphaMode = ^TD2D1ColormanagementAlphaMode;

  D2D1_COLORMANAGEMENT_QUALITY = (

    D2D1_COLORMANAGEMENT_QUALITY_PROOF = 0,
    D2D1_COLORMANAGEMENT_QUALITY_NORMAL = 1,
    D2D1_COLORMANAGEMENT_QUALITY_BEST = 2,
    D2D1_COLORMANAGEMENT_QUALITY_FORCE_DWORD = Integer($FFFFFFFF)
  );

	TD2D1ColormanagementQuality = D2D1_COLORMANAGEMENT_QUALITY;
	PD2D1ColormanagementQuality = ^TD2D1ColormanagementQuality;

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

	TD2D1ColormanagementRenderingIntent = D2D1_COLORMANAGEMENT_RENDERING_INTENT;
	PD2D1ColormanagementRenderingIntent = ^TD2D1ColormanagementRenderingIntent;

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

	TD2D1HistogramProp = D2D1_HISTOGRAM_PROP;
	PD2D1HistogramProp = ^TD2D1HistogramProp;

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

	TD2D1PointspecularProp = D2D1_POINTSPECULAR_PROP;
	PD2D1PointspecularProp = ^TD2D1PointspecularProp;

  D2D1_POINTSPECULAR_SCALE_MODE = (

    D2D1_POINTSPECULAR_SCALE_MODE_NEAREST_NEIGHBOR    = 0,
    D2D1_POINTSPECULAR_SCALE_MODE_LINEAR              = 1,
    D2D1_POINTSPECULAR_SCALE_MODE_CUBIC               = 2,
    D2D1_POINTSPECULAR_SCALE_MODE_MULTI_SAMPLE_LINEAR = 3,
    D2D1_POINTSPECULAR_SCALE_MODE_ANISOTROPIC         = 4,
    D2D1_POINTSPECULAR_SCALE_MODE_HIGH_QUALITY_CUBIC  = 5,
    D2D1_POINTSPECULAR_SCALE_MODE_FORCE_DWORD         = Integer($FFFFFFFF)
  );

	TD2D1PointspecularScaleMode = D2D1_POINTSPECULAR_SCALE_MODE;
	PD2D1PointspecularScaleMode = ^TD2D1PointspecularScaleMode;

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

	TD2D1SpotspecularProp = D2D1_SPOTSPECULAR_PROP;
	PD2D1SpotspecularProp = ^TD2D1SpotspecularProp;

  D2D1_SPOTSPECULAR_SCALE_MODE = (

    D2D1_SPOTSPECULAR_SCALE_MODE_NEAREST_NEIGHBOR = 0,
    D2D1_SPOTSPECULAR_SCALE_MODE_LINEAR = 1,
    D2D1_SPOTSPECULAR_SCALE_MODE_CUBIC = 2,
    D2D1_SPOTSPECULAR_SCALE_MODE_MULTI_SAMPLE_LINEAR = 3,
    D2D1_SPOTSPECULAR_SCALE_MODE_ANISOTROPIC = 4,
    D2D1_SPOTSPECULAR_SCALE_MODE_HIGH_QUALITY_CUBIC = 5,
    D2D1_SPOTSPECULAR_SCALE_MODE_FORCE_DWORD = Integer($FFFFFFFF)
  );

	TD2D1SpotspecularScaleMode = D2D1_SPOTSPECULAR_SCALE_MODE;
	PD2D1SpotspecularScaleMode = ^TD2D1SpotspecularScaleMode;

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

	TD2D1DistantspecularProp = D2D1_DISTANTSPECULAR_PROP;
	PD2D1DistantspecularProp = ^TD2D1DistantspecularProp;

  D2D1_DISTANTSPECULAR_SCALE_MODE = (

    D2D1_DISTANTSPECULAR_SCALE_MODE_NEAREST_NEIGHBOR = 0,
    D2D1_DISTANTSPECULAR_SCALE_MODE_LINEAR = 1,
    D2D1_DISTANTSPECULAR_SCALE_MODE_CUBIC = 2,
    D2D1_DISTANTSPECULAR_SCALE_MODE_MULTI_SAMPLE_LINEAR = 3,
    D2D1_DISTANTSPECULAR_SCALE_MODE_ANISOTROPIC = 4,
    D2D1_DISTANTSPECULAR_SCALE_MODE_HIGH_QUALITY_CUBIC = 5,
    D2D1_DISTANTSPECULAR_SCALE_MODE_FORCE_DWORD = Integer($FFFFFFFF)
  );

	TD2D1DistantspecularScaleMode = D2D1_DISTANTSPECULAR_SCALE_MODE;
	PD2D1DistantspecularScaleMode = ^TD2D1DistantspecularScaleMode;

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

	TD2D1PointdiffuseProp = D2D1_POINTDIFFUSE_PROP;
	PD2D1PointdiffuseProp = ^TD2D1PointdiffuseProp;

  D2D1_POINTDIFFUSE_SCALE_MODE = (

    D2D1_POINTDIFFUSE_SCALE_MODE_NEAREST_NEIGHBOR     = 0,
    D2D1_POINTDIFFUSE_SCALE_MODE_LINEAR               = 1,
    D2D1_POINTDIFFUSE_SCALE_MODE_CUBIC                = 2,
    D2D1_POINTDIFFUSE_SCALE_MODE_MULTI_SAMPLE_LINEAR  = 3,
    D2D1_POINTDIFFUSE_SCALE_MODE_ANISOTROPIC          = 4,
    D2D1_POINTDIFFUSE_SCALE_MODE_HIGH_QUALITY_CUBIC   = 5,
    D2D1_POINTDIFFUSE_SCALE_MODE_FORCE_DWORD          = Integer($FFFFFFFF)
  );

	TD2D1PointdiffuseScaleMode = D2D1_POINTDIFFUSE_SCALE_MODE;
	PD2D1PointdiffuseScaleMode = ^TD2D1PointdiffuseScaleMode;

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

	TD2D1SpotdiffuseProp = D2D1_SPOTDIFFUSE_PROP;
	PD2D1SpotdiffuseProp = ^TD2D1SpotdiffuseProp;


  D2D1_SPOTDIFFUSE_SCALE_MODE = (

    D2D1_SPOTDIFFUSE_SCALE_MODE_NEAREST_NEIGHBOR    = 0,
    D2D1_SPOTDIFFUSE_SCALE_MODE_LINEAR              = 1,
    D2D1_SPOTDIFFUSE_SCALE_MODE_CUBIC               = 2,
    D2D1_SPOTDIFFUSE_SCALE_MODE_MULTI_SAMPLE_LINEAR = 3,
    D2D1_SPOTDIFFUSE_SCALE_MODE_ANISOTROPIC         = 4,
    D2D1_SPOTDIFFUSE_SCALE_MODE_HIGH_QUALITY_CUBIC  = 5,
    D2D1_SPOTDIFFUSE_SCALE_MODE_FORCE_DWORD         = Integer($FFFFFFFF)
  );

	TD2D1SpotdiffuseScaleMode = D2D1_SPOTDIFFUSE_SCALE_MODE;
	PD2D1SpotdiffuseScaleMode = ^TD2D1SpotdiffuseScaleMode;

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

	TD2D1DistantdiffuseProp = D2D1_DISTANTDIFFUSE_PROP;
	PD2D1DistantdiffuseProp = ^TD2D1DistantdiffuseProp;

  D2D1_DISTANTDIFFUSE_SCALE_MODE = (

    D2D1_DISTANTDIFFUSE_SCALE_MODE_NEAREST_NEIGHBOR     = 0,
    D2D1_DISTANTDIFFUSE_SCALE_MODE_LINEAR               = 1,
    D2D1_DISTANTDIFFUSE_SCALE_MODE_CUBIC                = 2,
    D2D1_DISTANTDIFFUSE_SCALE_MODE_MULTI_SAMPLE_LINEAR  = 3,
    D2D1_DISTANTDIFFUSE_SCALE_MODE_ANISOTROPIC          = 4,
    D2D1_DISTANTDIFFUSE_SCALE_MODE_HIGH_QUALITY_CUBIC   = 5,
    D2D1_DISTANTDIFFUSE_SCALE_MODE_FORCE_DWORD          = Integer($FFFFFFFF)
  );

	TD2D1DistantdiffuseScaleMode = D2D1_DISTANTDIFFUSE_SCALE_MODE;
	PD2D1DistantdiffuseScaleMode = ^TD2D1DistantdiffuseScaleMode;

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

	TD2D1FloodProp = D2D1_FLOOD_PROP;
	PD2D1FloodProp = ^TD2D1FloodProp;

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

	TD2D1LineartransferProp = D2D1_LINEARTRANSFER_PROP;
	PD2D1LineartransferProp = ^TD2D1LineartransferProp;

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

	TD2D1GammatransferProp = D2D1_GAMMATRANSFER_PROP;
	PD2D1GammatransferProp = ^TD2D1GammatransferProp;

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

	TD2D1TabletransferProp = D2D1_TABLETRANSFER_PROP;
	PD2D1TabletransferProp = ^TD2D1TabletransferProp;

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

	TD2D1DiscretetransferProp = D2D1_DISCRETETRANSFER_PROP;
	PD2D1DiscretetransferProp = ^TD2D1DiscretetransferProp;

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

	TD2D1ConvolvematrixProp = D2D1_CONVOLVEMATRIX_PROP;
	PD2D1ConvolvematrixProp = ^TD2D1ConvolvematrixProp;

  D2D1_CONVOLVEMATRIX_SCALE_MODE = (

    D2D1_CONVOLVEMATRIX_SCALE_MODE_NEAREST_NEIGHBOR     = 0,
    D2D1_CONVOLVEMATRIX_SCALE_MODE_LINEAR               = 1,
    D2D1_CONVOLVEMATRIX_SCALE_MODE_CUBIC                = 2,
    D2D1_CONVOLVEMATRIX_SCALE_MODE_MULTI_SAMPLE_LINEAR  = 3,
    D2D1_CONVOLVEMATRIX_SCALE_MODE_ANISOTROPIC          = 4,
    D2D1_CONVOLVEMATRIX_SCALE_MODE_HIGH_QUALITY_CUBIC   = 5,
    D2D1_CONVOLVEMATRIX_SCALE_MODE_FORCE_DWORD          = Integer($FFFFFFFF)
  );

	TD2D1ConvolvematrixScaleMode = D2D1_CONVOLVEMATRIX_SCALE_MODE;
	PD2D1ConvolvematrixScaleMode = ^TD2D1ConvolvematrixScaleMode;

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

	TD2D1BrightnessProp = D2D1_BRIGHTNESS_PROP;
	PD2D1BrightnessProp = ^TD2D1BrightnessProp;

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

	TD2D1ArithmeticcompositeProp = D2D1_ARITHMETICCOMPOSITE_PROP;
	PD2D1ArithmeticcompositeProp = ^TD2D1ArithmeticcompositeProp;

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

	TD2D1CropProp = D2D1_CROP_PROP;
	PD2D1CropProp = ^TD2D1CropProp;

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

	TD2D1BorderProp = D2D1_BORDER_PROP;
	PD2D1BorderProp = ^TD2D1BorderProp;

  /// <summary>
  /// The edge mode for the Border effect.
  /// </summary>
  D2D1_BORDER_EDGE_MODE = (
    D2D1_BORDER_EDGE_MODE_CLAMP       = 0,
    D2D1_BORDER_EDGE_MODE_WRAP        = 1,
    D2D1_BORDER_EDGE_MODE_MIRROR      = 2,
    D2D1_BORDER_EDGE_MODE_FORCE_DWORD = Integer($FFFFFFFF)
  );

	TD2D1BorderEdgeMode = D2D1_BORDER_EDGE_MODE;
	PD2D1BorderEdgeMode = ^TD2D1BorderEdgeMode;

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

	TD2D1MorphologyProp = D2D1_MORPHOLOGY_PROP;
	PD2D1MorphologyProp = ^TD2D1MorphologyProp;

  D2D1_MORPHOLOGY_MODE = (
    D2D1_MORPHOLOGY_MODE_ERODE        = 0,
    D2D1_MORPHOLOGY_MODE_DILATE       = 1,
    D2D1_MORPHOLOGY_MODE_FORCE_DWORD  = Integer($FFFFFFFF)
  );

	TD2D1MorphologyMode = D2D1_MORPHOLOGY_MODE;
	PD2D1MorphologyMode = ^TD2D1MorphologyMode;

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

	TD2D1TileProp = D2D1_TILE_PROP;
	PD2D1TileProp = ^TD2D1TileProp;

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

	TD2D1AtlasProp = D2D1_ATLAS_PROP;
	PD2D1AtlasProp = ^TD2D1AtlasProp;

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

	TD2D1OpacitymetadataProp = D2D1_OPACITYMETADATA_PROP;
	PD2D1OpacitymetadataProp = ^TD2D1OpacitymetadataProp;

{$ENDREGION}

{$REGION 'd2d1effects_1.h'}

  /// <summary>
  /// The enumeration of the YCbCr effect's top level properties.
  /// Effect description: An effect that takes a Y plane as input 0 and a CbCr plane
  /// as input 1 and outputs RGBA.  The CbCr plane can be chroma subsampled.  Useful
  /// for JPEG color conversion.
  /// </summary>
  D2D1_YCBCR_PROP = (

    /// <summary>
    /// Property Name: "ChromaSubsampling"
    /// Property Type: D2D1_YCBCR_CHROMA_SUBSAMPLING
    /// </summary>
    D2D1_YCBCR_PROP_CHROMA_SUBSAMPLING  = 0,

    /// <summary>
    /// Property Name: "TransformMatrix"
    /// Property Type: TD2D1Matrix3x2F
    /// </summary>
    D2D1_YCBCR_PROP_TRANSFORM_MATRIX    = 1,

    /// <summary>
    /// Property Name: "InterpolationMode"
    /// Property Type: D2D1_YCBCR_INTERPOLATION_MODE
    /// </summary>
    D2D1_YCBCR_PROP_INTERPOLATION_MODE  = 2,
    D2D1_YCBCR_PROP_FORCE_DWORD         = Integer($FFFFFFFF)
  );

	TD2D1YCbCrProp = D2D1_YCBCR_PROP;
	PD2D1YCbCrProp = ^TD2D1YCbCrProp;

  D2D1_YCBCR_CHROMA_SUBSAMPLING = (

    D2D1_YCBCR_CHROMA_SUBSAMPLING_AUTO        = 0,
    D2D1_YCBCR_CHROMA_SUBSAMPLING_420         = 1,
    D2D1_YCBCR_CHROMA_SUBSAMPLING_422         = 2,
    D2D1_YCBCR_CHROMA_SUBSAMPLING_444         = 3,
    D2D1_YCBCR_CHROMA_SUBSAMPLING_440         = 4,
    D2D1_YCBCR_CHROMA_SUBSAMPLING_FORCE_DWORD = Integer($FFFFFFFF)
  );

	TD2D1YCbCrChromaSubsampling = D2D1_YCBCR_CHROMA_SUBSAMPLING;
	PD2D1YCbCrChromaSubsampling = ^TD2D1YCbCrChromaSubsampling;

  D2D1_YCBCR_INTERPOLATION_MODE = (

    D2D1_YCBCR_INTERPOLATION_MODE_NEAREST_NEIGHBOR    = 0,
    D2D1_YCBCR_INTERPOLATION_MODE_LINEAR              = 1,
    D2D1_YCBCR_INTERPOLATION_MODE_CUBIC               = 2,
    D2D1_YCBCR_INTERPOLATION_MODE_MULTI_SAMPLE_LINEAR = 3,
    D2D1_YCBCR_INTERPOLATION_MODE_ANISOTROPIC         = 4,
    D2D1_YCBCR_INTERPOLATION_MODE_HIGH_QUALITY_CUBIC  = 5,
    D2D1_YCBCR_INTERPOLATION_MODE_FORCE_DWORD         = Integer($FFFFFFFF)
  );

	TD2D1YCbCrInterpolationMode = D2D1_YCBCR_INTERPOLATION_MODE;
	PD2D1YCbCrInterpolationMode = ^TD2D1YCbCrInterpolationMode;

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

	TD2D1ChangeType = D2D1_CHANGE_TYPE;
	PD2D1ChangeType = ^TD2D1ChangeType;

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

	TD2D1PixelOptions = D2D1_PIXEL_OPTIONS;
	PD2D1PixelOptions = ^TD2D1PixelOptions;


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

	TD2D1VertexOptions = D2D1_VERTEX_OPTIONS;
	PD2D1VertexOptions = ^TD2D1VertexOptions;

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

	TD2D1VertexUsage = D2D1_VERTEX_USAGE;
	PD2D1VertexUsage = ^TD2D1VertexUsage;

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

	TD2D1BlendOperation = D2D1_BLEND_OPERATION;
	PD2D1BlendOperation = ^TD2D1BlendOperation;

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

	TD2D1Blend = D2D1_BLEND;
	PD2D1Blend = ^TD2D1Blend;

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

	TD2D1ChannelDepth = D2D1_CHANNEL_DEPTH;
	PD2D1ChannelDepth = ^TD2D1ChannelDepth;

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

	TD2D1Filter = D2D1_FILTER;
	PD2D1Filter = ^TD2D1Filter;

  /// <summary>
  /// Defines capabilities of the underlying D3D device which may be queried using
  /// CheckFeatureSupport.
  /// </summary>
  D2D1_FEATURE = (
    D2D1_FEATURE_DOUBLES                  = 0,
    D2D1_FEATURE_D3D10_X_HARDWARE_OPTIONS = 1,
    D2D1_FEATURE_FORCE_DWORD              = Integer($FFFFFFFF)
  );

	TD2D1Feature = D2D1_FEATURE;
	PD2D1Feature = ^TD2D1Feature;

{$ENDREGION}

{$REGION 'd2d21effectauthor_1.h enums'}

//

{$ENDREGION}

{$REGION 'd2d1svg.h enums'}

  /// <summary>
  /// Specifies the paint type for an SVG fill or stroke.
  /// </summary>
  D2D1_SVG_PAINT_TYPE = (

    /// <summary>
    /// The fill or stroke is not rendered.
    /// </summary>
    D2D1_SVG_PAINT_TYPE_NONE              = 0,

    /// <summary>
    /// A solid color is rendered.
    /// </summary>
    D2D1_SVG_PAINT_TYPE_COLOR             = 1,

    /// <summary>
    /// The current color is rendered.
    /// </summary>
    D2D1_SVG_PAINT_TYPE_CURRENT_COLOR     = 2,

    /// <summary>
    /// A paint server, defined by another element in the SVG document, is used.
    /// </summary>
    D2D1_SVG_PAINT_TYPE_URI               = 3,

    /// <summary>
    /// A paint server, defined by another element in the SVG document, is used. If the
    /// paint server reference is invalid, fall back to D2D1_SVG_PAINT_TYPE_NONE.
    /// </summary>
    D2D1_SVG_PAINT_TYPE_URI_NONE          = 4,

    /// <summary>
    /// A paint server, defined by another element in the SVG document, is used. If the
    /// paint server reference is invalid, fall back to D2D1_SVG_PAINT_TYPE_COLOR.
    /// </summary>
    D2D1_SVG_PAINT_TYPE_URI_COLOR         = 5,

    /// <summary>
    /// A paint server, defined by another element in the SVG document, is used. If the
    /// paint server reference is invalid, fall back to
    /// D2D1_SVG_PAINT_TYPE_CURRENT_COLOR.
    /// </summary>
    D2D1_SVG_PAINT_TYPE_URI_CURRENT_COLOR = 6,
    D2D1_SVG_PAINT_TYPE_FORCE_DWORD       = Integer($FFFFFFFF)
  );

	TD2D1SvgPaintType = D2D1_SVG_PAINT_TYPE;
	PD2D1SvgPaintType = ^TD2D1SvgPaintType;

  /// <summary>
  /// Specifies the units for an SVG length.
  /// </summary>
  D2D1_SVG_LENGTH_UNITS = (

    /// <summary>
    /// The length is unitless.
    /// </summary>
    D2D1_SVG_LENGTH_UNITS_NUMBER      = 0,

    /// <summary>
    /// The length is a percentage value.
    /// </summary>
    D2D1_SVG_LENGTH_UNITS_PERCENTAGE  = 1,
    D2D1_SVG_LENGTH_UNITS_FORCE_DWORD = Integer($FFFFFFFF)
  );

	TD2D1SvgLengthUnits = D2D1_SVG_LENGTH_UNITS;
	PD2D1SvgLengthUnits = ^TD2D1SvgLengthUnits;

  /// <summary>
  /// Specifies a value for the SVG display property.
  /// </summary>
  D2D1_SVG_DISPLAY = (

    /// <summary>
    /// The element uses the default display behavior.
    /// </summary>
    D2D1_SVG_DISPLAY_INLINE       = 0,

    /// <summary>
    /// The element and all children are not rendered directly.
    /// </summary>
    D2D1_SVG_DISPLAY_NONE         = 1,
    D2D1_SVG_DISPLAY_FORCE_DWORD  = Integer($FFFFFFFF)
  );

	TD2D1SvgDisplay = D2D1_SVG_DISPLAY;
	PD2D1SvgDisplay = ^TD2D1SvgDisplay;

  /// <summary>
  /// Specifies a value for the SVG visibility property.
  /// </summary>
  D2D1_SVG_VISIBILITY = (

    /// <summary>
    /// The element is visible.
    /// </summary>
    D2D1_SVG_VISIBILITY_VISIBLE     = 0,

    /// <summary>
    /// The element is invisible.
    /// </summary>
    D2D1_SVG_VISIBILITY_HIDDEN      = 1,
    D2D1_SVG_VISIBILITY_FORCE_DWORD = Integer($FFFFFFFF)
  );

	TD2D1SvgVisibility = D2D1_SVG_VISIBILITY;
	PD2D1SvgVisibility = ^TD2D1SvgVisibility;

  /// <summary>
  /// Specifies a value for the SVG overflow property.
  /// </summary>
  D2D1_SVG_OVERFLOW = (

    /// <summary>
    /// The element is not clipped to its viewport.
    /// </summary>
    D2D1_SVG_OVERFLOW_VISIBLE     = 0,

    /// <summary>
    /// The element is clipped to its viewport.
    /// </summary>
    D2D1_SVG_OVERFLOW_HIDDEN      = 1,
    D2D1_SVG_OVERFLOW_FORCE_DWORD = Integer($FFFFFFFF)
  );

	TD2D1SvgOverflow = D2D1_SVG_OVERFLOW;
	PD2D1SvgOverflow = ^TD2D1SvgOverflow;

  /// <summary>
  /// Specifies a value for the SVG stroke-linecap property.
  /// </summary>
  D2D1_SVG_LINE_CAP = (

    /// <summary>
    /// The property is set to SVG's 'butt' value.
    /// </summary>
    D2D1_SVG_LINE_CAP_BUTT        = 0,

    /// <summary>
    /// The property is set to SVG's 'square' value.
    /// </summary>
    D2D1_SVG_LINE_CAP_SQUARE      = 1,

    /// <summary>
    /// The property is set to SVG's 'round' value.
    /// </summary>
    D2D1_SVG_LINE_CAP_ROUND       = 2,
    D2D1_SVG_LINE_CAP_FORCE_DWORD = Integer($FFFFFFFF)
  );

	TD2D1SvgLineCap = D2D1_SVG_LINE_CAP;
	PD2D1SvgLineCap = ^TD2D1SvgLineCap;

  /// <summary>
  /// Specifies a value for the SVG stroke-linejoin property.
  /// </summary>
  D2D1_SVG_LINE_JOIN = (

    /// <summary>
    /// The property is set to SVG's 'bevel' value.
    /// </summary>
    D2D1_SVG_LINE_JOIN_BEVEL = 1,

    /// <summary>
    /// The property is set to SVG's 'miter' value. Note that this is equivalent to
    /// D2D1_LINE_JOIN_MITER_OR_BEVEL, not D2D1_LINE_JOIN_MITER.
    /// </summary>
    D2D1_SVG_LINE_JOIN_MITER = 3,

    /// <summary>
    /// \ The property is set to SVG's 'round' value.
    /// </summary>
    D2D1_SVG_LINE_JOIN_ROUND = 2,
    D2D1_SVG_LINE_JOIN_FORCE_DWORD = Integer($FFFFFFFF)
  );

	TD2D1SvgLineJoin = D2D1_SVG_LINE_JOIN;
	PD2D1SvgLineJoin = ^TD2D1SvgLineJoin;

  /// <summary>
  /// The alignment portion of the SVG preserveAspectRatio attribute.
  /// </summary>
  D2D1_SVG_ASPECT_ALIGN = (

    /// <summary>
    /// The alignment is set to SVG's 'none' value.
    /// </summary>
    D2D1_SVG_ASPECT_ALIGN_NONE        = 0,

    /// <summary>
    /// The alignment is set to SVG's 'xMinYMin' value.
    /// </summary>
    D2D1_SVG_ASPECT_ALIGN_X_MIN_Y_MIN = 1,

    /// <summary>
    /// The alignment is set to SVG's 'xMidYMin' value.
    /// </summary>
    D2D1_SVG_ASPECT_ALIGN_X_MID_Y_MIN = 2,

    /// <summary>
    /// The alignment is set to SVG's 'xMaxYMin' value.
    /// </summary>
    D2D1_SVG_ASPECT_ALIGN_X_MAX_Y_MIN = 3,

    /// <summary>
    /// The alignment is set to SVG's 'xMinYMid' value.
    /// </summary>
    D2D1_SVG_ASPECT_ALIGN_X_MIN_Y_MID = 4,

    /// <summary>
    /// The alignment is set to SVG's 'xMidYMid' value.
    /// </summary>
    D2D1_SVG_ASPECT_ALIGN_X_MID_Y_MID = 5,

    /// <summary>
    /// The alignment is set to SVG's 'xMaxYMid' value.
    /// </summary>
    D2D1_SVG_ASPECT_ALIGN_X_MAX_Y_MID = 6,

    /// <summary>
    /// The alignment is set to SVG's 'xMinYMax' value.
    /// </summary>
    D2D1_SVG_ASPECT_ALIGN_X_MIN_Y_MAX = 7,

    /// <summary>
    /// The alignment is set to SVG's 'xMidYMax' value.
    /// </summary>
    D2D1_SVG_ASPECT_ALIGN_X_MID_Y_MAX = 8,

    /// <summary>
    /// The alignment is set to SVG's 'xMaxYMax' value.
    /// </summary>
    D2D1_SVG_ASPECT_ALIGN_X_MAX_Y_MAX = 9,
    D2D1_SVG_ASPECT_ALIGN_FORCE_DWORD = Integer($FFFFFFFF)
  );

	TD2D1SvgAspectAlign = D2D1_SVG_ASPECT_ALIGN;
	PD2D1SvgAspectAlign = ^TD2D1SvgAspectAlign;

  /// <summary>
  /// The meetOrSlice portion of the SVG preserveAspectRatio attribute.
  /// </summary>
  D2D1_SVG_ASPECT_SCALING = (
    /// <summary>
    /// Scale the viewBox up as much as possible such that the entire viewBox is visible
    /// within the viewport.
    /// </summary>
    D2D1_SVG_ASPECT_SCALING_MEET        = 0,

    /// <summary>
    /// Scale the viewBox down as much as possible such that the entire viewport is
    /// covered by the viewBox.
    /// </summary>
    D2D1_SVG_ASPECT_SCALING_SLICE       = 1,
    D2D1_SVG_ASPECT_SCALING_FORCE_DWORD = Integer($FFFFFFFF)
  );

	TD2D1SvgAspectScaling = D2D1_SVG_ASPECT_SCALING;
	PD2D1SvgAspectScaling = ^TD2D1SvgAspectScaling;

  /// <summary>
  /// Represents a path commmand. Each command may reference floats from the segment
  /// data. Commands ending in _ABSOLUTE interpret data as absolute coordinate.
  /// Commands ending in _RELATIVE interpret data as being relative to the previous
  /// point.
  /// </summary>
  D2D1_SVG_PATH_COMMAND = (

    /// <summary>
    /// Closes the current subpath. Uses no segment data.
    /// </summary>
    D2D1_SVG_PATH_COMMAND_CLOSE_PATH                = 0,

    /// <summary>
    /// Starts a new subpath at the coordinate (x y). Uses 2 floats of segment data.
    /// </summary>
    D2D1_SVG_PATH_COMMAND_MOVE_ABSOLUTE             = 1,

    /// <summary>
    /// Starts a new subpath at the coordinate (x y). Uses 2 floats of segment data.
    /// </summary>
    D2D1_SVG_PATH_COMMAND_MOVE_RELATIVE             = 2,

    /// <summary>
    /// Draws a line to the coordinate (x y). Uses 2 floats of segment data.
    /// </summary>
    D2D1_SVG_PATH_COMMAND_LINE_ABSOLUTE             = 3,

    /// <summary>
    /// Draws a line to the coordinate (x y). Uses 2 floats of segment data.
    /// </summary>
    D2D1_SVG_PATH_COMMAND_LINE_RELATIVE             = 4,

    /// <summary>
    /// Draws a cubic Bezier curve (x1 y1 x2 y2 x y). The curve ends at (x, y) and is
    /// defined by the two control points (x1, y1) and (x2, y2). Uses 6 floats of
    /// segment data.
    /// </summary>
    D2D1_SVG_PATH_COMMAND_CUBIC_ABSOLUTE            = 5,

    /// <summary>
    /// Draws a cubic Bezier curve (x1 y1 x2 y2 x y). The curve ends at (x, y) and is
    /// defined by the two control points (x1, y1) and (x2, y2). Uses 6 floats of
    /// segment data.
    /// </summary>
    D2D1_SVG_PATH_COMMAND_CUBIC_RELATIVE            = 6,

    /// <summary>
    /// Draws a quadratic Bezier curve (x1 y1 x y). The curve ends at (x, y) and is
    /// defined by the control point (x1 y1). Uses 4 floats of segment data.
    /// </summary>
    D2D1_SVG_PATH_COMMAND_QUADRADIC_ABSOLUTE        = 7,

    /// <summary>
    /// Draws a quadratic Bezier curve (x1 y1 x y). The curve ends at (x, y) and is
    /// defined by the control point (x1 y1). Uses 4 floats of segment data.
    /// </summary>
    D2D1_SVG_PATH_COMMAND_QUADRADIC_RELATIVE        = 8,

    /// <summary>
    /// Draws an elliptical arc (rx ry x-axis-rotation large-arc-flag sweep-flag x y).
    /// The curve ends at (x, y) and is defined by the arc parameters. The two flags are
    /// considered set if their values are non-zero. Uses 7 floats of segment data.
    /// </summary>
    D2D1_SVG_PATH_COMMAND_ARC_ABSOLUTE              = 9,

    /// <summary>
    /// Draws an elliptical arc (rx ry x-axis-rotation large-arc-flag sweep-flag x y).
    /// The curve ends at (x, y) and is defined by the arc parameters. The two flags are
    /// considered set if their values are non-zero. Uses 7 floats of segment data.
    /// </summary>
    D2D1_SVG_PATH_COMMAND_ARC_RELATIVE              = 10,

    /// <summary>
    /// Draws a horizontal line to the coordinate (x). Uses 1 float of segment data.
    /// </summary>
    D2D1_SVG_PATH_COMMAND_HORIZONTAL_ABSOLUTE       = 11,

    /// <summary>
    /// Draws a horizontal line to the coordinate (x). Uses 1 float of segment data.
    /// </summary>
    D2D1_SVG_PATH_COMMAND_HORIZONTAL_RELATIVE       = 12,

    /// <summary>
    /// Draws a vertical line to the coordinate (y). Uses 1 float of segment data.
    /// </summary>
    D2D1_SVG_PATH_COMMAND_VERTICAL_ABSOLUTE         = 13,

    /// <summary>
    /// Draws a vertical line to the coordinate (y). Uses 1 float of segment data.
    /// </summary>
    D2D1_SVG_PATH_COMMAND_VERTICAL_RELATIVE         = 14,

    /// <summary>
    /// Draws a smooth cubic Bezier curve (x2 y2 x y). The curve ends at (x, y) and is
    /// defined by the control point (x2, y2). Uses 4 floats of segment data.
    /// </summary>
    D2D1_SVG_PATH_COMMAND_CUBIC_SMOOTH_ABSOLUTE     = 15,

    /// <summary>
    /// Draws a smooth cubic Bezier curve (x2 y2 x y). The curve ends at (x, y) and is
    /// defined by the control point (x2, y2). Uses 4 floats of segment data.
    /// </summary>
    D2D1_SVG_PATH_COMMAND_CUBIC_SMOOTH_RELATIVE     = 16,

    /// <summary>
    /// Draws a smooth quadratic Bezier curve ending at (x, y). Uses 2 floats of segment
    /// data.
    /// </summary>
    D2D1_SVG_PATH_COMMAND_QUADRADIC_SMOOTH_ABSOLUTE = 17,

    /// <summary>
    /// Draws a smooth quadratic Bezier curve ending at (x, y). Uses 2 floats of segment
    /// data.
    /// </summary>
    D2D1_SVG_PATH_COMMAND_QUADRADIC_SMOOTH_RELATIVE = 18,
    D2D1_SVG_PATH_COMMAND_FORCE_DWORD = Integer($FFFFFFFF)
  );

	TD2D1SvgPathCommand = D2D1_SVG_PATH_COMMAND;
	PD2D1SvgPathCommand = ^TD2D1SvgPathCommand;

  /// <summary>
  /// Defines the coordinate system used for SVG gradient or clipPath elements.
  /// </summary>
  D2D1_SVG_UNIT_TYPE = (

    /// <summary>
    /// The property is set to SVG's 'userSpaceOnUse' value.
    /// </summary>
    D2D1_SVG_UNIT_TYPE_USER_SPACE_ON_USE    = 0,

    /// <summary>
    /// The property is set to SVG's 'objectBoundingBox' value.
    /// </summary>
    D2D1_SVG_UNIT_TYPE_OBJECT_BOUNDING_BOX  = 1,
    D2D1_SVG_UNIT_TYPE_FORCE_DWORD          = Integer($FFFFFFFF)
  );

	TD2D1SvgUnitType = D2D1_SVG_UNIT_TYPE;
	PD2D1SvgUnitType = ^TD2D1SvgUnitType;

  /// <summary>
  /// Defines the type of SVG string attribute to set or get.
  /// </summary>
  D2D1_SVG_ATTRIBUTE_STRING_TYPE = (

    /// <summary>
    /// The attribute is a string in the same form as it would appear in the SVG XML.
    ///
    /// Note that when getting values of this type, the value returned may not exactly
    /// match the value that was set. Instead, the output value is a normalized version
    /// of the value. For example, an input color of 'red' may be output as '#FF0000'.
    /// </summary>
    D2D1_SVG_ATTRIBUTE_STRING_TYPE_SVG          = 0,

    /// <summary>
    /// The attribute is an element ID.
    /// </summary>
    D2D1_SVG_ATTRIBUTE_STRING_TYPE_ID           = 1,
    D2D1_SVG_ATTRIBUTE_STRING_TYPE_FORCE_DWORD  = Integer($FFFFFFFF)
  );

	TD2D1SvgAttributeStringType = D2D1_SVG_ATTRIBUTE_STRING_TYPE;
	PD2D1SvgAttributeStringType = ^TD2D1SvgAttributeStringType;

  /// <summary>
  /// Defines the type of SVG POD attribute to set or get.
  /// </summary>
  D2D1_SVG_ATTRIBUTE_POD_TYPE = (

    /// <summary>
    /// The attribute is a FLOAT.
    /// </summary>
    D2D1_SVG_ATTRIBUTE_POD_TYPE_FLOAT                 = 0,

    /// <summary>
    /// The attribute is a D2D1_COLOR_F.
    /// </summary>
    D2D1_SVG_ATTRIBUTE_POD_TYPE_COLOR                 = 1,

    /// <summary>
    /// The attribute is a D2D1_FILL_MODE.
    /// </summary>
    D2D1_SVG_ATTRIBUTE_POD_TYPE_FILL_MODE             = 2,

    /// <summary>
    /// The attribute is a D2D1_SVG_DISPLAY.
    /// </summary>
    D2D1_SVG_ATTRIBUTE_POD_TYPE_DISPLAY               = 3,

    /// <summary>
    /// The attribute is a D2D1_SVG_OVERFLOW.
    /// </summary>
    D2D1_SVG_ATTRIBUTE_POD_TYPE_OVERFLOW              = 4,

    /// <summary>
    /// The attribute is a D2D1_SVG_LINE_CAP.
    /// </summary>
    D2D1_SVG_ATTRIBUTE_POD_TYPE_LINE_CAP              = 5,

    /// <summary>
    /// The attribute is a D2D1_SVG_LINE_JOIN.
    /// </summary>
    D2D1_SVG_ATTRIBUTE_POD_TYPE_LINE_JOIN             = 6,

    /// <summary>
    /// The attribute is a D2D1_SVG_VISIBILITY.
    /// </summary>
    D2D1_SVG_ATTRIBUTE_POD_TYPE_VISIBILITY            = 7,

    /// <summary>
    /// The attribute is a TD2D1Matrix3x2F.
    /// </summary>
    D2D1_SVG_ATTRIBUTE_POD_TYPE_MATRIX                = 8,

    /// <summary>
    /// The attribute is a D2D1_SVG_UNIT_TYPE.
    /// </summary>
    D2D1_SVG_ATTRIBUTE_POD_TYPE_UNIT_TYPE             = 9,

    /// <summary>
    /// The attribute is a D2D1_EXTEND_MODE.
    /// </summary>
    D2D1_SVG_ATTRIBUTE_POD_TYPE_EXTEND_MODE           = 10,

    /// <summary>
    /// The attribute is a D2D1_SVG_PRESERVE_ASPECT_RATIO.
    /// </summary>
    D2D1_SVG_ATTRIBUTE_POD_TYPE_PRESERVE_ASPECT_RATIO = 11,

    /// <summary>
    /// The attribute is a D2D1_SVG_VIEWBOX.
    /// </summary>
    D2D1_SVG_ATTRIBUTE_POD_TYPE_VIEWBOX               = 12,

    /// <summary>
    /// The attribute is a D2D1_SVG_LENGTH.
    /// </summary>
    D2D1_SVG_ATTRIBUTE_POD_TYPE_LENGTH                = 13,
    D2D1_SVG_ATTRIBUTE_POD_TYPE_FORCE_DWORD           = Integer($FFFFFFFF)
  );

	TD2D1SvgAttributePodType = D2D1_SVG_ATTRIBUTE_POD_TYPE;
	PD2D1SvgAttributePodType = ^TD2D1SvgAttributePodType;


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
    AlphaMode: TD2D1AlphaMode
  end;

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

  TD2D1Matrix3x2F = D2D1_MATRIX_3X2_F;
  PD2D1Matrix3x2F = ^TD2D1Matrix3x2F;

  D2D1_POINT_2F = record
    X: Single;
    Y: Single;
  end;

  TD2D1Point2F = D2D1_POINT_2F;
  PD2D1Point2F = ^TD2D1Point2F;

  D2D1_POINT_2U = record
    X: UInt32;
    Y: UInt32;
  end;

  TD2D1Point2U = D2D1_POINT_2U;
  PD2D1Point2U = ^TD2D1Point2U;

  D2D1_SIZE_F = record
    Width:  Single;
    Height: Single;
  end;

  TD2D1SizeF = D2D1_SIZE_F;
  PD2D1SizeF = ^TD2D1SizeF;

  D2D1_SIZE_U = record
    Width:  UInt32;
    Height: UInt32;
  end;

  TD2D1SizeU = D2D1_SIZE_U;
  PD2D1SizeU = ^TD2D1SizeU;

  D2D1_RECT_F = record
    Left:   Single;
    Top:    Single;
    Right:  Single;
    Bottom: Single;
  end;

  TD2D1RectF = D2D1_RECT_F;
  PD2D1RectF = ^TD2D1RectF;

  D2D1_RECT_U = record
    Left:   UInt32;
    Top:    UInt32;
    Right:  UInt32;
    Bottom: UInt32;
  end;

  TD2D1RectU = D2D1_RECT_U;
  PD2D1RectU = ^TD2D1RectU;

  /// <summary>
  /// Contains the dimensions and corner radii of a rounded rectangle.
  /// </summary>
  D2D1_ROUNDED_RECT = record
    Rect    : TD2D1RectF;
    RadiusX : Single;
    RadiusY : Single;
  end;

  TD2D1RoundedRect = D2D1_ROUNDED_RECT;
  PD2D1RoundedRect = ^TD2D1RoundedRect;

  /// <summary>
  /// Describes a triangle.
  /// </summary>
  D2D1_TRIANGLE = record
    Point1: TD2D1Point2F;
    Point2: TD2D1Point2F;
    Point3: TD2D1Point2F;
  end;

  TD2D1Triangle = D2D1_TRIANGLE;
  PD2D1Triangle = ^TD2D1Triangle;

  /// <summary>
  /// Describes an arc that is defined as part of a path.
  /// </summary>
  D2D1_ARC_SEGMENT = record
    Point           : TD2D1Point2F;
    Size            : TD2D1SizeF;
    RotationAngle   : Single;
    SweepDirection  : TD2D1SweepDirection;
    ArcSize         : TD2D1ArcSize;
  end;

  TD2D1ArcSegment = D2D1_ARC_SEGMENT;
  PD2D1ArcSegment = ^TD2D1ArcSegment;

  /// <summary>
  /// Contains the center point, x-radius, and y-radius of an ellipse.
  /// </summary>
  D2D1_ELLIPSE = record
    Point   : TD2D1Point2F;
    RadiusX : Single;
    RadiusY : Single;
  end;

  TD2D1Ellipse = D2D1_ELLIPSE;
  PD2D1Ellipse = ^TD2D1Ellipse;

  /// <summary>
  /// Describes a cubic bezier in a path.
  /// </summary>
  D2D1_BEZIER_SEGMENT = record
    Point1: TD2D1Point2F;
    Point2: TD2D1Point2F;
    Point3: TD2D1Point2F;
  end;

  TD2D1BezierSegment = D2D1_BEZIER_SEGMENT;
  PD2D1BezierSegment = ^TD2D1BezierSegment;

  /// <summary>
  /// Contains the control point and end point for a quadratic Bezier segment.
  /// </summary>
  D2D1_QUADRATIC_BEZIER_SEGMENT = record
    Point1: TD2D1Point2F;
    Point2: TD2D1Point2F;
  end;

  TD2D1QuadraticBezierSegment = D2D1_QUADRATIC_BEZIER_SEGMENT;
  PD2D1QuadraticBezierSegment = ^TD2D1QuadraticBezierSegment;

  /// <summary>
  /// Properties, aside from the width, that allow geometric penning to be specified.
  /// </summary>
  D2D1_STROKE_STYLE_PROPERTIES = record
    StartCap  : TD2D1CapStyle;
    EndCap    : TD2D1CapStyle;
    DashCap   : TD2D1CapStyle;
    LineJoin  : TD2D1LineJoin;
    MiterLimit: Single;
    DashStyle : TD2D1DashStyle;
    DashOffset: Single;
  end;

  TD2D1StrokeStyleProperties = D2D1_STROKE_STYLE_PROPERTIES;
  PD2D1StrokeStyleProperties = ^TD2D1StrokeStyleProperties;

  D2D1_LAYER_PARAMETERS = record
    ContentBounds     : TD2D1RectF;
    GeometricMask     : ID2D1Geometry;
    MaskAntialiasMode : TD2D1AntialiasMode;
    MaskTransform     : TD2D1Matrix3x2F;
    Opacity           : Single;
    OpacityBrush      : ID2D1Brush;
    LayerOptions      : TD2D1LayerOptions;
  end;

  TD2D1LayerParameters = D2D1_LAYER_PARAMETERS;
  PD2D1LayerParameters = ^TD2D1LayerParameters;

  /// <summary>
  /// Contains rendering options (hardware or software), pixel format, DPI
  /// information, remoting options, and Direct3D support requirements for a render
  /// target.
  /// </summary>
  D2D1_RENDER_TARGET_PROPERTIES = record
    &Type       : TD2D1RenderTargetType;
    PixelFormat : TD2D1PixelFormat;
    DpiX        : Single;
    DpiY        : Single;
    Usage       : TD2D1RenderTargetUsage;
    MinLevel    : TD2D1FeatureLevel;
  end;

  TD2D1RenderTargetProperties = D2D1_RENDER_TARGET_PROPERTIES;
  PD2D1RenderTargetProperties = ^TD2D1renderTargetProperties;

  /// <summary>
  /// Contains the HWND, pixel size, and presentation options for an
  /// ID2D1HwndRenderTarget.
  /// </summary>
  D2D1_HWND_RENDER_TARGET_PROPERTIES = record
    Hwnd          : HWND;
    PixelSize     : TD2D1SizeU;
    PresentOptions: TD2D1PresentOptions;
  end;

  TD2D1HwndRenderTargetProperties = D2D1_HWND_RENDER_TARGET_PROPERTIES;
  PD2D1HwndRenderTargetProperties = ^TD2D1HwndRenderTargetProperties;

  /// <summary>
  /// Allows the drawing state to be atomically created. This also specifies the
  /// drawing state that is saved into an IDrawingStateBlock object.
  /// </summary>
  D2D1_DRAWING_STATE_DESCRIPTION = record
    AntialiasMode: TD2D1AntialiasMode;
    TextAntialiasMode: TD2D1TextAntialiasMode;
    Tag1: TD2D1Tag;
    Tag2: TD2D1Tag;
    Transform: TD2D1Matrix3x2F;
  end;

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
    DebugLevel: TD2D1DebugLevel;
  end;

  TD2D1FactoryOptions = D2D1_FACTORY_OPTIONS;
  PD2D1FactoryOptions = ^TD2D1FactoryOptions;

  /// <summary>
  /// Describes the pixel format and dpi of a bitmap.
  /// </summary>
  D2D1_BITMAP_PROPERTIES = record
    PixelFormat : TD2D1PixelFormat;
    DpiX        : Single;
    DpiY        : Single;
  end;

  TD2D1BitmapProperties = D2D1_BITMAP_PROPERTIES;
  PD2D1BitmapProperties = ^TD2D1BitmapProperties;

  /// <summary>
  /// Contains the position and color of a gradient stop.
  /// </summary>
  D2D1_GRADIENT_STOP = record
    Position: Single;
    Color   : TD2D1ColorF;
  end;

  TD2D1GradientStop = D2D1_GRADIENT_STOP;
  PD2D1GradientStop = ^TD2D1GradientStop;

  /// <summary>
  /// Describes the opacity and transformation of a brush.
  /// </summary>
  D2D1_BRUSH_PROPERTIES = record
    Opacity   : Single;
    Transform : TD2D1Matrix3x2F;
  end;

  TD2D1BrushProperties = D2D1_BRUSH_PROPERTIES;
  PD2D1BrushProperties = ^TD2D1BrushProperties;

  /// <summary>
  /// Describes the extend modes and the interpolation mode of an ID2D1BitmapBrush.
  /// </summary>
  D2D1_BITMAP_BRUSH_PROPERTIES = record
    ExtendModeX       : TD2D1ExtendMode;
    ExtendModeY       : TD2D1ExtendMode;
    InterpolationMode : TD2D1BitmapInterpolationMode;
  end;

  TD2D1BitmapBrushProperties = D2D1_BITMAP_BRUSH_PROPERTIES;
  PD2D1BitmapBrushProperties = ^TD2D1BitmapBrushProperties;

  /// <summary>
  /// Contains the starting point and endpoint of the gradient axis for an
  /// ID2D1LinearGradientBrush.
  /// </summary>
  D2D1_LINEAR_GRADIENT_BRUSH_PROPERTIES = record
    StartPoint: TD2D1Point2F;
    EndPoint  : TD2D1Point2F;
  end;

  TD2D1LinearGradientBrushProperties = D2D1_LINEAR_GRADIENT_BRUSH_PROPERTIES;
  PD2D1LinearGradientBrushProperties = ^TD2D1LinearGradientBrushProperties;

  /// <summary>
  /// Contains the gradient origin offset and the size and position of the gradient
  /// ellipse for an ID2D1RadialGradientBrush.
  /// </summary>
  D2D1_RADIAL_GRADIENT_BRUSH_PROPERTIES = record
    Center              : TD2D1Point2F;
    GradientOriginOffset: TD2D1Point2F;
    RadiusX             : Single;
    RadiusY             : Single
  end;

  TD2D1RadialGradientBrushProperties = D2D1_RADIAL_GRADIENT_BRUSH_PROPERTIES;
  PD2D1RadialGradientBrushProperties = ^TD2D1RadialGradientBrushProperties;

{$ENDREGION}

{$REGION 'd2d1_1.h records'}

  D2D1_POINT_2L = record
    X: Int32;
    Y: Int32;
  end;

	TD2D1Point2L = D2D1_POINT_2L;
	PD2D1Point2L = ^TD2D1Point2L;

  D2D1_RECT_L = record
    Left: Int32;
    Top: Int32;
    Right: Int32;
    Bottom: Int32;
  end;

	TD2D1RectL = D2D1_RECT_L;
	PD2D1RectL = ^TD2D1RectL;

  D2D1_MATRIX_4X3_F = record
    M11, M12, M13: Single;
    M21, M22, M23: Single;
    M31, M32, M33: Single;
    M41, M42, M43: Single;
  end;

	TD2D1Matrix4x3F = D2D1_MATRIX_4X3_F;
	PD2D1Matrix4x3F = ^TD2D1Matrix4x3F;

  D2D1_MATRIX_4X4_F = record
    M11, M12, M13, M14: Single;
    M21, M22, M23, M24: Single;
    M31, M32, M33, M34: Single;
    M41, M42, M43, M44: Single;
  end;

	TD2D1Matrix4x4F = D2D1_MATRIX_4X4_F;
	PD2D1Matrix4x4F = ^TD2D1Matrix4x4F;

  /// <summary>
  /// Extended bitmap properties.
  /// </summary>
  D2D1_BITMAP_PROPERTIES1 = record
    PixelFormat: TD2D1PixelFormat;
    DpiX: Single;
    DpiY: Single;

    /// <summary>
    /// Specifies how the bitmap can be used.
    /// </summary>
    BitmapOptions: TD2D1BitmapOptions;
    ColorContext: ID2D1ColorContext;
  end;

	TD2D1BitmapProperties1 = D2D1_BITMAP_PROPERTIES1;
	PD2D1BitmapProperties1 = ^TD2D1BitmapProperties1;

  /// <summary>
  /// Describes mapped memory from the ID2D1Bitmap1::Map API.
  /// </summary>
  D2D1_MAPPED_RECT = record
    Pitch: UINT32;
    Bits: PByte;
  end;

	TD2D1MappedRect = D2D1_MAPPED_RECT;
	PD2D1MappedRect = ^TD2D1MappedRect;

  /// <summary>
  /// This controls advanced settings of the Direct2D imaging pipeline.
  /// </summary>
  D2D1_RENDERING_CONTROLS = record

    /// <summary>
    /// The default buffer precision, used if the precision isn't otherwise specified.
    /// </summary>
    BufferPrecision: TD2D1BufferPrecision;

    /// <summary>
    /// The size of allocated tiles used to render imaging effects.
    /// </summary>
    TileSize: TD2D1SizeU;
  end;

	TD2D1RenderingControls = D2D1_RENDERING_CONTROLS;
	PD2D1RenderingControls = ^TD2D1RenderingControls;

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
    InputRectangle: TD2D1RectF;
  end;

	TD2D1EffectInputDescription = D2D1_EFFECT_INPUT_DESCRIPTION;
	PD2D1EffectInputDescription = ^TD2D1EffectInputDescription;

  /// <summary>
  /// Describes a point along a path.
  /// </summary>
  D2D1_POINT_DESCRIPTION = record
    Point: TD2D1Point2F;
    UnitTangentVector: TD2D1Point2F;
    EndSegment: UInt32;
    EndFigure: UInt32;
    LengthToEndSegment: Single;
  end;

	TD2D1PointDescription = D2D1_POINT_DESCRIPTION;
	PD2D1PointDescription = ^TD2D1PointDescription;

  /// <summary>
  /// Creation properties for an image brush.
  /// </summary>
  D2D1_IMAGE_BRUSH_PROPERTIES = record
    SourceRectangle: TD2D1RectF;
    ExtendModeX: TD2D1ExtendMode;
    ExtendModeY: TD2D1ExtendMode;
    InterpolationMode: TD2D1InterpolationMode;
  end;

	TD2D1ImageBrushProperties = D2D1_IMAGE_BRUSH_PROPERTIES;
	PD2D1ImageBrushProperties = ^TD2D1ImageBrushProperties;

  /// <summary>
  /// Describes the extend modes and the interpolation mode of an ID2D1BitmapBrush.
  /// </summary>
  D2D1_BITMAP_BRUSH_PROPERTIES1 = record
    ExtendModeX: TD2D1ExtendMode;
    ExtendModeY: TD2D1ExtendMode;
    InterpolationMode: TD2D1InterpolationMode;
  end;

	TD2D1BitmapBrushProperties1 = D2D1_BITMAP_BRUSH_PROPERTIES1;
	PD2D1BitmapBrushProperties1 = ^TD2D1BitmapBrushProperties1;

  /// <summary>
  /// This defines how geometries should be drawn and widened.
  /// </summary>
  D2D1_STROKE_STYLE_PROPERTIES1 = record
    StartCap    : TD2D1CapStyle;
    EndCap      : TD2D1CapStyle;
    DashCap     : TD2D1CapStyle;
    LineJoin    : TD2D1LineJoin;
    MiterLimit  : Single;
    DashStyle   : TD2D1DashStyle;
    DashOffset  : Single;

    /// <summary>
    /// How the nib of the stroke is influenced by the context properties.
    /// </summary>
    TransformType: TD2D1StrokeTransformType;
  end;

	TD2D1StrokeStyleProperties1 = D2D1_STROKE_STYLE_PROPERTIES1;
	PD2D1StrokeStyleProperties1 = ^TD2D1StrokeStyleProperties1;

  /// <summary>
  /// All parameters related to pushing a layer.
  /// </summary>
  D2D1_LAYER_PARAMETERS1 = record
    ContentBounds: TD2D1RectF;
    GeometricMask: ID2D1Geometry;
    MaskAntialiasMode: TD2D1AntialiasMode;
    MaskTransform: TD2D1Matrix3x2F;
    Opacity: Single;
    OpacityBrush: ID2D1Brush;
    LayerOptions: TD2D1LayerOptions1;
  end;

	TD2D1LayerParameters1 = D2D1_LAYER_PARAMETERS1;
	PD2D1LayerParameters1 = ^TD2D1LayerParameters1;

  /// <summary>
  /// This describes the drawing state.
  /// </summary>
  D2D1_DRAWING_STATE_DESCRIPTION1 = record
    AntialiasMode: TD2D1AntialiasMode;
    TextAntialiasMode: TD2D1TextAntialiasMode;
    Tag1: TD2D1Tag;
    Tag2: TD2D1Tag;
    Transform: TD2D1Matrix3x2F;
    PrimitiveBlend: TD2D1PrimitiveBlend;
    UnitMode: TD2D1UnitMode;
  end;

	TD2D1DrawingStateDescription1 = D2D1_DRAWING_STATE_DESCRIPTION1;
	PD2D1DrawingStateDescription1 = ^TD2D1DrawingStateDescription1;

  /// <summary>
  /// The creation properties for a ID2D1PrintControl object.
  /// </summary>
  D2D1_PRINT_CONTROL_PROPERTIES = record

    FontSubset: TD2D1PrintFontSubsetMode;

    /// <summary>
    /// DPI for rasterization of all unsupported D2D commands or options, defaults to
    /// 150.0
    /// </summary>
    RasterDPI: Single;

    /// <summary>
    /// Color space for vector graphics in XPS package
    /// </summary>
    ColorSpace: TD2D1ColorSpace;
  end;

	TD2D1PrintControlProperties = D2D1_PRINT_CONTROL_PROPERTIES;
	PD2D1PrintControlProperties = ^TD2D1PrintControlProperties;

  /// <summary>
  /// This specifies the options while simultaneously creating the device, factory,
  /// and device context.
  /// </summary>
  D2D1_CREATION_PROPERTIES = record

    /// <summary>
    /// Describes locking behavior of D2D resources
    /// </summary>
    ThreadingMode: TD2D1ThreadingMode;
    DebugLevel: TD2D1DebugLevel;
    Options: TD2D1DeviceContextOptions;
  end;

	TD2D1CreationProperties = D2D1_CREATION_PROPERTIES;
	PD2D1CreationProperties = ^TD2D1CreationProperties;

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
    Orientation: TD2D1Orientation;

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
    InterpolationMode: TD2D1InterpolationMode;

    /// <summary>
    /// Option flags.
    /// </summary>
    Options: TD2D1TransformedImageSourceOptions;
  end;

	TD2D1TransformedImageSourceProperties = D2D1_TRANSFORMED_IMAGE_SOURCE_PROPERTIES;
	PD2D1TransformedImageSourceProperties = ^TD2D1TransformedImageSourceProperties;

  /// <summary>
  /// Represents a point, radius pair that makes up part of a D2D1_INK_BEZIER_SEGMENT.
  /// </summary>
  D2D1_INK_POINT = record
    X: Single;
    Y: Single;
    Radius: Single
  end;

	TD2D1InkPoint = D2D1_INK_POINT;
	PD2D1InkPoint = ^TD2D1InkPoint;

  /// <summary>
  /// Represents a Bezier segment to be used in the creation of an ID2D1Ink object.
  /// This structure differs from D2D1_BEZIER_SEGMENT in that it is composed of
  /// D2D1_INK_POINT s, which contain a radius in addition to x- and y-coordinates.
  /// </summary>
  D2D1_INK_BEZIER_SEGMENT = record
    Point1: TD2D1InkPoint;
    Point2: TD2D1InkPoint;
    Point3: TD2D1InkPoint;
  end;

	TD2D1InkBezierSegment = D2D1_INK_BEZIER_SEGMENT;
	PD2D1InkBezierSegment = ^TD2D1InkBezierSegment;

  /// <summary>
  /// Defines the general pen tip shape and the transform used in an ID2D1InkStyle
  /// object.
  /// </summary>
  D2D1_INK_STYLE_PROPERTIES = record

    /// <summary>
    /// The general shape of the nib used to draw a given ink object.
    /// </summary>
    NibShape: TD2D1InkNibShape;

    /// <summary>
    /// The transform applied to shape of the nib. _31 and _32 are ignored.
    /// </summary>
    NibTransform: TD2D1Matrix3x2F;
  end;

	TD2D1InkStyleProperties = D2D1_INK_STYLE_PROPERTIES;
	PD2D1InkStyleProperties = ^TD2D1InkStyleProperties;

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
    Point00: TD2D1Point2F;

    /// <summary>
    /// The gradient mesh patch control point at position 01.
    /// </summary>
    Point01: TD2D1Point2F;

    /// <summary>
    /// The gradient mesh patch control point at position 02.
    /// </summary>
    Point02: TD2D1Point2F;

    /// <summary>
    /// The gradient mesh patch control point at position 03.
    /// </summary>
    Point03: TD2D1Point2F;

    /// <summary>
    /// The gradient mesh patch control point at position 10.
    /// </summary>
    Point10: TD2D1Point2F;

    /// <summary>
    /// The gradient mesh patch control point at position 11.
    /// </summary>
    Point11: TD2D1Point2F;

    /// <summary>
    /// The gradient mesh patch control point at position 12.
    /// </summary>
    Point12: TD2D1Point2F;

    /// <summary>
    /// The gradient mesh patch control point at position 13.
    /// </summary>
    Point13: TD2D1Point2F;

    /// <summary>
    /// The gradient mesh patch control point at position 20.
    /// </summary>
    Point20: TD2D1Point2F;

    /// <summary>
    /// The gradient mesh patch control point at position 21.
    /// </summary>
    Point21: TD2D1Point2F;

    /// <summary>
    /// The gradient mesh patch control point at position 22.
    /// </summary>
    Point22: TD2D1Point2F;

    /// <summary>
    /// The gradient mesh patch control point at position 23.
    /// </summary>
    Point23: TD2D1Point2F;

    /// <summary>
    /// The gradient mesh patch control point at position 30.
    /// </summary>
    Point30: TD2D1Point2F;

    /// <summary>
    /// The gradient mesh patch control point at position 31.
    /// </summary>
    Point31: TD2D1Point2F;

    /// <summary>
    /// The gradient mesh patch control point at position 32.
    /// </summary>
    Point32: TD2D1Point2F;

    /// <summary>
    /// The gradient mesh patch control point at position 33.
    /// </summary>
    Point33: TD2D1Point2F;

    /// <summary>
    /// The color associated with control point at position 00.
    /// </summary>
    Color00: TD2D1ColorF;

    /// <summary>
    /// The color associated with control point at position 03.
    /// </summary>
    Color03: TD2D1ColorF;

    /// <summary>
    /// The color associated with control point at position 30.
    /// </summary>
    Color30: TD2D1ColorF;

    /// <summary>
    /// The color associated with control point at position 33.
    /// </summary>
    Color33: TD2D1ColorF;

    /// <summary>
    /// The edge mode for the top edge of the patch.
    /// </summary>
    TopEdgeMode: TD2D1PatchEdgeMode;

    /// <summary>
    /// The edge mode for the left edge of the patch.
    /// </summary>
    LeftEdgeMode: TD2D1PatchEdgeMode;

    /// <summary>
    /// The edge mode for the bottom edge of the patch.
    /// </summary>
    BottomEdgeMode: TD2D1PatchEdgeMode;

    /// <summary>
    /// The edge mode for the right edge of the patch.
    /// </summary>
    RightEdgeMode: TD2D1PatchEdgeMode;
  end;

	TD2D1GradientMeshPatch = D2D1_GRADIENT_MESH_PATCH;
	PD2D1GradientMeshPatch = ^TD2D1GradientMeshPatch;

  /// <summary>
  /// Simple description of a color space.
  /// </summary>
  D2D1_SIMPLE_COLOR_PROFILE = record
    /// <summary>
    /// The XY coordinates of the red primary in CIEXYZ space.
    /// </summary>
    RedPrimary: TD2D1Point2F;

    /// <summary>
    /// The XY coordinates of the green primary in CIEXYZ space.
    /// </summary>
    GreenPrimary: TD2D1Point2F;

    /// <summary>
    /// The XY coordinates of the blue primary in CIEXYZ space.
    /// </summary>
    BluePrimary: TD2D1Point2F;

    /// <summary>
    /// The X/Z tristimulus values for the whitepoint, normalized for relative
    /// luminance.
    /// </summary>
    WhitePointXZ: TD2D1Point2F;

    /// <summary>
    /// The gamma encoding to use for this color space.
    /// </summary>
    Gamma: TD2D1Gamma1;
  end;

	TD2D1SimpleColorProfile = D2D1_SIMPLE_COLOR_PROFILE;
	PD2D1SimpleColorProfile = ^TD2D1SimpleColorProfile;


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

	TDWriteFontMetrics = DWRITE_FONT_METRICS;
	PDWriteFontMetrics = ^TDWriteFontMetrics;

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

	TDWriteGlyphMetrics = DWRITE_GLYPH_METRICS;
	PDWriteGlyphMetrics = ^TDWriteGlyphMetrics;

  /// <summary>
  /// Optional adjustment to a glyph's position. A glyph offset changes the position of a glyph without affecting
  /// the pen position. Offsets are in logical, pre-transform units.
  /// </summary>
  DWRITE_GLYPH_OFFSET = record

    AdvanceOffset : Single;
    AscenderOffset: Single;
  end;

	TDWriteGlyphOffset = DWRITE_GLYPH_OFFSET;
	PDWriteGlyphOffset = ^TDWriteGlyphOffset;

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

	TDWriteMatrix = DWRITE_MATRIX;
	PDWriteMatrix = ^TDWriteMatrix;

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

	TDWriteTextRange = DWRITE_TEXT_RANGE;
	PDWriteTextRange = ^TDWriteTextRange;

  /// <summary>
  /// The DWRITE_FONT_FEATURE structure specifies properties used to identify and execute typographic feature in the font.
  /// </summary>
  DWRITE_FONT_FEATURE = record

    /// <summary>
    /// The feature OpenType name identifier.
    /// </summary>
    NameTag: TDWriteFontFeatureTag;

    /// <summary>
    /// Execution parameter of the feature.
    /// </summary>
    /// <remarks>
    /// The parameter should be non-zero to enable the feature.  Once enabled, a feature can't be disabled again within
    /// the same range.  Features requiring a selector use this value to indicate the selector index.
    /// </remarks>
    Parameter: UInt32;
  end;

	TDWriteFontFeature = DWRITE_FONT_FEATURE;
	PDWriteFontFeature = ^TDWriteFontFeature;

  /// <summary>
  /// Defines a set of typographic features to be applied during shaping.
  /// Notice the character range which this feature list spans is specified
  /// as a separate parameter to GetGlyphs.
  /// </summary>
  DWRITE_TYPOGRAPHIC_FEATURES = record

    /// <summary>
    /// Array of font features.
    /// </summary>
    Features: TDWriteFontFeature;

    /// <summary>
    /// The number of features.
    /// </summary>
    FeatureCount: UInt32;
  end;

	TDWriteTypographicFeatures = DWRITE_TYPOGRAPHIC_FEATURES;
	PDWriteTypographicFeatures = ^TDWriteTypographicFeatures;

  /// <summary>
  /// The DWRITE_TRIMMING structure specifies the trimming option for text overflowing the layout box.
  /// </summary>
  DWRITE_TRIMMING = record
    /// <summary>
    /// Text granularity of which trimming applies.
    /// </summary>
    Granularity: TDWriteTrimmingGranularity;

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

	TDWriteTrimming = DWRITE_TRIMMING;
	PDWriteTrimming = ^TDWriteTrimming;

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
    Shapes: TDWriteScriptShapes;
  end;

	TDWriteScriptAnalysis = DWRITE_SCRIPT_ANALYSIS;
	PDWriteScriptAnalysis = ^TDWriteScriptAnalysis;

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

	TDWriteLineBreakpoint = DWRITE_LINE_BREAKPOINT;
	PDWriteLineBreakpoint = ^TDWriteLineBreakpoint;

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

	TDWriteShapingTextProperties = DWRITE_SHAPING_TEXT_PROPERTIES;
	PDWriteShapingTextProperties = ^TDWriteShapingTextProperties;

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

	TDWriteShapingGlyphProperties = DWRITE_SHAPING_GLYPH_PROPERTIES;
	PDWriteShapingGlyphProperties = ^TDWriteShapingGlyphProperties;

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
    GlyphOffsets  : PDWriteGlyphOffset;

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

	TDWriteGlyphRun = DWRITE_GLYPH_RUN;
	PDWriteGlyphRun = ^TDWriteGlyphRun;

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

	TDWriteGlyphRunDescription = DWRITE_GLYPH_RUN_DESCRIPTION;
	PDWriteGlyphRunDescription = ^TDWriteGlyphRunDescription;

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
    ReadingDirection: TDWriteReadingDirection;

    /// <summary>
    /// Flow direction of the text associated with the underline.  This value
    /// is used to interpret whether the thickness value advances top to
    /// bottom, left to right, or right to left.
    /// </summary>
    FlowDirection: TDWriteFlowDirection;

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
    MeasuringMode: TDWriteMeasuringMode;
  end;

	TDWriteUnderline = DWRITE_UNDERLINE;
	PDWriteUnderline = ^TDWriteUnderline;

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
    ReadingDirection: TDWriteReadingDirection;

    /// <summary>
    /// Flow direction of the text associated with the strikethrough.  This
    /// value is used to interpret whether the thickness value advances top to
    /// bottom, left to right, or right to left.
    /// </summary>
    FlowDirection: TDWriteFlowDirection;

    /// <summary>
    /// Locale of the range. Can be pertinent where the locale affects the style.
    /// </summary>
    LocaleName: PWChar;

    /// <summary>
    /// The measuring mode can be useful to the renderer to determine how
    /// underlines are rendered, e.g. rounding the thickness to a whole pixel
    /// in GDI-compatible modes.
    /// </summary>
    MeasuringMode: TDWriteMeasuringMode;
  end;

	TDWriteStrikethrough = DWRITE_STRIKETHROUGH;
	PDWriteStrikethrough = ^TDWriteStrikethrough;

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

	TDWriteLineMetrics = DWRITE_LINE_METRICS;
	PDWriteLineMetrics = ^TDWriteLineMetrics;

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

	TDWriteClusterMetrics = DWRITE_CLUSTER_METRICS;
	PDWriteClusterMetrics = ^TDWriteClusterMetrics;

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

	TDWriteTextMetrics = DWRITE_TEXT_METRICS;
	PDWriteTextMetrics = ^TDWriteTextMetrics;

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

	TDWriteInlineObjectMetrics = DWRITE_INLINE_OBJECT_METRICS;
	PDWriteInlineObjectMetrics = ^TDWriteInlineObjectMetrics;

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

	TDWriteOverhangMetrics = DWRITE_OVERHANG_METRICS;
	PDWriteOverhangMetrics = ^TDWriteOverhangMetrics;

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

	TDWriteHitTestMetrics = DWRITE_HIT_TEST_METRICS;
	PDWriteHitTestMetrics = ^TDWriteHitTestMetrics;

{$ENDREGION}

{$REGION 'dwrite_1.h records'}

  DWRITE_FONT_METRICS1 = record
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

    //
    // dwrite_1
    //

    /// <summary>
    /// Left edge of accumulated bounding blackbox of all glyphs in the font.
    /// </summary>
    GlyphBoxLeft: Int16;

    /// <summary>
    /// Top edge of accumulated bounding blackbox of all glyphs in the font.
    /// </summary>
    GlyphBoxTop: Int16;

    /// <summary>
    /// Right edge of accumulated bounding blackbox of all glyphs in the font.
    /// </summary>
    GlyphBoxRight: Int16;

    /// <summary>
    /// Bottom edge of accumulated bounding blackbox of all glyphs in the font.
    /// </summary>
    GlyphBoxBottom: Int16;

    /// <summary>
    /// Horizontal position of the subscript relative to the baseline origin.
    /// This is typically negative (to the left) in italic/oblique fonts, and
    /// zero in regular fonts.
    /// </summary>
    SubscriptPositionX: Int16;

    /// <summary>
    /// Vertical position of the subscript relative to the baseline.
    /// This is typically negative.
    /// </summary>
    SubscriptPositionY: Int16;

    /// <summary>
    /// Horizontal size of the subscript em box in design units, used to
    /// scale the simulated subscript relative to the full em box size.
    /// This the numerator of the scaling ratio where denominator is the
    /// design units per em. If this member is zero, the font does not specify
    /// a scale factor, and the client should use its own policy.
    /// </summary>
    SubscriptSizeX: Int16;

    /// <summary>
    /// Vertical size of the subscript em box in design units, used to
    /// scale the simulated subscript relative to the full em box size.
    /// This the numerator of the scaling ratio where denominator is the
    /// design units per em. If this member is zero, the font does not specify
    /// a scale factor, and the client should use its own policy.
    /// </summary>
    SubscriptSizeY: Int16;

    /// <summary>
    /// Horizontal position of the superscript relative to the baseline origin.
    /// This is typically positive (to the right) in italic/oblique fonts, and
    /// zero in regular fonts.
    /// </summary>
    SuperscriptPositionX: Int16;

    /// <summary>
    /// Vertical position of the superscript relative to the baseline.
    /// This is typically positive.
    /// </summary>
    SuperscriptPositionY: Int16;

    /// <summary>
    /// Horizontal size of the superscript em box in design units, used to
    /// scale the simulated superscript relative to the full em box size.
    /// This the numerator of the scaling ratio where denominator is the
    /// design units per em. If this member is zero, the font does not specify
    /// a scale factor, and the client should use its own policy.
    /// </summary>
    SuperscriptSizeX: Int16;

    /// <summary>
    /// Vertical size of the superscript em box in design units, used to
    /// scale the simulated superscript relative to the full em box size.
    /// This the numerator of the scaling ratio where denominator is the
    /// design units per em. If this member is zero, the font does not specify
    /// a scale factor, and the client should use its own policy.
    /// </summary>
    SuperscriptSizeY: Int16;

    /// <summary>
    /// Indicates that the ascent, descent, and lineGap are based on newer
    /// 'typographic' values in the font, rather than legacy values.
    /// </summary>
    HasTypographicMetrics: BOOL;

  end;

  /// <summary>
  /// Metrics for caret placement in a font.
  /// </summary>
  DWRITE_CARET_METRICS = record

    /// <summary>
    /// Vertical rise of the caret. Rise / Run yields the caret angle.
    /// Rise = 1 for perfectly upright fonts (non-italic).
    /// </summary>
    SlopeRise: Int16;

    /// <summary>
    /// Horizontal run of th caret. Rise / Run yields the caret angle.
    /// Run = 0 for perfectly upright fonts (non-italic).
    /// </summary>
    SlopeRun: Int16;

    /// <summary>
    /// Horizontal offset of the caret along the baseline for good appearance.
    /// Offset = 0 for perfectly upright fonts (non-italic).
    /// </summary>
    Offset: Int16;
  end;

  DWRITE_PANOSE = record

    case Integer of
      0: (Values: Array [0..9] of UInt8);
      1: (familyKind: UInt8);               // this is the only field that never changes meaning
      2: (Text:
        record
          FamilyKind: UInt8; // = 2 for text
          SerifStyle: UInt8;
          Weight: UInt8;
          Proportion: UInt8;
          Contrast: UInt8;
          StrokeVariation: UInt8;
          ArmStyle: UInt8;
          Letterform: UInt8;
          Midline: UInt8;
          XHeight: UInt8;
          end);

      3: (Script:
        record
          FamilyKind: UInt8; // = 3 for script
          ToolKind: UInt8;
          Weight: UInt8;
          Spacing: UInt8;
          AspectRatio: UInt8;
          Contrast: UInt8;
          ScriptTopology: UInt8;
          ScriptForm: UInt8;
          Finials: UInt8;
          XAscent: UInt8;
        end);

      4: (Decorative:
        record
          FamilyKind: UInt8; // = 4 for decorative
          DecorativeClass: UInt8;
          Weight: UInt8;
          Aspect: UInt8;
          Contrast: UInt8;
          SerifVariant: UInt8;
          Fill: UInt8; // treatment
          Lining: UInt8;
          DecorativeTopology: UInt8;
          CharacterRange: UInt8;
        end);

      5: (Symbol:
        record
          FamilyKind: UInt8; // = 5 for symbol
          SymbolKind: UInt8;
          Weight: UInt8;
          Spacing: UInt8;
          AspectRatioAndContrast: UInt8; // hard coded to no-fit (1)
          AspectRatio94: UInt8;
          AspectRatio119: UInt8;
          AspectRatio157: UInt8;
          AspectRatio163: UInt8;
          AspectRatio211: UInt8;
        end);
      end;

  /// <summary>
  /// Range of Unicode codepoints.
  /// </summary>
  DWRITE_UNICODE_RANGE = record
    /// <summary>
    /// The first codepoint in the Unicode range.
    /// </summary>
    First: UInt32;

    /// <summary>
    /// The last codepoint in the Unicode range.
    /// </summary>
    Last: UInt32;
  end;

  PDWRITE_UNICODE_RANGE = ^DWRITE_UNICODE_RANGE;

  /// <summary>
  /// Script-specific properties for caret navigation and justification.
  /// </summary>
  DWRITE_SCRIPT_PROPERTIES = record
    private
      Data: UInt32;

      function  GetDWord(const AIndex: Integer): UInt32;
      procedure SetDWord(const AIndex: Integer; AValue: UInt32);

      procedure SetReserved(AVal: UInt32);
      function GetReserved: UInt32;
    public
      IsoScriptCode: UInt32;
      IsoScriptNumber: UInt32;
      ClusterLookahead: UInt32;
      JustificationCharacter: UInt32;

      property RestrictCaretToClusters    : UInt32 Index $00000001 read GetDWord write SetDWord;  // offset 0, mask $0001, size 1
      property UsesWordDividers           : UInt32 Index $00010001 read GetDWord write SetDWord;  // offset 1, mask $0001, size 1
      property IsDiscreteWriting          : UInt32 Index $00020001 read GetDWord write SetDWord;  // offset 2, mask $0001, size 1
      property IsBlockWriting             : UInt32 Index $00030001 read GetDWord write SetDWord;  // offset 3, mask $0001, size 1
      property IsDistributedWithinCluster : UInt32 Index $00040001 read GetDWord write SetDWord;  // offset 4, mask $0001, size 1
      property IsConnectedWriting         : UInt32 Index $00050001 read GetDWord write SetDWord;  // offset 5, mask $0001, size 1
      property IsCursiveWriting           : UInt32 Index $00060001 read GetDWord write SetDWord;  // offset 6, mask $0001, size 1
      property Reserved                   : UInt32 read GetReserved write SetReserved;
  end;

  /// <summary>
  /// Justification information per glyph.
  /// </summary>
  DWRITE_JUSTIFICATION_OPPORTUNITY = record
    private
      Data: UInt32;

      function  GetDWord(const AIndex: Integer): UInt32;
      procedure SetDWord(const AIndex: Integer; AValue: UInt32);
    public

      ExpansionMinimum: Single;
      ExpansionMaximum: Single;
      CompressionMaximum: Single;

      property ExpansionPriority        : UInt32 Index $0000000F read GetDWord write SetDWord; // offset  0, mask $0001, size 8
      property CompressionPriority      : UInt32 Index $0008000F read GetDWord write SetDWord; // offset  8, mask $0001, size 8
      property AllowResidualExpansion   : UInt32 Index $00100001 read GetDWord write SetDWord; // offset 16, mask $0001, size 1
      property AllowResidualCompression : UInt32 Index $00110001 read GetDWord write SetDWord; // offset 17, mask $0001, size 1
      property ApplyToLeadingEdge       : UInt32 Index $00120001 read GetDWord write SetDWord; // offset 18, mask $0001, size 1
      property ApplyToTrailingEdge      : UInt32 Index $00130001 read GetDWord write SetDWord; // offset 19, mask $0001, size 1
      property Reserved                 : UInt32 Index $00140FFF read GetDWord write SetDWord; // offset 20, mask $0001, size 12
  end;

  PDWRITE_JUSTIFICATION_OPPORTUNITY = ^DWRITE_JUSTIFICATION_OPPORTUNITY;


{$ENDREGION}

{$REGION 'dwrite_2.h records'}

/// <summary>
/// Overall metrics associated with text after layout.
/// All coordinates are in device independent pixels (DIPs).
/// </summary>
  DWRITE_TEXT_METRICS1 = record

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

    //
    // dwrite_2.h
    //

    /// <summary>
    /// The height of the formatted text taking into account the
    /// trailing whitespace at the end of each line, which will
    /// matter for vertical reading directions.
    /// </summary>
    HeightIncludingTrailingWhitespace: Single;
  end;

  /// <summary>
  /// Represents a color glyph run. The IDWriteFactory2::TranslateColorGlyphRun
  /// method returns an ordered collection of color glyph runs, which can be
  /// layered on top of each other to produce a color representation of the
  /// given base glyph run.
  /// </summary>
  DWRITE_COLOR_GLYPH_RUN = record

    /// <summary>
    /// Glyph run to render.
    /// </summary>
    GlyphRun: TDWriteGlyphRun;

    /// <summary>
    /// Optional glyph run description.
    /// </summary>
    GlyphRunDescription: PDWriteGlyphRunDescription;

    /// <summary>
    /// Location at which to draw this glyph run.
    /// </summary>
    BaselineOriginX: Single;
    BaselineOriginY: Single;

    /// <summary>
    /// Color to use for this layer, if any. This is the same color that
    /// IDWriteFontFace2::GetPaletteEntries would return for the current
    /// palette index if the paletteIndex member is less than 0xFFFF. If
    /// the paletteIndex member is 0xFFFF then there is no associated
    /// palette entry, this member is set to { 0, 0, 0, 0 }, and the client
    /// should use the current foreground brush.
    /// </summary>
    RunColor: TDWriteColorF;

    /// <summary>
    /// Zero-based index of this layer's color entry in the current color
    /// palette, or 0xFFFF if this layer is to be rendered using
    /// the current foreground brush.
    /// </summary>
    PaletteIndex: UInt16;
  end;

  PDWRITE_COLOR_GLYPH_RUN = ^DWRITE_COLOR_GLYPH_RUN;

{$ENDREGION}

{$REGION 'dwrite_3.h records'}

  /// <summary>
  /// Font property used for filtering font sets and
  /// building a font set with explicit properties.
  /// </summary>
  DWRITE_FONT_PROPERTY = record

    /// <summary>
    /// Specifies the requested font property, such as DWRITE_FONT_PROPERTY_ID_FAMILY_NAME.
    /// </summary>
    PropertyId: DWRITE_FONT_PROPERTY_ID ;

    /// <summary>
    /// Specifies the property value, such as "Segoe UI".
    /// </summary>
    PropertyValue: PWCHAR;

    /// <summary>
    /// Specifies the language / locale to use, such as "en-US".
    /// </summary>
    /// <remarks>
    /// When passing property information to AddFontFaceReference, localeName indicates
    /// the language of the property value. BCP 47 language tags should be used. If a
    /// property value is inherently non-linguistic, this can be left empty.
    ///
    /// When used for font set filtering, leave this empty: a match will be found
    /// regardless of language associated with property values.
    /// </remarks>
    LocaleName: PWCHAR;
  end;

  /// <summary>
  /// Information about a formatted line of text.
  /// </summary>
  DWRITE_LINE_METRICS1 = record
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

    //
    // dwrite_3.h
    //

    /// <summary>
    /// White space before the content of the line. This is included in the line height and baseline distances.
    /// If the line is formatted horizontally either with a uniform line spacing or with proportional
    /// line spacing, this value represents the extra space above the content.
    /// </summary>
    LeadingBefore: Single;

    /// <summary>
    /// White space after the content of the line. This is included in the height of the line.
    /// If the line is formatted horizontally either with a uniform line spacing or with proportional
    /// line spacing, this value represents the extra space below the content.
    /// </summary>
    LeadingAfter: Single;
  end;

  /// <summary>
  /// The DWRITE_LINE_SPACING structure specifies the parameters used to specify how to manage space between lines.
  /// </summary>
  DWRITE_LINE_SPACING = record

    /// <summary>
    /// Method used to determine line spacing.
    /// </summary>
    Method: DWRITE_LINE_SPACING_METHOD;

    /// <summary>
    /// Spacing between lines.
    /// The interpretation of this parameter depends upon the line spacing method, as follows:
    /// - default line spacing: ignored
    /// - uniform line spacing: explicit distance in DIPs between lines
    /// - proportional line spacing: a scaling factor to be applied to the computed line height;
    ///   for each line, the height of the line is computed as for default line spacing, and the scaling factor is applied to that value.
    /// </summary>
    Height: Single;

    /// <summary>
    /// Distance from top of line to baseline.
    /// The interpretation of this parameter depends upon the line spacing method, as follows:
    /// - default line spacing: ignored
    /// - uniform line spacing: explicit distance in DIPs from the top of the line to the baseline
    /// - proportional line spacing: a scaling factor applied to the computed baseline; for each line,
    ///   the baseline distance is computed as for default line spacing, and the scaling factor is applied to that value.
    /// </summary>
    Baseline: Single;

    /// <summary>
    /// Proportion of the entire leading distributed before the line. The allowed value is between 0 and 1.0. The remaining
    /// leading is distributed after the line. It is ignored for the default and uniform line spacing methods.
    /// The leading that is available to distribute before or after the line depends on the values of the height and
    /// baseline parameters.
    /// </summary>
    LeadingBefore: Single;

    /// <summary>
    /// Specify whether DWRITE_FONT_METRICS::lineGap value should be part of the line metrics.
    /// </summary>
    FontLineGapUsage: DWRITE_FONT_LINE_GAP_USAGE;
  end;

/// <summary>
/// Represents a color glyph run. The IDWriteFactory4::TranslateColorGlyphRun
/// method returns an ordered collection of color glyph runs of varying types
/// depending on what the font supports.
/// </summary>
/// <summary>
/// For runs without any specific color, such as PNG data, the runColor field will be zero.
/// </summary>
  DWRITE_COLOR_GLYPH_RUN1 = record
    /// <summary>
    /// Glyph run to render.
    /// </summary>
    GlyphRun: TDWriteGlyphRun;

    /// <summary>
    /// Optional glyph run description.
    /// </summary>
    GlyphRunDescription: PDWriteGlyphRunDescription;

    /// <summary>
    /// Location at which to draw this glyph run.
    /// </summary>
    BaselineOriginX: Single;
    BaselineOriginY: Single;

    /// <summary>
    /// Color to use for this layer, if any. This is the same color that
    /// IDWriteFontFace2::GetPaletteEntries would return for the current
    /// palette index if the paletteIndex member is less than 0xFFFF. If
    /// the paletteIndex member is 0xFFFF then there is no associated
    /// palette entry, this member is set to { 0, 0, 0, 0 }, and the client
    /// should use the current foreground brush.
    /// </summary>
    RunColor: TDWriteColorF;

    /// <summary>
    /// Zero-based index of this layer's color entry in the current color
    /// palette, or 0xFFFF if this layer is to be rendered using
    /// the current foreground brush.
    /// </summary>
    PaletteIndex: UInt16;

    //
    // dwrite_3.h
    //

    /// <summary>
    /// Type of glyph image format for this color run. Exactly one type will be set since
    /// TranslateColorGlyphRun has already broken down the run into separate parts.
    /// </summary>
    GlyphImageFormat: TDWriteGlyphImageFormats;

    /// <summary>
    /// Measuring mode to use for this glyph run.
    /// </summary>
    MeasuringMode: TDWriteMeasuringMode;

  end;

  /// <summary>
  /// Data for a single glyph from GetGlyphImageData.
  /// </summary>
  DWRITE_GLYPH_IMAGE_DATA = record

    /// <summary>
    /// Pointer to the glyph data, be it SVG, PNG, JPEG, TIFF.
    /// </summary>
    ImageData: Pointer;

    /// <summary>
    /// Size of glyph data in bytes.
    /// </summary>
    ImageDataSize: UInt32;

    /// <summary>
    /// Unique identifier for the glyph data. Clients may use this to cache a parsed/decompressed
    /// version and tell whether a repeated call to the same font returns the same data.
    /// </summary>
    UniqueDataId: UInt32;

    /// <summary>
    /// Pixels per em of the returned data. For non-scalable raster data (PNG/TIFF/JPG), this can be larger
    /// or smaller than requested from GetGlyphImageData when there isn't an exact match.
    /// For scaling intermediate sizes, use: desired pixels per em * font em size / actual pixels per em.
    /// </summary>
    PixelsPerEm: UInt32;

    /// <summary>
    /// Size of image when the format is pixel data.
    /// </summary>
    PixelSize: TD2D1SizeU;

    /// <summary>
    /// Left origin along the horizontal Roman baseline.
    /// </summary>
    HorizontalLeftOrigin: TD2D1Point2L;

    /// <summary>
    /// Right origin along the horizontal Roman baseline.
    /// </summary>
    HorizontalRightOrigin: TD2D1Point2L;

    /// <summary>
    /// Top origin along the vertical central baseline.
    /// </summary>
    VerticalTopOrigin: TD2D1Point2L;

    /// <summary>
    /// Bottom origin along vertical central baseline.
    /// </summary>
    VerticalBottomOrigin: TD2D1Point2L;
end;

/// <summary>
/// DWRITE_FILE_FRAGMENT represents a range of bytes in a font file.
/// </summary>
  DWRITE_FILE_FRAGMENT = record

    /// <summary>
    /// Starting offset of the fragment from the beginning of the file.
    /// </summary>
    FileOffset: UInt64;

    /// <summary>
    /// Size of the file fragment, in bytes.
    /// </summary>
    FragmentSize: UInt64;
  end;

  /// <summary>
  /// Value for a font axis, used when querying and creating font instances.
  /// </summary>
  DWRITE_FONT_AXIS_VALUE = record

    /// <summary>
    /// Four character identifier of the font axis (weight, width, slant, italic...).
    /// </summary>
    AxisTag: DWRITE_FONT_AXIS_TAG;

    /// <summary>
    /// Value for the given axis, with the meaning and range depending on the axis semantics.
    /// Certain well known axes have standard ranges and defaults, such as weight (1..1000, default=400),
    /// width (>0, default=100), slant (-90..90, default=-20), and italic (0 or 1).
    /// </summary>
    Value: Single;
  end;

  /// <summary>
  /// Minimum and maximum range of a font axis.
  /// </summary>
  DWRITE_FONT_AXIS_RANGE = record

    /// <summary>
    /// Four character identifier of the font axis (weight, width, slant, italic...).
    /// </summary>
    AxisTag: DWRITE_FONT_AXIS_TAG;

    /// <summary>
    /// Minimum value supported by this axis.
    /// </summary>
    MinValue: Single;

    /// <summary>
    /// Maximum value supported by this axis. The maximum can equal the minimum.
    /// </summary>
    MaxValue: Single;
  end;

{$ENDREGION}

{$REGION 'd2d1effects.h records'}

//

{$ENDREGION}

{$REGION 'd2d1effects_1.h records'}

//

{$ENDREGION}

{$REGION 'd21effectauthor.h records'}

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

	TD2D1PropertyBinding = D2D1_PROPERTY_BINDING;
	PD2D1PropertyBinding = ^TD2D1PropertyBinding;

  /// <summary>
  /// This is used to define a resource texture when that resource texture is created.
  /// </summary>
  D2D1_RESOURCE_TEXTURE_PROPERTIES = record
    Extents: PUint32;
    Dimensions: UInt32;
    BufferPrecision: TD2D1BufferPrecision;
    ChannelDepth: TD2D1ChannelDepth;
    Filter: TD2D1Filter;
    ExtendModes: PD2D1ExtendMode;
  end;

	TD2D1ResourceTextureProperties = D2D1_RESOURCE_TEXTURE_PROPERTIES;
	PD2D1ResourceTextureProperties = ^TD2D1ResourceTextureProperties;

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

	TD2D1InputElementDesc = D2D1_INPUT_ELEMENT_DESC;
	PD2D1InputElementDesc = ^TD2D1InputElementDesc;

  /// <summary>
  /// This defines the properties of a vertex buffer which uses the default vertex
  /// layout.
  /// </summary>
  D2D1_VERTEX_BUFFER_PROPERTIES = record

    InputCount: UInt32;
    Usage: TD2D1VertexUsage;
    Data: PByte;
    ByteWidth: UInt32;
  end;

	TD2D1VertexBufferProperties = D2D1_VERTEX_BUFFER_PROPERTIES;
	PD2D1VertexBufferProperties = ^TD2D1VertexBufferProperties;

  /// <summary>
  /// This defines the input layout of vertices and the vertex shader which processes
  /// them.
  /// </summary>
  D2D1_CUSTOM_VERTEX_BUFFER_PROPERTIES = record

    ShaderBufferWithInputSignature: PByte;
    ShaderBufferSize: UInt32;
    InputElements: PD2D1InputElementDesc;
    ElementCount: UInt32;
    Stride: UInt32;
  end;

	TD2D1CustomVertexBufferProperties = D2D1_CUSTOM_VERTEX_BUFFER_PROPERTIES;
	PD2D1CustomVertexBufferProperties = ^TD2D1CustomVertexBufferProperties;

  /// <summary>
  /// This defines the range of vertices from a vertex buffer to draw.
  /// </summary>
  D2D1_VERTEX_RANGE = record

    StartVertex: UInt32;
    VertexCount: UInt32;
  end;

	TD2D1VertexRange = D2D1_VERTEX_RANGE;
	PD2D1VertexRange = ^TD2D1VertexRange;

  /// <summary>
  /// Blend description which configures a blend transform object.
  /// </summary>
  D2D1_BLEND_DESCRIPTION = record

    SourceBlend: TD2D1Blend;
    DestinationBlend: TD2D1Blend;
    BlendOperation: TD2D1BlendOperation;
    SourceBlendAlpha: TD2D1Blend;
    DestinationBlendAlpha: TD2D1Blend;
    BlendOperationAlpha: TD2D1BlendOperation;
    BlendFactor: Array[0..3] of Single;
  end;

	TD2D1BlendDescription = D2D1_BLEND_DESCRIPTION;
	PD2D1BlendDescription = ^TD2D1BlendDescription;

  /// <summary>
  /// Describes options transforms may select to use on their input textures.
  /// </summary>
  D2D1_INPUT_DESCRIPTION = record

    Filter: TD2D1Filter;
    LevelOfDetailCount: UInt32;
  end;

	TD2D1InputDescription = D2D1_INPUT_DESCRIPTION;
	PD2D1InputDescription = ^TD2D1InputDescription;

  /// <summary>
  /// Indicates whether shader support for doubles is present on the underlying
  /// hardware.  This may be populated using CheckFeatureSupport.
  /// </summary>
  D2D1_FEATURE_DATA_DOUBLES = record
    DoublePrecisionFloatShaderOps: BOOL;
  end;

	TD2D1FeatureDataDoubles = D2D1_FEATURE_DATA_DOUBLES;
	PD2D1FeatureDataDoubles = ^TD2D1FeatureDataDoubles;

  /// <summary>
  /// Indicates support for features which are optional on D3D10 feature levels.  This
  /// may be populated using CheckFeatureSupport.
  /// </summary>
  D2D1_FEATURE_DATA_D3D10_X_HARDWARE_OPTIONS = record
    ComputeShaders_Plus_RawAndStructuredBuffers_Via_Shader_4_x: BOOL;
  end;

	TD2D1FeatureDataD3D10XHardwareOptions = D2D1_FEATURE_DATA_D3D10_X_HARDWARE_OPTIONS;
	PD2D1FeatureDataD3D10XHardwareOptions = ^TD2D1FeatureDataD3D10XHardwareOptions;

{$ENDREGION}

{$REGION 'd21effectauthor_1.h records'}

//

{$ENDREGION}

{$REGION 'd2d1svg.h records'}

  /// <summary>
  /// Represents an SVG length.
  /// </summary>
  D2D1_SVG_LENGTH = record

    Value: Single;
    Units: TD2D1SvgLengthUnits;
  end;

	TD2D1SvgLength = D2D1_SVG_LENGTH;
	PD2D1SvgLength = ^TD2D1SvgLength;

  /// <summary>
  /// Represents all SVG preserveAspectRatio settings.
  /// </summary>
  D2D1_SVG_PRESERVE_ASPECT_RATIO = record

    /// <summary>
    /// Sets the 'defer' portion of the preserveAspectRatio settings. This field only
    /// has an effect on an 'image' element that references another SVG document. As
    /// this is not currently supported, the field has no impact on rendering.
    /// </summary>
    Defer: BOOL;

    /// <summary>
    /// Sets the align portion of the preserveAspectRatio settings.
    /// </summary>
    Align: TD2D1SvgAspectAlign;

    /// <summary>
    /// Sets the meetOrSlice portion of the preserveAspectRatio settings.
    /// </summary>
    MeetOrSlice: TD2D1SvgAspectScaling;
  end;

	TD2D1SvgPreserveAspectRatio = D2D1_SVG_PRESERVE_ASPECT_RATIO;
	PD2D1SvgPreserveAspectRatio = ^TD2D1SvgPreserveAspectRatio;

  /// <summary>
  /// Represents an SVG viewBox.
  /// </summary>
  D2D1_SVG_VIEWBOX = record
    X: Single;
    Y: Single;
    Width: Single;
    Height: Single;
  end;

	TD2D1SvgViewbox = D2D1_SVG_VIEWBOX;
	PD2D1SvgViewbox = ^TD2D1SvgViewbox;

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
    function GetSize: TD2D1SizeF; stdcall;

    /// <summary>
    /// Returns the size of the bitmap in resolution dependent units, (pixels).
    /// </summary>
    function GetPixelSize: TD2D1SizeU; stdcall;

    /// <summary>
    /// Retrieve the format of the bitmap.
    /// </summary>
    function GetPixelFormat: TD2D1PixelFormat; stdcall;

    /// <summary>
    /// Return the DPI of the bitmap.
    /// </summary>
    procedure GetDpi(out ADpiX, ADpiY: Single); stdcall;

    function CopyFromBitmap(const ADestPoint: PD2D1Point2U; ABitmap: ID2D1Bitmap; const ASrcRect: PD2D1RectU): HRESULT; stdcall;

    function CopyFromRenderTarget(const ADestPoint: PD2D1Point2U; ARenderTarget: ID2D1RenderTarget; const ASrcRect: PD2D1RectU): HRESULT; stdcall;

    function CopyFromMemory(const ADstRect: PD2D1RectU; const ASrcData: Pointer; APitch: UInt32): HRESULT; stdcall;
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
    procedure GetGradientStops(AGradientStops: PD2D1GradientStop; AGradientStopsCount: UInt32); stdcall;

    /// <summary>
    /// Returns whether the interpolation occurs with 1.0 or 2.2 gamma.
    /// </summary>
    function GetColorInterpolationGamma: TD2D1Gamma; stdcall;

    function GetExtendMode: TD2D1ExtendMode; stdcall;
  end;

  ID2D1Brush = interface(ID2D1Resource)

    /// <summary>
    /// Sets the opacity for when the brush is drawn over the entire fill of the brush.
    /// </summary>
    procedure SetOpacity(AOpacity: Single); stdcall;

    /// <summary>
    /// Sets the transform that applies to everything drawn by the brush.
    /// </summary>
    procedure SetTransform(const ATransform: PD2D1Matrix3x2F); stdcall;

    function GetOpacity: Single; stdcall;

    procedure GetTransform(ATransform: PD2D1Matrix3x2F); stdcall;
  end;

  ID2D1BitmapBrush = interface(ID2D1Brush)

    /// <summary>
    /// Sets how the bitmap is to be treated outside of its natural extent on the X
    /// axis.
    /// </summary>
    procedure SetExtendModeX(AExtendModeX: TD2D1ExtendMode); stdcall;

    /// <summary>
    /// Sets how the bitmap is to be treated outside of its natural extent on the X
    /// axis.
    /// </summary>
    procedure SetExtendModeY(AExtendModeY: TD2D1ExtendMode); stdcall;

    /// <summary>
    /// Sets the interpolation mode used when this brush is used.
    /// </summary>
    procedure SetInterpolationMode(AInterpolationMode: TD2D1BitmapInterpolationMode); stdcall;

    /// <summary>
    /// Sets the bitmap associated as the source of this brush.
    /// </summary>
    procedure SetBitmap(ABitmap: ID2D1Bitmap); stdcall;

    function GetExtendModeX: TD2D1ExtendMode; stdcall;

    function GetExtendModeY: TD2D1ExtendMode; stdcall;

    function GetInterpolationMode: TD2D1BitmapInterpolationMode; stdcall;

    procedure GetBitmap(out ABitmap: ID2D1Bitmap); stdcall;
  end;

  ID2D1SolidColorBrush = interface(ID2D1Brush)
    procedure SetColor(const AColor: PD2D1ColorF); stdcall;

    function GetColor: TD2D1ColorF; stdcall;
  end;

  ID2D1LinearGradientBrush = interface(ID2D1Brush)

    procedure SetStartPoint(AStartPoint: TD2D1Point2F); stdcall;

    /// <summary>
    /// Sets the end point of the gradient in local coordinate space. This is not
    /// influenced by the geometry being filled.
    /// </summary>
    procedure SetEndPoint(AStartPoint: TD2D1Point2F); stdcall;

    function GetStartPoint: TD2D1Point2F; stdcall;

    function GetEndPoint: TD2D1Point2F; stdcall;

    procedure GetGradientStopCollection(out AGradientStopCollection: ID2D1GradientStopCollection); stdcall;
  end;

  ID2D1RadialGradientBrush = interface(ID2D1Brush)

    /// <summary>
    /// Sets the center of the radial gradient. This will be in local coordinates and
    /// will not depend on the geometry being filled.
    /// </summary>
    procedure SetCenter(ACenter: TD2D1Point2F); stdcall;

    /// <summary>
    /// Sets offset of the origin relative to the radial gradient center.
    /// </summary>
    procedure SetGradientOriginOffset(AGradientOriginOffset: TD2D1Point2F); stdcall;

    procedure SetRadiusX(ARadiusX: Single); stdcall;

    procedure SetRadiusY(ARadiusY: Single); stdcall;

    function GetCenter: TD2D1Point2F; stdcall;

    function GetGradientOriginOffset: TD2D1Point2F; stdcall;

    function GetRadiusX: Single;

    function GetRadiusY: Single;

    procedure GetGradientStopCollection(out AGradientStopCollection: ID2D1GradientStopCollection); stdcall;
  end;

  ID2D1StrokeStyle = interface(ID2D1Resource)

    function GetStartCap: TD2D1CapStyle; stdcall;

    function GetEndCap: TD2D1CapStyle; stdcall;

    function GetDashCap: TD2D1CapStyle; stdcall;

    function GetMiterLimit: Single; stdcall;

    function GetLineJoin: TD2D1LineJoin; stdcall;

    function GetDashOffset: Single; stdcall;

    function GetDashStyle: TD2D1DashStyle; stdcall;

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
      const AWorldTransform: PD2D1Matrix3x2F;
      out ABounds: TD2D1RectF): HRESULT; stdcall;

    /// <summary>
    /// Get the bounds of the corresponding geometry after it has been widened or have
    /// an optional pen style applied.
    /// </summary>
    function GetWidenedBounds(
      AStrokeWidth: Single;
      AStrokeStyle: ID2D1StrokeStyle;
      const AWorldTransform: PD2D1Matrix3x2F;
      AFlatteningTolerance: Single;
      out ABounds: TD2D1RectF): HRESULT; stdcall;

    /// <summary>
    /// Checks to see whether the corresponding penned and widened geometry contains the
    /// given point.
    /// </summary>
    function StrokeContainsPoint(
      APoint: TD2D1Point2F;
      AStrokeWidth: Single;
      AStrokeStyle: ID2D1StrokeStyle;
      const AWorldTransform: PD2D1Matrix3x2F;
      AFlatteningTolerance: Single;
      out AContains: BOOL): HRESULT; stdcall;

    /// <summary>
    /// Test whether the given fill of this geometry would contain this point.
    /// </summary>
    function FillContainsPoint(
      APoint: TD2D1Point2F;
      const AWorldTransform: PD2D1Matrix3x2F;
      AFlatteningTolerance: Single;
      out AContains: BOOL): HRESULT; stdcall;

    /// <summary>
    /// Compare how one geometry intersects or contains another geometry.
    /// </summary>
    function CompareWithGeometry(
      AInputGeometry: ID2D1Geometry;
      AInputGeometryTransform: PD2D1Matrix3x2F;
      AFlatteningTolerance: Single;
      out ARelation: TD2D1GeometryRelation): HRESULT; stdcall;

    /// <summary>
    /// Converts a geometry to a simplified geometry that has arcs and quadratic beziers
    /// removed.
    /// </summary>
    function Simplify(
      ASimplificationOption: TD2D1GeometrySimplificationOption;
      const AWorldTransform: PD2D1Matrix3x2F;
      AFlatteningTolerance: Single;
      AGeometrySink: ID2D1SimplifiedGeometrySink): HRESULT; stdcall;

    /// <summary>
    /// Tessellates a geometry into triangles.
    /// </summary>
    function Tessellate(
      const AWorldTransform: PD2D1Matrix3x2F;
      AFlatteningTolerance: Single;
      ATessellationSink: ID2D1TessellationSink): HRESULT; stdcall;

    /// <summary>
    /// Performs a combine operation between the two geometries to produce a resulting
    /// geometry.
    /// </summary>
    function CombineWithGeometry(
      AInputGeometry: ID2D1Geometry;
      ACombineMode: TD2D1CombineMode;
      const AInputGeometryTransform: PD2D1Matrix3x2F;
      AFlatteningTolerance: Single;
      AGeometrySink: ID2D1SimplifiedGeometrySink): HRESULT; stdcall;

    /// <summary>
    /// Computes the outline of the geometry. The result is written back into a
    /// simplified geometry sink.
    /// </summary>
    function Outline(
      const AWorldTransform: PD2D1Matrix3x2F;
      AFlatteningTolerance: Single;
      AGeometrySink: ID2D1SimplifiedGeometrySink): HRESULT; stdcall;

    /// <summary>
    /// Computes the area of the geometry.
    /// </summary>
    function ComputeArea(
      const AWorldTransform: PD2D1Matrix3x2F;
      AFlatteningTolerance: Single;
      out AArea: Single): HRESULT; stdcall;

    /// <summary>
    /// Computes the length of the geometry.
    /// </summary>
    function ComputeLength(
      const AWorldTransform: PD2D1Matrix3x2F;
      AFlatteningTolerance: Single;
      out ALength: Single): HRESULT; stdcall;

    /// <summary>
    /// Computes the point and tangent a given distance along the path.
    /// </summary>
    function ComputePointAtLength(
      const AWorldTransform: PD2D1Matrix3x2F;
      AFlatteningTolerance: Single;
      out APoint: TD2D1Point2F;
      out AUnitTangentVector: TD2D1Point2F): HRESULT; stdcall;

    /// <summary>
    /// Get the geometry and widen it as well as apply an optional pen style.
    /// </summary>
    function Widen(
      AStrokeWidth: Single;
      AStrokeStyle: ID2D1StrokeStyle;
      const AWorldTransform: PD2D1Matrix3x2F;
      AFlatteningTolerance: Single;
      AGeometrySink: ID2D1SimplifiedGeometrySink): HRESULT; stdcall;
  end;

  ID2D1RectangleGeometry = interface(ID2D1Geometry)

    procedure GetRect(out ARect: TD2D1RectF); stdcall;
  end;

  ID2D1RoundedRectangleGeometry = interface(ID2D1Geometry)

    procedure GetRoundedRect(out ARoundedRect: TD2D1RoundedRect); stdcall;
  end;

  ID2D1EllipseGeometry = interface(ID2D1Geometry)

    procedure GetEllipse(out AEllipse: TD2D1Ellipse); stdcall;
  end;

  ID2D1GeometryGroup = interface(ID2D1Geometry)

    function GetFillMode: TD2D1FillMode; stdcall;

    function GetSourceGeometryCount: UInt32; stdcall;

    procedure GetSourceGeometries(
      AGeometries: PID2D1Geometry;
      AGeometriesCount: UInt32); stdcall;
  end;

  ID2D1TransformedGeometry = interface(ID2D1Geometry)

    procedure GetSourceGeometry(out ASourceGeometry: ID2D1Geometry); stdcall;

    procedure GetTransform(ATransform: PD2D1Matrix3x2F); stdcall;
  end;

  ID2D1SimplifiedGeometrySink = interface(IUnknown)

    procedure SetFillMode(AFillMode: TD2D1FillMode); stdcall;

    procedure SetSegmentFlags(AVertexFlags: TD2D1PathSegment); stdcall;

    procedure BeginFigure(
      AStartPoint: TD2D1Point2F;
      AFigureBegin: TD2D1FigureBegin); stdcall;

    procedure AddLines(
      const APoints: PD2D1Point2F;
      APointsCount: UInt32); stdcall;

    procedure AddBeziers(
      const ABeziers: PD2D1BezierSegment;
      ABeziersCount: UInt32); stdcall;

    procedure EndFigure(AFigureEnd: TD2D1FigureEnd); stdcall;

    function Close: HRESULT; stdcall;
  end;

  ID2D1GeometrySink = interface(ID2D1SimplifiedGeometrySink)

    procedure AddLine(APoint: TD2D1Point2F); stdcall;

    procedure AddBezier(const ABezier: PD2D1BezierSegment); stdcall;

    procedure AddQuadraticBezier(const ABezier: PD2D1QuadraticBezierSegment); stdcall;

    procedure AddQuadraticBeziers(
      const ABeziers: PD2D1QuadraticBezierSegment;
      ABeziersCount: UInt32); stdcall;

    procedure AddArc(const AArc: PD2D1ArcSegment); stdcall;
  end;

  ID2D1TessellationSink = interface(IUnknown)

    procedure AddTriangles(
      const ATriangles: PD2D1Triangle;
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

    function GetSize: TD2D1SizeF; stdcall;
  end;

  ID2D1DrawingStateBlock = interface(ID2D1Resource)

    /// <summary>
    /// Retrieves the state currently contained within this state block resource.
    /// </summary>
    procedure GetDescription(out AStateDescription: TD2D1DrawingStateDescription); stdcall;

    /// <summary>
    /// Sets the state description of this state block resource.
    /// </summary>
    procedure SetDescription(AStateDescription: TD2D1DrawingStateDescription); stdcall;

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
      ASize: TD2D1SizeU;
      const ASrcData: Pointer;
      APitch: UInt32;
      const ABitmapProperties: PD2D1BitmapProperties;
      out ABitmap: ID2D1Bitmap): HRESULT; stdcall;

    /// <summary>
    /// Create a D2D bitmap by copying a WIC bitmap.
    /// </summary>
    function CreateBitmapFromWicBitmap(
      AWicBitmapSource: IWICBitmapSource;
      const ABitmapProperties: PD2D1BitmapProperties;
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
      const ABitmapProperties: PD2D1BitmapProperties;
      out ABitmap: ID2D1Bitmap): HRESULT; stdcall;

    /// <summary>
    /// Creates a bitmap brush. The bitmap is scaled, rotated, skewed or tiled to fill
    /// or pen a geometry.
    /// </summary>
    function CreateBitmapBrush(
      ABitmap: ID2D1Bitmap;
      const ABitmapBrushProperties: PD2D1BitmapBrushProperties;
      const ABrushProperties: PD2D1BrushProperties;
      out ABitmapBrush: ID2D1BitmapBrush): HRESULT; stdcall;

    function CreateSolidColorBrush(
      const AColor: PD2D1ColorF;
      const ABrushProperties: PD2D1BrushProperties;
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
      const AGradientStops: PD2D1GradientStop;
      AGradientStopsCount: UInt32;
      AColorInterpolationGamma: TD2D1Gamma;
      AExtendMode: TD2D1ExtendMode;
      out AGradientStopCollection: ID2D1GradientStopCollection): HRESULT; stdcall;

    function CreateLinearGradientBrush(
      const ALinearGradientBrushProperties: PD2D1LinearGradientBrushProperties;
      const ABrushProperties: PD2D1BrushProperties;
      AGradientStopCollection: ID2D1GradientStopCollection;
      out ALinearGradientBrush: ID2D1LinearGradientBrush): HRESULT; stdcall;

    function CreateRadialGradientBrush(
      const ARadialGradientBrushProperties: PD2D1RadialGradientBrushProperties;
      const ABrushProperties: PD2D1BrushProperties;
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
      const ADesiredSize: PD2D1SizeF;
      const ADesiredPixelSize: PD2D1SizeU;
      const ADesiredFormat: PD2D1PixelFormat;
      AOptions: TD2D1CompatibleRenderTargetOptions;
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
      const ASize: PD2D1SizeF;
      out ALayer: ID2D1Layer): HRESULT; stdcall;

    /// <summary>
    /// Create a D2D mesh.
    /// </summary>
    function CreateMesh(out AMesh: ID2D1Mesh): HRESULT; stdcall;

    procedure DrawLine(
      APoint0: TD2D1Point2F;
      APoint1: TD2D1Point2F;
      ABrush: ID2D1Brush;
      AStrokeWidth: Single = 1.0;
      AStrokeStyle: ID2D1StrokeStyle = nil); stdcall;

    procedure DrawRectangle(
      const ARect: PD2D1RectF;
      ABrush: ID2D1Brush;
      AStrokeWidth: Single = 1.0;
      AStrokeStyle: ID2D1StrokeStyle = nil); stdcall;

    procedure FillRectangle(
      const ARect: PD2D1RectF;
      ABrush: ID2D1Brush); stdcall;

    procedure DrawRoundedRectangle(
      const ARoundedRect: PD2D1RoundedRect;
      ABrush: ID2D1Brush;
      AStrokeWidth: Single = 1.0;
      AStrokeStyle: ID2D1StrokeStyle = nil); stdcall;

    procedure FillRoundedRectangle(
      const ARoundedRect: PD2D1RoundedRect;
      ABrush: ID2D1Brush); stdcall;

    procedure DrawEllipse(
      const AEllipse: PD2D1Ellipse;
      ABrush: ID2D1Brush;
      AStrokeWidth: Single = 1.0;
      AStrokeStyle: ID2D1StrokeStyle = nil); stdcall;

    procedure FillEllipse(
      const AEllipse: PD2D1Ellipse;
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
      AContent: TD2D1OpacityMaskContent;
      const ADestinationRectangle: PD2D1RectF = nil;
      const ASourceRectangle: PD2D1RectF = nil); stdcall;

    procedure DrawBitmap(
      ABitmap: ID2D1Bitmap;
      const ADestinationRectangle: PD2D1RectF;
      AOpacity: Single = 1.0;
      AInterpolationMode: TD2D1BitmapInterpolationMode = D2D1_BITMAP_INTERPOLATION_MODE_LINEAR;
      const ASourceRectangle: PD2D1RectF = nil); stdcall;

    /// <summary>
    /// Draws the text within the given layout rectangle and by default also performs
    /// baseline snapping.
    /// </summary>
    procedure DrawText(
      const AString: PWChar;
      AStringLength: UInt32;
      ATextFormat: IDWriteTextFormat;
      const ALayoutRect: PD2D1RectF;
      ADefaultFillBrush: ID2D1Brush;
      AOptions: TD2D1DrawTextOptions = D2D1_DRAW_TEXT_OPTIONS_NONE;
      AMeasuringMode: TDWriteMeasuringMode = DWRITE_MEASURING_MODE_NATURAL); stdcall;

    /// <summary>
    /// Draw a text layout object. If the layout is not subsequently changed, this can
    /// be more efficient than DrawText when drawing the same layout repeatedly.
    /// </summary>
    /// <param name="options">The specified text options. If D2D1_DRAW_TEXT_OPTIONS_CLIP
    /// is used, the text is clipped to the layout bounds. These bounds are derived from
    /// the origin and the layout bounds of the corresponding IDWriteTextLayout object.
    /// </param>
    procedure DrawTextLayout(
      AOrigin: TD2D1Point2F;
      ATextLayout: IDWriteTextLayout;
      ADefaultFillBrush: ID2D1Brush;
      AOptions: TD2D1DrawTextOptions = D2D1_DRAW_TEXT_OPTIONS_NONE); stdcall;

    procedure DrawGlyphRun(
      ABaselineOrigin: TD2D1Point2F;
      const AGlyphRun: PDWriteGlyphRun;
      AForegroundBrush: ID2D1Brush;
      AMeasuringMode: TDWriteMeasuringMode = DWRITE_MEASURING_MODE_NATURAL); stdcall;

    procedure SetTransform(const ATransform: PD2D1Matrix3x2F); stdcall;

    procedure GetTransform(out ATransform: TD2D1Matrix3x2F); stdcall;

    procedure SetAntialiasMode(AAntialiasMode: TD2D1AntialiasMode); stdcall;

    function GetAntialiasMode: TD2D1AntialiasMode; stdcall;

    procedure SetTextAntialiasMode(ATextAntialiasMode: TD2D1TextAntialiasMode); stdcall;

    function GetTextAntialiasMode: TD2D1TextAntialiasMode; stdcall;

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
    procedure SetTags(ATag1, ATag2: TD2D1Tag); stdcall;

    /// <summary>
    /// Retrieves the currently set tags. This does not retrieve the tags corresponding
    /// to any primitive that is in error.
    /// </summary>
    procedure GetTags(
      ATag1: PD2D1Tag = nil;
      ATag2: PD2D1Tag = nil); stdcall;

    /// <summary>
    /// Start a layer of drawing calls. The way in which the layer must be resolved is
    /// specified first as well as the logical resource that stores the layer
    /// parameters. The supplied layer resource might grow if the specified content
    /// cannot fit inside it. The layer will grow monotonically on each axis.  If a NULL
    /// ID2D1Layer is provided, then a layer resource will be allocated automatically.
    /// </summary>
    procedure PushLayer(
      const ALayerParameters: PD2D1LayerParameters;
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
      const AClipRect: PD2D1RectF;
      AAntialiasMode: TD2D1AntialiasMode); stdcall;

    procedure PopAxisAlignedClip; stdcall;

    procedure Clear(const AClearColor: PD2D1ColorF = nil); stdcall;

    /// <summary>
    /// Start drawing on this render target. Draw calls can only be issued between a
    /// BeginDraw and EndDraw call.
    /// </summary>
    procedure BeginDraw; stdcall;

    /// <summary>
    /// Ends drawing on the render target, error results can be retrieved at this time,
    /// or when calling flush.
    /// </summary>
    function EndDraw(
      ATag1: PD2D1Tag = nil;
      ATag2: PD2D1Tag = nil): HRESULT; stdcall;

    function GetPixelFormat: TD2D1PixelFormat; stdcall;
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
    function GetSize: TD2D1SizeF; stdcall;

    /// <summary>
    /// Returns the size of the render target in pixels.
    /// </summary>
    function GetPixelSize: TD2D1SizeU; stdcall;

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
    function IsSupported(const ARenderTargetProperties: PD2D1RenderTargetProperties): BOOL; stdcall;
  end;

  ID2D1BitmapRenderTarget = interface(ID2D1RenderTarget)
    function GetBitmap(out ABitmap: ID2D1Bitmap): HRESULT; stdcall;
  end;

  ID2D1HwndRenderTarget = interface(ID2D1RenderTarget)

    function CheckWindowState: TD2D1WindowState; stdcall;

    /// <summary>
    /// Resize the buffer underlying the render target. This operation might fail if
    /// there is insufficient video memory or system memory, or if the render target is
    /// resized beyond the maximum bitmap size. If the method fails, the render target
    /// will be placed in a zombie state and D2DERR_RECREATE_TARGET will be returned
    /// from it when EndDraw is called. In addition an appropriate failure result will
    /// be returned from Resize.
    /// </summary>
    function Resize(const APixelSize: PD2D1SizeU): HRESULT; stdcall;

    function GetHwnd: HWND; stdcall;
  end;

  ID2D1GdiInteropRenderTarget = interface(IUnknown)
    function GetDC(
      AMode: TD2D1DCInitializeMode;
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
      const ARectangle: PD2D1RectF;
      out ARectangleGeometry: ID2D1RectangleGeometry): HRESULT; stdcall;

    function CreateRoundedRectangleGeometry(
      const ARoundedRectangle: PD2D1RoundedRect;
      out ARoundedRectangleGeometry: ID2D1RoundedRectangleGeometry): HRESULT; stdcall;

    function CreateEllipseGeometry(
      const AEllipse: PD2D1Ellipse;
      out AEllipseGeometry: ID2D1EllipseGeometry): HRESULT; stdcall;

    /// <summary>
    /// Create a geometry which holds other geometries.
    /// </summary>
    function CreateGeometryGroup(
      AFillMode: TD2D1FillMode;
      AGeometries: PID2D1Geometry;
      AGeometriesCount: UInt32;
      out AGeometryGroup: ID2D1GeometryGroup): HRESULT; stdcall;

    function CreateTransformedGeometry(
      ASourceGeometry: ID2D1Geometry;
      const ATransform: PD2D1Matrix3x2F;
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
      const AStrokeStyleProperties: TD2D1StrokeStyleProperties;
      const ADashes: PSingle;
      ADashesCount: UInt32;
      out AStrokeStyle: ID2D1StrokeStyle): HRESULT; stdcall;

    /// <summary>
    /// Creates a new drawing state block, this can be used in subsequent
    /// SaveDrawingState and RestoreDrawingState operations on the render target.
    /// </summary>
    function CreateDrawingStateBlock(
      const ADrawingStateDescription: PD2D1DrawingStateDescription;
      ATextRenderingParams: IDWriteRenderingParams;
      out ADrawingStateBlock: ID2D1DrawingStateBlock): HRESULT; stdcall;

    /// <summary>
    /// Creates a render target which is a source of bitmaps.
    /// </summary>
    function CreateWicBitmapRenderTarget(
      ATarget: IWICBitmap;
      const ARenderTargetProperties: PD2D1RenderTargetProperties;
      out ARenderTarget: ID2D1RenderTarget): HRESULT; stdcall;

    /// <summary>
    /// Creates a render target that appears on the display.
    /// </summary>
    function CreateHwndRenderTarget(
      const ARenderTargetProperties: PD2D1RenderTargetProperties;
      const AHwndRenderTargetProperties: PD2D1HwndRenderTargetProperties;
      out AHwndRenderTarget: ID2D1HwndRenderTarget): HRESULT; stdcall;

    /// <summary>
    /// Creates a render target that draws to a DXGI Surface. The device that owns the
    /// surface is used for rendering.
    /// </summary>
    function CreateDxgiSurfaceRenderTarget(
      ADXGISurface: IDXGISurface;
      const ARenderTargetProperties: PD2D1RenderTargetProperties;
      ARenderTarget: ID2D1RenderTarget): HRESULT; stdcall;

    /// <summary>
    /// Creates a render target that draws to a GDI device context.
    /// </summary>
    function CreateDCRenderTarget(
    const ARenderTargetProperties: PD2D1RenderTargetProperties;
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
    function GetBounds(out ABounds: TD2D1RectF): HRESULT; stdcall;
  end;

  ID2D1CommandSink = interface(IUnknown)
    ['{54d7898a-a061-40a7-bec7-e465bcba2c4f}']

    function BeginDraw: HRESULT; stdcall;

    function EndDraw: HRESULT; stdcall;

    function SetAntialiasMode(AAntialiasMode: TD2D1AntialiasMode): HRESULT; stdcall;

    function SetTags(ATag1, ATag2: TD2D1Tag): HRESULT; stdcall;

    function SetTextAntialiasMode(ATextAntialiasMode: TD2D1TextAntialiasMode): HRESULT; stdcall;

    function SetTextRenderingParams(ATextRenderingParams: IDWriteRenderingParams): HRESULT; stdcall;

    function SetTransform(const ATtransform: PD2D1Matrix3x2F): HRESULT; stdcall;

    function SetPrimitiveBlend(APrimitiveBlend: TD2D1PrimitiveBlend): HRESULT; stdcall;

    function SetUnitMode(AUnitMode: TD2D1UnitMode): HRESULT; stdcall;

    function Clear(const AColor: PD2D1ColorF): HRESULT; stdcall;

    function DrawGlyphRun(
      ABaselineOrigin: TD2D1Point2F;
      const AGlyphRun: PDWriteGlyphRun;
      const AGlyphRunDescription: PDWriteGlyphRunDescription;
      AForegroundBrush: ID2D1Brush;
      AMeasuringMode: TDWriteMeasuringMode): HRESULT; stdcall;

    function DrawLine(
      APoint0: TD2D1Point2F;
      APoint1: TD2D1Point2F;
      ABrush: ID2D1Brush;
      AStrokeWidth: Single;
      AStrokeStyle: ID2D1StrokeStyle): HRESULT; stdcall;

    function DrawGeometry(
      AGeometry: ID2D1Geometry;
      ABrush: ID2D1Brush;
      AStrokeWidth: Single;
      AStrokeStyle: ID2D1StrokeStyle): HRESULT; stdcall;

    function DrawRectangle(
      const ARect:PD2D1RectF;
      ABrush: ID2D1Brush;
      AStrokeWidth: Single;
      AStrokeStyle: ID2D1StrokeStyle): HRESULT; stdcall;

    function DrawBitmap(
      ABitmap: ID2D1Bitmap;
      const ADestinationRectangle: PD2D1RectF;
      AOpacity: Single;
      AInterpolationMode: TD2D1InterpolationMode;
      const ASourceRectangle: PD2D1RectF;
      const APerspectiveTransform: PD2D1Matrix4x4F): HRESULT; stdcall;

    function DrawImage(
      AImage: ID2D1Image;
      const ATargetOffset: PD2D1Point2F;
      const AImageRectangle: PD2D1RectF;
      AIinterpolationMode: TD2D1InterpolationMode;
      ACompositeMode: TD2D1CompositeMode): HRESULT; stdcall;

    function DrawGdiMetafile(
      AGdiMetafile: ID2D1GdiMetafile;
      const ATargetOffset: PD2D1Point2F): HRESULT; stdcall;

    function FillMesh(
      AMmesh: ID2D1Mesh;
      ABrush: ID2D1Brush): HRESULT; stdcall;

    function FillOpacityMask(
      AOopacityMask: ID2D1Bitmap;
      ABbrush: ID2D1Brush;
      const ADestinationRectangle: PD2D1RectF;
      const ASourceRectangle: PD2D1RectF): HRESULT; stdcall;

    function FillGeometry(
      AGeometry: ID2D1Geometry;
      ABrush: ID2D1Brush;
      AOpacityBrush: ID2D1Brush): HRESULT; stdcall;

    function FillRectangle(
      const ARrect: PD2D1RectF;
      ABrush: ID2D1Brush): HRESULT; stdcall;

    function PushAxisAlignedClip(
      const AClipRect: PD2D1RectF;
      AAntialiasMode: TD2D1AntialiasMode): HRESULT; stdcall;

    function PushLayer(
      const ALayerParameters1: PD2D1LayerParameters1;
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
      APageSize: TD2D1SizeF;
      APagePrintTicketStream: IStream;
      ATag1: PD2D1Tag = nil;
      ATag2: PD2D1Tag = nil): HRESULT; stdcall;

    function Close: HRESULT; stdcall;
  end;

  ID2D1ImageBrush = interface(ID2D1Brush)
    ['{fe9e984d-3f95-407c-b5db-cb94d4e8f87c}']

    procedure SetImage(AImage: ID2D1Image); stdcall;

    procedure SetExtendModeX(AExtendModeX: TD2D1ExtendMode); stdcall;

    procedure SetExtendModeY(AExtendModeY: TD2D1ExtendMode); stdcall;

    procedure SetInterpolationMode(AInterpolationMode: TD2D1InterpolationMode); stdcall;

    procedure SetSourceRectangle(const ASourceRectangle: PD2D1RectF); stdcall;

    procedure GetImage(out AImage: ID2D1Image); stdcall;

    function GetExtendModeX: TD2D1ExtendMode; stdcall;

    function GetExtendModeY: TD2D1ExtendMode; stdcall;

    function GetInterpolationMode: TD2D1InterpolationMode; stdcall;

    procedure GetSourceRectangle(out ASourceRectangle: TD2D1RectF); stdcall;

  end;

  ID2D1BitmapBrush1 = interface(ID2D1BitmapBrush)
    ['{41343a53-e41a-49a2-91cd-21793bbb62e5}']

    procedure SetInterpolationMode1(AInterpolationMode: TD2D1InterpolationMode); stdcall;

    function GetInterpolationMode1: TD2D1InterpolationMode; stdcall;
  end;

  ID2D1StrokeStyle1 = interface(ID2D1StrokeStyle)
    ['{10a72a66-e91c-43f4-993f-ddf4b82b0b4a}']

      function GetStrokeTransformType: TD2D1StrokeTransformType; stdcall;
  end;

  ID2D1PathGeometry1 = interface(ID2D1PathGeometry)
    ['{62baa2d2-ab54-41b7-b872-787e0106a421}']

    function ComputePointAndSegmentAtLength(
      ALength: Single;
      AStartSegment: UInt32;
      const AWorldTransform: PD2D1Matrix3x2F;
      AFlatteningTolerance: Single;
      out APointDescription: TD2D1PointDescription): HRESULT; stdcall;

  end;

  ID2D1Properties = interface(IUnknown)
    ['{483473d7-cd46-4f9d-9d3a-3112aa80159d}']

   function GetPropertyCount: UInt32; stdcall;

    function GetPropertyName(
      AIndex: UInt32;
      AName: LPWSTR;
      NameCount: UInt32): HRESULT; stdcall;

    function GetPropertyNameLength(AIndex: UInt32): UInt32; stdcall;

    function GetType(AIndex: UInt32): TD2D1PropertyType; stdcall;

    /// <summary>
    /// I'm not sure if this one is correct, the original one is like this: PCWSTR name
    /// </summary>
    function GetPropertyIndex(AName: LPCWSTR): UInt32; stdcall;

    /// <summary>
    /// I'm not sure if this one is correct, the original one is like this: PCWSTR name
    /// </summary>
    function SetValueByName(
      AName: LPCWSTR;
      AType: TD2D1PropertyType;
      ADataSize: UInt32): HRESULT; stdcall;

    function SetValue(
      AIndex: UInt32;
      AType: TD2D1PropertyType;
      AData: PByte;
      ADataSize: UInt32): HRESULT; stdcall;

    /// <summary>
    /// I'm not sure if this one is correct, the original one is like this: PCWSTR name
    /// </summary>
    function GetValueByName(
      AName: LPCWSTR;
      AType: TD2D1PropertyType;
      AData: PByte;
      ADataSize: UInt32): HRESULT; stdcall;

    function GetValue(
      AIndex: UINT32;
      AType: TD2D1PropertyType;
      AData: PByte;
      ADataSize: UInt32): HRESULT; stdcall;

    function GetValueSize(AIndex: UINT32): UInt32; stdcall;

    function GetSubProperties(
      AIndex: UInt32;
      out ASubProperties: ID2D1Properties): HRESULT; stdcall;
  end;

  ID2D1Effect = interface(ID2D1Properties)
    ['{28211a43-7d89-476f-8181-2d6159b220ad}']

    procedure SetInput(
      AIndex: UInt32;
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

    function GetOptions: TD2D1BitmapOptions; stdcall;

    function GetSurface(out ADXGISurface: IDXGISurface): HRESULT; stdcall;

    function Map(
      AOptions: TD2D1MapOptions;
      AMappedRect: PD2D1MappedRect): HRESULT; stdcall;

    function Unmap: HRESULT; stdcall;
  end;

  ID2D1ColorContext = interface(ID2D1Resource)
    ['{1c4820bb-5771-4518-a581-2fe4dd0ec657}']

    function GetColorSpace: TD2D1ColorSpace; stdcall;

    function GetProfileSize: UInt32; stdcall;

    function GetProfile(
      AProfile: PByte;
      AProfileSize: UInt32): HRESULT; stdcall;
  end;

  ID2D1GradientStopCollection1 = interface(ID2D1GradientStopCollection)
    ['{ae1572f4-5dd0-4777-998b-9279472ae63b}']

    procedure GetGradientStops1(
      out AGradientStops: TD2D1GradientStop;
      AGradientStopsCount: UInt32); stdcall;

    function GetPreInterpolationSpace: TD2D1ColorSpace; stdcall;

    function GetPostInterpolationSpace: TD2D1ColorSpace; stdcall;

    function GetBufferPrecision: TD2D1BufferPrecision; stdcall;

    function GetColorInterpolationMode: TD2D1ColorInterpolationMode; stdcall;
  end;

  ID2D1DrawingStateBlock1 = interface(ID2D1DrawingStateBlock)
    ['{689f1f85-c72e-4e33-8f19-85754efd5ace}']

    procedure GetDescription(out AStateDescription: TD2D1DrawingStateDescription1); stdcall;

    procedure SetDescription(AStateDescription: PD2D1DrawingStateDescription1); stdcall;
  end;

  ID2D1DeviceContext = interface(ID2D1RenderTarget)
    ['{e8f7fe7a-191c-466d-ad95-975678bda998}']

    function CreateBitmap(
      ASize: TD2D1SizeU;
      ASourceData: PByte;
      APitch: UInt32;
      const ABitmapProperties: PD2D1BitmapProperties1;
      out ABitmap: ID2D1Bitmap1): HRESULT; stdcall;

    function CreateBitmapFromWicBitmap(
      AWicBitmapSource: IWICBitmapSource;
      const ABitmapProperties: PD2D1BitmapProperties1;
      out ABitmap: ID2D1Bitmap1): HRESULT; stdcall;

    function CreateColorContext(
      ASpace: TD2D1ColorSpace;
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
      const ABitmapProperties: PD2D1BitmapProperties1;
      out ABitmap: ID2D1Bitmap1): HRESULT; stdcall;

    function CreateEffect(
      AEffectId: TGUID;
      out AEffect: ID2D1Effect): HRESULT; stdcall;

    function CreateGradientStopCollection(
      const AStraightAlphaGradientStops: PD2D1GradientStop;
      AStraightAlphaGradientStopsCount: UInt32;
      APreInterpolationSpace: TD2D1ColorSpace;
      APostInterpolationSpace: TD2D1ColorSpace;
      ABufferPrecision: TD2D1BufferPrecision;
      AExtendMode: TD2D1ExtendMode;
      AColorInterpolationMode: TD2D1ColorInterpolationMode;
      out AGradientStopCollection1: ID2D1GradientStopCollection1): HRESULT; stdcall;

    function CreateImageBrush(
      AIimage: ID2D1Image;
      const AImageBrushProperties: PD2D1ImageBrushProperties;
      const ABrushProperties: PD2D1BrushProperties;
      out AImageBrush: ID2D1ImageBrush): HRESULT; stdcall;

    function CreateBitmapBrush(
      ABbitmap: ID2D1Bitmap;
      const ABitmapBrushProperties: PD2D1BitmapBrushProperties1;
      const ABrushProperties: PD2D1BrushProperties;
      out ABitmapBrush: ID2D1BitmapBrush1): HRESULT; stdcall;

    function CreateCommandList(out ACommandList: ID2D1CommandList): HRESULT; stdcall;

    function IsDxgiFormatSupported(AFormat: DXGI_FORMAT): BOOL; stdcall;

    function IsBufferPrecisionSupported(ABufferPrecision: TD2D1BufferPrecision): BOOL; stdcall;

    function GetImageLocalBounds(
      AImage: ID2D1Image;
      out ALocalBounds: TD2D1RectF): HRESULT; stdcall;

    function GetImageWorldBounds(
      AIimage: ID2D1Image;
      out AWorldBounds: TD2D1RectF): HRESULT; stdcall;

    function GetGlyphRunWorldBounds(
      ABaselineOrigin: TD2D1Point2F;
      const AGlyphRun: PDWriteGlyphRun;
      AMeasuringMode: TDWriteMeasuringMode;
      out ABounds: TD2D1RectF): HRESULT; stdcall;

    procedure GetDevice(out ADevice: ID2D1Device); stdcall;

    procedure SetTarget(AImage: ID2D1Image); stdcall;

    procedure GetTarget(out AImage: ID2D1Image); stdcall;

    procedure SetRenderingControls(const ARenderingControls: PD2D1RenderingControls); stdcall;

    procedure GetRenderingControls(out ARenderingControls: TD2D1RenderingControls); stdcall;

    procedure SetPrimitiveBlend(APrimitiveBlend: TD2D1PrimitiveBlend); stdcall;

    function GetPrimitiveBlend: TD2D1PrimitiveBlend; stdcall;

    procedure SetUnitMode(AUnitMode: TD2D1UnitMode); stdcall;

    function GetUnitMode: TD2D1UnitMode; stdcall;

    procedure DrawGlyphRun(
      ABaselineOrigin: TD2D1Point2F;
      const AGlyphRun: PDWriteGlyphRun;
      const AGlyphRunDescription: PDWriteGlyphRunDescription;
      AForegroundBrush: ID2D1Brush;
      AMeasuringMode: TDWriteMeasuringMode = DWRITE_MEASURING_MODE_NATURAL); stdcall;

    procedure DrawImage(
      AImage: ID2D1Image;
      const ATargetOffset: PD2D1Point2F = nil;
      const AImageRectangle: PD2D1RectF = nil;
      AInterpolationMode: TD2D1InterpolationMode = D2D1_INTERPOLATION_MODE_LINEAR;
      ACompositeMode: TD2D1CompositeMode = D2D1_COMPOSITE_MODE_SOURCE_OVER); stdcall;

    procedure DrawGdiMetafile(
      AGdiMetafile: ID2D1GdiMetafile;
      const ATargetOffset: PD2D1Point2F = nil); stdcall;

    procedure DrawBitmap(
      ABitmap: ID2D1Bitmap;
      const ADestinationRectangle: PD2D1RectF;
      AOpacity: Single;
      AInterpolationMode: TD2D1InterpolationMode;
      const ASourceRectangle: PD2D1RectF = nil;
      const APerspectiveTransform: PD2D1Matrix4x4F = nil); stdcall;

    procedure PushLayer(
      const ALayerParameters:  PD2D1LayerParameters1;
      ALayer: ID2D1Layer); stdcall;

    function InvalidateEffectInputRectangle(
      AEffect: ID2D1Effect;
      AInput: UINT32;
      const AIinputRectangle: PD2D1RectF): HRESULT; stdcall;

    function GetEffectInvalidRectangleCount(
      AEffect: ID2D1Effect;
      out ARrectangleCount: UInt32): HRESULT; stdcall;

    function GetEffectInvalidRectangles(
      AEeffect: ID2D1Effect;
      out ARectangles: TD2D1RectF;
      ARectanglesCount: UInt32): HRESULT; stdcall;

    function GetEffectRequiredInputRectangles(
      ARenderEffect: ID2D1Effect;
      const ARenderImageRectangle: PD2D1RectF;
      const AInputDescriptions: PD2D1EffectInputDescription;
      out ARequiredInputRects: TD2D1RectF): HRESULT; stdcall;

    procedure FillOpacityMask(
      AOpacityMask: ID2D1Bitmap;
      ABrush: ID2D1Brush;
      const ADestinationRectangle: PD2D1RectF = nil;
      const ASourceRectangle: PD2D1RectF = nil); stdcall;
  end;

  ID2D1Device = interface(ID2D1Resource)
    ['{47dd575d-ac05-4cdd-8049-9b02cd16f44c}']

    function CreateDeviceContext(
      AOptions: TD2D1DeviceContextOptions;
      out ADeviceContext: ID2D1DeviceContext): HRESULT; stdcall;

    function CreatePrintControl(
      AWicFactory: IWICImagingFactory;
      ADocumentTarget: IPrintDocumentPackageTarget;
      const APrintControlProperties: PD2D1PrintControlProperties;
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
      const AStrokeStyleProperties: PD2D1StrokeStyleProperties1;
      const ADashes: PSingle;
      ADashesCount: UInt32;
      out AStrokeStyle: ID2D1StrokeStyle1): HRESULT; stdcall;

    function CreatePathGeometry(APathGeometry: ID2D1PathGeometry1): HRESULT; stdcall;

    function CreateDrawingStateBlock(
      const ADrawingStateDescription: PD2D1DrawingStateDescription1;
      ATextRenderingParams: IDWriteRenderingParams;
      out ADrawingStateBlock: ID2D1DrawingStateBlock1): HRESULT; stdcall;

    function CreateGdiMetafile(
      AMmetafileStream: IStream;
      out AMetafile: ID2D1GdiMetafile): HRESULT; stdcall;

    function RegisterEffectFromStream(
      AClassId: TGUID;
      APropertyXml: IStream;
      const ABindings: PD2D1PropertyBinding;
      ABindingsCount: UInt32;
      AEffectFactory: PD2D1_EFFECT_FACTORY): HRESULT; stdcall;

    function RegisterEffectFromString(
      AClassId: TGUID;
      APropertyXml: LPCWSTR;
      const ABindings: PD2D1PropertyBinding;
      ABindingsCount: UInt32): HRESULT; stdcall;

    function UnregisterEffect(AClassId: TGUID): HRESULT; stdcall;

    function GetRegisteredEffects(
      AEffects: PGUID;
      AEffectsCount: UInt32;
      out AEffectsReturned: UInt32;
      out AEffectsRegistered: UInt32): HRESULT; stdcall;

    function GetEffectProperties(
      AEffectId: TGUID;
      out AProperties: ID2D1Properties): HRESULT; stdcall;
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
      out AGeometryRealization: ID2D1GeometryRealization): HRESULT; stdcall;

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

    function GetRenderingPriority: TD2D1RenderingPriority; stdcall;

    procedure SetRenderingPriority(ARenderingPriority: TD2D1RenderingPriority); stdcall;

    function CreateDeviceContext(
      AOptions: TD2D1DeviceContextOptions;
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
    function SetPrimitiveBlend1(APrimitiveBlend: TD2D1PrimitiveBlend): HRESULT; stdcall;
  end;

{$ENDREGION}

{$REGION 'd2d1_3.h interfaces'}
  ID2D1InkStyle = interface(ID2D1Resource)
    ['{bae8b344-23fc-4071-8cb5-d05d6f073848}']
    procedure SetNibTransform(const ATtransform: PD2D1Matrix3x2F); stdcall;

    procedure GetNibTransform(out ATransform: TD2D1Matrix3x2F); stdcall;

    procedure SetNibShape(ANibShape: TD2D1InkNibShape); stdcall;

    function GetNibShape: TD2D1InkNibShape; stdcall;
  end;

  ID2D1Ink = interface(ID2D1Resource)
    ['{b499923b-7029-478f-a8b3-432c7c5f5312}']

    procedure SetStartPoint(const AStartPoint: PD2D1InkPoint); stdcall;

    function GetStartPoint: TD2D1InkPoint; stdcall;

    function AddSegments(
      const ASegments: PD2D1InkBezierSegment;
      ASegmentsCount: UInt32): HRESULT; stdcall;

    function RemoveSegmentsAtEnd(segmentsCount: UInt32): HRESULT; stdcall;

    function SetSegments(
      AStartSegment: PUint32;
      const ASegments: PD2D1InkBezierSegment;
      ASegmentsCount: UInt32): HRESULT; stdcall;

    function SetSegmentAtEnd(const ASegment: PD2D1InkBezierSegment): HRESULT; stdcall;

    function GetSegmentCount: UInt32; stdcall;

    function GetSegments(
      AStartSegment: UInt32;
      const ASegments: PD2D1InkBezierSegment;
      ASegmentsCount: UInt32): HRESULT; stdcall;

    function StreamAsGeometry(
      AInkStyle: ID2D1InkStyle;
      const AWorldTransform: PD2D1Matrix3x2F;
      AFlatteningTolerance: Single;
      AGeometrySink: ID2D1SimplifiedGeometrySink): HRESULT; stdcall;

    function GetBounds(
      AInkStyle: ID2D1InkStyle;
      const AWorldTransform: PD2D1Matrix3x2F;
      out ABounds: TD2D1RectF): HRESULT; stdcall;
  end;

  ID2D1GradientMesh = interface(ID2D1Resource)
    ['{f292e401-c050-4cde-83d7-04962d3b23c2}']

    function GetPatchCount: UInt32; stdcall;

    function GetPatches(
      AStartIndex: UInt32;
      out APatches: TD2D1GradientMeshPatch;
      APatchesCount: UInt32): HRESULT; stdcall;
  end;

  ID2D1ImageSource = interface(ID2D1Image)
    ['{c9b664e5-74a1-4378-9ac2-eefc37a3f4d8}']

    function OfferResources: HRESULT; stdcall;

    function TryReclaimResources(out AResourcesDiscarded: BOOL): HRESULT; stdcall;

  end;

  ID2D1ImageSourceFromWic = interface(ID2D1ImageSource)
    ['{77395441-1c8f-4555-8683-f50dab0fe792}']

    function EnsureCached(const ARectangleToFill: PD2D1RectU): HRESULT; stdcall;

    function TrimCache(const ARectangleToPreserve: PD2D1RectU): HRESULT; stdcall;

    procedure GetSource(out AWicBitmapSource: IWICBitmapSource); stdcall;

  end;

  ID2D1TransformedImageSource = interface(ID2D1Image)
    ['{7f1f79e5-2796-416c-8f55-700f911445e5}']
    procedure GetSource(out AImageSource: ID2D1ImageSource); stdcall;

    procedure GetProperties(out AProperties: TD2D1TransformedImageSourceProperties); stdcall;

  end;

  ID2D1LookupTable3D = interface(ID2D1Resource)
    ['{53dd9855-a3b0-4d5b-82e1-26e25c5e5797}']

  end;

  ID2D1DeviceContext2 = interface(ID2D1DeviceContext1)
    ['{394ea6a3-0c34-4321-950b-6ca20f0be6c7}']
    function CreateInk(
      const AStartPoint: PD2D1InkPoint;
      out AInk: ID2D1Ink): HRESULT; stdcall;

    function CreateInkStyle(
      const AInkStyleProperties: TD2D1InkStyleProperties;
      out AInkStyle: ID2D1InkStyle): HRESULT; stdcall;

    function CreateGradientMesh(
      const APatches: PD2D1GradientMeshPatch;
      APatchesCount: UInt32;
      out AGradientMesh: ID2D1GradientMesh): HRESULT; stdcall;

    function CreateImageSourceFromWic(
      AWicBitmapSource: IWICBitmapSource;
      ALoadingOptions: TD2D1ImageSourceLoadingOptions;
      AAlphaMode: TD2D1AlphaMode;
      out AImageSource: ID2D1ImageSourceFromWic): HRESULT; stdcall;

    function CreateLookupTable3D(
      APrecision: TD2D1BufferPrecision;
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
      var ASurfaces: IDXGISurface;
      ASurfaceCount: UINT32;
      AColorSpace: DXGI_COLOR_SPACE_TYPE;
      AOptions: TD2D1ImageSourceFromDxgiOptions;
      out AImageSource:ID2D1ImageSource): HRESULT; stdcall;

    function GetGradientMeshWorldBounds(
      AGradientMesh: ID2D1GradientMesh;
      out ABounds: TD2D1RectF): HRESULT; stdcall;

    procedure DrawInk(
      AInk: ID2D1Ink;
      ABrush: ID2D1Brush;
      AInkStyle: ID2D1InkStyle); stdcall;

    procedure DrawGradientMesh(AGradientMesh: ID2D1GradientMesh); stdcall;

    procedure DrawGdiMetafile(
      AGdiMetafile: ID2D1GdiMetafile;
      const ADestinationRectangle: PD2D1RectF;
      const ASourceRectangle: PD2D1RectF = nil); stdcall;

    function CreateTransformedImageSource(
      AImageSource: ID2D1ImageSource;
      const AProperties: PD2D1TransformedImageSourceProperties;
      out ATransformedImageSource: ID2D1TransformedImageSource): HRESULT; stdcall;
  end;

  ID2D1Device2 = interface(ID2D1Device1)
    ['{a44472e1-8dfb-4e60-8492-6e2861c9ca8b}']

    function CreateDeviceContext(
      AOptions: TD2D1DeviceContextOptions;
      out ADeviceContext2: ID2D1DeviceContext2): HRESULT; stdcall;

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
      const ADestinationRectangle: PD2D1RectF;
      const ASourceRectangle: PD2D1RectF): HRESULT; stdcall;
  end;

  ID2D1GdiMetafile1 = interface(ID2D1GdiMetafile)
    ['{2e69f9e8-dd3f-4bf9-95ba-c04f49d788df}']

    function GetDpi(
      out ADpiX: Single;
      out ADpiY: Single): HRESULT; stdcall;

    function GetSourceBounds(out ABounds: TD2D1RectF): HRESULT; stdcall;

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
      const ADestinationRectangles: PD2D1RectF;
      const ASourceRectangles: PD2D1RectU = nil;
      const AColors: PD2D1ColorF = nil;
      const ATransforms: PD2D1Matrix3x2F = nil;
      ADestinationRectanglesStride: UInt32 = SizeOf(TD2D1RectF);
      ASourceRectanglesStride: UInt32 = SizeOf(TD2D1RectU);
      AColorsStride: UInt32 = SizeOf(TD2D1ColorF);
      ATransformsStride: UInt32 = SizeOf(TD2D1Matrix3x2F)): HRESULT; stdcall;

    function SetSprites(
      AStartIndex: UINT32;
      ASpriteCount: UINT32;
      const ADestinationRectangles: PD2D1RectF;
      const ASourceRectangles: PD2D1RectU = nil;
      const AColors: PD2D1ColorF = nil;
      const ATransforms: PD2D1Matrix3x2F = nil;
      ADestinationRectanglesStride: UInt32 = SizeOf(TD2D1RectF);
      ASourceRectanglesStride: UInt32 = SizeOf(TD2D1RectU);
      AColorsStride: UInt32 = SizeOf(TD2D1ColorF);
      ATransformsStride: UInt32 = SizeOf(TD2D1Matrix3x2F)): HRESULT; stdcall;

    function GetSprites(
      AStartIndex: UINT32;
      ASpriteCount: UINT32;
      out ADestinationRectangles: TD2D1RectF;
      out ASourceRectangles: TD2D1RectU;
      out AColors: TD2D1ColorF;
      out ATransforms: TD2D1Matrix3x2F): HRESULT; stdcall;

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
      AInterpolationMode: TD2D1BitmapInterpolationMode = D2D1_BITMAP_INTERPOLATION_MODE_LINEAR;
      ASpriteOptions: TD2D1SpriteOptions = D2D1_SPRITE_OPTIONS_NONE); stdcall;
  end;

  ID2D1Device3 = interface(ID2D1Device2)
    ['{852f2087-802c-4037-ab60-ff2e7ee6fc01}']

    function CreateDeviceContext(
      AOptions: TD2D1DeviceContextOptions;
      out ADeviceContext3: ID2D1DeviceContext3): HRESULT; stdcall;

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
      AInterpolationMode: TD2D1BitmapInterpolationMode;
      ASpriteOptions: TD2D1SpriteOptions): HRESULT; stdcall;

  end;

  ID2D1SvgGlyphStyle = interface(ID2D1Resource)
    ['{af671749-d241-4db8-8e41-dcc2e5c1a438}']

    function SetFill(ABrush: ID2D1Brush): HRESULT; stdcall;

    procedure GetFill(ABrush: ID2D1Brush); stdcall;

    function SetStroke(
      ABrush: ID2D1Brush;
      AStrokeWidth: Single = 1.0;
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
      const AString: PWideChar;
      AStringLength: UInt32;
      ATextFormat: IDWriteTextFormat;
      const ALayoutRect: PD2D1RectF;
      ADefaultFillBrush: ID2D1Brush;
      ASvgGlyphStyle: ID2D1SvgGlyphStyle;
      AColorPaletteIndex: UInt32  = 0;
      AOptions: TD2D1DrawTextOptions = D2D1_DRAW_TEXT_OPTIONS_ENABLE_COLOR_FONT;
      AMeasuringMode: TDWriteMeasuringMode = DWRITE_MEASURING_MODE_NATURAL); stdcall;

    procedure DrawTextLayout(
      AOrigin: TD2D1Point2F;
      ATextLayout: IDWriteTextLayout;
      ADefaultFillBrush: ID2D1Brush;
      ASvgGlyphStyle: ID2D1SvgGlyphStyle;
      AColorPaletteIndex: UINT32 = 0;
      AOptions: TD2D1DrawTextOptions = D2D1_DRAW_TEXT_OPTIONS_ENABLE_COLOR_FONT); stdcall;

    procedure DrawColorBitmapGlyphRun(
      AGlyphImageFormat: TDWriteGlyphImageFormats;
      ABaselineOrigin: TD2D1Point2F;
      const AGlyphRun: PDWriteGlyphRun;
      AMeasuringMode: TDWriteMeasuringMode = DWRITE_MEASURING_MODE_NATURAL;
      ABitmapSnapOption: TD2D1ColorBitmapGlyphSnapOption = D2D1_COLOR_BITMAP_GLYPH_SNAP_OPTION_DEFAULT); stdcall;

    procedure DrawSvgGlyphRun(
      ABaselineOrigin: TD2D1Point2F;
      const AGlyphRun: PDWriteGlyphRun;
      ADefaultFillBrush: ID2D1Brush = nil;
      ASvgGlyphStyle: ID2D1SvgGlyphStyle = nil;
      AColorPaletteIndex: UInt32 = 0;
      AMeasuringMode: TDWriteMeasuringMode = DWRITE_MEASURING_MODE_NATURAL); stdcall;

    function GetColorBitmapGlyphImage(
      AGlyphImageFormat: TDWriteGlyphImageFormats;
      AGlyphOrigin: TD2D1Point2F;
      AFontFace: IDWriteFontFace;
      AFontEmSize: Single;
      AGlyphIndex: UInt16;
      AIsSideways: BOOL;
      const AWorldTransform: PD2D1Matrix3x2F;
      ADpiX: Single;
      ADpiY: Single;
      out AGlyphTransform: TD2D1Matrix3x2F;
      out AGlyphImage: ID2D1Image): HRESULT; stdcall;

    function GetSvgGlyphImage(
      AGlyphOrigin: TD2D1Point2F;
      AFontFace: IDWriteFontFace;
      AFontEmSize: Single;
      AGlyphIndex: UInt16;
      AIsSideways: BOOL;
      const AWorldTransform: PD2D1Matrix3x2F;
      ADefaultFillBrush: ID2D1Brush;
      ASvgGlyphStyle: ID2D1SvgGlyphStyle;
      ACcolorPaletteIndex: UInt32;
      out AGlyphTransform: TD2D1Matrix3x2F;
      out AGlyphImage: ID2D1CommandList): HRESULT; stdcall;

  end;

  ID2D1Device4 = interface(ID2D1Device3)
    ['{d7bdb159-5683-4a46-bc9c-72dc720b858b}']

    function CreateDeviceContext(
      AOptions: TD2D1DeviceContextOptions;
      out ADeviceContext4: ID2D1DeviceContext4): HRESULT; stdcall;

    procedure SetMaximumColorGlyphCacheMemory(AMaximumInBytes: UInt64); stdcall;

    function GetMaximumColorGlyphCacheMemory: UInt64; stdcall;

  end;

  ID2D1Factory5 = interface(ID2D1Factory4)
    ['{c4349994-838e-4b0f-8cab-44997d9eeacc}']

    function CreateDevice(
      ADXGIDevice: IDXGIDevice;
      out AD2dDevice4: ID2D1Device4): HRESULT; stdcall;

  end;

  ID2D1CommandSink4 = interface(ID2D1CommandSink3)
    ['{c78a6519-40d6-4218-b2de-beeeb744bb3e}']

    function SetPrimitiveBlend2(APrimitiveBlend: TD2D1PrimitiveBlend): HRESULT; stdcall;

  end;

  ID2D1ColorContext1 = interface(ID2D1ColorContext)
    ['{1ab42875-c57f-4be9-bd85-9cd78d6f55ee}']

    function GetColorContextType: TD2D1ColorContextType; stdcall;

    function GetDXGIColorSpace: DXGI_COLOR_SPACE_TYPE; stdcall;

    function GetSimpleColorProfile(out ASimpleProfile: TD2D1SimpleColorProfile): HRESULT; stdcall;

  end;

  ID2D1DeviceContext5 = interface(ID2D1DeviceContext4)
    ['{7836d248-68cc-4df6-b9e8-de991bf62eb7}']

    function CreateSvgDocument(
      AInputXmlStream: IStream;
      AViewportSize: TD2D1SizeF;
      out ASvgDocument: ID2D1SvgDocument): HRESULT; stdcall;

    procedure DrawSvgDocument(ASvgDocument: ID2D1SvgDocument); stdcall;

    function CreateColorContextFromDxgiColorSpace(
      AColorSpace: DXGI_COLOR_SPACE_TYPE;
      out AColorContext: ID2D1ColorContext1): HRESULT; stdcall;

    function CreateColorContextFromSimpleColorProfile(
      const ASimpleProfile: PD2D1SimpleColorProfile;
      out AColorContext: ID2D1ColorContext1): HRESULT; stdcall;

  end;

  ID2D1Device5 = interface(ID2D1Device4)
    ['{d55ba0a4-6405-4694-aef5-08ee1a4358b4}']

    function CreateDeviceContext(
      AOptions: TD2D1DeviceContextOptions;
      out ADeviceContext5: ID2D1DeviceContext5): HRESULT; stdcall;

  end;

  ID2D1Factory6 = interface(ID2D1Factory5)
    ['{f9976f46-f642-44c1-97ca-da32ea2a2635}']

    function CreateDevice(
      ADXGIDevice: IDXGIDevice;
      out AD2DDevice5: ID2D1Device5): HRESULT; stdcall;

  end;

  ID2D1CommandSink5 = interface(ID2D1CommandSink4)
    ['{7047dd26-b1e7-44a7-959a-8349e2144fa8}']

    function BlendImage(
      AImage: ID2D1Image;
      ABlendMode: TD2D1BlendMode;
      const ATargetOffset: PD2D1Point2F;
      const AImageRectangle: PD2D1RectF;
      AInterpolationMode: TD2D1InterpolationMode): HRESULT; stdcall;

  end;

  ID2D1DeviceContext6 = interface(ID2D1DeviceContext5)
    ['{985f7e37-4ed0-4a19-98a3-15b0edfde306}']

    procedure BlendImage(
      AImage: ID2D1Image;
      ABlendMode: TD2D1BlendMode;
      const ATargetOffset: PD2D1Point2F = nil;
      const AImageRectangle: PD2D1RectF = nil;
      AInterpolationMode: TD2D1InterpolationMode = D2D1_INTERPOLATION_MODE_LINEAR); stdcall;

  end;

  ID2D1Device6 = interface(ID2D1Device5)
    ['{7bfef914-2d75-4bad-be87-e18ddb077b6d}']

    function CreateDeviceContext(
      AOptions: TD2D1DeviceContextOptions;
      out ADeviceContext6: ID2D1DeviceContext6): HRESULT; stdcall;

  end;

  ID2D1Factory7 = interface(ID2D1Factory6)
    ['{bdc2bdd3-b96c-4de6-bdf7-99d4745454de}']

    function CreateDevice(
      ADXGIDevice: IDXGIDevice;
      out AD2DDevice6: ID2D1Device6): HRESULT; stdcall;
  end;

{$ENDREGION}

{$REGION 'dwrite.h interfaces'}
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
      out AFragmentStart: Pointer;
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
      out AFontFileType: TDWriteFontFileType;
      out AFontFaceType: TDWriteFontFaceType;
      out ANumberOfFaces: UINT32): HRESULT; stdcall;
  end;

  IDWriteRenderingParams = interface(IUnknown)
    ['{2f0da53a-2add-47cd-82ee-d9ec34688e75}']

    function GetGamma: Single; stdcall;

    function GetEnhancedContrast: Single; stdcall;

    function GetClearTypeLevel: Single; stdcall;

    function GetPixelGeometry: TDWritePixelGeometry; stdcall;

    function GetRenderingMode: TDWriteRenderingMode; stdcall;

  end;

  IDWriteFontFace = interface(IUnknown)
    ['{5f49804d-7024-4d43-bfa9-d25984f53849}']

    function GetType: TDWriteFontFaceType; stdcall;

    function GetFiles(
      var ANumberOfFiles: UInt32;
      AFontFiles: PIDWriteFontFile): HRESULT; stdcall;

    function GetIndex: UInt32; stdcall;

    function GetSimulations: TDWriteFontSimulations; stdcall;

    function IsSymbolFont: BOOL; stdcall;

    procedure GetMetrics(out AFontFaceMetrics: TDWriteFontMetrics); stdcall;

    function GetGlyphCount: UInt16; stdcall;

    function GetDesignGlyphMetrics(
      AGlyphIndices: PWORD;
      AGlyphCount: UInt32;
      AGlyphMetrics: PDWriteGlyphMetrics;
      AIsSideways: BOOL = False): HRESULT; stdcall;

    function GetGlyphIndices(
      ACodePoints: PUint32;
      ACodePointCount: UInt32;
      out AGlyphIndices: UInt16): HRESULT; stdcall;

    function TryGetFontTable(
        AOpenTypeTableTag: UInt32;
        out ATableData: Pointer;
        out ATableSize: UInt32;
        out ATableContext: Pointer;
        out AExists: BOOL): HRESULT; stdcall;

    procedure ReleaseFontTable(ATableContext: Pointer); stdcall;

    function GetGlyphRunOutline(
        AEmSize: Single;
        const AGlyphIndices: PWORD;
        const AGlyphAdvances: PSingle;
        const AGlyphOffsets: PDWriteGlyphOffset;
        AGlyphCount: UInt32;
        AIsSideways: BOOL;
        AIsRightToLeft: BOOL;
        AGeometrySink: IDWriteGeometrySink): HRESULT; stdcall;

    function GetRecommendedRenderingMode(
      AEmSize: Single;
      APixelsPerDip: Single;
      AMeasuringMode: TDWriteMeasuringMode;
      ARenderingParams: IDWriteRenderingParams;
      out ARenderingMode: TDWriteRenderingMode): HRESULT; stdcall;

    function GetGdiCompatibleMetrics(
      AEmSize: Single;
      APixelsPerDip: Single;
      const ATransform: PDWriteMatrix;
      out AFontFaceMetrics: TDWriteFontMetrics): HRESULT; stdcall;

    function GetGdiCompatibleGlyphMetrics(
      AEmSize: Single;
      APixelsPerDip: Single;
      ATransform: PDWriteMatrix;
      AUseGdiNatural: BOOL;
      AGlyphIndices: PWORD;
      AGlyphCount: UInt32;
      AGlyphMetrics: PDWriteGlyphMetrics;
      AIsSideways: BOOL = False): HRESULT; stdcall;
  end;

  IDWriteFontCollectionLoader = interface(IUnknown)
    ['{cca920e4-52f0-492b-bfa8-29c72ee0a468}']

    function CreateEnumeratorFromKey(
      AFactory: IDWriteFactory;
      ACollectionKey: Pointer;
      ACollectionKeySize: UInt32;
      out AFontFileEnumerator: IDWriteFontFileEnumerator): HRESULT; stdcall;
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
      const ALocaleName: PWideChar;
      out AIndex: UInt32;
      out AExists: BOOL): HRESULT; stdcall;

    function GetLocaleNameLength(
      AIndex: UInt32;
      out ALength: UInt32): HRESULT; stdcall;

    function GetLocaleName(
      AIndex: UInt32;
      ALocaleName: PWideChar;
      ASize: UInt32
    ): HRESULT; stdcall;

    function GetStringLength(
      AIndex: UInt32;
      ALength: UInt32): HRESULT; stdcall;

    function GetString(
      AIndex: UInt32;
      AStringBuffer: PWideChar;
      ASize: UInt32): HRESULT; stdcall;
  end;

  IDWriteFontCollection = interface(IUnknown)
    ['{a84cee02-3eea-4eee-a827-87c1a02a0fcc}']

    function GetFontFamilyCount: UInt32; stdcall;

    function GetFontFamily(
      AIndex: UINT32;
      out AFontFamily: IDWriteFontFamily): HRESULT; stdcall;

    function FindFamilyName(
      const AFamilyName: PWideChar;
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
      AWeight: TDWriteFontWeight;
      AStretch: TDWriteFontStretch;
      AStyle: TDWriteFontStyle;
      out AMatchingFont: IDWriteFont): HRESULT; stdcall;

    function GetMatchingFonts(
      AWeight: TDWriteFontWeight;
      AStretch: TDWriteFontStretch;
      AStyle: TDWriteFontStyle;
      out AMatchingFonts: IDWriteFontList): HRESULT; stdcall;
  end;

  IDWriteFont = interface(IUnknown)
    ['{acd16696-8c14-4f5d-877e-fe3fc1d32737}']

    function GetFontFamily(out AFontFamily: IDWriteFontFamily): HRESULT; stdcall;

    function GetWeight: TDWriteFontWeight; stdcall;

    function GetStretch: TDWriteFontStretch; stdcall;

    function GetStyle: TDWriteFontStyle; stdcall;

    function IsSymbolFont: BOOL; stdcall;

    function GetFaceNames(ANames: IDWriteLocalizedStrings): HRESULT; stdcall;

    function GetInformationalStrings(
      AInformationalStringID: TDWriteInformationalStringId;
      out AInformationalStrings: IDWriteLocalizedStrings;
      out AExists: BOOL): HRESULT; stdcall;

    function GetSimulations: TDWriteFontSimulations; stdcall;

    procedure GetMetrics(out AFontMetrics: TDWriteFontMetrics); stdcall;

    function HasCharacter(
      AUnicodeValue: UInt32;
      out AExists: BOOL): HRESULT; stdcall;

    function CreateFontFace(out AFontFace: IDWriteFontFace): HRESULT; stdcall;
  end;

  IDWriteTextFormat = interface(IUnknown)
    ['{9c906818-31d7-4fd3-a151-7c5e225db55a}']

    function SetTextAlignment(ATextAlignment: TDWriteTextAlignment): HRESULT; stdcall;

    function SetParagraphAlignment(AParagraphAlignment: TDWriteParagraphAlignment): HRESULT; stdcall;

    function SetWordWrapping(AWordWrapping: TDWriteWordWrapping): HRESULT; stdcall;

    function SetReadingDirection(AReadingDirection: TDWriteReadingDirection): HRESULT; stdcall;

    function SetFlowDirection(AFlowDirection: TDWriteFlowDirection): HRESULT; stdcall;

    function SetIncrementalTabStop(AIncrementalTabStop: Single): HRESULT; stdcall;

    function SetTrimming(
      const ATrimmingOptions: PDWriteTrimming;
      ATrimmingSign: IDWriteInlineObject): HRESULT; stdcall;

    function SetLineSpacing(
      ALlineSpacingMethod: TDWriteLineSpacingMethod;
      ALineSpacing: Single;
      ABaseline: Single): HRESULT; stdcall;

    function GetTextAlignment: TDWriteTextAlignment; stdcall;

    function GetParagraphAlignment: TDWriteParagraphAlignment; stdcall;

    function GetWordWrapping: TDWriteWordWrapping; stdcall;

    function GetReadingDirection: TDWriteReadingDirection; stdcall;

    function GetFlowDirection: TDWriteFlowDirection; stdcall;

    function GetIncrementalTabStop: Single; stdcall;

    function GetTrimming(
      out ATrimmingOptions: TDWriteTrimming;
      out ATrimmingSign: IDWriteInlineObject): HRESULT; stdcall;

    function GetLineSpacing(
      out ALineSpacingMethod: TDWriteLineSpacingMethod;
      out ALineSpacing: PSingle;
      out ABaseline: PSingle): HRESULT; stdcall;

    function GetFontCollection(out AFontCollection: IDWriteFontCollection): HRESULT; stdcall;

    function GetFontFamilyNameLength: UInt32; stdcall;

    function GetFontFamilyName(
      out AFontFamilyName: WChar;
      ANameSize: UInt32): HRESULT; stdcall;

    function GetFontWeight: TDWriteFontWeight; stdcall;

    function GetFontStyle: TDWriteFontStyle; stdcall;

    function GetFontStretch: TDWriteFontStretch; stdcall;

    function GetFontSize: Single; stdcall;

    function GetLocaleNameLength: UInt32; stdcall;

    function GetLocaleName(
      out ALocaleName: WCHAR;
      ANameSize: UInt32): HRESULT; stdcall;
  end;

  IDWriteTypography = interface(IUnknown)
    ['{55f1112b-1dc2-4b3c-9541-f46894ed85b6}']

    function AddFontFeature(AFontFeature: TDWriteFontFeature): HRESULT; stdcall;

    function GetFontFeatureCount: UInt32; stdcall;

    function GetFontFeature(
      AFontFeatureIndex: UInt32;
      out AFontFeature: TDWriteFontFeature): HRESULT; stdcall;
  end;

  IDWriteNumberSubstitution = interface(IUnknown)
    ['{14885cc9-bab0-4f90-b6ed-5c366a2cd03d}']

  end;

  IDWriteTextAnalysisSource = interface(IUnknown)
    ['{688e1a58-5094-47c8-adc8-fbcea60ae92b}']
    function GetTextAtPosition(
      ATextPosition: UINT32;
      out ATextString: PWideChar;
      out ATextLength: UInt32): HRESULT; stdcall;

    function GetTextBeforePosition(
      ATextPosition: UINT32;
      out ATextString: PWideChar;
      out ATextLength: UInt32): HRESULT; stdcall;

    function GetParagraphReadingDirection: TDWriteReadingDirection; stdcall;

    function GetLocaleName(
      ATextPosition: UInt32;
      out ATextLength: UInt32;
      out ALocaleName: PWideChar): HRESULT; stdcall;

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
      const AScriptAnalysis: PDWriteScriptAnalysis): HRESULT; stdcall;

    function SetLineBreakpoints(
      ATextPosition: UINT32;
      ATextLength: UINT32;
      const ALineBreakpoints: TDWriteLineBreakpoint): HRESULT; stdcall;

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
      ATextString: PWideChar;
      ATextLength: UInt32;
      AFontFace: IDWriteFontFace;
      AIsSideways: BOOL;
      AIsRightToLeft: BOOL;
      const AScriptAnalysis: PDWriteScriptAnalysis;
      ALocaleName: PWideChar;
      ANumberSubstitution: IDWriteNumberSubstitution;
      AFeatures: PDWriteTypographicFeatures;
      AFeatureRangeLengths: PUInt32;
      AFeatureRanges: UInt32;
      AMaxGlyphCount: UInt32;
      out AClusterMap: UInt16;
      out ATextProps: TDWriteShapingTextProperties;
      out AGlyphIndices: UInt16;
      out AGlyphProps: TDWriteShapingGlyphProperties;
      out AActualGlyphCount: UInt32): HRESULT; stdcall;

    function GetGlyphPlacements(
      ATextString: PWideChar;
      AClusterMap: PWORD;
      ATextProps: PDWriteShapingTextProperties;
      ATextLength: UInt32;
      AGlyphIndices: PWORD;
      AGlyphProps: PDWriteShapingGlyphProperties;
      AGlyphCount: UInt32;
      AFontFace: IDWriteFontFace;
      AFontEmSize: Single;
      AIsSideways: BOOL;
      AIsRightToLeft: BOOL;
      const AScriptAnalysis: PDWriteScriptAnalysis;
      ALocaleName: PWideChar;
      const AFeatures: PDWriteTypographicFeatures;
      const AFeatureRangeLengths: PUInt32;
      AFeatureRanges: UINT32;
      out AGlyphAdvances: Single;
      out AGlyphOffsets: TDWriteGlyphOffset): HRESULT; stdcall;

    function GetGdiCompatibleGlyphPlacements(
      ATextString: PWideChar;
      AClusterMap: PWORD;
      ATextProps: PDWriteShapingTextProperties;
      ATextLength: UInt32;
      AGlyphIndices: PWORD;
      const AGlyphProps: PDWriteShapingGlyphProperties;
      AGlyphCount: UInt32;
      AFontFace: IDWriteFontFace;
      AFontEmSize: Single;
      APixelsPerDip: Single;
      const ATransform: PDWriteMatrix;
      AUseGdiNatural: BOOL;
      AIsSideways: BOOL;
      AIsRightToLeft: BOOL;
      AScriptAnalysis: PDWriteScriptAnalysis;
      ALocaleName: PWideChar;
      AFeatures: PDWriteTypographicFeatures;
      AFeatureRangeLengths: PUint32;
      AFeatureRanges: UInt32;
      out AGlyphAdvances: Single;
      out AGlyphOffsets: TDWriteGlyphOffset): HRESULT; stdcall;
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

  function GetMetrics(out AMetrics: TDWriteInlineObjectMetrics): HRESULT; stdcall;

  function GetOverhangMetrics(out AOverhangs: TDWriteOverhangMetrics): HRESULT; stdcall;

  function GetBreakConditions(
    out ABreakConditionBefore: TDWriteBreakCondition;
    out ABreakConditionAfter: TDWriteBreakCondition): HRESULT; stdcall;
  end;

  IDWritePixelSnapping = interface(IUnknown)
    ['{eaf3a2da-ecf4-4d24-b644-b34f6842024b}']

    function IsPixelSnappingDisabled(
      AClientDrawingContext: Pointer;
      out AIsDisabled: BOOL): HRESULT; stdcall;

    function GetCurrentTransform(
      AClientDrawingContext: Pointer;
      out ATransform: TDWriteMatrix): HRESULT; stdcall;

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
      AMeasuringMode: TDWriteMeasuringMode;
      const AGlyphRun: PDWriteGlyphRun;
      const AGlyphRunDescription: PDWriteGlyphRunDescription;
      AClientDrawingEffect: IUnknown): HRESULT; stdcall;

    function DrawUnderline(
      AClientDrawingContext: Pointer;
      ABaselineOriginX: Single;
      ABaselineOriginY: Single;
      const AUnderline: PDWriteUnderline;
      AClientDrawingEffect: IUnknown): HRESULT; stdcall;

    function DrawStrikethrough(
      AClientDrawingContext: Pointer;
      ABaselineOriginX: Single;
      ABaselineOriginY: Single;
      const AStrikethrough: PDWriteStrikethrough;
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
      ATextRange: TDWriteTextRange): HRESULT; stdcall;

    function SetFontFamilyName(
      AFontFamilyName: PWideChar;
      ATextRange: TDWriteTextRange): HRESULT; stdcall;

    function SetFontWeight(
      AFontWeight: TDWriteFontWeight;
      ATextRange: TDWriteTextRange): HRESULT; stdcall;

    function SetFontStyle(
      AFontStyle: TDWriteFontStyle;
      ATextRange: TDWriteTextRange): HRESULT; stdcall;

    function SetFontStretch(
      AFontStretch: TDWriteFontStretch;
      ATextRange: TDWriteTextRange): HRESULT; stdcall;

    function SetFontSize(
      AFontSize: Single;
      ATextRange: TDWriteTextRange): HRESULT; stdcall;

    function SetUnderline(
      AHasUnderline: BOOL;
      ATextRange: TDWriteTextRange): HRESULT; stdcall;

    function SetStrikethrough(
      AHasStrikethrough: BOOL;
      ATextRange: TDWriteTextRange): HRESULT; stdcall;

    function SetDrawingEffect(
      ADrawingEffect: IUnknown;
      ATextRange: TDWriteTextRange): HRESULT; stdcall;

    function SetInlineObject(
      AInlineObject: IDWriteInlineObject;
      ATextRange: TDWriteTextRange): HRESULT; stdcall;

    function SetTypography(
      ATypography: IDWriteTypography;
      ATextRange: TDWriteTextRange): HRESULT; stdcall;

    function SetLocaleName(
      ALocaleName: PWideChar;
      ATextRange: TDWriteTextRange): HRESULT; stdcall;

    function GetMaxWidth: Single; stdcall;

    function GetMaxHeight: Single; stdcall;

    function GetFontCollection(
      ACurrentPosition: UInt32;
      out AFontCollection: IDWriteFontCollection;
      out ATextRange: TDWriteTextRange): HRESULT; stdcall;

    function GetFontFamilyNameLength(
      ACurrentPosition: UInt32;
      out ANameLength: UInt32;
      out ATextRange: TDWriteTextRange): HRESULT; stdcall;

    function GetFontFamilyName(
      ACurrentPosition: UInt32;
      AFontFamilyName: PWideChar;
      ANameSize: UInt32;
      out ATextRange: TDWriteTextRange): HRESULT; stdcall;

    function GetFontWeight(
      ACurrentPosition: UInt32;
      out AFontWeight: TDWriteFontWeight;
      out ATextRange: TDWriteTextRange): HRESULT; stdcall;

    function GetFontStyle(
      ACurrentPosition: UInt32;
      out AFontStyle: TDWriteFontStyle;
      out ATextRange: TDWriteTextRange): HRESULT; stdcall;

    function GetFontStretch(
      ACurrentPosition: UInt32;
      out AFontStretch: TDWriteFontStretch;
      out ATextRange: TDWriteTextRange): HRESULT; stdcall;

    function GetFontSize(
      ACurrentPosition: UInt32;
      out AFontSize: Single;
      out ATextRange: TDWriteTextRange): HRESULT; stdcall;

    function GetUnderline(
      ACurrentPosition: UInt32;
      out AHasUnderline: BOOL;
      out ATextRange: TDWriteTextRange): HRESULT; stdcall;

    function GetStrikethrough(
      ACurrentPosition: UInt32;
      out AHasStrikethrough: BOOL;
      out ATextRange: TDWriteTextRange): HRESULT; stdcall;

    function GetDrawingEffect(
      ACurrentPosition: UInt32;
      out ADrawingEffect: IUnknown;
      out ATextRange: TDWriteTextRange): HRESULT; stdcall;

    function GetInlineObject(
      ACurrentPosition: UInt32;
      out AInlineObject: IDWriteInlineObject;
      out ATextRange: TDWriteTextRange): HRESULT; stdcall;

    function GetTypography(
      ACurrentPosition: UInt32;
      out ATtypography: IDWriteTypography;
      out ATextRange: TDWriteTextRange): HRESULT; stdcall;

    function GetLocaleNameLength(
      ACurrentPosition: UINT32;
      out ANameLength: UINT32;
      out ATextRange: TDWriteTextRange
    ): HRESULT; stdcall;

    function GetLocaleName(
      ACurrentPosition: UInt32;
      ALocaleName: PWideChar;
      ANameSize: UInt32;
      out ATextRange: TDWriteTextRange): HRESULT; stdcall;

    function Draw(
      AClientDrawingContext: Pointer;
      ARenderer: IDWriteTextRenderer;
      AOriginX: Single;
      AOriginY: Single): HRESULT; stdcall;

    function GetLineMetrics(
      out ALineMetrics: TDWriteLineMetrics;
      AMaxLineCount: UInt32;
      out AActualLineCount: UInt32): HRESULT; stdcall;

    function GetMetrics(out ATextMetrics: DWRITE_TEXT_METRICS): HRESULT; stdcall;

    function GetOverhangMetrics(AOverhangs: TDWriteOverhangMetrics): HRESULT; stdcall;

    function GetClusterMetrics(
      out AClusterMetrics: TDWriteClusterMetrics;
      AMaxClusterCount: UInt32;
      out AActualClusterCount: UInt32): HRESULT; stdcall;

    function DetermineMinWidth(out AMinWidth: Single): HRESULT; stdcall;

    function HitTestPoint(
      APointX: Single;
      APointY: Single;
      out AIsTrailingHit: BOOL;
      out AIsInside: BOOL;
      out AHitTestMetrics: TDWriteHitTestMetrics): HRESULT; stdcall;

    function HitTestTextPosition(
      ATextPosition: UInt32;
      AIsTrailingHit: BOOL;
      out APointX: Single;
      out APointY: Single;
      out AHitTestMetrics: TDWriteHitTestMetrics): HRESULT; stdcall;

    function HitTestTextRange(
      ATextPosition: UInt32;
      ATextLength: UInt32;
      AOriginX: Single;
      AOriginY: Single;
      out AHitTestMetrics: TDWriteHitTestMetrics;
      AMaxHitTestMetricsCount: UInt32;
      AOutactualHitTestMetricsCount: UInt32): HRESULT; stdcall;
  end;

  IDWriteBitmapRenderTarget = interface(IUnknown)
    ['{5e5a32a3-8dff-4773-9ff6-0696eab77267}']

    function DrawGlyphRun(
      ABaselineOriginX: Single;
      ABaselineOriginY: Single;
      AMeasuringMode: TDWriteMeasuringMode;
      const AGlyphRun: PDWriteGlyphRun;
      ARenderingParams: IDWriteRenderingParams;
      ATextColor: COLORREF;
      ABlackBoxRect: PRect): HRESULT; stdcall;

    function GetMemoryDC: HDC; stdcall;

    function GetPixelsPerDip: Single; stdcall;

    function SetPixelsPerDip(APixelsPerDip: Single): HRESULT; stdcall;

    function GetCurrentTransform(out ATransform: TDWriteMatrix): HRESULT; stdcall;

    function SetCurrentTransform(const ATransform: PDWriteMatrix): HRESULT; stdcall;

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
      ATextureType: TDWriteTextureType;
      out ATextureBounds: TRect): HRESULT; stdcall;

    function CreateAlphaTexture(
      ATextureType: TDWriteTextureType;
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
      AFilePath: PWideChar;
      ALastWriteTime: PFILETIME;
      out AFontFile: IDWriteFontFile): HRESULT; stdcall;

    function CreateCustomFontFileReference(
      AFilePath: PWideChar;
      ALastWriteTime: PFILETIME;
      out fontFile: IDWriteFontFile): HRESULT; stdcall;

    function CreateFontFace(
      AFontFaceType: TDWriteFontFaceType;
      ANumberOfFiles: UInt32;
      AFontFiles: PIDWriteFontFile;
      AFaceIndex: UInt32;
      AFontFaceSimulationFlags: TDWriteFontSimulations;
      out AFontFace: IDWriteFontFace): HRESULT; stdcall;

    function CreateRenderingParams(out ARenderingParams: IDWriteRenderingParams): HRESULT; stdcall;

    function CreateMonitorRenderingParams(
      AMonitor: HMONITOR;
      out ARenderingParams: IDWriteRenderingParams): HRESULT; stdcall;

    function CreateCustomRenderingParams(
      AGamma: Single;
      AEnhancedContrast: Single;
      AClearTypeLevel: Single;
      APixelGeometry: TDWritePixelGeometry;
      ARenderingMode: TDWriteRenderingMode;
      out ARenderingParams: IDWriteRenderingParams): HRESULT; stdcall;

    function RegisterFontFileLoader(AFontFileLoader: IDWriteFontFileLoader): HRESULT; stdcall;

    function UnregisterFontFileLoader(AFontFileLoader: IDWriteFontFileLoader): HRESULT; stdcall;

    function CreateTextFormat(
      AFontFamilyName: PWideChar;
      AFontCollection: IDWriteFontCollection;
      AFontWeight: TDWriteFontWeight;
      AFontStyle: TDWriteFontStyle;
      AFontStretch: TDWriteFontStretch;
      AFontSize: Single;
      ALocaleName: PWideChar;
      out ATextFormat: IDWriteTextFormat): HRESULT; stdcall;

    function CreateTypography(ATypography: IDWriteTypography): HRESULT; stdcall;

    function GetGdiInterop(AGdiInterop: IDWriteGdiInterop): HRESULT; stdcall;

    function CreateTextLayout(
      AString: PWideChar;
      AStringLength: UInt32;
      ATextFormat: IDWriteTextFormat;
      AMaxWidth: Single;
      AMaxHeight: Single;
      out ATextLayout: IDWriteTextLayout): HRESULT; stdcall;

    function CreateGdiCompatibleTextLayout(
      AString: PWideChar;
      AStringLength: UInt32;
      ATextFormat: IDWriteTextFormat;
      ALayoutWidth: Single;
      ALayoutHeight: Single;
      APixelsPerDip: Single;
      ATransform: PDWriteMatrix;
      AUseGdiNatural: BOOL;
      out ATextLayout: IDWriteTextLayout): HRESULT; stdcall;

    function CreateEllipsisTrimmingSign(
      ATextFormat: IDWriteTextFormat;
      out ATrimmingSign: IDWriteInlineObject): HRESULT; stdcall;

    function CreateTextAnalyzer(out ATextAnalyzer: IDWriteTextAnalyzer): HRESULT; stdcall;

    function CreateNumberSubstitution(
      ASubstitutionMethod: TDWriteNumberSubstitutionMethod;
      ALocaleName: PWideChar;
      AIgnoreUserOverride: BOOL;
      out ANumberSubstitution: IDWriteNumberSubstitution): HRESULT; stdcall;

    function CreateGlyphRunAnalysis(
      AGlyphRun: PDWriteGlyphRun;
      APixelsPerDip: Single;
      ATransform: PDWriteMatrix;
      ARenderingMode: TDWriteRenderingMode;
      AMeasuringMode: TDWriteMeasuringMode;
      ABaselineOriginX: Single;
      ABaselineOriginY: Single;
      out AGlyphRunAnalysis: IDWriteGlyphRunAnalysis): HRESULT; stdcall;
  end;

{$ENDREGION}

{$REGION 'dwrite_1.h interfaces'}
  IDWriteFactory1 = interface(IDWriteFactory)
    ['{30572f99-dac6-41db-a16e-0486307e606a}']

    function GetEudcFontCollection(
      out AFontCollection: IDWriteFontCollection;
      ACheckForUpdates: BOOL = False): HRESULT; stdcall;

    function CreateCustomRenderingParams(
      AGamma: Single;
      AEnhancedContrast: Single;
      AEnhancedContrastGrayscale: Single;
      AClearTypeLevel: Single;
      APixelGeometry: TDWritePixelGeometry;
      ARenderingMode: TDWriteRenderingMode;
      out ARenderingParams: IDWriteRenderingParams1): HRESULT; stdcall;
  end;

  IDWriteFontFace1 = interface(IDWriteFontFace)
    ['{a71efdb4-9fdb-4838-ad90-cfc3be8c3daf}']

    procedure GetMetrics(out AFontMetrics: TDWriteFontMetrics); stdcall;

    function GetGdiCompatibleMetrics(
      AEmSize: Single;
      APixelsPerDip: Single;
      ATransform: PDWriteMatrix;
      out AFontMetrics: DWRITE_FONT_METRICS1): HRESULT; stdcall;

    procedure GetCaretMetrics(out ACaretMetrics: DWRITE_CARET_METRICS); stdcall;

    function GetUnicodeRanges(
      AMaxRangeCount: Uint32;
      out AUnicodeRanges: DWRITE_UNICODE_RANGE;
      out AActualRangeCount: Uint32): HRESULT; stdcall;

    function IsMonospacedFont: BOOL; stdcall;

    function GetDesignGlyphAdvances(
      AGlyphCount: UInt32;
      const AGlyphIndices: PWord;
      out AGlyphAdvances: PInteger;
      AIsSideways: BOOL = False): HRESULT; stdcall;

    function GetGdiCompatibleGlyphAdvances(
      AEmSize: Single;
      APixelsPerDip: Single;
      const ATransform: PDWriteMatrix;
      AUseGdiNatural: BOOL;
      AIsSideways: BOOL;
      AGlyphCount: UInt32;
      const AGlyphIndices: PWord;
      AGlyphAdvances: PInteger): HRESULT; stdcall;

    function GetKerningPairAdjustments(
      AGlyphCount: UInt32;
      const AGlyphIndices: PWord;
      AGlyphAdvanceAdjustments: PInteger): HRESULT; stdcall;

    function HasKerningPairs: BOOL; stdcall;

    function GetRecommendedRenderingMode(
      AFontEmSize: Single;
      ADpiX: Single;
      ADpiY: Single;
      const ATransform: PDWriteMatrix;
      AIsSideways: BOOL;
      AOutlineThreshold: DWRITE_OUTLINE_THRESHOLD;
      AMeasuringMode: TDWriteMeasuringMode;
      out ARenderingMode: TDWriteRenderingMode): HRESULT; stdcall;

    function GetVerticalGlyphVariants(
      AGlyphCount: UINT32;
      const nominalGlyphIndices: PWord;
      out AVerticalGlyphIndices: PWord): HRESULT; stdcall;

    function HasVerticalGlyphVariants: BOOL; stdcall;

  end;

  IDWriteFont1 = interface(IDWriteFont)
    ['{acd16696-8c14-4f5d-877e-fe3fc1d32738}']

    procedure GetMetrics(out AFontMetrics: DWRITE_FONT_METRICS1); stdcall;

    procedure GetPanose(out APanose: DWRITE_PANOSE); stdcall;

    function GetUnicodeRanges(
      AMaxRangeCount: UInt32;
      AUnicodeRanges: DWRITE_UNICODE_RANGE;
      out AActualRangeCount: UInt32): HRESULT; stdcall;

    function IsMonospacedFont: BOOL; stdcall;
  end;

  IDWriteRenderingParams1 = interface(IDWriteRenderingParams)
    ['{94413cf4-a6fc-4248-8b50-6674348fcad3}']

    function GetGrayscaleEnhancedContrast: Single; stdcall;

  end;

  IDWriteTextAnalyzer1 = interface(IDWriteTextAnalyzer)
    ['{80dad800-e21f-4e83-96ce-bfcce500db7c}']

    function ApplyCharacterSpacing(
      ALeadingSpacing: Single;
      ATrailingSpacing: Single;
      AMinimumAdvanceWidth: Single;
      ATextLength: UInt32;
      AGlyphCount: UInt32;
      const AClusterMap: PWord;
      const AGlyphAdvances: PSingle;
      const AGlyphOffsets: PDWriteGlyphOffset;
      const AGlyphProperties: PDWriteShapingGlyphProperties;
      out modifiedGlyphAdvances: Single;
      out modifiedGlyphOffsets: PDWriteGlyphOffset): HRESULT; stdcall;

    function GetBaseline(
      AFontFace: IDWriteFontFace;
      ABaseline: DWRITE_BASELINE;
      AIsVertical: BOOL;
      AIsSimulationAllowed: BOOL;
      AScriptAnalysis: DWRITE_SCRIPT_ANALYSIS;
      const ALocaleName: PWCHAR;
      out ABaselineCoordinate: PInteger;
      out AExists: BOOL): HRESULT; stdcall;

    function AnalyzeVerticalGlyphOrientation(
      AAnalysisSource: IDWriteTextAnalysisSource1;
      ATextPosition: UInt32;
      ATextLength: UInt32;
      AAnalysisSink: IDWriteTextAnalysisSink1): HRESULT; stdcall;

    function GetGlyphOrientationTransform(
      AGlyphOrientationAngle: DWRITE_GLYPH_ORIENTATION_ANGLE;
      AIsSideways: BOOL;
      out ATransform: TDWriteMatrix): HRESULT; stdcall;

    function GetScriptProperties(
      AScriptAnalysis: DWRITE_SCRIPT_ANALYSIS;
      out AScriptProperties: DWRITE_SCRIPT_PROPERTIES): HRESULT; stdcall;

    function GetTextComplexity(
      const ATextString: PWCHAR;
      ATextLength: UInt32;
      AFontFace: IDWriteFontFace;
      out AIsTextSimple: BOOL;
      out ATextLengthRead: PUint32;
      out AGlyphIndices: PWord): HRESULT; stdcall;

    function GetJustificationOpportunities(
      AFontFace: IDWriteFontFace;
      AFontEmSize: Single;
      AScriptAnalysis: DWRITE_SCRIPT_ANALYSIS;
      ATextLength: UInt32;
      AGlyphCount: UInt32;
      const ATextString: PWCHAR;
      const AClusterMap: PWord;
      const AGlyphProperties: PDWriteShapingGlyphProperties;
      out AJustificationOpportunities: DWRITE_JUSTIFICATION_OPPORTUNITY): HRESULT; stdcall;

    function JustifyGlyphAdvances(
      ALineWidth: Single;
      AGlyphCount: UInt32;
      const AJustificationOpportunities: PDWRITE_JUSTIFICATION_OPPORTUNITY;
      const AGlyphAdvances: PSingle;
      const AGlyphOffsets: PDWriteGlyphOffset;
      out AJustifiedGlyphAdvances: Single;
      out AJustifiedGlyphOffsets: DWRITE_GLYPH_OFFSET): HRESULT; stdcall;

    function GetJustifiedGlyphs(
      AFontFace: IDWriteFontFace;
      AFontEmSize: Single;
      AScriptAnalysis: DWRITE_SCRIPT_ANALYSIS;
      ATextLength: UInt32;
      AGlyphCount: UInt32;
      AMaxGlyphCount: UInt32;
      const AClusterMap: PWord;
      const AGlyphIndices: PWord;
      const AGlyphAdvances: PSingle;
      const AJustifiedGlyphAdvances: PSingle;
      const AJustifiedGlyphOffsets: PDWriteGlyphOffset;
      const AGlyphProperties: TDWriteShapingGlyphProperties;
      out AActualGlyphCount: UInt32;
      out AModifiedClusterMap: UInt16;
      out AModifiedGlyphIndices: UInt16;
      out AModifiedGlyphAdvances: Single;
      out AModifiedGlyphOffsets: TDWriteGlyphOffset): HRESULT; stdcall;
  end;

  IDWriteTextAnalysisSource1 = interface(IDWriteTextAnalysisSource)
    ['{639cfad8-0fb4-4b21-a58a-067920120009}']

    function GetVerticalGlyphOrientation(
      ATextPosition: UInt32;
      out ATextLength: UInt32;
      out AGlyphOrientation: DWRITE_VERTICAL_GLYPH_ORIENTATION;
      out ABidiLevel: UInt8): HRESULT; stdcall;

  end;

  IDWriteTextAnalysisSink1 = interface(IDWriteTextAnalysisSink)
    ['{b0d941a0-85e7-4d8b-9fd3-5ced9934482a}']

    function SetGlyphOrientation(
      ATextPosition: UInt32;
      ATextLength: UInt32;
      AGlyphOrientationAngle: DWRITE_GLYPH_ORIENTATION_ANGLE;
      AAdjustedBidiLevel: UInt8;
      AIsSideways: BOOL;
      AIsRightToLeft: BOOL): HRESULT; stdcall;
  end;

  IDWriteTextLayout1 = interface(IDWriteTextLayout)
    ['{9064d822-80a7-465c-a986-df65f78b8feb}']

    function SetPairKerning(
      AIsPairKerningEnabled: BOOL;
      ATtextRange: TDWriteTextRange): HRESULT; stdcall;

    function GetPairKerning(
      ACurrentPosition: UINT32;
      out AIsPairKerningEnabled: BOOL;
      out ATextRange: TDWriteTextRange): HRESULT; stdcall;

    function SetCharacterSpacing(
      ALeadingSpacing: Single;
      ATrailingSpacing: Single;
      AMinimumAdvanceWidth: Single;
      ATextRange: TDWriteTextRange): HRESULT; stdcall;

    function GetCharacterSpacing(
      ACurrentPosition: UInt32;
      ALeadingSpacing: Single;
      ATrailingSpacing: Single;
      AMinimumAdvanceWidth: Single;
      ATtextRange: TDWriteTextRange): HRESULT; stdcall;
  end;

  IDWriteBitmapRenderTarget1 = interface(IDWriteBitmapRenderTarget)
    ['{791e8298-3ef3-4230-9880-c9bdecc42064}']

    function GetTextAntialiasMode: DWRITE_TEXT_ANTIALIAS_MODE; stdcall;

    function SetTextAntialiasMode(AAntialiasMode: DWRITE_TEXT_ANTIALIAS_MODE): HRESULT; stdcall;
  end;

{$ENDREGION}

{$REGION 'dwrite_2.h interfaces'}
  IDWriteTextRenderer1 = interface(IDWriteTextRenderer)
    ['{d3e0e934-22a0-427e-aae4-7d9574b59db1}']

    function DrawGlyphRun(
      ACclientDrawingContext: Pointer;
      ABaselineOriginX: Single;
      ABaselineOriginY: Single;
      AOrientationAngle: DWRITE_GLYPH_ORIENTATION_ANGLE;
      AMeasuringMode: DWRITE_MEASURING_MODE;
      const AGlyphRun: TDWriteGlyphRun;
      const AGlyphRunDescription: PDWriteGlyphRunDescription;
      AClientDrawingEffect: IUnknown): HRESULT; stdcall;

    function DrawUnderline(
      AClientDrawingContext: Pointer;
      ABaselineOriginX: Single;
      ABaselineOriginY: Single;
      AOrientationAngle: DWRITE_GLYPH_ORIENTATION_ANGLE;
      const AUnderline: PDWriteUnderline;
      AClientDrawingEffect: IUnknown): HRESULT; stdcall;

    function DrawStrikethrough(
      AClientDrawingContext: Pointer;
      ABaselineOriginX: Single;
      ABaselineOriginY: Single;
      AOrientationAngle: DWRITE_GLYPH_ORIENTATION_ANGLE;
      const AStrikethrough: PDWriteStrikethrough;
      AClientDrawingEffect: IUnknown): HRESULT; stdcall;

    function DrawInlineObject(
      AClientDrawingContext: Pointer;
      AOriginX: Single;
      AOriginY: Single;
      AOrientationAngle: DWRITE_GLYPH_ORIENTATION_ANGLE;
      AInlineObject: IDWriteInlineObject;
      AIsSideways: BOOL;
      AIsRightToLeft: BOOL;
      AClientDrawingEffect: IUnknown): HRESULT; stdcall;
  end;

  IDWriteTextFormat1 = interface(IDWriteTextFormat)
    ['{5f174b49-0d8b-4cfb-8bca-f1cce9d06c67}']

    function SetVerticalGlyphOrientation(AGlyphOrientation: DWRITE_VERTICAL_GLYPH_ORIENTATION): HRESULT; stdcall;

    function GetVerticalGlyphOrientation: DWRITE_VERTICAL_GLYPH_ORIENTATION; stdcall;

    function SetLastLineWrapping(AIsLastLineWrappingEnabled: BOOL): HRESULT; stdcall;

    function GetLastLineWrapping: BOOL; stdcall;

    function SetOpticalAlignment(AOpticalAlignment: DWRITE_OPTICAL_ALIGNMENT): HRESULT; stdcall;

    function GetOpticalAlignment: DWRITE_OPTICAL_ALIGNMENT; stdcall;

    function SetFontFallback(AFontFallback: IDWriteFontFallback): HRESULT; stdcall;

    function GetFontFallback(out AFontFallback: IDWriteFontFallback): HRESULT; stdcall;
  end;

  IDWriteTextLayout2 = interface(IDWriteTextLayout1)
    ['{1093c18f-8d5e-43f0-b064-0917311b525e}']

    function GetMetrics(out ATextMetrics: DWRITE_TEXT_METRICS1): HRESULT; stdcall;

    function SetVerticalGlyphOrientation(AGlyphOrientation: DWRITE_VERTICAL_GLYPH_ORIENTATION): HRESULT; stdcall;

    function GetVerticalGlyphOrientation: DWRITE_VERTICAL_GLYPH_ORIENTATION; stdcall;

    function SetLastLineWrapping(AIsLastLineWrappingEnabled: BOOL): HRESULT; stdcall;

    function GetLastLineWrapping: BOOL; stdcall;

    function SetOpticalAlignment(AOpticalAlignment: DWRITE_OPTICAL_ALIGNMENT): HRESULT; stdcall;

    function GetOpticalAlignment: DWRITE_OPTICAL_ALIGNMENT; stdcall;

    function SetFontFallback(AFontFallback: IDWriteFontFallback): HRESULT; stdcall;

    function GetFontFallback(out AFontFallback: IDWriteFontFallback): HRESULT; stdcall;
  end;

  IDWriteTextAnalyzer2 = interface(IDWriteTextAnalyzer1)
    ['{553a9ff3-5693-4df7-b52b-74806f7f2eb9}']

    function GetGlyphOrientationTransform(
      AGlyphOrientationAngle: DWRITE_GLYPH_ORIENTATION_ANGLE;
      AIsSideways: BOOL;
      AOriginX: Single;
      AOriginY: Single;
      out ATransform: TDWriteMatrix): HRESULT; stdcall;

    function GetTypographicFeatures(
      AFontFace: IDWriteFontFace;
      AScriptAnalysis: TDWriteScriptAnalysis;
      const ALocaleName: PWCHAR;
      AMaxTagCount: UInt32;
      out AActualTagCount: UInt32;
      out ATags: TDWriteFontFeatureTag): HRESULT; stdcall;

    function CheckTypographicFeature(
      AFontFace: IDWriteFontFace;
      AScriptAnalysis: TDWriteScriptAnalysis;
      const ALocaleName: PWCHAR;
      AFeatureTag: TDWriteFontFeatureTag;
      AGlyphCount: UINT32;
      const AGlyphIndices: PWord;
      out AFeatureApplies: UInt8): HRESULT; stdcall;
  end;

  IDWriteFontFallback = interface(IUnknown)
    ['{efa008f9-f7a1-48bf-b05c-f224713cc0ff}']

    function MapCharacters(
      AAnalysisSource: IDWriteTextAnalysisSource;
      ATextPosition: UInt32;
      ATextLength: UInt32;
      ABaseFontCollection: IDWriteFontCollection;
      const ABaseFamilyName: PWChar;
      ABaseWeight: TDWriteFontWeight;
      ABaseStyle: TDWriteFontStyle;
      ABaseStretch: TDWriteFontStretch;
      out AMappedLength: UInt32;
      out AMappedFont: IDWriteFont;
      out AScale: Single): HRESULT; stdcall;
  end;

  IDWriteFontFallbackBuilder = interface(IUnknown)
    ['{fd882d06-8aba-4fb8-b849-8be8b73e14de}']

    function AddMapping(
      ARanges: PDWRITE_UNICODE_RANGE;
      ARangesCount: UInt32;
      var ATargetFamilyNames: PWCHAR;
      ATargetFamilyNamesCount: UInt32;
      AFontCollection: IDWriteFontCollection = nil;
      ALocaleName: PWCHAR = nil;
      ABaseFamilyName: PWCHAR = nil;
      AScale: Single = 1): HRESULT; stdcall;

    function AddMappings(AFontFallback: IDWriteFontFallback): HRESULT; stdcall;

    function CreateFontFallback(out AFontFallback: IDWriteFontFallback): HRESULT; stdcall;
  end;

  IDWriteFont2 = interface(IDWriteFont1)
    ['{29748ed6-8c9c-4a6a-be0b-d912e8538944}']

    function IsColorFont: BOOL; stdcall;

  end;

  IDWriteFontFace2 = interface(IDWriteFontFace1)
    ['{d8b768ff-64bc-4e66-982b-ec8e87f693f7}']

    function IsColorFont: BOOL; stdcall;

    function GetColorPaletteCount: UInt32; stdcall;

    function GetPaletteEntryCount: UInt32; stdcall;

    function GetPaletteEntries(
      AColorPaletteIndex: UInt32;
      AFirstEntryIndex: UInt32;
      AEntryCount: UInt32;
      APaletteEntries: PDWriteColorF): HRESULT; stdcall;

    function GetRecommendedRenderingMode(
      AFontEmSize: Single;
      ADpiX: Single;
      ADpiY: Single;
      ATransform: PDWriteMatrix;
      AIsSideways: BOOL;
      AOutlineThreshold: DWRITE_OUTLINE_THRESHOLD;
      AMeasuringMode: TDWriteMeasuringMode;
      ARenderingParams: IDWriteRenderingParams;
      out ARenderingMode: TDWriteRenderingMode;
      out AGridFitMode: DWRITE_GRID_FIT_MODE): HRESULT; stdcall;

  end;

  IDWriteColorGlyphRunEnumerator = interface(IUnknown)
    ['{d31fbe17-f157-41a2-8d24-cb779e0560e8}']

    function MoveNext(out AHasRun: BOOL): HRESULT; stdcall;

    function GetCurrentRun(out AColorGlyphRun: PDWRITE_COLOR_GLYPH_RUN): HRESULT; stdcall;
  end;

  IDWriteRenderingParams2 = interface(IDWriteRenderingParams1)
    ['{f9d711c3-9777-40ae-87e8-3e5af9bf0948}']

    function GetGridFitMode: DWRITE_GRID_FIT_MODE; stdcall;

  end;

  IDWriteFactory2 = interface(IDWriteFactory1)
    ['{0439fc60-ca44-4994-8dee-3a9af7b732ec}']

    function GetSystemFontFallback(out AFontFallback: IDWriteFontFallback): HRESULT; stdcall;

    function CreateFontFallbackBuilder(out AFontFallbackBuilder: IDWriteFontFallbackBuilder): HRESULT; stdcall;

    function TranslateColorGlyphRun(
      ABaselineOriginX: Single;
      ABaselineOriginY: Single;
      const AGlyphRun: PDWriteGlyphRun;
      const AGlyphRunDescription: PDWriteGlyphRunDescription;
      AMeasuringMode: TDWriteMeasuringMode;
      const AWworldToDeviceTransform: PDWriteMatrix;
      AColorPaletteIndex: UInt32;
      out AColorLayers: IDWriteColorGlyphRunEnumerator): HRESULT; stdcall;

    function CreateCustomRenderingParams(
      AGamma: Single;
      AEnhancedContrast: Single;
      AGrayscaleEnhancedContrast: Single;
      AClearTypeLevel: Single;
      APixelGeometry: TDWritePixelGeometry;
      ARenderingMode: TDWriteRenderingMode;
      AGridFitMode: DWRITE_GRID_FIT_MODE;
      out ARenderingParams: IDWriteRenderingParams2): HRESULT; stdcall;

    function CreateGlyphRunAnalysis(
      const glyphRun: PDWriteGlyphRun;
      const transform: PDWriteMatrix;
      renderingMode: TDWriteRenderingMode;
      measuringMode: TDWriteMeasuringMode;
      gridFitMode: DWRITE_GRID_FIT_MODE;
      antialiasMode: DWRITE_TEXT_ANTIALIAS_MODE;
      baselineOriginX: Single;
      baselineOriginY: Single;
      out glyphRunAnalysis: IDWriteGlyphRunAnalysis): HRESULT; stdcall;
  end;

{$ENDREGION}

{$REGION 'dwrite_3.h interfaces'}
  IDWriteRenderingParams3 = interface(IDWriteRenderingParams2)
    ['{b7924baa-391b-412a-8c5c-e44cc2d867dc}']

  end;

  IDWriteFactory3 = interface(IDWriteFactory2)
    ['{9a1b41c3-d3bb-466a-87fc-fe67556a3b65}']

  end;

  IDWriteFontSet = interface(IUnknown)
    ['{53585141-d9f8-4095-8321-d73cf6bd116b}']

  end;

  IDWriteFontSetBuilder = interface(IUnknown)
    ['{2f642afe-9c68-4f40-b8be-457401afcb3d}']

  end;

  IDWriteFontCollection1 = interface(IDWriteFontCollection)
    ['{53585141-d9f8-4095-8321-d73cf6bd116c}']

  end;

  IDWriteFontFamily1 = interface(IDWriteFontFamily)
    ['{da20d8ef-812a-4c43-9802-62ec4abd7adf}']

  end;

  IDWriteFontList1 = interface(IDWriteFontList)
    ['{da20d8ef-812a-4c43-9802-62ec4abd7ade}']

  end;

  IDWriteFontFaceReference = interface(IUnknown)
    ['{5e7fa7ca-dde3-424c-89f0-9fcd6fed58cd}']

  end;

  IDWriteFont3 = interface(IDWriteFont2)
    ['{29748ed6-8c9c-4a6a-be0b-d912e8538944}']

  end;

  IDWriteFontFace3 = interface(IDWriteFontFace2)
    ['{d37d7598-09be-4222-a236-2081341cc1f2}']

  end;

  IDWriteStringList = interface(IUnknown)
    ['{cfee3140-1157-47ca-8b85-31bfcf3f2d0e}']

  end;

  IDWriteFontDownloadListener = interface(IUnknown)
    ['{b06fe5b9-43ec-4393-881b-dbe4dc72fda7}']

  end;

  IDWriteFontDownloadQueue = interface(IUnknown)
    ['{b71e6052-5aea-4fa3-832e-f60d431f7e91}']

  end;

  IDWriteGdiInterop1 = interface(IDWriteGdiInterop)
    ['{4556be70-3abd-4f70-90be-421780a6f515}']

  end;

  IDWriteTextFormat2 = interface(IDWriteTextFormat1)
    ['{f67e0edd-9e3d-4ecc-8c32-4183253dfe70}']

  end;

  IDWriteTextLayout3 = interface(IDWriteTextLayout2)
    ['{07ddcd52-020e-4de8-ac33-6c953d83f92d}']

  end;

  IDWriteColorGlyphRunEnumerator1 = interface(IDWriteColorGlyphRunEnumerator)
    ['{7c5f86da-c7a1-4f05-b8e1-55a179fe5a35}']

  end;

  IDWriteFontFace4 = interface(IDWriteFontFace3)
    ['{27f2a904-4eb8-441d-9678-0563f53e3e2f}']

  end;

  IDWriteFactory4 = interface(IDWriteFactory3)
    ['{4b0b5bd3-0797-4549-8ac5-fe915cc53856}']

  end;

  IDWriteFontSetBuilder1 = interface(IDWriteFontSetBuilder)
    ['{3ff7715f-3cdc-4dc6-9b72-ec5621dccafd}']

  end;

  IDWriteAsyncResult = interface(IUnknown)
    ['{ce25f8fd-863b-4d13-9651-c1f88dc73fe2}']

  end;

  IDWriteRemoteFontFileStream = interface(IDWriteFontFileStream)
    ['{4db3757a-2c72-4ed9-b2b6-1ababe1aff9c}']

  end;

  IDWriteRemoteFontFileLoader = interface(IDWriteFontFileLoader)
    ['{68648c83-6ede-46c0-ab46-20083a887fde}']

  end;

  IDWriteInMemoryFontFileLoader = interface(IDWriteFontFileLoader)
    ['{dc102f47-a12d-4b1c-822d-9e117e33043f}']

  end;

  IDWriteFactory5 = interface(IDWriteFactory4)
    ['{958db99a-be2a-4f09-af7d-65189803d1d3}']

  end;

  IDWriteFactory6 = interface(IDWriteFactory5)
    ['{f3744d80-21f7-42eb-b35d-995bc72fc223}']

  end;

  IDWriteFontFace5 = interface(IDWriteFontFace4)
    ['{98eff3a5-b667-479a-b145-e2fa5b9fdc29}']

  end;

  IDWriteFontResource = interface(IUnknown)
    ['{1f803a76-6871-48e8-987f-b975551c50f2}']

  end;

  IDWriteFontFaceReference1 = interface(IDWriteFontFaceReference)
    ['{c081fe77-2fd1-41ac-a5a3-34983c4ba61a}']

  end;

  IDWriteFontSetBuilder2 = interface(IDWriteFontSetBuilder1)
    ['{ee5ba612-b131-463c-8f4f-3189b9401e45}']

  end;

  IDWriteFontSet1 = interface(IDWriteFontSet)
    ['{7e9fda85-6c92-4053-bc47-7ae3530db4d3}']

  end;

  IDWriteFontList2 = interface(IDWriteFontList1)
    ['{c0763a34-77af-445a-b735-08c37b0a5bf5}']

  end;

  IDWriteFontFamily2 = interface(IDWriteFontFamily1)
    ['{3ed49e77-a398-4261-b9cf-c126c2131ef3}']

  end;

  IDWriteFontCollection2 = interface(IDWriteFontCollection1)
    ['{514039c6-4617-4064-bf8b-92ea83e506e0}']

  end;

  IDWriteTextLayout4 = interface(IDWriteTextLayout3)
    ['{05a9bf42-223f-4441-b5fb-8263685f55e9}']

  end;

  IDWriteTextFormat3 = interface(IDWriteTextFormat2)
    ['{6d3b5641-e550-430d-a85b-b7bf48a93427}']

  end;

  IDWriteFontFallback1 = interface(IDWriteFontFallback)
    ['{2397599d-dd0d-4681-bd6a-f4f31eaade77}']

  end;

  IDWriteFontSet2 = interface(IDWriteFontSet1)
    ['{dc7ead19-e54c-43af-b2da-4e2b79ba3f7f}']

  end;

  IDWriteFontCollection3 = interface(IDWriteFontCollection2)
    ['{a4d055a6-f9e3-4e25-93b7-9e309f3af8e9}']

  end;

  IDWriteFactory7 = interface(IDWriteFactory6)
    ['{35d0e0b3-9076-4d2e-a016-a91b568a06b4}']

  end;

  IDWriteFontSet3 = interface(IDWriteFontSet2)
    ['{7c073ef2-a7f4-4045-8c32-8ab8ae640f90}']

  end;

  IDWriteFontFace6 = interface(IDWriteFontFace5)
    ['{c4b1fe1b-6e84-47d5-b54c-a597981b06ad}']

  end;

{$ENDREGION}

{$REGION 'd2d1effectauthor.h interfaces'}
  ID2D1VertexBuffer = interface(IUnknown)
    ['{9b8b1336-00a5-4668-92b7-ced5d8bf9b7b}']

    function Map(out AData: PByte): HRESULT; stdcall;

    function Unmap: HRESULT; stdcall;

  end;

  ID2D1ResourceTexture = interface(IUnknown)
    ['{688d15c3-02b0-438d-b13a-d1b44c32c39a}']

    function Update(
      const AMinimumExtents: PUInt32;
      const AMaximimumExtents: PUInt32;
      const AStrides: PUInt32;
      ADimensions: UInt32;
      const AData: PByte;
      ADataCount: UInt32): HRESULT; stdcall;

  end;

  ID2D1RenderInfo = interface(IUnknown)
    ['{519ae1bd-d19a-420d-b849-364f594776b7}']

    function SetInputDescription(
      AInputIndex: UINT32;
      AInputDescription: TD2D1InputDescription): HRESULT; stdcall;

    function SetOutputBuffer(
      ABufferPrecision: TD2D1BufferPrecision;
      AChannelDepth: TD2D1ChannelDepth): HRESULT; stdcall;

    procedure SetCached(AIsCached: BOOL); stdcall;

    procedure SetInstructionCountHint(AInstructionCount: UINT32); stdcall;
  end;

  ID2D1DrawInfo = interface(ID2D1RenderInfo)
    ['{693ce632-7f2f-45de-93fe-18d88b37aa21}']

    function SetPixelShaderConstantBuffer(
      const ABuffer: PByte;
      ABufferCount: UInt32): HRESULT; stdcall;

    function SetResourceTexture(
      ATextureIndex: UInt32;
      AResourceTexture: ID2D1ResourceTexture): HRESULT; stdcall;

    function SetVertexShaderConstantBuffer(
      const ABuffer: PByte;
      ABufferCount: UInt32): HRESULT; stdcall;

    function SetPixelShader(
      AShaderId: TGUID;
      APixelOptions: TD2D1PixelOptions = D2D1_PIXEL_OPTIONS_NONE): HRESULT; stdcall;

    function SetVertexProcessing(
      AVertexBuffer: ID2D1VertexBuffer;
      AVertexOptions: TD2D1VertexOptions;
      const ABlendDescription: PD2D1BlendDescription = nil;
      const AVertexRangeNULL: PD2D1VertexRange = nil;
      const AVertexShaderNULL: PGUID = nil): HRESULT; stdcall;
  end;

  ID2D1ComputeInfo = interface(ID2D1RenderInfo)
    ['{5598b14b-9fd7-48b7-9bdb-8f0964eb38bc}']

    function SetComputeShaderConstantBuffer(
      const ABuffer: PByte;
      ABufferCount: UInt32): HRESULT; stdcall;

    function SetComputeShader(AHhaderId: TGUID): HRESULT; stdcall;

    function SetResourceTexture(
      ATextureIndex: UInt32;
      AResourceTexture: ID2D1ResourceTexture): HRESULT; stdcall;

  end;

  ID2D1TransformNode = interface(IUnknown)
    ['{b2efe1e7-729f-4102-949f-505fa21bf666}']

    function GetInputCount: UInt32; stdcall;

  end;

  ID2D1TransformGraph = interface(IUnknown)
    ['{13d29038-c3e6-4034-9081-13b53a417992}']

    function GetInputCount: UInt32; stdcall;

    function SetSingleTransformNode(ANode: ID2D1TransformNode): HRESULT; stdcall;

    function AddNode(ANode: ID2D1TransformNode): HRESULT; stdcall;

    function RemoveNode(ANode: ID2D1TransformNode): HRESULT; stdcall;

    function SetOutputNode(ANode: ID2D1TransformNode): HRESULT; stdcall;

    function ConnectNode(
      AFromNode: ID2D1TransformNode;
      AToNode: ID2D1TransformNode;
      AToNodeInputIndex: UInt32): HRESULT; stdcall;

    function ConnectToEffectInput(
      AToEffectInputIndex: UINT32;
      ANode: ID2D1TransformNode;
      AToNodeInputIndex: UINT32): HRESULT; stdcall;

    procedure Clear; stdcall;

    function SetPassthroughGraph(AEffectInputIndex: UINT32): HRESULT; stdcall;


  end;

  ID2D1Transform = interface(ID2D1TransformNode)
    ['{ef1a287d-342a-4f76-8fdb-da0d6ea9f92b}']

    function MapOutputRectToInputRects(
      const AOutputRect: PD2D1RectL;
      out AInputRects: TD2D1RectL;
      AInputRectsCount: UInt32): HRESULT; stdcall;

    function MapInputRectsToOutputRect(
      const AInputRects: PD2D1RectL;
      const AInputOpaqueSubRects: PD2D1RectL;
      AInputRectCount: UInt32;
      out AOutputRect: TD2D1RectL;
      out AOutputOpaqueSubRect: TD2D1RectL): HRESULT; stdcall;

    function MapInvalidRect(
      AInputIndex: UInt32;
      AInvalidInputRect: TD2D1RectL;
      out AInvalidOutputRect: TD2D1RectL): HRESULT; stdcall;

  end;

  ID2D1DrawTransform = interface(ID2D1Transform)
    ['{36bfdcb6-9739-435d-a30d-a653beff6a6f}']

    function SetDrawInfo(ADrawInfo: ID2D1DrawInfo): HRESULT; stdcall;

  end;

  ID2D1ComputeTransform = interface(ID2D1Transform)
    ['{0d85573c-01e3-4f7d-bfd9-0d60608bf3c3}']

    function SetComputeInfo(AComputeInfo: ID2D1ComputeInfo): HRESULT; stdcall;

    function CalculateThreadgroups(
      const AOutputRect: PD2D1RectL;
      out ADimensionX: UInt32;
      out ADimensionY: UInt32;
      out ADimensionZ: UInt32): HRESULT; stdcall;

  end;

  ID2D1AnalysisTransform = interface(IUnknown)
    ['{0359dc30-95e6-4568-9055-27720d130e93}']

    function ProcessAnalysisResults(
      const AAnalysisData: PByte;
      AAnalysisDataCount: UInt32): HRESULT; stdcall;

  end;

  ID2D1SourceTransform = interface(ID2D1Transform)
    ['{db1800dd-0c34-4cf9-be90-31cc0a5653e1}']

    function SetRenderInfo(ARenderInfo: ID2D1RenderInfo): HRESULT; stdcall;

    function Draw(
      ATarget: ID2D1Bitmap1;
      const ADrawRect: PD2D1RectL;
      ATargetOrigin: TD2D1Point2U): HRESULT; stdcall;

  end;

  ID2D1ConcreteTransform = interface(ID2D1TransformNode)
    ['{1a799d8a-69f7-4e4c-9fed-437ccc6684cc}']

    function SetOutputBuffer(
      ABufferPrecision: TD2D1BufferPrecision;
      AChannelDepth: TD2D1ChannelDepth): HRESULT; stdcall;

    procedure SetCached(AIsCached: BOOL); stdcall;

  end;

  ID2D1BlendTransform = interface(ID2D1ConcreteTransform)
    ['{63ac0b32-ba44-450f-8806-7f4ca1ff2f1b}']

    procedure SetDescription(const ADescription: TD2D1BlendDescription); stdcall;

    procedure GetDescription(out ADescription: TD2D1BlendDescription); stdcall;

  end;

  ID2D1BorderTransform = interface(ID2D1ConcreteTransform)
    ['{4998735c-3a19-473c-9781-656847e3a347}']

    procedure SetExtendModeX(AExtendMode: TD2D1ExtendMode); stdcall;

    procedure SetExtendModeY(AExtendMode: TD2D1ExtendMode); stdcall;

    function GetExtendModeX: TD2D1ExtendMode; stdcall;

    function GetExtendModeY: TD2D1ExtendMode; stdcall;

  end;

  ID2D1OffsetTransform = interface(ID2D1TransformNode)
    ['{3fe6adea-7643-4f53-bd14-a0ce63f24042}']

    procedure SetOffset(AOffset: TD2D1Point2L); stdcall;

    function GetOffset: TD2D1Point2L; stdcall;
  end;

  ID2D1BoundsAdjustmentTransform = interface(ID2D1TransformNode)
    ['{90f732e2-5092-4606-a819-8651970baccd}']

    procedure SetOutputBounds(const AOutputBounds: TD2D1RectL); stdcall;

    procedure GetOutputBounds(out AOutputBounds: TD2D1RectL); stdcall;

  end;

  ID2D1EffectImpl = interface(IUnknown)
    ['{a248fd3f-3e6c-4e63-9f03-7f68ecc91db9}']

    function Initialize(
      AEffectContext: ID2D1EffectContext;
      ATransformGraph: ID2D1TransformGraph): HRESULT; stdcall;

    function PrepareForRender(AChangeType: TD2D1ChangeType): HRESULT; stdcall;

    function SetGraph(ATransformGraph: ID2D1TransformGraph): HRESULT; stdcall;

  end;

  ID2D1EffectContext = interface(IUnknown)
    ['{3d9f916b-27dc-4ad7-b4f1-64945340f563}']

    procedure GetDpi(
      out ADpiX: Single;
      out ADpiY: Single); stdcall;

    function CreateEffect(
      AEffectId: TGUID;
      out AEffect: ID2D1Effect): HRESULT; stdcall;

    function GetMaximumSupportedFeatureLevel(
      const AFeatureLevels: PD3D_FEATURE_LEVEL;
      AFeatureLevelsCount: UInt32;
      out AMaximumSupportedFeatureLevel: D3D_FEATURE_LEVEL): HRESULT; stdcall;

    function CreateTransformNodeFromEffect(
      AEffect: ID2D1Effect;
      out ATransformNode: ID2D1TransformNode): HRESULT; stdcall;

    function CreateBlendTransform(
      ANumInputs: UINT32;
      const ABlendDescription: PD2D1BlendDescription;
      out ATransform: ID2D1BlendTransform): HRESULT; stdcall;

    function CreateBorderTransform(
      AExtendModeX: TD2D1ExtendMode;
      AExtendModeY: TD2D1ExtendMode;
      out ATransform: ID2D1BorderTransform): HRESULT; stdcall;

    function CreateOffsetTransform(
      AOffset: TD2D1Point2L;
      out ATransform: ID2D1OffsetTransform): HRESULT; stdcall;

    function CreateBoundsAdjustmentTransform(
      const AOutputRectangle: PD2D1RectL;
      out ATransform: ID2D1BoundsAdjustmentTransform): HRESULT; stdcall;

    function LoadPixelShader(
      AShaderId: TGUID;
      const AShaderBuffer: PByte;
      AShaderBufferCount: UInt32): HRESULT; stdcall;

    function LoadVertexShader(
      AResourceId: TGUID;
      const AShaderBuffer: PByte;
      AShaderBufferCount: UInt32): HRESULT; stdcall;

    function LoadComputeShader(
      AResourceId: TGUID;
      const AShaderBuffer: PByte;
      AShaderBufferCount: UInt32): HRESULT; stdcall;

    function IsShaderLoaded(AShaderId: TGUID): BOOL; stdcall;

    function CreateResourceTexture(
      const AResourceId: PGUID;
      const AResourceTextureProperties: PD2D1InputElementDesc;
      const AData: PByte;
      const AStrides: PUint32;
      ADataSize: UInt32;
      out AResourceTexture: ID2D1ResourceTexture): HRESULT; stdcall;

    function FindResourceTexture(
      const AResourceId: PGUID;
      out AResourceTexture: ID2D1ResourceTexture): HRESULT; stdcall;

    function CreateVertexBuffer(
      const AVertexBufferProperties: PD2D1VertexBufferProperties;
      const AResourceId: PGUID;
      const ACustomVertexBufferProperties: PD2D1CustomVertexBufferProperties;
      out ABuffer: ID2D1VertexBuffer): HRESULT; stdcall;

    function FindVertexBuffer(
      const AResourceId: PGUID;
      out ABuffer: ID2D1VertexBuffer): HRESULT; stdcall;

    function CreateColorContext(
      ASpace: TD2D1ColorSpace;
      const AProfile: PByte;
      AProfileSize: UInt32;
      out AColorContext: ID2D1ColorContext): HRESULT; stdcall;

    function CreateColorContextFromFilename(
      AFilename: LPCWSTR;
      out AColorContext: ID2D1ColorContext): HRESULT; stdcall;

    function CreateColorContextFromWicColorContext(
      AWiColorContext: IWICColorContext;
      out AColorContext: ID2D1ColorContext): HRESULT; stdcall;

    function CheckFeatureSupport(
      AFeature: TD2D1Feature;
      AFeatureSupportData: Pointer;
      AFeatureSupportDataSize: UInt32): HRESULT; stdcall;

    function IsBufferPrecisionSupported(ABufferPrecision: TD2D1BufferPrecision): BOOL; stdcall;

  end;
{$ENDREGION}

{$REGION 'd21effectauthor_1.h interfaces'}

  ID2D1EffectContext1 = interface(ID2D1EffectContext)
    ['{84ab595a-fc81-4546-bacd-e8ef4d8abe7a}']

    function CreateLookupTable3D(
      APrecision: TD2D1BufferPrecision;
      const AExtents: PUint32;
      const AData: PByte;
      ADataCount: UInt32;
      const AStrides: PUint32;
      out ALookupTable: ID2D1LookupTable3D): HRESULT; stdcall;

  end;

  ID2D1EffectContext2 = interface(ID2D1EffectContext1)
    ['{577ad2a0-9fc7-4dda-8b18-dab810140052}']

    function CreateColorContextFromDxgiColorSpace(
      AColorSpace: DXGI_COLOR_SPACE_TYPE;
      out AColorContext: ID2D1ColorContext1): HRESULT; stdcall;

    function CreateColorContextFromSimpleColorProfile(
      const ASimpleProfile: PD2D1SimpleColorProfile;
      out AColorContext: ID2D1ColorContext1): HRESULT; stdcall;
  end;

{$ENDREGION}

{$REGION 'd2d1svg.h'}

  ID2D1SvgAttribute = interface(ID2D1Resource)
    ['{c9cdb0dd-f8c9-4e70-b7c2-301c80292c5e}']

    procedure GetElement(out AElement: ID2D1SvgElement); stdcall;

    function Clone(out AAttribute: ID2D1SvgAttribute): HRESULT; stdcall;
  end;

  ID2D1SvgPaint = interface(ID2D1SvgAttribute)
    ['{d59bab0a-68a2-455b-a5dc-9eb2854e2490}']

    function SetPaintType(APaintType: TD2D1SvgPaintType): HRESULT; stdcall;

    function GetPaintType: TD2D1SvgPaintType; stdcall;

    function SetColor(const AColor: PD2D1ColorF): HRESULT; stdcall;

    procedure GetColor(AColor: TD2D1ColorF); stdcall;

    function SetId(AId: LPCWSTR): HRESULT; stdcall;

    function GetId(
      out AId: LPWSTR;
      AIdCount: UInt32): HRESULT; stdcall;

    function GetIdLength: UInt32; stdcall;

  end;

  ID2D1SvgStrokeDashArray = interface(ID2D1SvgAttribute)
    ['{f1c0ca52-92a3-4f00-b4ce-f35691efd9d9}']

    function RemoveDashesAtEnd(ADashesCount: UInt32): HRESULT; stdcall;

    function UpdateDashes(
      const ADashes: PSingle;
      ADashesCount: UInt32;
      AStartIndex: UInt32 = 0): HRESULT; stdcall; overload;

    function UpdateDashes(
      const ADashes: PD2D1SvgLength;
      ADashesCount: UInt32;
      AStartIndex: UInt32 = 0): HRESULT; stdcall; overload;

    function GetDashes(
      ADashes: PSingle;
      ADashesCount: UInt32;
      AStartIndex: UInt32 = 0): HRESULT; stdcall; overload;

    function GetDashes(
      ADashes: PD2D1SvgLength;
      ADashesCount: UInt32;
      AStartIndex: UInt32 = 0): HRESULT; stdcall; overload;

    function GetDashesCount: UInt32; stdcall;

  end;

  ID2D1SvgPointCollection = interface(ID2D1SvgAttribute)
    ['{9dbe4c0d-3572-4dd9-9825-5530813bb712}']

    function RemovePointsAtEnd(APointsCount: UInt32): HRESULT; stdcall;

    function UpdatePoints(
      const APoints: PD2D1Point2F;
      APointsCount: UInt32;
      AStartIndex: UInt32 = 0): HRESULT; stdcall;

    function GetPoints(
      APoints: PD2D1Point2F;
      APointsCount: UInt32;
      AStartIndex: UInt32 = 0): HRESULT; stdcall;

    function GetPointsCount: UInt32; stdcall;

  end;

  ID2D1SvgPathData = interface(ID2D1SvgAttribute)
    ['{c095e4f4-bb98-43d6-9745-4d1b84ec9888}']

    function RemoveSegmentDataAtEnd(ADataCount: UInt32): HRESULT; stdcall;

    function UpdateSegmentData(
      const AData: PSingle;
      ADataCount: UInt32;
      AStartIndex: UInt32 = 0): HRESULT; stdcall;

    function GetSegmentData(
      AData: PSingle;
      ADataCount: UInt32;
      AStartIndex: UInt32 = 0): HRESULT; stdcall;

    function GetSegmentDataCount: UInt32; stdcall;

    function RemoveCommandsAtEnd(ACommandsCount: UInt32): HRESULT; stdcall;

    function UpdateCommands(
      const ACommands: PD2D1SvgPathCommand;
      ACommandsCount: UInt32;
      AStartIndex: UInt32 = 0): HRESULT; stdcall;

    function GetCommands(
      ACommands: PD2D1SvgPathCommand;
      ACommandsCount: UInt32;
      AStartIndex: UInt32 = 0): HRESULT; stdcall;

    function GetCommandsCount: UInt32; stdcall;

    function CreatePathGeometry(
      AFillMode: TD2D1FillMode;
      out APathGeometry: ID2D1PathGeometry1): HRESULT; stdcall;
  end;

  ID2D1SvgElement = interface(ID2D1Resource)
    ['{ac7b67a6-183e-49c1-a823-0ebe40b0db29}']

    procedure GetDocument(out ADocument: ID2D1SvgDocument); stdcall;

    function GetTagName(
      AName: LPWSTR;
      ANameCount: UInt32): HRESULT; stdcall;

    function GetTagNameLength: UInt32; stdcall;

    function IsTextContent: BOOL; stdcall;

    procedure GetParent(out AParent: ID2D1SvgElement); stdcall;

    function HasChildren: BOOL; stdcall;

    procedure GetFirstChild(out AChild: ID2D1SvgElement); stdcall;

    procedure GetLastChild(out AChild: ID2D1SvgElement); stdcall;

    function GetPreviousChild(
      AReferenceChild: ID2D1SvgElement;
      out APreviousChild: ID2D1SvgElement): HRESULT; stdcall;

    function GetNextChild(
      AReferenceChild: ID2D1SvgElement;
      out ANextChild: ID2D1SvgElement): HRESULT; stdcall;

    function InsertChildBefore(
      ANewChild: ID2D1SvgElement;
      AReferenceChild: ID2D1SvgElement = nil): HRESULT; stdcall;

    function AppendChild(ANnewChild: ID2D1SvgElement): HRESULT; stdcall;

    function ReplaceChild(
      ANewChild: ID2D1SvgElement;
      AOldChild: ID2D1SvgElement): HRESULT; stdcall;

    function RemoveChild(AOldChild: ID2D1SvgElement): HRESULT; stdcall;

    function CreateChild(
      ATagName: LPCWSTR;
      out ANewChild: ID2D1SvgElement): HRESULT; stdcall;

    function IsAttributeSpecified(
      AName: LPCWSTR;
      out AInherited: BOOL): BOOL; stdcall;

    function GetSpecifiedAttributeCount: UInt32; stdcall;

    function GetSpecifiedAttributeName(
      AIndex: UInt32;
      AName: LPWSTR;
      ANameCount: UInt32;
      out AInherited): HRESULT; stdcall;

    function GetSpecifiedAttributeNameLength(
      AIndex: UInt32;
      out ANameLength: UINT32;
      out AInherited: BOOL): HRESULT; stdcall;

    function RemoveAttribute(AName: LPCWSTR): HRESULT; stdcall;

    function SetTextValue(
      const AName: PWideChar;
      ANameCount: UInt32): HRESULT; stdcall;

    function GetTextValue(
      AName: PWideChar;
      ANameCount: UInt32): HRESULT; stdcall;

    function GetTextValueLength: UInt32; stdcall;

    function SetAttributeValue(
      AName: LPCWSTR;
      AType: TD2D1SvgAttributeStringType;
      AValue: LPCWSTR): HRESULT; stdcall; overload;

    function GetAttributeValue(
      AName: LPCWSTR;
      ATtype: TD2D1SvgAttributeStringType;
      AValue: LPWSTR;
      AValueCount: UInt32): HRESULT; stdcall; overload;

    function GetAttributeValueLength(
      AName: LPCWSTR;
      AType: TD2D1SvgAttributeStringType;
      out AValueLength: UInt32): HRESULT; stdcall;

    function SetAttributeValue(
      AName: LPCWSTR;
      AType: TD2D1SvgAttributePodType;
      const AValue: Pointer;
      AValueSizeInBytes: UInt32): HRESULT; stdcall; overload;

    function GetAttributeValue(
      AName: LPCWSTR;
      Atype: TD2D1SvgAttributePodType;
      AValue: Pointer;
      AValueSizeInBytes: UInt32): HRESULT; stdcall; overload;

    function SetAttributeValue(
      AName: LPCWSTR;
      AValue: ID2D1SvgAttribute): HRESULT; stdcall; overload;

    function GetAttributeValue(
      AName: LPCWSTR;
      ARiid: TGUID;
      out AValue: Pointer): HRESULT; stdcall; overload;

  end;

  ID2D1SvgDocument = interface(ID2D1Resource)
    ['{86b88e4d-afa4-4d7b-88e4-68a51c4a0aec}']

    function SetViewportSize(AViewportSize: TD2D1SizeF): HRESULT; stdcall;

    function GetViewportSize: TD2D1SizeF; stdcall;

    function SetRoot(ARoot: ID2D1SvgElement): HRESULT; stdcall;

    procedure GetRoot(out ARoot: ID2D1SvgElement); stdcall;

    function FindElementById(
      AId: LPCWSTR;
      out ASvgElement: ID2D1SvgElement): HRESULT; stdcall;

    function Serialize(
      AOutputXmlStream: IStream;
      ASubtree: ID2D1SvgElement = nil): HRESULT; stdcall;

    function Deserialize(
      AInputXmlStream: IStream;
      out ASubtree: ID2D1SvgElement): HRESULT; stdcall;

    function CreatePaint(
      APaintType: TD2D1SvgPaintType;
      const AColor: PD2D1ColorF;
      AId: LPCWSTR;
      out APaint: ID2D1SvgPaint): HRESULT; stdcall;

    function CreateStrokeDashArray(
      const ADashes: PD2D1SvgLength;
      ADashesCount: UInt32;
      out AStrokeDashArray: ID2D1SvgStrokeDashArray): HRESULT; stdcall;

    function CreatePointCollection(
      const APoints: PD2D1Point2F;
      APointsCount: UInt32;
      out APointCollection: ID2D1SvgPointCollection): HRESULT; stdcall;

    function CreatePathData(
      const ASegmentData: PSingle;
      ASegmentDataCount: UInt32;
      const ACommands: PD2D1SvgPathCommand;
      ACommandsCount: UInt32;
      out APathData: ID2D1SvgPathData): HRESULT; stdcall;
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
      APrinterName: LPCWSTR;
      AJobName: LPCWSTR;
      AJobOutputStream: IStream;
      AJobPrintTicketStream: IStream;
      out ADocPackageTarget: IPrintDocumentPackageTarget): HRESULT; stdcall;
  end;

  IPrintDocumentPackageStatusEvent = interface(IDispatch)
    ['{ed90c8ad-5c34-4d05-a1ec-0e8a9b3ad7af}']

     function PackageStatusUpdated(APackageStatus: PrintDocumentPackageStatus): HRESULT; stdcall;
  end;

{$ENDREGION}

{$REGION 'constants'}

const
  dwritelib = 'DWRITE.DLL';
  d2d1lib = 'd2d1.dll';

  D2DERR_UNSUPPORTED_PIXEL_FORMAT             = WINCODEC_ERR_UNSUPPORTEDPIXELFORMAT;
  D2DERR_INSUFFICIENT_BUFFER                  = HRESULT($8007007A);
  D2DERR_WRONG_STATE                          = HRESULT($88990001);
  D2DERR_NOT_INITIALIZED                      = HRESULT($88990002);
  D2DERR_UNSUPPORTED_OPERATION                = HRESULT($88990003);
  D2DERR_SCANNER_FAILED                       = HRESULT($88990004);
  D2DERR_SCREEN_ACCESS_DENIED                 = HRESULT($88990005);
  D2DERR_DISPLAY_STATE_INVALID                = HRESULT($88990006);
  D2DERR_ZERO_VECTOR                          = HRESULT($88990007);
  D2DERR_INTERNAL_ERROR                       = HRESULT($88990008);
  D2DERR_DISPLAY_FORMAT_NOT_SUPPORTED         = HRESULT($88990009);
  D2DERR_INVALID_CALL                         = HRESULT($8899000A);
  D2DERR_NO_HARDWARE_DEVICE                   = HRESULT($8899000B);
  D2DERR_RECREATE_TARGET                      = HRESULT($8899000C);
  D2DERR_TOO_MANY_SHADER_ELEMENTS             = HRESULT($8899000D);
  D2DERR_SHADER_COMPILE_FAILED                = HRESULT($8899000E);
  D2DERR_MAX_TEXTURE_SIZE_EXCEEDED            = HRESULT($8899000F);
  D2DERR_UNSUPPORTED_VERSION                  = HRESULT($88990010);
  D2DERR_BAD_NUMBER                           = HRESULT($88990011);
  D2DERR_WRONG_FACTORY                        = HRESULT($88990012);
  D2DERR_LAYER_ALREADY_IN_USE                 = HRESULT($88990013);
  D2DERR_POP_CALL_DID_NOT_MATCH_PUSH          = HRESULT($88990014);
  D2DERR_WRONG_RESOURCE_DOMAIN                = HRESULT($88990015);
  D2DERR_PUSH_POP_UNBALANCED                  = HRESULT($88990016);
  D2DERR_RENDER_TARGET_HAS_LAYER_OR_CLIPRECT  = HRESULT($88990017);
  D2DERR_INCOMPATIBLE_BRUSH_TYPES             = HRESULT($88990018);
  D2DERR_WIN32_ERROR                          = HRESULT($88990019);
  D2DERR_TARGET_NOT_GDI_COMPATIBLE            = HRESULT($8899001A);
  D2DERR_TEXT_EFFECT_IS_WRONG_TYPE            = HRESULT($8899001B);
  D2DERR_TEXT_RENDERER_NOT_RELEASED           = HRESULT($8899001C);
  D2DERR_EXCEEDS_MAX_BITMAP_SIZE              = HRESULT($8899001D);

  DWRITE_E_FILEFORMAT                         = HRESULT($88985000);
  DWRITE_E_UNEXPECTED                         = HRESULT($88985001);
  DWRITE_E_NOFONT                             = HRESULT($88985002);
  DWRITE_E_FILENOTFOUND                       = HRESULT($88985003);
  DWRITE_E_FILEACCESS                         = HRESULT($88985004);
  DWRITE_E_FONTCOLLECTIONOBSOLETE             = HRESULT($88985005);
  DWRITE_E_ALREADYREGISTERED                  = HRESULT($88985006);
{$ENDREGION}

{$REGION 'imported functions (d2d1, dwrite)'}

function D2D1CreateFactory(
  AFactoryType: TD2D1FactoryType;
  const ARiid: TGUID;
  const AFactoryOptions: PD2D1FactoryOptions;
  out AIFactory): HRESULT; stdcall; external d2d1lib;

function DWriteCreateFactory(
  AFactoryType: TDWriteFactoryType;
  const AIid: TGUID;
  out AFactory: IUnknown): HRESULT; stdcall; external dwritelib;

procedure D2D1MakeRotateMatrix(
  AAngle: Single;
  ACenter: TD2D1Point2F;
  out AMatrix: TD2D1Matrix3x2F); stdcall; external d2d1lib;

procedure D2D1MakeSkewMatrix(
  AAngleX: Single;
  AAngleY: Single;
  ACenter: TD2D1Point2F;
  out AMatrix: TD2D1Matrix3x2F); stdcall; external d2d1lib;

function D2D1IsMatrixInvertible(
  const AMatrix: PD2D1Matrix3x2F): BOOL; stdcall; external d2d1lib;

function D2D1InvertMatrix(
  AMatrix: PD2D1Matrix3x2F): BOOL; stdcall; external d2d1lib;

function D2D1CreateDevice(
  ADXGIDevice: IDXGIDevice;
  const ACreationProperties: PD2D1CreationProperties;
  out AD2DDevice: ID2D1Device): HRESULT; stdcall; external d2d1lib;

function D2D1CreateDeviceContext(
  ADXGISurface: IDXGISurface;
  const ACreationProperties: PD2D1CreationProperties;
  out AD2DDeviceContext: ID2D1DeviceContext): HRESULT; stdcall; external d2d1lib;

function D2D1ConvertColorSpace(
  ASourceColorSpace: TD2D1ColorSpace;
  ADestinationColorSpace: TD2D1ColorSpace;
  const AColor: PD2D1ColorF): TD2D1ColorF; stdcall; external d2d1lib;

procedure D2D1SinCos(
  AAngle: Single;
  out ASin: Single;
  out ACos: Single); stdcall; external d2d1lib;

function D2D1Tan(AAnangle: Single): Single; stdcall; external d2d1lib;

function D2D1Vec3Length(
  AX: Single;
  AY: Single;
  AZ: Single): Single; stdcall; external d2d1lib;
{$ENDREGION}

{$REGION 'xxx yyy zzz'}

{$ENDREGION}

{$REGION 'user functions'}
function D2D1CreateBitmap(ARenderTarget: ID2D1RenderTarget; ASrcBitmap: TBitmap; out AD2D1Bitmap: ID2D1Bitmap): HRESULT;
{$ENDREGION}

implementation

{=========================================================================================================================================}
procedure SetBits8(var ABits: Byte; AIndex: Integer; AValue: Byte);
var O, M: Integer;
begin
  {
     max x and max y => 16 bit

     xxxx xxxx yyyy yyyy
     x - offset
     y - value
  }

  O := AIndex shr 8;
  M := AIndex and $FF;

  ABits := (ABits and not (M shl O)) or ((AValue and M) shl O);
end;

{=========================================================================================================================================}
function GetBits8(ABits: Byte; AIndex: Integer): Byte;
begin
  Result := (ABits shr (AIndex shr 8)) and (AIndex and $FF);
end;

{=========================================================================================================================================}
procedure SetBits16(var ABits: Word; AIndex: Integer; AValue: Word);
var O, M: Integer;
begin
  {
     max x and max y => 16 bit

     xxxx xxxx yyyy yyyy
     x - offset
     y - value
  }

  O := AIndex shr 16;
  M := AIndex and $FFFF;

  ABits := (ABits and not (M shl O)) or ((AValue and M) shl O);
end;

{=========================================================================================================================================}
function GetBits16(ABits: Word; AIndex: Integer): Word;
begin
  Result := (ABits shr (AIndex shr 16)) and (AIndex and $FFFF);
end;

{=========================================================================================================================================}
procedure SetBits32(var ABits: UInt32; AIndex: Integer; AValue: UInt32);
var O, M: Integer;
begin
  {
     max x and max y => 16 bit

     xxxx xxxx yyyy yyyy
     x - offset
     y - value
  }

  O := AIndex shr 16;
  M := AIndex and $FFFF;

  ABits := (ABits and not (M shl O)) or ((AValue and M) shl O);
end;

{=========================================================================================================================================}
function GetBits32(ABits: UInt32; AIndex: Integer): UInt32;
begin
  Result := (ABits shr (AIndex shr 16)) and (AIndex and $FFFF);
end;

{=========================================================================================================================================}
{ DWRITE_LINE_BREAKPOINT }
{=========================================================================================================================================}
procedure DWRITE_LINE_BREAKPOINT.SetByte(const AIndex: Integer; AValue: Byte);
begin
  SetBits8(Data, AIndex, AValue)
end;

{=========================================================================================================================================}
function DWRITE_LINE_BREAKPOINT.GetByte(const AIndex: Integer): Byte;
begin
  Result := GetBits8(Data, AIndex);
end;

{=========================================================================================================================================}
{ DWRITE_SHAPING_TEXT_PROPERTIES }
{=========================================================================================================================================}
procedure DWRITE_SHAPING_TEXT_PROPERTIES.SetWord(const AIndex: Integer; AValue: WORD);
begin
  SetBits16(Data, AIndex, AValue);
end;

{=========================================================================================================================================}
function DWRITE_SHAPING_TEXT_PROPERTIES.GetWord(const AIndex: Integer): WORD;
begin
  Result := GetBits16(Data, AIndex);
end;

{=========================================================================================================================================}
{ DWRITE_SHAPING_GLYPH_PROPERTIES }
{=========================================================================================================================================}
procedure DWRITE_SHAPING_GLYPH_PROPERTIES.SetWord(const AIndex: Integer; AValue: WORD);
begin
  SetBits16(Data, AIndex, AValue);
end;

{=========================================================================================================================================}
function DWRITE_SHAPING_GLYPH_PROPERTIES.GetWord(const AIndex: Integer): WORD;
begin
  Result := GetBits16(Data, AIndex);
end;

{=========================================================================================================================================}
{ DWRITE_CLUSTER_METRICS }
{=========================================================================================================================================}
procedure DWRITE_CLUSTER_METRICS.SetWord(const AIndex: Integer; AValue: WORD);
begin
  SetBits16(Data, AIndex, AValue)
end;

{=========================================================================================================================================}
function DWRITE_CLUSTER_METRICS.GetWord(const AIndex: Integer): WORD;
begin
  Result := GetBits16(Data, AIndex);
end;

{=========================================================================================================================================}
{ DWRITE_SCRIPT_PROPERTIES }
{=========================================================================================================================================}
procedure DWRITE_SCRIPT_PROPERTIES.SetDWord(const AIndex: Integer; AValue: UInt32);
begin
  SetBits32(Data, AIndex, AValue);
end;

{=========================================================================================================================================}
function DWRITE_SCRIPT_PROPERTIES.GetDWord(const AIndex: Integer): UInt32;
begin
  Result := GetBits32(Data, AIndex);
end;

{=========================================================================================================================================}
procedure DWRITE_SCRIPT_PROPERTIES.SetReserved(AVal: UInt32);
begin
  Data := (Data and (not $FFFFFF80)) or ((AVal and $01FFFFFF) shl 7);
end;

{=========================================================================================================================================}
function DWRITE_SCRIPT_PROPERTIES.GetReserved: UInt32;
begin
  Result := (Data and $FFFFFF80) shr 7;
end;

{=========================================================================================================================================}
{ DWRITE_JUSTIFICATION_OPPORTUNITY }
{=========================================================================================================================================}
procedure DWRITE_JUSTIFICATION_OPPORTUNITY.SetDWord(const AIndex: Integer; AValue: UInt32);
begin
  SetBits32(Data, AIndex, AValue);
end;

{=========================================================================================================================================}
function DWRITE_JUSTIFICATION_OPPORTUNITY.GetDWord(const AIndex: Integer): UInt32;
begin
  Result := GetBits32(Data, AIndex);
end;
{=========================================================================================================================================}

{$REGION 'user functions'}
function D2D1CreateBitmap(ARenderTarget: ID2D1RenderTarget; ASrcBitmap: TBitmap; out AD2D1Bitmap: ID2D1Bitmap): HRESULT;
var
  BMPInfo: TBitmapInfo;
  BMPProp: TD2D1BitmapProperties;
  BMPHandle: HBitmap;

  BuffArr: Array of Byte;

  ImgSize: TD2D1SizeU;
begin

  // Original realization from Direct2D

  FillChar(BMPInfo, SizeOf(BMPInfo), 0);
  BMPInfo.bmiHeader.biSize := Sizeof(BMPInfo.bmiHeader);
  BMPInfo.bmiHeader.biHeight := -ASrcBitmap.Height;
  BMPInfo.bmiHeader.biWidth := ASrcBitmap.Width;
  BMPInfo.bmiHeader.biPlanes := 1;
  BMPInfo.bmiHeader.biBitCount := 32;

  SetLength(BuffArr, ASrcBitmap.Height * ASrcBitmap.Width * 4);
  // Forces evaluation of ASrcBitmap.Handle before ASrcBitmap.Canvas.Handle
  BMPHandle := ASrcBitmap.Handle;
  GetDIBits(ASrcBitmap.Canvas.Handle, BMPHandle, 0, ASrcBitmap.Height, @BuffArr[0], BMPInfo, DIB_RGB_COLORS);

  BMPProp.DpiX := 0;
  BMPProp.DpiY := 0;
  BMPProp.PixelFormat.DXGIFormat := DXGI_FORMAT_B8G8R8A8_UNORM;
  BMPProp.PixelFormat.AlphaMode := D2D1_ALPHA_MODE_PREMULTIPLIED;

  if (ASrcBitmap.PixelFormat <> pf32bit) or (ASrcBitmap.AlphaFormat = afIgnored) then
    BMPProp.PixelFormat.AlphaMode := D2D1_ALPHA_MODE_IGNORE;

  ImgSize.Width := ASrcBitmap.Width;
  ImgSize.Height := ASrcBitmap.Height;

  Result := ARenderTarget.CreateBitmap(
    ImgSize,
    @BuffArr[0],
    ASrcBitmap.Width * 4,
    @BMPProp,
    AD2D1Bitmap);
end;

{$ENDREGION}

{=========================================================================================================================================}


end.