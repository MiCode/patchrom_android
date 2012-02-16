.class final Landroid/app/ActivityThread$ProviderRefCount;
.super Ljava/lang/Object;
.source "ActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProviderRefCount"
.end annotation


# instance fields
.field public count:I


# direct methods
.method constructor <init>(I)V
    .locals 0
    .parameter "pCount"

    .prologue
    .line 2740
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2741
    iput p1, p0, Landroid/app/ActivityThread$ProviderRefCount;->count:I

    .line 2742
    return-void
.end method
