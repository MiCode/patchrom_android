.class public abstract Landroid/view/DisplayList;
.super Ljava/lang/Object;
.source "DisplayList.java"


# static fields
.field public static final FLAG_CLIP_CHILDREN:I = 0x1

.field public static final STATUS_DONE:I = 0x0

.field public static final STATUS_DRAW:I = 0x1

.field public static final STATUS_DREW:I = 0x4

.field public static final STATUS_INVOKE:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract clear()V
.end method

.method public abstract end()V
.end method

.method public abstract getSize()I
.end method

.method public abstract invalidate()V
.end method

.method public abstract isValid()Z
.end method

.method public abstract offsetLeftRight(I)V
.end method

.method public abstract offsetTopBottom(I)V
.end method

.method public abstract reset()V
.end method

.method public abstract setAlpha(F)V
.end method

.method public abstract setAnimationMatrix(Landroid/graphics/Matrix;)V
.end method

.method public abstract setBottom(I)V
.end method

.method public abstract setCaching(Z)V
.end method

.method public abstract setCameraDistance(F)V
.end method

.method public abstract setClipChildren(Z)V
.end method

.method public abstract setHasOverlappingRendering(Z)V
.end method

.method public abstract setLeft(I)V
.end method

.method public abstract setLeftTop(II)V
.end method

.method public abstract setLeftTopRightBottom(IIII)V
.end method

.method public abstract setPivotX(F)V
.end method

.method public abstract setPivotY(F)V
.end method

.method public abstract setRight(I)V
.end method

.method public abstract setRotation(F)V
.end method

.method public abstract setRotationX(F)V
.end method

.method public abstract setRotationY(F)V
.end method

.method public abstract setScaleX(F)V
.end method

.method public abstract setScaleY(F)V
.end method

.method public abstract setStaticMatrix(Landroid/graphics/Matrix;)V
.end method

.method public abstract setTop(I)V
.end method

.method public abstract setTransformationInfo(FFFFFFFF)V
.end method

.method public abstract setTranslationX(F)V
.end method

.method public abstract setTranslationY(F)V
.end method

.method public abstract start()Landroid/view/HardwareCanvas;
.end method
