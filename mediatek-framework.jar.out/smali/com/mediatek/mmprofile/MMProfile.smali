.class public Lcom/mediatek/mmprofile/MMProfile;
.super Ljava/lang/Object;
.source "MMProfile.java"


# static fields
.field public static final MMP_RootEvent:I = 0x1

.field public static final MMProfileFlagEnd:I = 0x2

.field public static final MMProfileFlagEventSeparator:I = 0x8

.field public static final MMProfileFlagPulse:I = 0x4

.field public static final MMProfileFlagStart:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "mmprofile_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native MMProfileEnableEvent(II)V
.end method

.method public static native MMProfileEnableEventRecursive(II)V
.end method

.method public static native MMProfileFindEvent(ILjava/lang/String;)I
.end method

.method public static native MMProfileLog(II)V
.end method

.method public static native MMProfileLogEx(IIII)V
.end method

.method public static native MMProfileLogMetaString(IILjava/lang/String;)I
.end method

.method public static native MMProfileLogMetaStringEx(IIIILjava/lang/String;)I
.end method

.method public static native MMProfileQueryEnable(I)I
.end method

.method public static native MMProfileRegisterEvent(ILjava/lang/String;)I
.end method
