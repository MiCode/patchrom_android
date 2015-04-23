.class final Landroid/view/ViewDebug$7;
.super Ljava/lang/Object;
.source "ViewDebug.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/ViewDebug;->dumpv2(Landroid/view/View;Ljava/io/ByteArrayOutputStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$encoder:Landroid/view/ViewHierarchyEncoder;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/view/ViewHierarchyEncoder;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .prologue
    iput-object p1, p0, Landroid/view/ViewDebug$7;->val$view:Landroid/view/View;

    iput-object p2, p0, Landroid/view/ViewDebug$7;->val$encoder:Landroid/view/ViewHierarchyEncoder;

    iput-object p3, p0, Landroid/view/ViewDebug$7;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/view/ViewDebug$7;->val$view:Landroid/view/View;

    iget-object v1, p0, Landroid/view/ViewDebug$7;->val$encoder:Landroid/view/ViewHierarchyEncoder;

    invoke-virtual {v0, v1}, Landroid/view/View;->encode(Landroid/view/ViewHierarchyEncoder;)V

    iget-object v0, p0, Landroid/view/ViewDebug$7;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
