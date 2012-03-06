.class abstract Landroid/view/HardwareLayer;
.super Ljava/lang/Object;
.source "HardwareLayer.java"


# static fields
.field static final DIMENSION_UNDEFINED:I = -0x1


# instance fields
.field mHeight:I

.field mOpaque:Z

.field mWidth:I


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, v1, v1, v0}, Landroid/view/HardwareLayer;-><init>(IIZ)V

    .line 46
    return-void
.end method

.method constructor <init>(IIZ)V
    .locals 0
    .parameter "width"
    .parameter "height"
    .parameter "isOpaque"

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput p1, p0, Landroid/view/HardwareLayer;->mWidth:I

    .line 58
    iput p2, p0, Landroid/view/HardwareLayer;->mHeight:I

    .line 59
    iput-boolean p3, p0, Landroid/view/HardwareLayer;->mOpaque:Z

    .line 60
    return-void
.end method


# virtual methods
.method abstract copyInto(Landroid/graphics/Bitmap;)Z
.end method

.method abstract destroy()V
.end method

.method abstract end(Landroid/graphics/Canvas;)V
.end method

.method abstract getCanvas()Landroid/view/HardwareCanvas;
.end method

.method getHeight()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Landroid/view/HardwareLayer;->mHeight:I

    return v0
.end method

.method getWidth()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Landroid/view/HardwareLayer;->mWidth:I

    return v0
.end method

.method isOpaque()Z
    .locals 1

    .prologue
    .line 86
    iget-boolean v0, p0, Landroid/view/HardwareLayer;->mOpaque:Z

    return v0
.end method

.method abstract isValid()Z
.end method

.method abstract resize(II)V
.end method

.method abstract setTransform(Landroid/graphics/Matrix;)V
.end method

.method abstract start(Landroid/graphics/Canvas;)Landroid/view/HardwareCanvas;
.end method

.method update(IIZ)V
    .locals 0
    .parameter "width"
    .parameter "height"
    .parameter "isOpaque"

    .prologue
    .line 150
    iput p1, p0, Landroid/view/HardwareLayer;->mWidth:I

    .line 151
    iput p2, p0, Landroid/view/HardwareLayer;->mHeight:I

    .line 152
    iput-boolean p3, p0, Landroid/view/HardwareLayer;->mOpaque:Z

    .line 153
    return-void
.end method
