.class final Landroid/graphics/drawable/ScaleDrawable$ScaleState;
.super Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;
.source "ScaleDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/ScaleDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ScaleState"
.end annotation


# static fields
.field private static final DO_NOT_SCALE:F = -1.0f


# instance fields
.field mGravity:I

.field mScaleHeight:F

.field mScaleWidth:F

.field mUseIntrinsicSizeAsMin:Z


# direct methods
.method constructor <init>(Landroid/graphics/drawable/ScaleDrawable$ScaleState;)V
    .locals 1
    .param p1, "orig"    # Landroid/graphics/drawable/ScaleDrawable$ScaleState;

    .prologue
    const/high16 v0, -0x40800000    # -1.0f

    invoke-direct {p0, p1}, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;-><init>(Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;)V

    iput v0, p0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mScaleWidth:F

    iput v0, p0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mScaleHeight:F

    const/4 v0, 0x3

    iput v0, p0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mGravity:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mUseIntrinsicSizeAsMin:Z

    if-eqz p1, :cond_0

    iget v0, p1, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mScaleWidth:F

    iput v0, p0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mScaleWidth:F

    iget v0, p1, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mScaleHeight:F

    iput v0, p0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mScaleHeight:F

    iget v0, p1, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mGravity:I

    iput v0, p0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mGravity:I

    iget-boolean v0, p1, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mUseIntrinsicSizeAsMin:Z

    iput-boolean v0, p0, Landroid/graphics/drawable/ScaleDrawable$ScaleState;->mUseIntrinsicSizeAsMin:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    new-instance v0, Landroid/graphics/drawable/ScaleDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/graphics/drawable/ScaleDrawable;-><init>(Landroid/graphics/drawable/ScaleDrawable$ScaleState;Landroid/content/res/Resources;Landroid/graphics/drawable/ScaleDrawable$1;)V

    return-object v0
.end method
