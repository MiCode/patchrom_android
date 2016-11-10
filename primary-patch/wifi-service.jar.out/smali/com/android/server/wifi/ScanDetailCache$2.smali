.class Lcom/android/server/wifi/ScanDetailCache$2;
.super Ljava/lang/Object;
.source "ScanDetailCache.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/ScanDetailCache;->sort()Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/ScanDetailCache;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/ScanDetailCache;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/wifi/ScanDetailCache$2;->this$0:Lcom/android/server/wifi/ScanDetailCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 8
    .param p1, "o1"    # Ljava/lang/Object;
    .param p2, "o2"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, -0x1

    check-cast p1, Lcom/android/server/wifi/ScanDetail;

    .end local p1    # "o1":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v0

    .local v0, "a":Landroid/net/wifi/ScanResult;
    check-cast p2, Lcom/android/server/wifi/ScanDetail;

    .end local p2    # "o2":Ljava/lang/Object;
    invoke-virtual {p2}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    move-result-object v1

    .local v1, "b":Landroid/net/wifi/ScanResult;
    iget v4, v0, Landroid/net/wifi/ScanResult;->numIpConfigFailures:I

    iget v5, v1, Landroid/net/wifi/ScanResult;->numIpConfigFailures:I

    if-le v4, v5, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget v4, v0, Landroid/net/wifi/ScanResult;->numIpConfigFailures:I

    iget v5, v1, Landroid/net/wifi/ScanResult;->numIpConfigFailures:I

    if-ge v4, v5, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    iget-wide v4, v0, Landroid/net/wifi/ScanResult;->seen:J

    iget-wide v6, v1, Landroid/net/wifi/ScanResult;->seen:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_3

    move v2, v3

    goto :goto_0

    :cond_3
    iget-wide v4, v0, Landroid/net/wifi/ScanResult;->seen:J

    iget-wide v6, v1, Landroid/net/wifi/ScanResult;->seen:J

    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    iget v4, v0, Landroid/net/wifi/ScanResult;->level:I

    iget v5, v1, Landroid/net/wifi/ScanResult;->level:I

    if-le v4, v5, :cond_4

    move v2, v3

    goto :goto_0

    :cond_4
    iget v3, v0, Landroid/net/wifi/ScanResult;->level:I

    iget v4, v1, Landroid/net/wifi/ScanResult;->level:I

    if-lt v3, v4, :cond_0

    iget-object v2, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iget-object v3, v1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    goto :goto_0
.end method
