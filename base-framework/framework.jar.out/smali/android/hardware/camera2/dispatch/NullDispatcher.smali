.class public Landroid/hardware/camera2/dispatch/NullDispatcher;
.super Ljava/lang/Object;
.source "NullDispatcher.java"

# interfaces
.implements Landroid/hardware/camera2/dispatch/Dispatchable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/hardware/camera2/dispatch/Dispatchable",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .local p0, "this":Landroid/hardware/camera2/dispatch/NullDispatcher;, "Landroid/hardware/camera2/dispatch/NullDispatcher<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatch(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .local p0, "this":Landroid/hardware/camera2/dispatch/NullDispatcher;, "Landroid/hardware/camera2/dispatch/NullDispatcher<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method
