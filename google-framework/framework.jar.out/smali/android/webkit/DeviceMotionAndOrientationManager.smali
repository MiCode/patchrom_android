.class final Landroid/webkit/DeviceMotionAndOrientationManager;
.super Ljava/lang/Object;
.source "DeviceMotionAndOrientationManager.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mWebViewCore:Landroid/webkit/WebViewCore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Landroid/webkit/DeviceMotionAndOrientationManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/webkit/DeviceMotionAndOrientationManager;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/webkit/WebViewCore;)V
    .locals 0
    .parameter "webViewCore"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/webkit/DeviceMotionAndOrientationManager;->mWebViewCore:Landroid/webkit/WebViewCore;

    return-void
.end method

.method private static native nativeOnMotionChange(Landroid/webkit/WebViewCore;ZDZDZDD)V
.end method

.method private static native nativeOnOrientationChange(Landroid/webkit/WebViewCore;ZDZDZD)V
.end method

.method private static native nativeSetMockOrientation(Landroid/webkit/WebViewCore;ZDZDZD)V
.end method

.method private static native nativeSetUseMock(Landroid/webkit/WebViewCore;)V
.end method


# virtual methods
.method public onMotionChange(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;D)V
    .locals 12
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "interval"

    .prologue
    iget-object v0, p0, Landroid/webkit/DeviceMotionAndOrientationManager;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    :goto_1
    if-eqz p2, :cond_2

    const/4 v4, 0x1

    :goto_2
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    :goto_3
    if-eqz p3, :cond_4

    const/4 v7, 0x1

    :goto_4
    if-eqz p3, :cond_5

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    :goto_5
    move-wide/from16 v10, p4

    invoke-static/range {v0 .. v11}, Landroid/webkit/DeviceMotionAndOrientationManager;->nativeOnMotionChange(Landroid/webkit/WebViewCore;ZDZDZDD)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x0

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    goto :goto_2

    :cond_3
    const-wide/16 v5, 0x0

    goto :goto_3

    :cond_4
    const/4 v7, 0x0

    goto :goto_4

    :cond_5
    const-wide/16 v8, 0x0

    goto :goto_5
.end method

.method public onOrientationChange(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)V
    .locals 11
    .parameter "alpha"
    .parameter "beta"
    .parameter "gamma"

    .prologue
    const/4 v7, 0x1

    const/4 v10, 0x0

    const-wide/16 v8, 0x0

    iget-object v0, p0, Landroid/webkit/DeviceMotionAndOrientationManager;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-eqz p1, :cond_1

    move v1, v7

    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    :goto_1
    if-eqz p2, :cond_3

    move v4, v7

    :goto_2
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    :goto_3
    if-eqz p3, :cond_5

    :goto_4
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    :cond_0
    invoke-static/range {v0 .. v9}, Landroid/webkit/DeviceMotionAndOrientationManager;->nativeOnOrientationChange(Landroid/webkit/WebViewCore;ZDZDZD)V

    return-void

    :cond_1
    move v1, v10

    goto :goto_0

    :cond_2
    move-wide v2, v8

    goto :goto_1

    :cond_3
    move v4, v10

    goto :goto_2

    :cond_4
    move-wide v5, v8

    goto :goto_3

    :cond_5
    move v7, v10

    goto :goto_4
.end method

.method public setMockOrientation(ZDZDZD)V
    .locals 10
    .parameter "canProvideAlpha"
    .parameter "alpha"
    .parameter "canProvideBeta"
    .parameter "beta"
    .parameter "canProvideGamma"
    .parameter "gamma"

    .prologue
    sget-boolean v0, Landroid/webkit/DeviceMotionAndOrientationManager;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    const-string v0, "WebViewCoreThread"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/webkit/DeviceMotionAndOrientationManager;->mWebViewCore:Landroid/webkit/WebViewCore;

    move v1, p1

    move-wide v2, p2

    move v4, p4

    move-wide v5, p5

    move/from16 v7, p7

    move-wide/from16 v8, p8

    invoke-static/range {v0 .. v9}, Landroid/webkit/DeviceMotionAndOrientationManager;->nativeSetMockOrientation(Landroid/webkit/WebViewCore;ZDZDZD)V

    return-void
.end method

.method public setUseMock()V
    .locals 2

    .prologue
    sget-boolean v0, Landroid/webkit/DeviceMotionAndOrientationManager;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    const-string v0, "WebViewCoreThread"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/webkit/DeviceMotionAndOrientationManager;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-static {v0}, Landroid/webkit/DeviceMotionAndOrientationManager;->nativeSetUseMock(Landroid/webkit/WebViewCore;)V

    return-void
.end method
