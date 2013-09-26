.class public Landroid/graphics/PorterDuffXfermode;
.super Landroid/graphics/Xfermode;
.source "PorterDuffXfermode.java"


# instance fields
.field public final mode:Landroid/graphics/PorterDuff$Mode;


# direct methods
.method public constructor <init>(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .parameter "mode"

    .prologue
    invoke-direct {p0}, Landroid/graphics/Xfermode;-><init>()V

    iput-object p1, p0, Landroid/graphics/PorterDuffXfermode;->mode:Landroid/graphics/PorterDuff$Mode;

    iget v0, p1, Landroid/graphics/PorterDuff$Mode;->nativeInt:I

    invoke-static {v0}, Landroid/graphics/PorterDuffXfermode;->nativeCreateXfermode(I)I

    move-result v0

    iput v0, p0, Landroid/graphics/PorterDuffXfermode;->native_instance:I

    return-void
.end method

.method private static native nativeCreateXfermode(I)I
.end method
