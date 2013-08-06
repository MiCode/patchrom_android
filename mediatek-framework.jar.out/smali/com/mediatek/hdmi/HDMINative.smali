.class public Lcom/mediatek/hdmi/HDMINative;
.super Ljava/lang/Object;
.source "HDMINative.java"

# interfaces
.implements Lcom/mediatek/common/hdmi/IHDMINative;


# static fields
.field public static final TAG:Ljava/lang/String; = "hdmi"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const-string v0, "hdmi"

    const-string v1, "load libhdminative_jni.so"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "mtkhdmi_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native enableAudio(Z)Z
.end method

.method public native enableCEC(Z)Z
.end method

.method public native enableHDCP(Z)Z
.end method

.method public native enableHDMI(Z)Z
.end method

.method public native enableHDMIIPO(Z)Z
.end method

.method public native enableVideo(Z)Z
.end method

.method public native getCECAddr()[C
.end method

.method public native getCECCmd()[I
.end method

.method public native getEDID()[I
.end method

.method public native hdmiPortraitEnable(Z)Z
.end method

.method public native hdmiPowerEnable(Z)Z
.end method

.method public native ishdmiForceAwake()Z
.end method

.method public native setAudioConfig(I)Z
.end method

.method public native setCECAddr(C[CCC)Z
.end method

.method public native setCECCmd(CCC[CIC)Z
.end method

.method public native setDeepColor(II)Z
.end method

.method public native setHDCPKey([B)Z
.end method

.method public native setVideoConfig(I)Z
.end method
