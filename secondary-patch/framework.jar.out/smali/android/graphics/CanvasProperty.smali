.class public final Landroid/graphics/CanvasProperty;
.super Ljava/lang/Object;
.source "CanvasProperty.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mProperty:Lcom/android/internal/util/VirtualRefBasePtr;


# direct methods
.method private constructor <init>(J)V
    .locals 1
    .param p1, "nativeContainer"    # J

    .prologue
    .local p0, "this":Landroid/graphics/CanvasProperty;, "Landroid/graphics/CanvasProperty<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/util/VirtualRefBasePtr;-><init>(J)V

    iput-object v0, p0, Landroid/graphics/CanvasProperty;->mProperty:Lcom/android/internal/util/VirtualRefBasePtr;

    return-void
.end method

.method public static createFloat(F)Landroid/graphics/CanvasProperty;
    .locals 4
    .param p0, "initialValue"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Landroid/graphics/CanvasProperty",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v0, Landroid/graphics/CanvasProperty;

    invoke-static {p0}, Landroid/graphics/CanvasProperty;->nCreateFloat(F)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Landroid/graphics/CanvasProperty;-><init>(J)V

    return-object v0
.end method

.method public static createPaint(Landroid/graphics/Paint;)Landroid/graphics/CanvasProperty;
    .locals 4
    .param p0, "initialValue"    # Landroid/graphics/Paint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Paint;",
            ")",
            "Landroid/graphics/CanvasProperty",
            "<",
            "Landroid/graphics/Paint;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v0, Landroid/graphics/CanvasProperty;

    invoke-virtual {p0}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroid/graphics/CanvasProperty;->nCreatePaint(J)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Landroid/graphics/CanvasProperty;-><init>(J)V

    return-object v0
.end method

.method private static native nCreateFloat(F)J
.end method

.method private static native nCreatePaint(J)J
.end method


# virtual methods
.method public getNativeContainer()J
    .locals 2

    .prologue
    .local p0, "this":Landroid/graphics/CanvasProperty;, "Landroid/graphics/CanvasProperty<TT;>;"
    iget-object v0, p0, Landroid/graphics/CanvasProperty;->mProperty:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v0

    return-wide v0
.end method
