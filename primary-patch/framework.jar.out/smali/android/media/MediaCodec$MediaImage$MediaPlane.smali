.class Landroid/media/MediaCodec$MediaImage$MediaPlane;
.super Landroid/media/Image$Plane;
.source "MediaCodec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCodec$MediaImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaPlane"
.end annotation


# instance fields
.field private final mColInc:I

.field private final mData:Ljava/nio/ByteBuffer;

.field private final mRowInc:I

.field final synthetic this$0:Landroid/media/MediaCodec$MediaImage;


# direct methods
.method public constructor <init>(Landroid/media/MediaCodec$MediaImage;Ljava/nio/ByteBuffer;II)V
    .locals 0
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;
    .param p3, "rowInc"    # I
    .param p4, "colInc"    # I

    .prologue
    iput-object p1, p0, Landroid/media/MediaCodec$MediaImage$MediaPlane;->this$0:Landroid/media/MediaCodec$MediaImage;

    invoke-direct {p0}, Landroid/media/Image$Plane;-><init>()V

    iput-object p2, p0, Landroid/media/MediaCodec$MediaImage$MediaPlane;->mData:Ljava/nio/ByteBuffer;

    iput p3, p0, Landroid/media/MediaCodec$MediaImage$MediaPlane;->mRowInc:I

    iput p4, p0, Landroid/media/MediaCodec$MediaImage$MediaPlane;->mColInc:I

    return-void
.end method


# virtual methods
.method public getBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/media/MediaCodec$MediaImage$MediaPlane;->this$0:Landroid/media/MediaCodec$MediaImage;

    invoke-virtual {v0}, Landroid/media/MediaCodec$MediaImage;->throwISEIfImageIsInvalid()V

    iget-object v0, p0, Landroid/media/MediaCodec$MediaImage$MediaPlane;->mData:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getPixelStride()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/media/MediaCodec$MediaImage$MediaPlane;->this$0:Landroid/media/MediaCodec$MediaImage;

    invoke-virtual {v0}, Landroid/media/MediaCodec$MediaImage;->throwISEIfImageIsInvalid()V

    iget v0, p0, Landroid/media/MediaCodec$MediaImage$MediaPlane;->mColInc:I

    return v0
.end method

.method public getRowStride()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/media/MediaCodec$MediaImage$MediaPlane;->this$0:Landroid/media/MediaCodec$MediaImage;

    invoke-virtual {v0}, Landroid/media/MediaCodec$MediaImage;->throwISEIfImageIsInvalid()V

    iget v0, p0, Landroid/media/MediaCodec$MediaImage$MediaPlane;->mRowInc:I

    return v0
.end method
