.class final Landroid/os/Trace$1;
.super Ljava/lang/Object;
.source "Trace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/Trace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    #calls: Landroid/os/Trace;->nativeGetEnabledTags()J
    invoke-static {}, Landroid/os/Trace;->access$100()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/os/Trace;->access$002(J)J

    return-void
.end method
