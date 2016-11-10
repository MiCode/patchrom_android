.class Landroid/text/StaticLayout$LineBreaks;
.super Ljava/lang/Object;
.source "StaticLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/StaticLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LineBreaks"
.end annotation


# static fields
.field private static final INITIAL_SIZE:I = 0x10


# instance fields
.field public breaks:[I

.field public flags:[I

.field public widths:[F


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [I

    iput-object v0, p0, Landroid/text/StaticLayout$LineBreaks;->breaks:[I

    new-array v0, v1, [F

    iput-object v0, p0, Landroid/text/StaticLayout$LineBreaks;->widths:[F

    new-array v0, v1, [I

    iput-object v0, p0, Landroid/text/StaticLayout$LineBreaks;->flags:[I

    return-void
.end method
