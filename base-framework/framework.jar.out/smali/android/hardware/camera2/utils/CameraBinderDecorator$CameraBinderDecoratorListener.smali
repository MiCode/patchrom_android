.class Landroid/hardware/camera2/utils/CameraBinderDecorator$CameraBinderDecoratorListener;
.super Ljava/lang/Object;
.source "CameraBinderDecorator.java"

# interfaces
.implements Landroid/hardware/camera2/utils/Decorator$DecoratorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/utils/CameraBinderDecorator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CameraBinderDecoratorListener"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/hardware/camera2/utils/CameraBinderDecorator$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Landroid/hardware/camera2/utils/CameraBinderDecorator$CameraBinderDecoratorListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAfterInvocation(Ljava/lang/reflect/Method;[Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6
    .parameter "m"
    .parameter "args"
    .parameter "result"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_0

    check-cast p3, Ljava/lang/Integer;

    .end local p3
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .local v0, returnValue:I
    sparse-switch v0, :sswitch_data_0

    :goto_0
    if-gez v0, :cond_0

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Unknown error %d"

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_0
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Lacking privileges to access camera service"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Bad argument passed to camera service"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_2
    new-instance v1, Landroid/hardware/camera2/utils/CameraRuntimeException;

    invoke-direct {v1, v4}, Landroid/hardware/camera2/utils/CameraRuntimeException;-><init>(I)V

    invoke-static {v1}, Landroid/hardware/camera2/utils/UncheckedThrow;->throwAnyException(Ljava/lang/Exception;)V

    :sswitch_3
    new-instance v1, Landroid/hardware/camera2/utils/CameraRuntimeException;

    invoke-direct {v1, v3}, Landroid/hardware/camera2/utils/CameraRuntimeException;-><init>(I)V

    invoke-static {v1}, Landroid/hardware/camera2/utils/UncheckedThrow;->throwAnyException(Ljava/lang/Exception;)V

    :sswitch_4
    new-instance v1, Landroid/hardware/camera2/utils/CameraRuntimeException;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Landroid/hardware/camera2/utils/CameraRuntimeException;-><init>(I)V

    invoke-static {v1}, Landroid/hardware/camera2/utils/UncheckedThrow;->throwAnyException(Ljava/lang/Exception;)V

    :sswitch_5
    new-instance v1, Landroid/hardware/camera2/utils/CameraRuntimeException;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Landroid/hardware/camera2/utils/CameraRuntimeException;-><init>(I)V

    invoke-static {v1}, Landroid/hardware/camera2/utils/UncheckedThrow;->throwAnyException(Ljava/lang/Exception;)V

    :sswitch_6
    new-instance v1, Landroid/hardware/camera2/utils/CameraRuntimeException;

    invoke-direct {v1, v4}, Landroid/hardware/camera2/utils/CameraRuntimeException;-><init>(I)V

    invoke-static {v1}, Landroid/hardware/camera2/utils/UncheckedThrow;->throwAnyException(Ljava/lang/Exception;)V

    :sswitch_7
    new-instance v1, Landroid/hardware/camera2/utils/CameraRuntimeException;

    const/16 v2, 0x3e8

    invoke-direct {v1, v2}, Landroid/hardware/camera2/utils/CameraRuntimeException;-><init>(I)V

    invoke-static {v1}, Landroid/hardware/camera2/utils/UncheckedThrow;->throwAnyException(Ljava/lang/Exception;)V

    goto :goto_0

    .end local v0           #returnValue:I
    :cond_0
    :sswitch_8
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x5f -> :sswitch_7
        -0x57 -> :sswitch_5
        -0x20 -> :sswitch_2
        -0x16 -> :sswitch_1
        -0x13 -> :sswitch_6
        -0x11 -> :sswitch_8
        -0x10 -> :sswitch_4
        -0xd -> :sswitch_3
        -0x1 -> :sswitch_0
        0x0 -> :sswitch_8
    .end sparse-switch
.end method

.method public onBeforeInvocation(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    .locals 0
    .parameter "m"
    .parameter "args"

    .prologue
    return-void
.end method

.method public onCatchException(Ljava/lang/reflect/Method;[Ljava/lang/Object;Ljava/lang/Throwable;)Z
    .locals 3
    .parameter "m"
    .parameter "args"
    .parameter "t"

    .prologue
    instance-of v0, p3, Landroid/os/DeadObjectException;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/hardware/camera2/utils/CameraRuntimeException;

    const/4 v1, 0x2

    const-string v2, "Process hosting the camera service has died unexpectedly"

    invoke-direct {v0, v1, v2, p3}, Landroid/hardware/camera2/utils/CameraRuntimeException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v0}, Landroid/hardware/camera2/utils/UncheckedThrow;->throwAnyException(Ljava/lang/Exception;)V

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    instance-of v0, p3, Landroid/os/RemoteException;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "An unknown RemoteException was thrown which should never happen."

    invoke-direct {v0, v1, p3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public onFinally(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    .locals 0
    .parameter "m"
    .parameter "args"

    .prologue
    return-void
.end method
