.class public Landroid/hardware/radio/RadioModule;
.super Landroid/hardware/radio/RadioTuner;
.source "RadioModule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/RadioModule$NativeEventHandlerDelegate;
    }
.end annotation


# static fields
.field static final EVENT_AF_SWITCH:I = 0x6

.field static final EVENT_ANTENNA:I = 0x2

.field static final EVENT_CONFIG:I = 0x1

.field static final EVENT_CONTROL:I = 0x64

.field static final EVENT_HW_FAILURE:I = 0x0

.field static final EVENT_METADATA:I = 0x4

.field static final EVENT_SERVER_DIED:I = 0x65

.field static final EVENT_TA:I = 0x5

.field static final EVENT_TUNED:I = 0x3


# instance fields
.field private mEventHandlerDelegate:Landroid/hardware/radio/RadioModule$NativeEventHandlerDelegate;

.field private mId:I

.field private mNativeContext:J


# direct methods
.method constructor <init>(ILandroid/hardware/radio/RadioManager$BandConfig;ZLandroid/hardware/radio/RadioTuner$Callback;Landroid/os/Handler;)V
    .locals 2
    .param p1, "moduleId"    # I
    .param p2, "config"    # Landroid/hardware/radio/RadioManager$BandConfig;
    .param p3, "withAudio"    # Z
    .param p4, "callback"    # Landroid/hardware/radio/RadioTuner$Callback;
    .param p5, "handler"    # Landroid/os/Handler;

    .prologue
    invoke-direct {p0}, Landroid/hardware/radio/RadioTuner;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/radio/RadioModule;->mNativeContext:J

    iput p1, p0, Landroid/hardware/radio/RadioModule;->mId:I

    new-instance v0, Landroid/hardware/radio/RadioModule$NativeEventHandlerDelegate;

    invoke-direct {v0, p0, p4, p5}, Landroid/hardware/radio/RadioModule$NativeEventHandlerDelegate;-><init>(Landroid/hardware/radio/RadioModule;Landroid/hardware/radio/RadioTuner$Callback;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/hardware/radio/RadioModule;->mEventHandlerDelegate:Landroid/hardware/radio/RadioModule$NativeEventHandlerDelegate;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0, p2, p3}, Landroid/hardware/radio/RadioModule;->native_setup(Ljava/lang/Object;Landroid/hardware/radio/RadioManager$BandConfig;Z)V

    return-void
.end method

.method private native native_finalize()V
.end method

.method private native native_setup(Ljava/lang/Object;Landroid/hardware/radio/RadioManager$BandConfig;Z)V
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 4
    .param p0, "module_ref"    # Ljava/lang/Object;
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .prologue
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0    # "module_ref":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/RadioModule;

    .local v3, "module":Landroid/hardware/radio/RadioModule;
    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, v3, Landroid/hardware/radio/RadioModule;->mEventHandlerDelegate:Landroid/hardware/radio/RadioModule$NativeEventHandlerDelegate;

    .local v0, "delegate":Landroid/hardware/radio/RadioModule$NativeEventHandlerDelegate;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/hardware/radio/RadioModule$NativeEventHandlerDelegate;->handler()Landroid/os/Handler;

    move-result-object v1

    .local v1, "handler":Landroid/os/Handler;
    if-eqz v1, :cond_0

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .local v2, "m":Landroid/os/Message;
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method


# virtual methods
.method public native cancel()I
.end method

.method public native close()V
.end method

.method protected finalize()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/hardware/radio/RadioModule;->native_finalize()V

    return-void
.end method

.method public native getConfiguration([Landroid/hardware/radio/RadioManager$BandConfig;)I
.end method

.method public native getMute()Z
.end method

.method public native getProgramInformation([Landroid/hardware/radio/RadioManager$ProgramInfo;)I
.end method

.method public native hasControl()Z
.end method

.method initCheck()Z
    .locals 4

    .prologue
    iget-wide v0, p0, Landroid/hardware/radio/RadioModule;->mNativeContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public native isAntennaConnected()Z
.end method

.method public native scan(IZ)I
.end method

.method public native setConfiguration(Landroid/hardware/radio/RadioManager$BandConfig;)I
.end method

.method public native setMute(Z)I
.end method

.method public native step(IZ)I
.end method

.method public native tune(II)I
.end method
