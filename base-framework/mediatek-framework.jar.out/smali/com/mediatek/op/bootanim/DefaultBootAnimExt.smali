.class public Lcom/mediatek/op/bootanim/DefaultBootAnimExt;
.super Ljava/lang/Object;
.source "DefaultBootAnimExt.java"

# interfaces
.implements Lcom/mediatek/common/bootanim/IBootAnimExt;


# static fields
.field private static final TAG:Ljava/lang/String; = "BootAnimExt"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "BootAnimExt"

    const-string v1, "DefaultBootAnimExt Contrustor !"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public getScreenTurnOffTime()I
    .locals 1

    .prologue
    const/16 v0, 0x1388

    return v0
.end method

.method public isCustBootAnim()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method
