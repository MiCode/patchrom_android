.class public final Lcom/mediatek/build/SdkVersion;
.super Ljava/lang/Object;
.source "SdkVersion.java"


# static fields
.field private static final APP_SDK_VERSION:I = 0x1


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppVersion()I
    .locals 1

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method public static getPlatformVersion()I
    .locals 1

    .prologue
    const-string v0, "ro.mediatek.version.sdk"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static isCompatible()Z
    .locals 2

    .prologue
    invoke-static {}, Lcom/mediatek/build/SdkVersion;->getAppVersion()I

    move-result v0

    invoke-static {}, Lcom/mediatek/build/SdkVersion;->getPlatformVersion()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
