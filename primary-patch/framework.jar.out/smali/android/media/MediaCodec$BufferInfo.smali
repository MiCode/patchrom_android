.class public final Landroid/media/MediaCodec$BufferInfo;
.super Ljava/lang/Object;
.source "MediaCodec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BufferInfo"
.end annotation


# instance fields
.field public flags:I

.field public offset:I

.field public presentationTimeUs:J

.field public size:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dup()Landroid/media/MediaCodec$BufferInfo;
    .locals 7

    .prologue
    new-instance v1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .local v1, "copy":Landroid/media/MediaCodec$BufferInfo;
    iget v2, p0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v3, p0, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget-wide v4, p0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget v6, p0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    invoke-virtual/range {v1 .. v6}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    return-object v1
.end method

.method public set(IIJI)V
    .locals 1
    .param p1, "newOffset"    # I
    .param p2, "newSize"    # I
    .param p3, "newTimeUs"    # J
    .param p5, "newFlags"    # I

    .prologue
    iput p1, p0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iput p2, p0, Landroid/media/MediaCodec$BufferInfo;->size:I

    iput-wide p3, p0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput p5, p0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    return-void
.end method
