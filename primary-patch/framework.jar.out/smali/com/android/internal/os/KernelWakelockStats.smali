.class public Lcom/android/internal/os/KernelWakelockStats;
.super Ljava/util/HashMap;
.source "KernelWakelockStats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/KernelWakelockStats$Entry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Lcom/android/internal/os/KernelWakelockStats$Entry;",
        ">;"
    }
.end annotation


# instance fields
.field kernelWakelockVersion:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method
