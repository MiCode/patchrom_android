.class public Lcom/android/internal/telephony/gsm/SIMRecords$OplRecord;
.super Ljava/lang/Object;
.source "SIMRecords.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/SIMRecords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OplRecord"
.end annotation


# instance fields
.field public nMaxLAC:I

.field public nMinLAC:I

.field public nPnnIndex:I

.field public sPlmn:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
