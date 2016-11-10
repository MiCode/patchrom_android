.class public abstract Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;
.super Ljava/lang/Object;
.source "UsageStatsManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/usage/UsageStatsManagerInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AppIdleStateChangeListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onAppIdleStateChanged(Ljava/lang/String;IZ)V
.end method

.method public abstract onParoleStateChanged(Z)V
.end method
