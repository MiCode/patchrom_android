.class public abstract Landroid/os/storage/MountServiceInternal;
.super Ljava/lang/Object;
.source "MountServiceInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/storage/MountServiceInternal$ExternalStorageMountPolicy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract addExternalStoragePolicy(Landroid/os/storage/MountServiceInternal$ExternalStorageMountPolicy;)V
.end method

.method public abstract getExternalStorageMountMode(ILjava/lang/String;)I
.end method

.method public abstract onExternalStoragePolicyChanged(ILjava/lang/String;)V
.end method
