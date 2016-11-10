.class final Landroid/graphics/drawable/ClipDrawable$ClipState;
.super Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;
.source "ClipDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/ClipDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ClipState"
.end annotation


# instance fields
.field mGravity:I

.field mOrientation:I


# direct methods
.method constructor <init>(Landroid/graphics/drawable/ClipDrawable$ClipState;)V
    .locals 1
    .param p1, "orig"    # Landroid/graphics/drawable/ClipDrawable$ClipState;

    .prologue
    invoke-direct {p0, p1}, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;-><init>(Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;)V

    const/4 v0, 0x1

    iput v0, p0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mOrientation:I

    const/4 v0, 0x3

    iput v0, p0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mGravity:I

    if-eqz p1, :cond_0

    iget v0, p1, Landroid/graphics/drawable/ClipDrawable$ClipState;->mOrientation:I

    iput v0, p0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mOrientation:I

    iget v0, p1, Landroid/graphics/drawable/ClipDrawable$ClipState;->mGravity:I

    iput v0, p0, Landroid/graphics/drawable/ClipDrawable$ClipState;->mGravity:I

    :cond_0
    return-void
.end method


# virtual methods
.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    new-instance v0, Landroid/graphics/drawable/ClipDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/ClipDrawable$ClipState;Landroid/content/res/Resources;Landroid/graphics/drawable/ClipDrawable$1;)V

    return-object v0
.end method
