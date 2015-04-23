.class final Landroid/os/ParcelFileDescriptor$1;
.super Ljava/lang/Object;
.source "ParcelFileDescriptor.java"

# interfaces
.implements Landroid/os/MessageQueue$OnFileDescriptorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;ILandroid/os/Handler;Landroid/os/ParcelFileDescriptor$OnCloseListener;)Landroid/os/ParcelFileDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Landroid/os/ParcelFileDescriptor$OnCloseListener;

.field final synthetic val$queue:Landroid/os/MessageQueue;


# direct methods
.method constructor <init>(Landroid/os/MessageQueue;Landroid/os/ParcelFileDescriptor$OnCloseListener;)V
    .locals 0

    .prologue
    iput-object p1, p0, Landroid/os/ParcelFileDescriptor$1;->val$queue:Landroid/os/MessageQueue;

    iput-object p2, p0, Landroid/os/ParcelFileDescriptor$1;->val$listener:Landroid/os/ParcelFileDescriptor$OnCloseListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFileDescriptorEvents(Ljava/io/FileDescriptor;I)I
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "events"    # I

    .prologue
    const/4 v1, 0x0

    .local v1, "status":Landroid/os/ParcelFileDescriptor$Status;
    and-int/lit8 v2, p2, 0x1

    if-eqz v2, :cond_1

    const/16 v2, 0x400

    new-array v0, v2, [B

    .local v0, "buf":[B
    # invokes: Landroid/os/ParcelFileDescriptor;->readCommStatus(Ljava/io/FileDescriptor;[B)Landroid/os/ParcelFileDescriptor$Status;
    invoke-static {p1, v0}, Landroid/os/ParcelFileDescriptor;->access$000(Ljava/io/FileDescriptor;[B)Landroid/os/ParcelFileDescriptor$Status;

    move-result-object v1

    .end local v0    # "buf":[B
    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    iget-object v2, p0, Landroid/os/ParcelFileDescriptor$1;->val$queue:Landroid/os/MessageQueue;

    invoke-virtual {v2, p1}, Landroid/os/MessageQueue;->removeOnFileDescriptorEventListener(Ljava/io/FileDescriptor;)V

    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    iget-object v2, p0, Landroid/os/ParcelFileDescriptor$1;->val$listener:Landroid/os/ParcelFileDescriptor$OnCloseListener;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor$Status;->asIOException()Ljava/io/IOException;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/os/ParcelFileDescriptor$OnCloseListener;->onClose(Ljava/io/IOException;)V

    const/4 v2, 0x0

    :goto_1
    return v2

    :cond_1
    and-int/lit8 v2, p2, 0x4

    if-eqz v2, :cond_0

    new-instance v1, Landroid/os/ParcelFileDescriptor$Status;

    .end local v1    # "status":Landroid/os/ParcelFileDescriptor$Status;
    const/4 v2, -0x2

    invoke-direct {v1, v2}, Landroid/os/ParcelFileDescriptor$Status;-><init>(I)V

    .restart local v1    # "status":Landroid/os/ParcelFileDescriptor$Status;
    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_1
.end method
