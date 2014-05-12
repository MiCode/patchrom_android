.class public abstract Landroid/print/PrintDocumentAdapter$WriteResultCallback;
.super Ljava/lang/Object;
.source "PrintDocumentAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/PrintDocumentAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "WriteResultCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWriteCancelled()V
    .locals 0

    .prologue
    return-void
.end method

.method public onWriteFailed(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "error"

    .prologue
    return-void
.end method

.method public onWriteFinished([Landroid/print/PageRange;)V
    .locals 0
    .parameter "pages"

    .prologue
    return-void
.end method
