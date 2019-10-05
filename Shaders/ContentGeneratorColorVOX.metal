//
//  ContentGeneratorColorVOX.metal
//  VoxelKitShaders
//
//  Created by Hexagons on 2019-10-05.
//  Copyright © 2019 Hexagons. All rights reserved.
//

#include <metal_stdlib>
using namespace metal;

struct VertexOut {
    float4 position [[position]];
    float2 texCoord;
};

struct Uniforms {
    float r;
    float g;
    float b;
    float a;
    float premultiply;
    float aspect;
};

fragment float4 contentGeneratorColorVOX(VertexOut out [[stage_in]],
                                          const device Uniforms& in [[ buffer(0) ]],
                                          sampler s [[ sampler(0) ]]) {
    
    float4 c = float4(in.r, in.g, in.b, in.a);

    if (in.premultiply) {
        c = float4(c.r * c.a, c.g * c.a, c.b * c.a, c.a);
    }
    
    return c;
}

