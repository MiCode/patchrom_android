.class Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;
.super Ljava/lang/Object;
.source "WifiLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LimitedCircularArray"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mArray:Landroid/support/v4/util/CircularArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/CircularArray",
            "<TE;>;"
        }
    .end annotation
.end field

.field private mMax:I


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "max"    # I

    .prologue
    .local p0, "this":Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;, "Lcom/android/server/wifi/WifiLogger$LimitedCircularArray<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/support/v4/util/CircularArray;

    invoke-direct {v0}, Landroid/support/v4/util/CircularArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;->mArray:Landroid/support/v4/util/CircularArray;

    iput p1, p0, Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;->mMax:I

    return-void
.end method


# virtual methods
.method public final addLast(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;, "Lcom/android/server/wifi/WifiLogger$LimitedCircularArray<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;->mArray:Landroid/support/v4/util/CircularArray;

    invoke-virtual {v0}, Landroid/support/v4/util/CircularArray;->size()I

    move-result v0

    iget v1, p0, Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;->mMax:I

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;->mArray:Landroid/support/v4/util/CircularArray;

    invoke-virtual {v0}, Landroid/support/v4/util/CircularArray;->popFirst()Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;->mArray:Landroid/support/v4/util/CircularArray;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/CircularArray;->addLast(Ljava/lang/Object;)V

    return-void
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;, "Lcom/android/server/wifi/WifiLogger$LimitedCircularArray<TE;>;"
    iget-object v0, p0, Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;->mArray:Landroid/support/v4/util/CircularArray;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/CircularArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .local p0, "this":Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;, "Lcom/android/server/wifi/WifiLogger$LimitedCircularArray<TE;>;"
    iget-object v0, p0, Lcom/android/server/wifi/WifiLogger$LimitedCircularArray;->mArray:Landroid/support/v4/util/CircularArray;

    invoke-virtual {v0}, Landroid/support/v4/util/CircularArray;->size()I

    move-result v0

    return v0
.end method
