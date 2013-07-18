.class Landroid/widget/BounceGallery$WindowRunnnable;
.super Ljava/lang/Object;
.source "BounceGallery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/BounceGallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WindowRunnnable"
.end annotation


# instance fields
.field private mOriginalAttachCount:I

.field final synthetic this$0:Landroid/widget/BounceGallery;


# direct methods
.method private constructor <init>(Landroid/widget/BounceGallery;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/widget/BounceGallery$WindowRunnnable;->this$0:Landroid/widget/BounceGallery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/BounceGallery;Landroid/widget/BounceGallery$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/BounceGallery$WindowRunnnable;-><init>(Landroid/widget/BounceGallery;)V

    return-void
.end method


# virtual methods
.method public rememberWindowAttachCount()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/BounceGallery$WindowRunnnable;->this$0:Landroid/widget/BounceGallery;

    #calls: Landroid/widget/BounceGallery;->getWindowAttachCount()I
    invoke-static {v0}, Landroid/widget/BounceGallery;->access$700(Landroid/widget/BounceGallery;)I

    move-result v0

    iput v0, p0, Landroid/widget/BounceGallery$WindowRunnnable;->mOriginalAttachCount:I

    return-void
.end method

.method public sameWindow()Z
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/widget/BounceGallery$WindowRunnnable;->this$0:Landroid/widget/BounceGallery;

    invoke-virtual {v0}, Landroid/widget/BounceGallery;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/BounceGallery$WindowRunnnable;->this$0:Landroid/widget/BounceGallery;

    #calls: Landroid/widget/BounceGallery;->getWindowAttachCount()I
    invoke-static {v0}, Landroid/widget/BounceGallery;->access$800(Landroid/widget/BounceGallery;)I

    move-result v0

    iget v1, p0, Landroid/widget/BounceGallery$WindowRunnnable;->mOriginalAttachCount:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
