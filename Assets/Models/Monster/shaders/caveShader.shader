// Shader created with Shader Forge v1.04 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.04;sub:START;pass:START;ps:flbk:Diffuse,lico:1,lgpr:1,nrmq:1,limd:1,uamb:True,mssp:True,lmpd:False,lprd:False,rprd:False,enco:False,frtr:True,vitr:True,dbil:False,rmgx:True,rpth:0,hqsc:True,hqlp:False,tesm:0,blpr:0,bsrc:0,bdst:1,culm:0,dpts:2,wrdp:True,dith:2,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:1361,x:33519,y:32830,varname:node_1361,prsc:2|diff-1635-OUT,spec-1635-OUT,gloss-9370-OUT,normal-1071-OUT;n:type:ShaderForge.SFN_NormalVector,id:7012,x:31758,y:32677,prsc:2,pt:False;n:type:ShaderForge.SFN_Abs,id:8894,x:32050,y:32662,varname:node_8894,prsc:2|IN-7012-OUT;n:type:ShaderForge.SFN_Append,id:2423,x:32138,y:32882,varname:node_2423,prsc:2|A-5760-Y,B-5760-Z;n:type:ShaderForge.SFN_Multiply,id:5078,x:32413,y:32693,varname:node_5078,prsc:2|A-8894-OUT,B-8894-OUT;n:type:ShaderForge.SFN_FragmentPosition,id:5760,x:31808,y:33031,varname:node_5760,prsc:2;n:type:ShaderForge.SFN_Append,id:3440,x:32138,y:33057,varname:node_3440,prsc:2|A-5760-X,B-5760-Y;n:type:ShaderForge.SFN_Append,id:8694,x:32138,y:33279,varname:node_8694,prsc:2|A-5760-Z,B-5760-X;n:type:ShaderForge.SFN_Tex2d,id:3240,x:32501,y:33213,varname:node_3240,prsc:2,tex:eb6b075902dac064db341d8d2320121d,ntxv:0,isnm:False|UVIN-8694-OUT,TEX-3813-TEX;n:type:ShaderForge.SFN_Tex2dAsset,id:3813,x:32097,y:33493,ptovrint:False,ptlb:rock,ptin:_rock,varname:node_3813,tex:eb6b075902dac064db341d8d2320121d,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:583,x:32501,y:33049,varname:node_583,prsc:2,tex:eb6b075902dac064db341d8d2320121d,ntxv:0,isnm:False|UVIN-3440-OUT,TEX-3813-TEX;n:type:ShaderForge.SFN_Tex2d,id:9941,x:32501,y:32901,varname:node_9941,prsc:2,tex:eb6b075902dac064db341d8d2320121d,ntxv:0,isnm:False|UVIN-2423-OUT,TEX-3813-TEX;n:type:ShaderForge.SFN_Tex2dAsset,id:5382,x:32086,y:33670,ptovrint:False,ptlb:Ground,ptin:_Ground,varname:node_5382,tex:c2920e03b73a66a40bd04bb96aace99c,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:4045,x:32467,y:33382,varname:node_4045,prsc:2,tex:c2920e03b73a66a40bd04bb96aace99c,ntxv:0,isnm:False|UVIN-2423-OUT,TEX-5382-TEX;n:type:ShaderForge.SFN_Tex2d,id:7479,x:32476,y:33508,varname:node_7479,prsc:2,tex:c2920e03b73a66a40bd04bb96aace99c,ntxv:0,isnm:False|UVIN-3440-OUT,TEX-5382-TEX;n:type:ShaderForge.SFN_Tex2d,id:5165,x:32444,y:33635,varname:node_5165,prsc:2,tex:c2920e03b73a66a40bd04bb96aace99c,ntxv:0,isnm:False|UVIN-8694-OUT,TEX-5382-TEX;n:type:ShaderForge.SFN_ChannelBlend,id:7420,x:32813,y:33080,varname:node_7420,prsc:2,chbt:0|M-5078-OUT,R-4045-RGB,G-5165-RGB,B-7479-RGB;n:type:ShaderForge.SFN_ChannelBlend,id:6085,x:32852,y:32865,varname:node_6085,prsc:2,chbt:0|M-5078-OUT,R-9941-RGB,G-3240-RGB,B-583-RGB;n:type:ShaderForge.SFN_Lerp,id:1635,x:33297,y:32890,varname:node_1635,prsc:2|A-7420-OUT,B-6085-OUT,T-2058-OUT;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:3723,x:33123,y:33218,varname:node_3723,prsc:2|IN-5760-Y,IMIN-7204-OUT,IMAX-6724-OUT,OMIN-3321-OUT,OMAX-4822-OUT;n:type:ShaderForge.SFN_Vector1,id:7204,x:32802,y:33335,varname:node_7204,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:6724,x:32802,y:33389,varname:node_6724,prsc:2,v1:1;n:type:ShaderForge.SFN_ValueProperty,id:3321,x:33134,y:33434,ptovrint:False,ptlb:min,ptin:_min,varname:node_3321,prsc:2,glob:False,v1:0;n:type:ShaderForge.SFN_ValueProperty,id:4822,x:32834,y:33551,ptovrint:False,ptlb:max,ptin:_max,varname:node_4822,prsc:2,glob:False,v1:1;n:type:ShaderForge.SFN_Clamp01,id:2058,x:33304,y:33155,varname:node_2058,prsc:2|IN-3723-OUT;n:type:ShaderForge.SFN_Tex2d,id:5015,x:32730,y:32591,varname:node_5015,prsc:2,ntxv:3,isnm:True|UVIN-3440-OUT,TEX-9669-TEX;n:type:ShaderForge.SFN_Tex2dAsset,id:9669,x:32877,y:32268,ptovrint:False,ptlb:rocknormal,ptin:_rocknormal,varname:node_9669,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Tex2dAsset,id:6097,x:33111,y:32268,ptovrint:False,ptlb:groundnormal,ptin:_groundnormal,varname:node_6097,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Slider,id:9370,x:33617,y:32705,ptovrint:False,ptlb:specular,ptin:_specular,varname:node_9370,prsc:2,min:0,cur:0.008547009,max:1;n:type:ShaderForge.SFN_Tex2d,id:3578,x:33091,y:32495,varname:node_3578,prsc:2,ntxv:0,isnm:False|UVIN-2423-OUT,TEX-6097-TEX;n:type:ShaderForge.SFN_Tex2d,id:3464,x:32730,y:32451,varname:node_3464,prsc:2,ntxv:0,isnm:False|UVIN-2423-OUT,TEX-9669-TEX;n:type:ShaderForge.SFN_Tex2d,id:1504,x:33091,y:32624,varname:node_1504,prsc:2,ntxv:0,isnm:False|UVIN-3440-OUT,TEX-6097-TEX;n:type:ShaderForge.SFN_Tex2d,id:6826,x:33080,y:32748,varname:node_6826,prsc:2,ntxv:0,isnm:False|UVIN-8694-OUT,TEX-6097-TEX;n:type:ShaderForge.SFN_Tex2d,id:8647,x:32730,y:32710,varname:node_8647,prsc:2,ntxv:0,isnm:False|UVIN-8694-OUT,TEX-9669-TEX;n:type:ShaderForge.SFN_ChannelBlend,id:1389,x:33370,y:32617,varname:node_1389,prsc:2,chbt:0|M-5078-OUT,R-3578-RGB,G-6826-RGB,B-1504-RGB;n:type:ShaderForge.SFN_ChannelBlend,id:992,x:32937,y:32700,varname:node_992,prsc:2,chbt:0|M-5078-OUT,R-3464-RGB,G-8647-RGB,B-5015-RGB;n:type:ShaderForge.SFN_Lerp,id:1071,x:33540,y:32486,varname:node_1071,prsc:2|A-1389-OUT,B-992-OUT,T-2058-OUT;proporder:3813-5382-3321-4822-9370-9669-6097;pass:END;sub:END;*/

Shader "custom/caveShader" {
    Properties {
        _rock ("rock", 2D) = "white" {}
        _Ground ("Ground", 2D) = "white" {}
        _min ("min", Float ) = 0
        _max ("max", Float ) = 1
        _specular ("specular", Range(0, 1)) = 0.008547009
        _rocknormal ("rocknormal", 2D) = "bump" {}
        _groundnormal ("groundnormal", 2D) = "bump" {}
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        Pass {
            Name "ForwardBase"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma exclude_renderers gles xbox360 ps3 flash d3d11_9x 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform sampler2D _rock; uniform float4 _rock_ST;
            uniform sampler2D _Ground; uniform float4 _Ground_ST;
            uniform float _min;
            uniform float _max;
            uniform sampler2D _rocknormal; uniform float4 _rocknormal_ST;
            uniform sampler2D _groundnormal; uniform float4 _groundnormal_ST;
            uniform float _specular;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                float3 tangentDir : TEXCOORD2;
                float3 binormalDir : TEXCOORD3;
                LIGHTING_COORDS(4,5)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.normalDir = mul(_Object2World, float4(v.normal,0)).xyz;
                o.tangentDir = normalize( mul( _Object2World, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.binormalDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(_Object2World, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            fixed4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.binormalDir, i.normalDir);
/////// Vectors:
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 node_8894 = abs(i.normalDir);
                float3 node_5078 = (node_8894*node_8894);
                float2 node_2423 = float2(i.posWorld.g,i.posWorld.b);
                float3 node_3578 = UnpackNormal(tex2D(_groundnormal,TRANSFORM_TEX(node_2423, _groundnormal)));
                float2 node_8694 = float2(i.posWorld.b,i.posWorld.r);
                float3 node_6826 = UnpackNormal(tex2D(_groundnormal,TRANSFORM_TEX(node_8694, _groundnormal)));
                float2 node_3440 = float2(i.posWorld.r,i.posWorld.g);
                float3 node_1504 = UnpackNormal(tex2D(_groundnormal,TRANSFORM_TEX(node_3440, _groundnormal)));
                float3 node_3464 = UnpackNormal(tex2D(_rocknormal,TRANSFORM_TEX(node_2423, _rocknormal)));
                float3 node_8647 = UnpackNormal(tex2D(_rocknormal,TRANSFORM_TEX(node_8694, _rocknormal)));
                float3 node_5015 = UnpackNormal(tex2D(_rocknormal,TRANSFORM_TEX(node_3440, _rocknormal)));
                float node_7204 = 0.0;
                float node_2058 = saturate((_min + ( (i.posWorld.g - node_7204) * (_max - _min) ) / (1.0 - node_7204)));
                float3 normalLocal = lerp((node_5078.r*node_3578.rgb + node_5078.g*node_6826.rgb + node_5078.b*node_1504.rgb),(node_5078.r*node_3464.rgb + node_5078.g*node_8647.rgb + node_5078.b*node_5015.rgb),node_2058);
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
///////// Gloss:
                float gloss = _specular;
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float4 node_4045 = tex2D(_Ground,TRANSFORM_TEX(node_2423, _Ground));
                float4 node_5165 = tex2D(_Ground,TRANSFORM_TEX(node_8694, _Ground));
                float4 node_7479 = tex2D(_Ground,TRANSFORM_TEX(node_3440, _Ground));
                float4 node_9941 = tex2D(_rock,TRANSFORM_TEX(node_2423, _rock));
                float4 node_3240 = tex2D(_rock,TRANSFORM_TEX(node_8694, _rock));
                float4 node_583 = tex2D(_rock,TRANSFORM_TEX(node_3440, _rock));
                float3 node_1635 = lerp((node_5078.r*node_4045.rgb + node_5078.g*node_5165.rgb + node_5078.b*node_7479.rgb),(node_5078.r*node_9941.rgb + node_5078.g*node_3240.rgb + node_5078.b*node_583.rgb),node_2058);
                float3 specularColor = node_1635;
                float3 directSpecular = (floor(attenuation) * _LightColor0.xyz) * pow(max(0,dot(halfDirection,normalDirection)),specPow);
                float3 specular = directSpecular * specularColor;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 indirectDiffuse = float3(0,0,0);
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                indirectDiffuse += UNITY_LIGHTMODEL_AMBIENT.rgb; // Ambient Light
                float3 diffuse = (directDiffuse + indirectDiffuse) * node_1635;
/// Final Color:
                float3 finalColor = diffuse + specular;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
        Pass {
            Name "ForwardAdd"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            
            
            Fog { Color (0,0,0,0) }
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma exclude_renderers gles xbox360 ps3 flash d3d11_9x 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform sampler2D _rock; uniform float4 _rock_ST;
            uniform sampler2D _Ground; uniform float4 _Ground_ST;
            uniform float _min;
            uniform float _max;
            uniform sampler2D _rocknormal; uniform float4 _rocknormal_ST;
            uniform sampler2D _groundnormal; uniform float4 _groundnormal_ST;
            uniform float _specular;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                float3 tangentDir : TEXCOORD2;
                float3 binormalDir : TEXCOORD3;
                LIGHTING_COORDS(4,5)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.normalDir = mul(_Object2World, float4(v.normal,0)).xyz;
                o.tangentDir = normalize( mul( _Object2World, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.binormalDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(_Object2World, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            fixed4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.binormalDir, i.normalDir);
/////// Vectors:
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 node_8894 = abs(i.normalDir);
                float3 node_5078 = (node_8894*node_8894);
                float2 node_2423 = float2(i.posWorld.g,i.posWorld.b);
                float3 node_3578 = UnpackNormal(tex2D(_groundnormal,TRANSFORM_TEX(node_2423, _groundnormal)));
                float2 node_8694 = float2(i.posWorld.b,i.posWorld.r);
                float3 node_6826 = UnpackNormal(tex2D(_groundnormal,TRANSFORM_TEX(node_8694, _groundnormal)));
                float2 node_3440 = float2(i.posWorld.r,i.posWorld.g);
                float3 node_1504 = UnpackNormal(tex2D(_groundnormal,TRANSFORM_TEX(node_3440, _groundnormal)));
                float3 node_3464 = UnpackNormal(tex2D(_rocknormal,TRANSFORM_TEX(node_2423, _rocknormal)));
                float3 node_8647 = UnpackNormal(tex2D(_rocknormal,TRANSFORM_TEX(node_8694, _rocknormal)));
                float3 node_5015 = UnpackNormal(tex2D(_rocknormal,TRANSFORM_TEX(node_3440, _rocknormal)));
                float node_7204 = 0.0;
                float node_2058 = saturate((_min + ( (i.posWorld.g - node_7204) * (_max - _min) ) / (1.0 - node_7204)));
                float3 normalLocal = lerp((node_5078.r*node_3578.rgb + node_5078.g*node_6826.rgb + node_5078.b*node_1504.rgb),(node_5078.r*node_3464.rgb + node_5078.g*node_8647.rgb + node_5078.b*node_5015.rgb),node_2058);
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
///////// Gloss:
                float gloss = _specular;
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float4 node_4045 = tex2D(_Ground,TRANSFORM_TEX(node_2423, _Ground));
                float4 node_5165 = tex2D(_Ground,TRANSFORM_TEX(node_8694, _Ground));
                float4 node_7479 = tex2D(_Ground,TRANSFORM_TEX(node_3440, _Ground));
                float4 node_9941 = tex2D(_rock,TRANSFORM_TEX(node_2423, _rock));
                float4 node_3240 = tex2D(_rock,TRANSFORM_TEX(node_8694, _rock));
                float4 node_583 = tex2D(_rock,TRANSFORM_TEX(node_3440, _rock));
                float3 node_1635 = lerp((node_5078.r*node_4045.rgb + node_5078.g*node_5165.rgb + node_5078.b*node_7479.rgb),(node_5078.r*node_9941.rgb + node_5078.g*node_3240.rgb + node_5078.b*node_583.rgb),node_2058);
                float3 specularColor = node_1635;
                float3 directSpecular = attenColor * pow(max(0,dot(halfDirection,normalDirection)),specPow);
                float3 specular = directSpecular * specularColor;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float3 diffuse = directDiffuse * node_1635;
/// Final Color:
                float3 finalColor = diffuse + specular;
                return fixed4(finalColor * 1,0);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
