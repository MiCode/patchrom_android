.class abstract Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;
.super Lcom/android/server/display/DisplayDevice;
.source "OverlayDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/OverlayDisplayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "OverlayDisplayDevice"
.end annotation


# instance fields
.field private mActiveMode:I

.field private final mDefaultMode:I

.field private final mDisplayPresentationDeadlineNanos:J

.field private mInfo:Lcom/android/server/display/DisplayDeviceInfo;

.field private final mModes:[Landroid/view/Display$Mode;

.field private final mName:Ljava/lang/String;

.field private final mRawModes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;",
            ">;"
        }
    .end annotation
.end field

.field private final mRefreshRate:F

.field private final mSecure:Z

.field private mState:I

.field private mSurface:Landroid/view/Surface;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field final synthetic this$0:Lcom/android/server/display/OverlayDisplayAdapter;


# direct methods
.method public constructor <init>(Lcom/android/server/display/OverlayDisplayAdapter;Landroid/os/IBinder;Ljava/lang/String;Ljava/util/List;IIFJZILandroid/graphics/SurfaceTexture;I)V
    .locals 6
    .param p2, "displayToken"    # Landroid/os/IBinder;
    .param p3, "name"    # Ljava/lang/String;
    .param p5, "activeMode"    # I
    .param p6, "defaultMode"    # I
    .param p7, "refreshRate"    # F
    .param p8, "presentationDeadlineNanos"    # J
    .param p10, "secure"    # Z
    .param p11, "state"    # I
    .param p12, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .param p13, "number"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;",
            ">;IIFJZI",
            "Landroid/graphics/SurfaceTexture;",
            "I)V"
        }
    .end annotation

    .prologue
    .local p4, "modes":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;>;"
    iput-object p1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->this$0:Lcom/android/server/display/OverlayDisplayAdapter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "overlay:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p13

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, p2, v3}, Lcom/android/server/display/DisplayDevice;-><init>(Lcom/android/server/display/DisplayAdapter;Landroid/os/IBinder;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mName:Ljava/lang/String;

    iput p7, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mRefreshRate:F

    iput-wide p8, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mDisplayPresentationDeadlineNanos:J

    move/from16 v0, p10

    iput-boolean v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mSecure:Z

    move/from16 v0, p11

    iput v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mState:I

    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iput-object p4, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mRawModes:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Landroid/view/Display$Mode;

    iput-object v3, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mModes:[Landroid/view/Display$Mode;

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;

    .local v2, "mode":Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;
    iget-object v3, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mModes:[Landroid/view/Display$Mode;

    iget v4, v2, Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;->mWidth:I

    iget v5, v2, Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;->mHeight:I

    invoke-static {v4, v5, p7}, Lcom/android/server/display/DisplayAdapter;->createMode(IIF)Landroid/view/Display$Mode;

    move-result-object v4

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v2    # "mode":Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;
    :cond_0
    iput p5, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mActiveMode:I

    iput p6, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mDefaultMode:I

    return-void
.end method


# virtual methods
.method public destroyLocked()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    iput-object v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mSurface:Landroid/view/Surface;

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->getDisplayTokenLocked()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/SurfaceControl;->destroyDisplay(Landroid/os/IBinder;)V

    return-void
.end method

.method public getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;
    .locals 11

    .prologue
    const/4 v10, 0x0

    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mModes:[Landroid/view/Display$Mode;

    iget v3, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mActiveMode:I

    aget-object v0, v2, v3

    .local v0, "mode":Landroid/view/Display$Mode;
    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mRawModes:Ljava/util/List;

    iget v3, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mActiveMode:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;

    .local v1, "rawMode":Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;
    new-instance v2, Lcom/android/server/display/DisplayDeviceInfo;

    invoke-direct {v2}, Lcom/android/server/display/DisplayDeviceInfo;-><init>()V

    iput-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v3, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mName:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    invoke-virtual {p0}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->getUniqueId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v3

    iput v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v3

    iput v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    invoke-virtual {v0}, Landroid/view/Display$Mode;->getModeId()I

    move-result v3

    iput v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->modeId:I

    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v3, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mModes:[Landroid/view/Display$Mode;

    aget-object v3, v3, v10

    invoke-virtual {v3}, Landroid/view/Display$Mode;->getModeId()I

    move-result v3

    iput v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->defaultModeId:I

    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v3, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mModes:[Landroid/view/Display$Mode;

    iput-object v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->supportedModes:[Landroid/view/Display$Mode;

    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v3, v1, Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;->mDensityDpi:I

    iput v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->densityDpi:I

    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v3, v1, Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;->mDensityDpi:I

    int-to-float v3, v3

    iput v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->xDpi:F

    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v3, v1, Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;->mDensityDpi:I

    int-to-float v3, v3

    iput v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->yDpi:F

    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-wide v4, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mDisplayPresentationDeadlineNanos:J

    const-wide/32 v6, 0x3b9aca00

    iget v3, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mRefreshRate:F

    float-to-int v3, v3

    int-to-long v8, v3

    div-long/2addr v6, v8

    add-long/2addr v4, v6

    iput-wide v4, v2, Lcom/android/server/display/DisplayDeviceInfo;->presentationDeadlineNanos:J

    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    const/16 v3, 0x40

    iput v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    iget-boolean v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mSecure:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/lit8 v3, v3, 0x4

    iput v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    :cond_0
    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    const/4 v3, 0x4

    iput v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iput v10, v2, Lcom/android/server/display/DisplayDeviceInfo;->touch:I

    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v3, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mState:I

    iput v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    .end local v0    # "mode":Landroid/view/Display$Mode;
    .end local v1    # "rawMode":Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;
    :cond_1
    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    return-object v2
.end method

.method public abstract onModeChangedLocked(I)V
.end method

.method public performTraversalInTransactionLocked()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mSurface:Landroid/view/Surface;

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mSurface:Landroid/view/Surface;

    :cond_0
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mSurface:Landroid/view/Surface;

    invoke-virtual {p0, v0}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->setSurfaceInTransactionLocked(Landroid/view/Surface;)V

    :cond_1
    return-void
.end method

.method public requestModeInTransactionLocked(I)V
    .locals 5
    .param p1, "id"    # I

    .prologue
    const/4 v1, -0x1

    .local v1, "index":I
    if-nez p1, :cond_2

    const/4 v1, 0x0

    :cond_0
    :goto_0
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    const-string v2, "OverlayDisplayAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to locate mode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", reverting to default."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mDefaultMode:I

    :cond_1
    iget v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mActiveMode:I

    if-ne v2, v1, :cond_4

    :goto_1
    return-void

    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mModes:[Landroid/view/Display$Mode;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mModes:[Landroid/view/Display$Mode;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/view/Display$Mode;->getModeId()I

    move-result v2

    if-ne v2, p1, :cond_3

    move v1, v0

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .end local v0    # "i":I
    :cond_4
    iput v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mActiveMode:I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->this$0:Lcom/android/server/display/OverlayDisplayAdapter;

    const/4 v3, 0x2

    invoke-virtual {v2, p0, v3}, Lcom/android/server/display/OverlayDisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    invoke-virtual {p0, v1}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->onModeChangedLocked(I)V

    goto :goto_1
.end method

.method public setStateLocked(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    iput p1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mState:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    return-void
.end method
