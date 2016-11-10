.class public abstract Landroid/print/PrintDocumentAdapter$LayoutResultCallback;
.super Ljava/lang/Object;
.source "PrintDocumentAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/PrintDocumentAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "LayoutResultCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutCancelled()V
    .locals 0

    .prologue
    return-void
.end method

.method public onLayoutFailed(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "error"    # Ljava/lang/CharSequence;

    .prologue
    return-void
.end method

.method public onLayoutFinished(Landroid/print/PrintDocumentInfo;Z)V
    .locals 0
    .param p1, "info"    # Landroid/print/PrintDocumentInfo;
    .param p2, "changed"    # Z

    .prologue
    return-void
.end method
