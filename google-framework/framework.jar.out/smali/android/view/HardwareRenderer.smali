.class public abstract Landroid/view/HardwareRenderer;
.super Ljava/lang/Object;
.source "HardwareRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/HardwareRenderer$Gl20Renderer;,
        Landroid/view/HardwareRenderer$GlRenderer;,
        Landroid/view/HardwareRenderer$HardwareDrawCallbacks;
    }
.end annotation


# static fields
.field private static final CACHE_PATH_SHADERS:Ljava/lang/String; = "com.android.opengl.shaders_cache"

.field private static final DEBUG_DIRTY_REGION:Z = false

.field static final DISABLE_VSYNC_PROPERTY:Ljava/lang/String; = "hwui.disable_vsync"

.field static final LOG_TAG:Ljava/lang/String; = "HardwareRenderer"

.field static final PRINT_CONFIG_PROPERTY:Ljava/lang/String; = "hwui.print_config"

.field public static final RENDER_DIRTY_REGIONS:Z = true

.field static final RENDER_DIRTY_REGIONS_PROPERTY:Ljava/lang/String; = "hwui.render_dirty_regions"

.field public static sRendererDisabled:Z

.field public static sSystemRendererDisabled:Z


# instance fields
.field private mEnabled:Z

.field private mRequested:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 106
    sput-boolean v0, Landroid/view/HardwareRenderer;->sRendererDisabled:Z

    .line 113
    sput-boolean v0, Landroid/view/HardwareRenderer;->sSystemRendererDisabled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/HardwareRenderer;->mRequested:Z

    .line 917
    return-void
.end method

.method static createGlRenderer(IZ)Landroid/view/HardwareRenderer;
    .locals 3
    .parameter "glVersion"
    .parameter "translucent"

    .prologue
    .line 346
    packed-switch p0, :pswitch_data_0

    .line 350
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown GL version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 348
    :pswitch_0
    invoke-static {p1}, Landroid/view/HardwareRenderer$Gl20Renderer;->create(Z)Landroid/view/HardwareRenderer;

    move-result-object v0

    return-object v0

    .line 346
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public static disable(Z)V
    .locals 1
    .parameter "system"

    .prologue
    const/4 v0, 0x1

    .line 124
    sput-boolean v0, Landroid/view/HardwareRenderer;->sRendererDisabled:Z

    .line 125
    if-eqz p0, :cond_0

    .line 126
    sput-boolean v0, Landroid/view/HardwareRenderer;->sSystemRendererDisabled:Z

    .line 128
    :cond_0
    return-void
.end method

.method public static isAvailable()Z
    .locals 1

    .prologue
    .line 138
    invoke-static {}, Landroid/view/GLES20Canvas;->isAvailable()Z

    move-result v0

    return v0
.end method

.method private static native nSetupShadersDiskCache(Ljava/lang/String;)V
.end method

.method public static setupDiskCache(Ljava/io/File;)V
    .locals 2
    .parameter "cacheDir"

    .prologue
    .line 235
    new-instance v0, Ljava/io/File;

    const-string v1, "com.android.opengl.shaders_cache"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/view/HardwareRenderer;->nSetupShadersDiskCache(Ljava/lang/String;)V

    .line 236
    return-void
.end method

.method static trimMemory(I)V
    .locals 0
    .parameter "level"

    .prologue
    .line 362
    invoke-static {p0}, Landroid/view/HardwareRenderer$Gl20Renderer;->trimMemory(I)V

    .line 363
    return-void
.end method


# virtual methods
.method abstract createDisplayList()Landroid/view/DisplayList;
.end method

.method abstract createHardwareLayer(IIZ)Landroid/view/HardwareLayer;
.end method

.method abstract createHardwareLayer(Z)Landroid/view/HardwareLayer;
.end method

.method abstract createSurfaceTexture(Landroid/view/HardwareLayer;)Landroid/graphics/SurfaceTexture;
.end method

.method abstract destroy(Z)V
.end method

.method abstract destroyHardwareResources(Landroid/view/View;)V
.end method

.method abstract destroyLayers(Landroid/view/View;)V
.end method

.method abstract draw(Landroid/view/View;Landroid/view/View$AttachInfo;Landroid/view/HardwareRenderer$HardwareDrawCallbacks;Landroid/graphics/Rect;)Z
.end method

.method abstract getCanvas()Landroid/view/HardwareCanvas;
.end method

.method abstract getHeight()I
.end method

.method abstract getWidth()I
.end method

.method abstract initialize(Landroid/view/SurfaceHolder;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation
.end method

.method initializeIfNeeded(IILandroid/view/View$AttachInfo;Landroid/view/SurfaceHolder;)V
    .locals 1
    .parameter "width"
    .parameter "height"
    .parameter "attachInfo"
    .parameter "holder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation

    .prologue
    .line 327
    invoke-virtual {p0}, Landroid/view/HardwareRenderer;->isRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    invoke-virtual {p0}, Landroid/view/HardwareRenderer;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 330
    invoke-virtual {p0, p4}, Landroid/view/HardwareRenderer;->initialize(Landroid/view/SurfaceHolder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    invoke-virtual {p0, p1, p2}, Landroid/view/HardwareRenderer;->setup(II)V

    .line 335
    :cond_0
    return-void
.end method

.method abstract invalidate(Landroid/view/SurfaceHolder;)V
.end method

.method isEnabled()Z
    .locals 1

    .prologue
    .line 371
    iget-boolean v0, p0, Landroid/view/HardwareRenderer;->mEnabled:Z

    return v0
.end method

.method isRequested()Z
    .locals 1

    .prologue
    .line 390
    iget-boolean v0, p0, Landroid/view/HardwareRenderer;->mRequested:Z

    return v0
.end method

.method setEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 380
    iput-boolean p1, p0, Landroid/view/HardwareRenderer;->mEnabled:Z

    .line 381
    return-void
.end method

.method setRequested(Z)V
    .locals 0
    .parameter "requested"

    .prologue
    .line 400
    iput-boolean p1, p0, Landroid/view/HardwareRenderer;->mRequested:Z

    .line 401
    return-void
.end method

.method abstract setup(II)V
.end method

.method abstract updateSurface(Landroid/view/SurfaceHolder;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation
.end method

.method abstract validate()Z
.end method
