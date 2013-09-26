.class final Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;
.super Ljava/lang/Object;
.source "GsmSMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SmsCbConcatInfo"
.end annotation


# instance fields
.field private final mHeader:Lcom/android/internal/telephony/gsm/SmsCbHeader;

.field private final mLocation:Landroid/telephony/SmsCbLocation;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/gsm/SmsCbHeader;Landroid/telephony/SmsCbLocation;)V
    .locals 0
    .parameter "header"
    .parameter "location"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;->mHeader:Lcom/android/internal/telephony/gsm/SmsCbHeader;

    iput-object p2, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;->mLocation:Landroid/telephony/SmsCbLocation;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "obj"

    .prologue
    const/4 v1, 0x0

    instance-of v2, p1, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;

    if-eqz v2, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;

    .local v0, other:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;->mHeader:Lcom/android/internal/telephony/gsm/SmsCbHeader;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getSerialNumber()I

    move-result v2

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;->mHeader:Lcom/android/internal/telephony/gsm/SmsCbHeader;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getSerialNumber()I

    move-result v3

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;->mLocation:Landroid/telephony/SmsCbLocation;

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;->mLocation:Landroid/telephony/SmsCbLocation;

    invoke-virtual {v2, v3}, Landroid/telephony/SmsCbLocation;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .end local v0           #other:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;
    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;->mHeader:Lcom/android/internal/telephony/gsm/SmsCbHeader;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getSerialNumber()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;->mLocation:Landroid/telephony/SmsCbLocation;

    invoke-virtual {v1}, Landroid/telephony/SmsCbLocation;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public matchesLocation(Ljava/lang/String;II)Z
    .locals 1
    .parameter "plmn"
    .parameter "lac"
    .parameter "cid"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;->mLocation:Landroid/telephony/SmsCbLocation;

    invoke-virtual {v0, p1, p2, p3}, Landroid/telephony/SmsCbLocation;->isInLocationArea(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method
