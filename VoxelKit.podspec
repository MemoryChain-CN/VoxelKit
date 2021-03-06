Pod::Spec.new do |spec|

  spec.name         = "VoxelKit"
  spec.version      = "0.1.0"

  spec.summary      = "Volumetric realtime graphics"
  spec.description  = <<-DESC
  					          Volumetric realtime graphics.
                      DESC

  spec.homepage     = "http://hexagons.se"

  # spec.license      = { :type => "MIT", :file => "LICENSE" }

  spec.author             = { "Hexagons" => "anton@hexagons.se" }
  spec.social_media_url   = "https://twitter.com/anton_hexagons"

  spec.ios.deployment_target = "11.3"
  spec.osx.deployment_target = "10.13"
  spec.tvos.deployment_target = "11.3"

  spec.swift_version = '5.0'

  spec.source       = { :git => "https://github.com/hexagons/voxelkit.git", :branch => "master", :tag => "#{spec.version}" }

  spec.source_files  = "Source", "Source/**/*.swift"

  # spec.ios.exclude_files = 
  # spec.osx.exclude_files = 
  # spec.tvos.exclude_files = 

  spec.ios.resources = "Resources/Metal Libs/VoxelKitShaders-iOS.metallib",
                       "Resources/Metal Libs/VoxelKitShaders-iOS-Simulator.metallib",
                       "Resources/Metal Libs/VoxelKitShaders-macCatalyst.metallib"
  spec.osx.resources = "Resources/Metal Libs/VoxelKitShaders-macOS.metallib"
  spec.tvos.resources = "Resources/Metal Libs/VoxelKitShaders-tvOS.metallib",
                        "Resources/Metal Libs/VoxelKitShaders-tvOS-Simulator.metallib"
  # spec.resources = "Source/PIX/PIXs/Content/Generator/Metal/ContentGeneratorMetalPIX.metal.txt",
  #                  "Source/PIX/PIXs/Effects/Single/Metal/EffectSingleMetalPIX.metal.txt",
  #                  "Source/PIX/PIXs/Effects/Merger/Metal/EffectMergerMetalPIX.metal.txt",
  #                  "Source/PIX/PIXs/Effects/Multi/Metal/EffectMultiMetalPIX.metal.txt"

  spec.dependency 'LiveValues'
  spec.dependency 'RenderKit'
  # spec.framework = 'MetalPerformanceShaders'

end
