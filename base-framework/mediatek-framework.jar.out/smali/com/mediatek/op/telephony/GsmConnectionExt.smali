.class public Lcom/mediatek/op/telephony/GsmConnectionExt;
.super Ljava/lang/Object;
.source "GsmConnectionExt.java"

# interfaces
.implements Lcom/mediatek/common/telephony/IGsmConnectionExt;


# static fields
.field static final TAG:Ljava/lang/String; = "GsmConnectionExt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFirstPauseDelayMSeconds(I)I
    .locals 2
    .parameter "defaultValue"

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Use defaultValue - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/op/telephony/GsmConnectionExt;->log(Ljava/lang/String;)V

    return p1
.end method

.method public log(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    const-string v0, "GsmConnectionExt"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
