.class public Landroid/graphics/PaintFlagsDrawFilter;
.super Landroid/graphics/DrawFilter;
.source "PaintFlagsDrawFilter.java"


# direct methods
.method public constructor <init>(II)V
    .locals 2
    .param p1, "clearBits"    # I
    .param p2, "setBits"    # I

    .prologue
    invoke-direct {p0}, Landroid/graphics/DrawFilter;-><init>()V

    invoke-static {p1, p2}, Landroid/graphics/PaintFlagsDrawFilter;->nativeConstructor(II)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/PaintFlagsDrawFilter;->mNativeInt:J

    return-void
.end method

.method private static native nativeConstructor(II)J
.end method
