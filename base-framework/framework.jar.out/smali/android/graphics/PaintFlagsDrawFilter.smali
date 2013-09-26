.class public Landroid/graphics/PaintFlagsDrawFilter;
.super Landroid/graphics/DrawFilter;
.source "PaintFlagsDrawFilter.java"


# instance fields
.field public final clearBits:I

.field public final setBits:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .parameter "clearBits"
    .parameter "setBits"

    .prologue
    invoke-direct {p0}, Landroid/graphics/DrawFilter;-><init>()V

    iput p1, p0, Landroid/graphics/PaintFlagsDrawFilter;->clearBits:I

    iput p2, p0, Landroid/graphics/PaintFlagsDrawFilter;->setBits:I

    invoke-static {p1, p2}, Landroid/graphics/PaintFlagsDrawFilter;->nativeConstructor(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/PaintFlagsDrawFilter;->mNativeInt:I

    return-void
.end method

.method private static native nativeConstructor(II)I
.end method
