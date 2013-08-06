.class Lcom/mediatek/stereo3d/MarkerPair;
.super Ljava/lang/Object;
.source "JpsParser.java"


# instance fields
.field private mMarker:I

.field private mOffset:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/mediatek/stereo3d/MarkerPair;->mMarker:I

    iput v0, p0, Lcom/mediatek/stereo3d/MarkerPair;->mOffset:I

    return-void
.end method


# virtual methods
.method protected getMarker()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/mediatek/stereo3d/MarkerPair;->mMarker:I

    return v0
.end method

.method protected getOffset()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/mediatek/stereo3d/MarkerPair;->mOffset:I

    return v0
.end method

.method protected setMarker(I)V
    .locals 0
    .parameter "type"

    .prologue
    iput p1, p0, Lcom/mediatek/stereo3d/MarkerPair;->mMarker:I

    return-void
.end method

.method protected setOffset(I)V
    .locals 0
    .parameter "offset"

    .prologue
    iput p1, p0, Lcom/mediatek/stereo3d/MarkerPair;->mOffset:I

    return-void
.end method
