.class public Lcom/mediatek/op/telephony/GsmDCTExt;
.super Ljava/lang/Object;
.source "GsmDCTExt.java"

# interfaces
.implements Lcom/mediatek/common/telephony/IGsmDCTExt;


# static fields
.field static final TAG:Ljava/lang/String; = "GsmDCTExt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFDForceFlag(Z)Z
    .locals 1
    .parameter "force_flag"

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method public getOptPreferredApn(Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 1
    .parameter "imsi"
    .parameter "operator"
    .parameter "simID"

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public isDataAllowedAsOff(Ljava/lang/String;)Z
    .locals 1
    .parameter "apnType"

    .prologue
    const-string v0, "default"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isDomesticRoamingEnabled()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public log(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    const-string v0, "GsmDCTExt"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
