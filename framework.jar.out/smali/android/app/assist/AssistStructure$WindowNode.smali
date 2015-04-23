.class public Landroid/app/assist/AssistStructure$WindowNode;
.super Ljava/lang/Object;
.source "AssistStructure.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/assist/AssistStructure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WindowNode"
.end annotation


# instance fields
.field final mDisplayId:I

.field final mHeight:I

.field final mRoot:Landroid/app/assist/AssistStructure$ViewNode;

.field final mTitle:Ljava/lang/CharSequence;

.field final mWidth:I

.field final mX:I

.field final mY:I


# direct methods
.method constructor <init>(Landroid/app/assist/AssistStructure$ParcelTransferReader;)V
    .locals 3
    .param p1, "reader"    # Landroid/app/assist/AssistStructure$ParcelTransferReader;

    .prologue
    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v1, 0x11111111

    invoke-virtual {p1, v1, v2}, Landroid/app/assist/AssistStructure$ParcelTransferReader;->readParcel(II)Landroid/os/Parcel;

    move-result-object v0

    .local v0, "in":Landroid/os/Parcel;
    iget v1, p1, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mNumReadWindows:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p1, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mNumReadWindows:I

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/assist/AssistStructure$WindowNode;->mX:I

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/assist/AssistStructure$WindowNode;->mY:I

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/assist/AssistStructure$WindowNode;->mWidth:I

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/assist/AssistStructure$WindowNode;->mHeight:I

    sget-object v1, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    iput-object v1, p0, Landroid/app/assist/AssistStructure$WindowNode;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/assist/AssistStructure$WindowNode;->mDisplayId:I

    new-instance v1, Landroid/app/assist/AssistStructure$ViewNode;

    invoke-direct {v1, p1, v2}, Landroid/app/assist/AssistStructure$ViewNode;-><init>(Landroid/app/assist/AssistStructure$ParcelTransferReader;I)V

    iput-object v1, p0, Landroid/app/assist/AssistStructure$WindowNode;->mRoot:Landroid/app/assist/AssistStructure$ViewNode;

    return-void
.end method

.method constructor <init>(Landroid/app/assist/AssistStructure;Landroid/view/ViewRootImpl;)V
    .locals 5
    .param p1, "assist"    # Landroid/app/assist/AssistStructure;
    .param p2, "root"    # Landroid/view/ViewRootImpl;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v2

    .local v2, "view":Landroid/view/View;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .local v1, "rect":Landroid/graphics/Rect;
    invoke-virtual {v2, v1}, Landroid/view/View;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    iget v3, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, p0, Landroid/app/assist/AssistStructure$WindowNode;->mX:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, p0, Landroid/app/assist/AssistStructure$WindowNode;->mY:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    iput v3, p0, Landroid/app/assist/AssistStructure$WindowNode;->mWidth:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    iput v3, p0, Landroid/app/assist/AssistStructure$WindowNode;->mHeight:I

    invoke-virtual {p2}, Landroid/view/ViewRootImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Landroid/app/assist/AssistStructure$WindowNode;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p2}, Landroid/view/ViewRootImpl;->getDisplayId()I

    move-result v3

    iput v3, p0, Landroid/app/assist/AssistStructure$WindowNode;->mDisplayId:I

    new-instance v3, Landroid/app/assist/AssistStructure$ViewNode;

    invoke-direct {v3}, Landroid/app/assist/AssistStructure$ViewNode;-><init>()V

    iput-object v3, p0, Landroid/app/assist/AssistStructure$WindowNode;->mRoot:Landroid/app/assist/AssistStructure$ViewNode;

    new-instance v0, Landroid/app/assist/AssistStructure$ViewNodeBuilder;

    iget-object v3, p0, Landroid/app/assist/AssistStructure$WindowNode;->mRoot:Landroid/app/assist/AssistStructure$ViewNode;

    const/4 v4, 0x0

    invoke-direct {v0, p1, v3, v4}, Landroid/app/assist/AssistStructure$ViewNodeBuilder;-><init>(Landroid/app/assist/AssistStructure;Landroid/app/assist/AssistStructure$ViewNode;Z)V

    .local v0, "builder":Landroid/app/assist/AssistStructure$ViewNodeBuilder;
    invoke-virtual {p2}, Landroid/view/ViewRootImpl;->getWindowFlags()I

    move-result v3

    and-int/lit16 v3, v3, 0x2000

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Landroid/view/View;->onProvideStructure(Landroid/view/ViewStructure;)V

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->setAssistBlocked(Z)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v2, v0}, Landroid/view/View;->dispatchProvideStructure(Landroid/view/ViewStructure;)V

    goto :goto_0
.end method


# virtual methods
.method public getDisplayId()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/app/assist/AssistStructure$WindowNode;->mDisplayId:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/app/assist/AssistStructure$WindowNode;->mHeight:I

    return v0
.end method

.method public getLeft()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/app/assist/AssistStructure$WindowNode;->mX:I

    return v0
.end method

.method public getRootViewNode()Landroid/app/assist/AssistStructure$ViewNode;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/app/assist/AssistStructure$WindowNode;->mRoot:Landroid/app/assist/AssistStructure$ViewNode;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/app/assist/AssistStructure$WindowNode;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTop()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/app/assist/AssistStructure$WindowNode;->mY:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/app/assist/AssistStructure$WindowNode;->mWidth:I

    return v0
.end method

.method writeSelfToParcel(Landroid/os/Parcel;Landroid/os/PooledStringWriter;[F)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "pwriter"    # Landroid/os/PooledStringWriter;
    .param p3, "tmpMatrix"    # [F

    .prologue
    iget v0, p0, Landroid/app/assist/AssistStructure$WindowNode;->mX:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/assist/AssistStructure$WindowNode;->mY:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/assist/AssistStructure$WindowNode;->mWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/assist/AssistStructure$WindowNode;->mHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/assist/AssistStructure$WindowNode;->mTitle:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    iget v0, p0, Landroid/app/assist/AssistStructure$WindowNode;->mDisplayId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
