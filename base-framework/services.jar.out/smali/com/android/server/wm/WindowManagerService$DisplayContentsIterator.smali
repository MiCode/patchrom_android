.class Lcom/android/server/wm/WindowManagerService$DisplayContentsIterator;
.super Ljava/lang/Object;
.source "WindowManagerService.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DisplayContentsIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lcom/android/server/wm/DisplayContent;",
        ">;"
    }
.end annotation


# instance fields
.field private cur:I

.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$DisplayContentsIterator;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    iget v0, p0, Lcom/android/server/wm/WindowManagerService$DisplayContentsIterator;->cur:I

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$DisplayContentsIterator;->this$0:Lcom/android/server/wm/WindowManagerService;

    #getter for: Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/android/server/wm/WindowManagerService;->access$2400(Lcom/android/server/wm/WindowManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Lcom/android/server/wm/DisplayContent;
    .locals 3

    .prologue
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService$DisplayContentsIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$DisplayContentsIterator;->this$0:Lcom/android/server/wm/WindowManagerService;

    #getter for: Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/android/server/wm/WindowManagerService;->access$2400(Lcom/android/server/wm/WindowManagerService;)Landroid/util/SparseArray;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/WindowManagerService$DisplayContentsIterator;->cur:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/server/wm/WindowManagerService$DisplayContentsIterator;->cur:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/DisplayContent;

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService$DisplayContentsIterator;->next()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "AllDisplayContentIterator.remove not implemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
