.class public Landroid/view/Surface;
.super Ljava/lang/Object;
.source "Surface.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/Surface$CompatibleCanvas;,
        Landroid/view/Surface$OutOfResourcesException;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG_RELEASE:Z = false

.field public static final FX_SURFACE_BLUR:I = 0x10000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FX_SURFACE_DIM:I = 0x20000

.field public static final FX_SURFACE_MASK:I = 0xf0000

.field public static final FX_SURFACE_NORMAL:I = 0x0

.field public static final FX_SURFACE_SCREENSHOT:I = 0x30000

.field public static final HIDDEN:I = 0x4

.field private static final LOG_TAG:Ljava/lang/String; = "Surface"

.field public static final NON_PREMULTIPLIED:I = 0x100

.field public static final OPAQUE:I = 0x400

.field public static final PROTECTED_APP:I = 0x800

.field public static final ROTATION_0:I = 0x0

.field public static final ROTATION_180:I = 0x2

.field public static final ROTATION_270:I = 0x3

.field public static final ROTATION_90:I = 0x1

.field public static final SECURE:I = 0x80

.field public static final SURFACE_DITHER:I = 0x4

.field public static final SURFACE_FROZEN:I = 0x2

.field public static final SURFACE_HIDDEN:I = 0x1


# instance fields
.field private mCanvas:Landroid/graphics/Canvas;

.field private mCompatibilityTranslator:Landroid/content/res/CompatibilityInfo$Translator;

.field private mCompatibleMatrix:Landroid/graphics/Matrix;

.field private mCreationStack:Ljava/lang/Exception;

.field private mName:Ljava/lang/String;

.field private mNativeSurface:I

.field private mSaveCount:I

.field private mSurfaceControl:I

.field private mSurfaceGenerationId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 241
    invoke-static {}, Landroid/view/Surface;->nativeClassInit()V

    .line 489
    new-instance v0, Landroid/view/Surface$1;

    invoke-direct {v0}, Landroid/view/Surface$1;-><init>()V

    sput-object v0, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 275
    new-instance v0, Landroid/view/Surface$CompatibleCanvas;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/Surface$CompatibleCanvas;-><init>(Landroid/view/Surface;Landroid/view/Surface$1;)V

    iput-object v0, p0, Landroid/view/Surface;->mCanvas:Landroid/graphics/Canvas;

    .line 276
    return-void
.end method

.method public constructor <init>(Landroid/graphics/SurfaceTexture;)V
    .locals 2
    .parameter "surfaceTexture"

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Landroid/view/Surface$CompatibleCanvas;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/Surface$CompatibleCanvas;-><init>(Landroid/view/Surface;Landroid/view/Surface$1;)V

    iput-object v0, p0, Landroid/view/Surface;->mCanvas:Landroid/graphics/Canvas;

    .line 53
    invoke-direct {p0, p1}, Landroid/view/Surface;->initFromSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    .line 54
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "source"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation

    .prologue
    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    invoke-direct {p0, p1}, Landroid/view/Surface;->init(Landroid/os/Parcel;)V

    .line 280
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/view/Surface$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/view/Surface;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/SurfaceSession;IIIIII)V
    .locals 9
    .parameter "s"
    .parameter "pid"
    .parameter "display"
    .parameter "w"
    .parameter "h"
    .parameter "format"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation

    .prologue
    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    new-instance v0, Landroid/view/Surface$CompatibleCanvas;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/Surface$CompatibleCanvas;-><init>(Landroid/view/Surface;Landroid/view/Surface$1;)V

    iput-object v0, p0, Landroid/view/Surface;->mCanvas:Landroid/graphics/Canvas;

    .line 251
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Landroid/view/Surface;->init(Landroid/view/SurfaceSession;ILjava/lang/String;IIIII)V

    .line 252
    return-void
.end method

.method public constructor <init>(Landroid/view/SurfaceSession;ILjava/lang/String;IIIII)V
    .locals 2
    .parameter "s"
    .parameter "pid"
    .parameter "name"
    .parameter "display"
    .parameter "w"
    .parameter "h"
    .parameter "format"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation

    .prologue
    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 261
    new-instance v0, Landroid/view/Surface$CompatibleCanvas;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/Surface$CompatibleCanvas;-><init>(Landroid/view/Surface;Landroid/view/Surface$1;)V

    iput-object v0, p0, Landroid/view/Surface;->mCanvas:Landroid/graphics/Canvas;

    .line 262
    invoke-direct/range {p0 .. p8}, Landroid/view/Surface;->init(Landroid/view/SurfaceSession;ILjava/lang/String;IIIII)V

    .line 263
    iput-object p3, p0, Landroid/view/Surface;->mName:Ljava/lang/String;

    .line 264
    return-void
.end method

.method static synthetic access$100(Landroid/view/Surface;)Landroid/content/res/CompatibilityInfo$Translator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Landroid/view/Surface;->mCompatibilityTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    return-object v0
.end method

.method static synthetic access$200(Landroid/view/Surface;)Landroid/graphics/Matrix;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Landroid/view/Surface;->mCompatibleMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public static native closeTransaction()V
.end method

.method public static native freezeDisplay(I)V
.end method

.method private native getIdentity()I
.end method

.method private native init(Landroid/os/Parcel;)V
.end method

.method private native init(Landroid/view/SurfaceSession;ILjava/lang/String;IIIII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation
.end method

.method private native initFromSurfaceTexture(Landroid/graphics/SurfaceTexture;)V
.end method

.method private native lockCanvasNative(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
.end method

.method private static native nativeClassInit()V
.end method

.method public static native openTransaction()V
.end method

.method public static native screenshot(II)Landroid/graphics/Bitmap;
.end method

.method public static native screenshot(IIII)Landroid/graphics/Bitmap;
.end method

.method public static setOrientation(II)V
    .locals 1
    .parameter "display"
    .parameter "orientation"

    .prologue
    .line 422
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/view/Surface;->setOrientation(III)V

    .line 423
    return-void
.end method

.method public static native setOrientation(III)V
.end method

.method public static native unfreezeDisplay(I)V
.end method


# virtual methods
.method public native copyFrom(Landroid/view/Surface;)V
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public native destroy()V
.end method

.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 509
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 511
    iget v0, p0, Landroid/view/Surface;->mNativeSurface:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/view/Surface;->mSurfaceControl:I

    if-eqz v0, :cond_1

    .line 516
    :cond_0
    const-string v0, "Surface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Surface.finalize() has work. You should have called release() ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/Surface;->mNativeSurface:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/Surface;->mSurfaceControl:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    :cond_1
    invoke-virtual {p0}, Landroid/view/Surface;->release()V

    .line 522
    return-void

    .line 511
    :catchall_0
    move-exception v0

    iget v1, p0, Landroid/view/Surface;->mNativeSurface:I

    if-nez v1, :cond_2

    iget v1, p0, Landroid/view/Surface;->mSurfaceControl:I

    if-eqz v1, :cond_3

    .line 516
    :cond_2
    const-string v1, "Surface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Surface.finalize() has work. You should have called release() ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/view/Surface;->mNativeSurface:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/view/Surface;->mSurfaceControl:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    :cond_3
    invoke-virtual {p0}, Landroid/view/Surface;->release()V

    throw v0
.end method

.method public native freeze()V
.end method

.method public getGenerationId()I
    .locals 1

    .prologue
    .line 305
    iget v0, p0, Landroid/view/Surface;->mSurfaceGenerationId:I

    return v0
.end method

.method public native hide()V
.end method

.method public native isValid()Z
.end method

.method public lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    .locals 1
    .parameter "dirty"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 76
    invoke-direct {p0, p1}, Landroid/view/Surface;->lockCanvasNative(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v0

    return-object v0
.end method

.method public native readFromParcel(Landroid/os/Parcel;)V
.end method

.method public native release()V
.end method

.method public native setAlpha(F)V
.end method

.method setCompatibilityTranslator(Landroid/content/res/CompatibilityInfo$Translator;)V
    .locals 2
    .parameter "translator"

    .prologue
    .line 373
    if-eqz p1, :cond_0

    .line 374
    iget v0, p1, Landroid/content/res/CompatibilityInfo$Translator;->applicationScale:F

    .line 375
    .local v0, appScale:F
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Landroid/view/Surface;->mCompatibleMatrix:Landroid/graphics/Matrix;

    .line 376
    iget-object v1, p0, Landroid/view/Surface;->mCompatibleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 378
    .end local v0           #appScale:F
    :cond_0
    return-void
.end method

.method public native setFlags(II)V
.end method

.method public native setFreezeTint(I)V
.end method

.method public native setLayer(I)V
.end method

.method public native setMatrix(FFFF)V
.end method

.method public native setPosition(FF)V
.end method

.method public setPosition(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 463
    int-to-float v0, p1

    int-to-float v1, p2

    invoke-virtual {p0, v0, v1}, Landroid/view/Surface;->setPosition(FF)V

    return-void
.end method

.method public native setSize(II)V
.end method

.method public native setTransparentRegionHint(Landroid/graphics/Region;)V
.end method

.method public native show()V
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Surface(name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/Surface;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", identity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Landroid/view/Surface;->getIdentity()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public native transferFrom(Landroid/view/Surface;)V
.end method

.method public native unfreeze()V
.end method

.method public native unlockCanvas(Landroid/graphics/Canvas;)V
.end method

.method public native unlockCanvasAndPost(Landroid/graphics/Canvas;)V
.end method

.method public native writeToParcel(Landroid/os/Parcel;I)V
.end method
