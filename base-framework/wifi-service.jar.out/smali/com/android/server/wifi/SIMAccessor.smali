.class public Lcom/android/server/wifi/SIMAccessor;
.super Ljava/lang/Object;
.source "SIMAccessor.java"


# instance fields
.field private final mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/SIMAccessor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/SIMAccessor;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    return-void
.end method


# virtual methods
.method public getMatchingImsis(Lcom/android/server/wifi/IMSIParameter;)Ljava/util/List;
    .locals 8
    .param p1, "mccMnc"    # Lcom/android/server/wifi/IMSIParameter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wifi/IMSIParameter;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-object v6

    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .local v3, "imsis":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/android/server/wifi/SIMAccessor;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v7}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionIdList()[I

    move-result-object v0

    .local v0, "arr$":[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v4, :cond_2

    aget v5, v0, v1

    .local v5, "subId":I
    iget-object v7, p0, Lcom/android/server/wifi/SIMAccessor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v7, v5}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v2

    .local v2, "imsi":Ljava/lang/String;
    invoke-virtual {p1, v2}, Lcom/android/server/wifi/IMSIParameter;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v2    # "imsi":Ljava/lang/String;
    .end local v5    # "subId":I
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    move-object v3, v6

    .end local v3    # "imsis":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    move-object v6, v3

    goto :goto_0
.end method
