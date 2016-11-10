.class public Landroid/hardware/camera2/utils/CameraRuntimeException;
.super Ljava/lang/RuntimeException;
.source "CameraRuntimeException.java"


# instance fields
.field private mCause:Ljava/lang/Throwable;

.field private mMessage:Ljava/lang/String;

.field private final mReason:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "problem"    # I

    .prologue
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    iput p1, p0, Landroid/hardware/camera2/utils/CameraRuntimeException;->mReason:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "problem"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput p1, p0, Landroid/hardware/camera2/utils/CameraRuntimeException;->mReason:I

    iput-object p2, p0, Landroid/hardware/camera2/utils/CameraRuntimeException;->mMessage:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "problem"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    .prologue
    invoke-direct {p0, p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput p1, p0, Landroid/hardware/camera2/utils/CameraRuntimeException;->mReason:I

    iput-object p2, p0, Landroid/hardware/camera2/utils/CameraRuntimeException;->mMessage:Ljava/lang/String;

    iput-object p3, p0, Landroid/hardware/camera2/utils/CameraRuntimeException;->mCause:Ljava/lang/Throwable;

    return-void
.end method

.method public constructor <init>(ILjava/lang/Throwable;)V
    .locals 0
    .param p1, "problem"    # I
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    iput p1, p0, Landroid/hardware/camera2/utils/CameraRuntimeException;->mReason:I

    iput-object p2, p0, Landroid/hardware/camera2/utils/CameraRuntimeException;->mCause:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public asChecked()Landroid/hardware/camera2/CameraAccessException;
    .locals 4

    .prologue
    iget-object v1, p0, Landroid/hardware/camera2/utils/CameraRuntimeException;->mMessage:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/hardware/camera2/utils/CameraRuntimeException;->mCause:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    new-instance v0, Landroid/hardware/camera2/CameraAccessException;

    iget v1, p0, Landroid/hardware/camera2/utils/CameraRuntimeException;->mReason:I

    iget-object v2, p0, Landroid/hardware/camera2/utils/CameraRuntimeException;->mMessage:Ljava/lang/String;

    iget-object v3, p0, Landroid/hardware/camera2/utils/CameraRuntimeException;->mCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    :goto_0
    invoke-virtual {p0}, Landroid/hardware/camera2/utils/CameraRuntimeException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraAccessException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    return-object v0

    .end local v0    # "e":Landroid/hardware/camera2/CameraAccessException;
    :cond_0
    iget-object v1, p0, Landroid/hardware/camera2/utils/CameraRuntimeException;->mMessage:Ljava/lang/String;

    if-eqz v1, :cond_1

    new-instance v0, Landroid/hardware/camera2/CameraAccessException;

    iget v1, p0, Landroid/hardware/camera2/utils/CameraRuntimeException;->mReason:I

    iget-object v2, p0, Landroid/hardware/camera2/utils/CameraRuntimeException;->mMessage:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    .restart local v0    # "e":Landroid/hardware/camera2/CameraAccessException;
    goto :goto_0

    .end local v0    # "e":Landroid/hardware/camera2/CameraAccessException;
    :cond_1
    iget-object v1, p0, Landroid/hardware/camera2/utils/CameraRuntimeException;->mCause:Ljava/lang/Throwable;

    if-eqz v1, :cond_2

    new-instance v0, Landroid/hardware/camera2/CameraAccessException;

    iget v1, p0, Landroid/hardware/camera2/utils/CameraRuntimeException;->mReason:I

    iget-object v2, p0, Landroid/hardware/camera2/utils/CameraRuntimeException;->mCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/Throwable;)V

    .restart local v0    # "e":Landroid/hardware/camera2/CameraAccessException;
    goto :goto_0

    .end local v0    # "e":Landroid/hardware/camera2/CameraAccessException;
    :cond_2
    new-instance v0, Landroid/hardware/camera2/CameraAccessException;

    iget v1, p0, Landroid/hardware/camera2/utils/CameraRuntimeException;->mReason:I

    invoke-direct {v0, v1}, Landroid/hardware/camera2/CameraAccessException;-><init>(I)V

    .restart local v0    # "e":Landroid/hardware/camera2/CameraAccessException;
    goto :goto_0
.end method

.method public final getReason()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/hardware/camera2/utils/CameraRuntimeException;->mReason:I

    return v0
.end method
