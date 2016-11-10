.class public abstract Landroid/app/ActivityView$ActivityViewCallback;
.super Ljava/lang/Object;
.source "ActivityView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ActivityViewCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onAllActivitiesComplete(Landroid/app/ActivityView;)V
.end method

.method public abstract onSurfaceAvailable(Landroid/app/ActivityView;)V
.end method

.method public abstract onSurfaceDestroyed(Landroid/app/ActivityView;)V
.end method
