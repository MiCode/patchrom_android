.class public Landroid/hardware/camera2/utils/UncheckedThrow;
.super Ljava/lang/Object;
.source "UncheckedThrow.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static throwAnyException(Ljava/lang/Exception;)V
    .locals 0
    .param p0, "e"    # Ljava/lang/Exception;

    .prologue
    invoke-static {p0}, Landroid/hardware/camera2/utils/UncheckedThrow;->throwAnyImpl(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static throwAnyException(Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "e"    # Ljava/lang/Throwable;

    .prologue
    invoke-static {p0}, Landroid/hardware/camera2/utils/UncheckedThrow;->throwAnyImpl(Ljava/lang/Throwable;)V

    return-void
.end method

.method private static throwAnyImpl(Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "e"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Throwable;",
            ")V^TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    throw p0
.end method
