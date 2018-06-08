// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.32 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.32;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:1914,x:32719,y:32712,varname:node_1914,prsc:2|custl-3153-OUT,alpha-7476-OUT;n:type:ShaderForge.SFN_Fresnel,id:361,x:31182,y:33458,varname:node_361,prsc:2|EXP-453-OUT;n:type:ShaderForge.SFN_Color,id:3875,x:29295,y:32794,ptovrint:False,ptlb:Texture_color,ptin:_Texture_color,varname:_Texture_color,prsc:0,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Multiply,id:4263,x:31593,y:33455,varname:node_4263,prsc:2|A-361-OUT,B-6318-OUT;n:type:ShaderForge.SFN_Slider,id:6318,x:31515,y:33636,ptovrint:False,ptlb:Fresnel_qd,ptin:_Fresnel_qd,varname:_Fresnel_qd,prsc:0,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:3;n:type:ShaderForge.SFN_Add,id:2266,x:31897,y:33305,varname:node_2266,prsc:2|A-4501-A,B-4263-OUT;n:type:ShaderForge.SFN_Tex2d,id:4501,x:31000,y:33224,ptovrint:False,ptlb:Texture,ptin:_Texture,varname:_Texture,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:aaf4634f31b5c8347b6b3cb1af122661,ntxv:3,isnm:False;n:type:ShaderForge.SFN_Multiply,id:1417,x:30814,y:32727,varname:node_1417,prsc:2|A-5802-OUT,B-5639-OUT,C-4293-OUT,D-8426-OUT,E-7268-OUT;n:type:ShaderForge.SFN_Tex2d,id:3400,x:29293,y:33559,ptovrint:False,ptlb:td_07-09,ptin:_td_0709,varname:_td_0709,prsc:0,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Slider,id:453,x:31103,y:33637,ptovrint:False,ptlb:Fresnel_qd_fw,ptin:_Fresnel_qd_fw,varname:_Fresnel_qd_fw,prsc:0,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:3;n:type:ShaderForge.SFN_Tex2d,id:1550,x:29287,y:32548,ptovrint:False,ptlb:td_01-03,ptin:_td_0103,varname:_td_0103,prsc:0,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Color,id:1876,x:29295,y:32998,ptovrint:False,ptlb:button_down,ptin:_button_down,varname:_button_down,prsc:0,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.3088235,c2:1,c3:0.5423934,c4:1;n:type:ShaderForge.SFN_SwitchProperty,id:5802,x:30555,y:32392,ptovrint:False,ptlb:01_back,ptin:_01_back,varname:_01_back,prsc:0,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-2756-OUT,B-5680-OUT;n:type:ShaderForge.SFN_Lerp,id:5680,x:29756,y:32457,varname:node_5680,prsc:2|A-3875-RGB,B-1876-RGB,T-1550-R;n:type:ShaderForge.SFN_SwitchProperty,id:4293,x:30547,y:32764,ptovrint:False,ptlb:03_seting,ptin:_03_seting,varname:_03_seting,prsc:0,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-2756-OUT,B-8927-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:5639,x:30555,y:32580,ptovrint:False,ptlb:02_home,ptin:_02_home,varname:_02_home,prsc:0,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-2756-OUT,B-9500-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:8426,x:30547,y:32963,ptovrint:False,ptlb:04_sound_jia,ptin:_04_sound_jia,varname:_04_sound_jia,prsc:0,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-2756-OUT,B-1033-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:7268,x:30547,y:33148,ptovrint:False,ptlb:05_sound_jian,ptin:_05_sound_jian,varname:_05_sound_jian,prsc:0,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-2756-OUT,B-7197-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:3129,x:30547,y:33359,ptovrint:False,ptlb:06_banji,ptin:_06_banji,varname:_06_banji,prsc:0,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-2756-OUT,B-329-OUT;n:type:ShaderForge.SFN_Lerp,id:9500,x:29761,y:32652,varname:node_9500,prsc:2|A-3875-RGB,B-1876-RGB,T-1550-G;n:type:ShaderForge.SFN_Lerp,id:8927,x:29761,y:32850,varname:node_8927,prsc:2|A-3875-RGB,B-1876-RGB,T-1550-B;n:type:ShaderForge.SFN_Multiply,id:3153,x:31007,y:32971,varname:node_3153,prsc:0|A-1417-OUT,B-3129-OUT,C-8998-OUT,D-5536-OUT;n:type:ShaderForge.SFN_Lerp,id:1033,x:29761,y:33013,varname:node_1033,prsc:2|A-3875-RGB,B-1876-RGB,T-8017-R;n:type:ShaderForge.SFN_Lerp,id:7197,x:29761,y:33198,varname:node_7197,prsc:2|A-3875-RGB,B-1876-RGB,T-8017-G;n:type:ShaderForge.SFN_Lerp,id:329,x:29761,y:33372,varname:node_329,prsc:2|A-3875-RGB,B-1876-RGB,T-8017-B;n:type:ShaderForge.SFN_Tex2d,id:8017,x:29295,y:33199,ptovrint:False,ptlb:td_04-06,ptin:_td_0406,varname:_td_0406,prsc:0,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Relay,id:2756,x:30030,y:32905,varname:node_2756,prsc:0|IN-2388-OUT;n:type:ShaderForge.SFN_Relay,id:2388,x:29886,y:32788,varname:node_2388,prsc:2|IN-3875-RGB;n:type:ShaderForge.SFN_Multiply,id:7476,x:32108,y:33305,varname:node_7476,prsc:2|A-2266-OUT,B-9344-OUT;n:type:ShaderForge.SFN_Slider,id:9344,x:32029,y:33540,ptovrint:False,ptlb:all_qd,ptin:_all_qd,varname:_all_qd,prsc:0,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Lerp,id:1003,x:29753,y:33543,varname:node_1003,prsc:2|A-3875-RGB,B-1876-RGB,T-3400-R;n:type:ShaderForge.SFN_SwitchProperty,id:8998,x:30538,y:33567,ptovrint:False,ptlb:07_touchpad,ptin:_07_touchpad,varname:_07_touchpad,prsc:0,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-2756-OUT,B-1003-OUT;n:type:ShaderForge.SFN_Multiply,id:501,x:29477,y:33790,varname:node_501,prsc:0|A-3400-G,B-2165-RGB;n:type:ShaderForge.SFN_Color,id:2165,x:29293,y:33810,ptovrint:False,ptlb:light,ptin:_light,varname:_light,prsc:0,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Relay,id:5536,x:30637,y:33756,varname:node_5536,prsc:0|IN-3891-OUT;n:type:ShaderForge.SFN_Lerp,id:3891,x:29763,y:33708,varname:node_3891,prsc:2|A-3875-RGB,B-501-OUT,T-3400-G;proporder:3875-1876-2165-9344-453-6318-5802-5639-4293-8426-7268-3129-8998-4501-1550-8017-3400;pass:END;sub:END;*/

Shader "VR/mesh/shoubing" {
    Properties {
        _Texture_color ("Texture_color", Color) = (1,1,1,1)
        _button_down ("button_down", Color) = (0.3088235,1,0.5423934,1)
        _light ("light", Color) = (1,1,1,1)
        _all_qd ("all_qd", Range(0, 1)) = 1
        _Fresnel_qd_fw ("Fresnel_qd_fw", Range(0, 3)) = 1
        _Fresnel_qd ("Fresnel_qd", Range(0, 3)) = 1
        [MaterialToggle] _01_back ("01_back", Float ) = 1
        [MaterialToggle] _02_home ("02_home", Float ) = 1
        [MaterialToggle] _03_seting ("03_seting", Float ) = 1
        [MaterialToggle] _04_sound_jia ("04_sound_jia", Float ) = 1
        [MaterialToggle] _05_sound_jian ("05_sound_jian", Float ) = 1
        [MaterialToggle] _06_banji ("06_banji", Float ) = 1
        [MaterialToggle] _07_touchpad ("07_touchpad", Float ) = 1
        _Texture ("Texture", 2D) = "bump" {}
        _td_0103 ("td_01-03", 2D) = "white" {}
        _td_0406 ("td_04-06", 2D) = "white" {}
        _td_0709 ("td_07-09", 2D) = "white" {}
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        LOD 200
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend SrcAlpha OneMinusSrcAlpha
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 
            #pragma target 3.0
            uniform fixed4 _Texture_color;
            uniform fixed _Fresnel_qd;
            uniform sampler2D _Texture; uniform float4 _Texture_ST;
            uniform sampler2D _td_0709; uniform float4 _td_0709_ST;
            uniform fixed _Fresnel_qd_fw;
            uniform sampler2D _td_0103; uniform float4 _td_0103_ST;
            uniform fixed4 _button_down;
            uniform fixed _01_back;
            uniform fixed _03_seting;
            uniform fixed _02_home;
            uniform fixed _04_sound_jia;
            uniform fixed _05_sound_jian;
            uniform fixed _06_banji;
            uniform sampler2D _td_0406; uniform float4 _td_0406_ST;
            uniform fixed _all_qd;
            uniform fixed _07_touchpad;
            uniform fixed4 _light;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                UNITY_FOG_COORDS(3)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos(v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
////// Lighting:
                fixed3 node_2756 = _Texture_color.rgb;
                fixed4 _td_0103_var = tex2D(_td_0103,TRANSFORM_TEX(i.uv0, _td_0103));
                fixed4 _td_0406_var = tex2D(_td_0406,TRANSFORM_TEX(i.uv0, _td_0406));
                fixed4 _td_0709_var = tex2D(_td_0709,TRANSFORM_TEX(i.uv0, _td_0709));
                float3 finalColor = ((lerp( node_2756, lerp(_Texture_color.rgb,_button_down.rgb,_td_0103_var.r), _01_back )*lerp( node_2756, lerp(_Texture_color.rgb,_button_down.rgb,_td_0103_var.g), _02_home )*lerp( node_2756, lerp(_Texture_color.rgb,_button_down.rgb,_td_0103_var.b), _03_seting )*lerp( node_2756, lerp(_Texture_color.rgb,_button_down.rgb,_td_0406_var.r), _04_sound_jia )*lerp( node_2756, lerp(_Texture_color.rgb,_button_down.rgb,_td_0406_var.g), _05_sound_jian ))*lerp( node_2756, lerp(_Texture_color.rgb,_button_down.rgb,_td_0406_var.b), _06_banji )*lerp( node_2756, lerp(_Texture_color.rgb,_button_down.rgb,_td_0709_var.r), _07_touchpad )*lerp(_Texture_color.rgb,(_td_0709_var.g*_light.rgb),_td_0709_var.g));
                float4 _Texture_var = tex2D(_Texture,TRANSFORM_TEX(i.uv0, _Texture));
                fixed4 finalRGBA = fixed4(finalColor,((_Texture_var.a+(pow(1.0-max(0,dot(normalDirection, viewDirection)),_Fresnel_qd_fw)*_Fresnel_qd))*_all_qd));
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
