.class Lcom/mediatek/banyan/widget/MTKImageView$Bound;
.super Ljava/lang/Object;
.source "MTKImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/banyan/widget/MTKImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Bound"
.end annotation


# instance fields
.field private height:I

.field final synthetic this$0:Lcom/mediatek/banyan/widget/MTKImageView;

.field private width:I


# direct methods
.method private constructor <init>(Lcom/mediatek/banyan/widget/MTKImageView;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/mediatek/banyan/widget/MTKImageView$Bound;->this$0:Lcom/mediatek/banyan/widget/MTKImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/banyan/widget/MTKImageView;Lcom/mediatek/banyan/widget/MTKImageView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/banyan/widget/MTKImageView$Bound;-><init>(Lcom/mediatek/banyan/widget/MTKImageView;)V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/banyan/widget/MTKImageView$Bound;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/mediatek/banyan/widget/MTKImageView$Bound;->width:I

    return v0
.end method

.method static synthetic access$202(Lcom/mediatek/banyan/widget/MTKImageView$Bound;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Lcom/mediatek/banyan/widget/MTKImageView$Bound;->width:I

    return p1
.end method

.method static synthetic access$300(Lcom/mediatek/banyan/widget/MTKImageView$Bound;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/mediatek/banyan/widget/MTKImageView$Bound;->height:I

    return v0
.end method

.method static synthetic access$302(Lcom/mediatek/banyan/widget/MTKImageView$Bound;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Lcom/mediatek/banyan/widget/MTKImageView$Bound;->height:I

    return p1
.end method
