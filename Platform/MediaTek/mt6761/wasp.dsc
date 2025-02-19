[Defines]
  PLATFORM_NAME                  = wasp
  PLATFORM_GUID                  = 06b7ddb6-4dd4-4b9d-b2b3-7471d73281fa
  PLATFORM_VERSION               = 0.1
  DSC_SPECIFICATION              = 0x00010019
  OUTPUT_DIRECTORY               = Build/$(PLATFORM_NAME)
  SUPPORTED_ARCHITECTURES        = AARCH64
  BUILD_TARGETS                  = DEBUG|RELEASE
  SKUID_IDENTIFIER               = DEFAULT
  FLASH_DEFINITION               = Platform/MediaTek/mt6761/mt6761.fdf
  DEVICE_DXE_FV_COMPONENTS       = Platform/MediaTek/mt6761/mt6761.fdf.inc

!include Platform/MediaTek/mt6761/mt6761.dsc

[BuildOptions.common]
  GCC:*_*_AARCH64_CC_FLAGS = -DENABLE_SIMPLE_INIT

[PcdsFixedAtBuild.common]
  gMediaTekTokenSpaceGuid.PcdMipiFrameBufferWidth|736
  gMediaTekTokenSpaceGuid.PcdMipiFrameBufferHeight|1520
  gMediaTekTokenSpaceGuid.PcdMipiFrameBufferAddress|0x7d870000

  # Simple Init
  gSimpleInitTokenSpaceGuid.PcdGuiDefaultDPI|320

  gRenegadePkgTokenSpaceGuid.PcdDeviceVendor|"HMD Global"
  gRenegadePkgTokenSpaceGuid.PcdDeviceProduct|"Nokia 2.2"
  gRenegadePkgTokenSpaceGuid.PcdDeviceCodeName|"wasp"
