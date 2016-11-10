.class Landroid/media/MediaSync$AudioBuffer;
.super Ljava/lang/Object;
.source "MediaSync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaSync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AudioBuffer"
.end annotation


# instance fields
.field public mBufferIndex:I

.field public mByteBuffer:Ljava/nio/ByteBuffer;

.field mPresentationTimeUs:J


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;IJ)V
    .locals 1
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "bufferId"    # I
    .param p3, "presentationTimeUs"    # J

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/MediaSync$AudioBuffer;->mByteBuffer:Ljava/nio/ByteBuffer;

    iput p2, p0, Landroid/media/MediaSync$AudioBuffer;->mBufferIndex:I

    iput-wide p3, p0, Landroid/media/MediaSync$AudioBuffer;->mPresentationTimeUs:J

    return-void
.end method
