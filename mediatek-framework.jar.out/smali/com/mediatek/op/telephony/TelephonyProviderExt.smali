.class public Lcom/mediatek/op/telephony/TelephonyProviderExt;
.super Ljava/lang/Object;
.source "TelephonyProviderExt.java"

# interfaces
.implements Lcom/mediatek/common/telephony/ITelephonyProviderExt;


# static fields
.field static final TAG:Ljava/lang/String; = "TelephonyProviderExt"


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
.method public log(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    const-string v0, "TelephonyProviderExt"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onLoadApns(Landroid/content/ContentValues;)I
    .locals 1
    .parameter "row"

    .prologue
    const/4 v0, 0x0

    return v0
.end method
