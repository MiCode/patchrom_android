.class public final Landroid/service/carrier/CarrierMessagingService$SendMmsResult;
.super Ljava/lang/Object;
.source "CarrierMessagingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/carrier/CarrierMessagingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SendMmsResult"
.end annotation


# instance fields
.field private mSendConfPdu:[B

.field private mSendStatus:I


# direct methods
.method public constructor <init>(I[B)V
    .locals 0
    .param p1, "sendStatus"    # I
    .param p2, "sendConfPdu"    # [B

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/service/carrier/CarrierMessagingService$SendMmsResult;->mSendStatus:I

    iput-object p2, p0, Landroid/service/carrier/CarrierMessagingService$SendMmsResult;->mSendConfPdu:[B

    return-void
.end method


# virtual methods
.method public getSendConfPdu()[B
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/service/carrier/CarrierMessagingService$SendMmsResult;->mSendConfPdu:[B

    return-object v0
.end method

.method public getSendStatus()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/service/carrier/CarrierMessagingService$SendMmsResult;->mSendStatus:I

    return v0
.end method
