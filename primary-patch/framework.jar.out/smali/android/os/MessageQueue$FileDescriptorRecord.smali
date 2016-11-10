.class final Landroid/os/MessageQueue$FileDescriptorRecord;
.super Ljava/lang/Object;
.source "MessageQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/MessageQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FileDescriptorRecord"
.end annotation


# instance fields
.field public final mDescriptor:Ljava/io/FileDescriptor;

.field public mEvents:I

.field public mListener:Landroid/os/MessageQueue$OnFileDescriptorEventListener;

.field public mSeq:I


# direct methods
.method public constructor <init>(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V
    .locals 0
    .param p1, "descriptor"    # Ljava/io/FileDescriptor;
    .param p2, "events"    # I
    .param p3, "listener"    # Landroid/os/MessageQueue$OnFileDescriptorEventListener;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/MessageQueue$FileDescriptorRecord;->mDescriptor:Ljava/io/FileDescriptor;

    iput p2, p0, Landroid/os/MessageQueue$FileDescriptorRecord;->mEvents:I

    iput-object p3, p0, Landroid/os/MessageQueue$FileDescriptorRecord;->mListener:Landroid/os/MessageQueue$OnFileDescriptorEventListener;

    return-void
.end method
