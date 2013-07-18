.class public Landroid/graphics/PorterDuffColorFilter;
.super Landroid/graphics/ColorFilter;
.source "PorterDuffColorFilter.java"


# direct methods
.method public constructor <init>(ILandroid/graphics/PorterDuff$Mode;)V
    .locals 2
    .parameter "srcColor"
    .parameter "mode"

    .prologue
    invoke-direct {p0}, Landroid/graphics/ColorFilter;-><init>()V

    iget v0, p2, Landroid/graphics/PorterDuff$Mode;->nativeInt:I

    invoke-static {p1, v0}, Landroid/graphics/PorterDuffColorFilter;->native_CreatePorterDuffFilter(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/PorterDuffColorFilter;->native_instance:I

    iget v0, p0, Landroid/graphics/PorterDuffColorFilter;->native_instance:I

    iget v1, p2, Landroid/graphics/PorterDuff$Mode;->nativeInt:I

    invoke-static {v0, p1, v1}, Landroid/graphics/PorterDuffColorFilter;->nCreatePorterDuffFilter(III)I

    move-result v0

    iput v0, p0, Landroid/graphics/PorterDuffColorFilter;->nativeColorFilter:I

    return-void
.end method

.method private static native nCreatePorterDuffFilter(III)I
.end method

.method private static native native_CreatePorterDuffFilter(II)I
.end method
