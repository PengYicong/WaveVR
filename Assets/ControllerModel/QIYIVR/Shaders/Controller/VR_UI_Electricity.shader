// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.32 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.32;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:False,igpj:True,qofs:10,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:82,x:32719,y:32712,varname:node_82,prsc:2|custl-8162-OUT,alpha-7283-OUT;n:type:ShaderForge.SFN_Tex2d,id:3861,x:31524,y:32857,ptovrint:False,ptlb:Tex_Blue,ptin:_Tex_Blue,varname:_Tex_Blue,prsc:0,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:5db5ac240726f524eb74bddd9ff8802f,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:9622,x:31524,y:33088,ptovrint:False,ptlb:Tex_Red,ptin:_Tex_Red,varname:_Tex_Red,prsc:0,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:bd83870545af9404485480ca53d03c35,ntxv:0,isnm:False;n:type:ShaderForge.SFN_TexCoord,id:5014,x:30506,y:32325,varname:node_5014,prsc:2,uv:0;n:type:ShaderForge.SFN_Rotator,id:2960,x:30750,y:32325,varname:node_2960,prsc:0|UVIN-5014-UVOUT,ANG-6243-OUT;n:type:ShaderForge.SFN_Multiply,id:6243,x:30506,y:32479,varname:node_6243,prsc:2|A-5535-OUT,B-6051-OUT;n:type:ShaderForge.SFN_Vector1,id:5535,x:30322,y:32479,varname:node_5535,prsc:2,v1:1;n:type:ShaderForge.SFN_Pi,id:6051,x:30322,y:32536,varname:node_6051,prsc:2;n:type:ShaderForge.SFN_RemapRange,id:7954,x:30909,y:32325,varname:node_7954,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-2960-UVOUT;n:type:ShaderForge.SFN_ComponentMask,id:8374,x:31072,y:32325,varname:node_8374,prsc:0,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-7954-OUT;n:type:ShaderForge.SFN_Step,id:7865,x:31614,y:32328,varname:node_7865,prsc:2|A-7124-OUT,B-1896-OUT;n:type:ShaderForge.SFN_Slider,id:4400,x:31053,y:32691,ptovrint:False,ptlb:Rotation,ptin:_Rotation,varname:_Rotation,prsc:0,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:100;n:type:ShaderForge.SFN_ArcTan2,id:4023,x:31249,y:32345,varname:node_4023,prsc:2,attp:2|A-8374-R,B-8374-G;n:type:ShaderForge.SFN_Multiply,id:7283,x:31912,y:33000,varname:node_7283,prsc:2|A-7865-OUT,B-3861-A,C-9622-A,D-8889-OUT;n:type:ShaderForge.SFN_OneMinus,id:7124,x:31420,y:32345,varname:node_7124,prsc:2|IN-4023-OUT;n:type:ShaderForge.SFN_Lerp,id:8162,x:31912,y:32861,varname:node_8162,prsc:2|A-9622-RGB,B-3861-RGB,T-3075-OUT;n:type:ShaderForge.SFN_RemapRange,id:6143,x:31643,y:32693,varname:node_6143,prsc:2,frmn:20,frmx:20.9,tomn:0,tomx:1|IN-4400-OUT;n:type:ShaderForge.SFN_Clamp01,id:3075,x:31819,y:32693,varname:node_3075,prsc:2|IN-6143-OUT;n:type:ShaderForge.SFN_RemapRange,id:1896,x:31420,y:32483,varname:node_1896,prsc:2,frmn:0,frmx:100,tomn:0,tomx:1|IN-4400-OUT;n:type:ShaderForge.SFN_Slider,id:8889,x:31868,y:33239,ptovrint:False,ptlb:alpha_all,ptin:_alpha_all,varname:_alpha_all,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;proporder:3861-4400-9622-8889;pass:END;sub:END;*/

Shader "VR/UI/Electricity" {
    Properties {
        _Tex_Blue ("Tex_Blue", 2D) = "white" {}
        _Rotation ("Rotation", Range(0, 100)) = 1
        _Tex_Red ("Tex_Red", 2D) = "white" {}
        _alpha_all ("alpha_all", Range(0, 1)) = 0
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent+10"
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
            uniform sampler2D _Tex_Blue; uniform float4 _Tex_Blue_ST;
            uniform sampler2D _Tex_Red; uniform float4 _Tex_Red_ST;
            uniform fixed _Rotation;
            uniform float _alpha_all;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                UNITY_FOG_COORDS(1)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = UnityObjectToClipPos(v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
////// Lighting:
                fixed4 _Tex_Red_var = tex2D(_Tex_Red,TRANSFORM_TEX(i.uv0, _Tex_Red));
                fixed4 _Tex_Blue_var = tex2D(_Tex_Blue,TRANSFORM_TEX(i.uv0, _Tex_Blue));
                float3 finalColor = lerp(_Tex_Red_var.rgb,_Tex_Blue_var.rgb,saturate((_Rotation*1.111112+-22.22223)));
                float node_2960_ang = (1.0*3.141592654);
                float node_2960_spd = 1.0;
                float node_2960_cos = cos(node_2960_spd*node_2960_ang);
                float node_2960_sin = sin(node_2960_spd*node_2960_ang);
                float2 node_2960_piv = float2(0.5,0.5);
                fixed2 node_2960 = (mul(i.uv0-node_2960_piv,float2x2( node_2960_cos, -node_2960_sin, node_2960_sin, node_2960_cos))+node_2960_piv);
                fixed2 node_8374 = (node_2960*2.0+-1.0).rg;
                fixed4 finalRGBA = fixed4(finalColor,(step((1.0 - ((atan2(node_8374.r,node_8374.g)/6.28318530718)+0.5)),(_Rotation*0.01+0.0))*_Tex_Blue_var.a*_Tex_Red_var.a*_alpha_all));
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
