.class Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords$EfCsimEprlLoaded;
.super Ljava/lang/Object;
.source "CdmaLteUiccRecords.java"

# interfaces
.implements Lcom/android/internal/telephony/IccRecords$IccRecordLoaded;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EfCsimEprlLoaded"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords$EfCsimEprlLoaded;->this$0:Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords$EfCsimEprlLoaded;-><init>(Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;)V

    return-void
.end method


# virtual methods
.method public getEfName()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "EF_CSIM_EPRL"

    return-object v0
.end method

.method public onRecordLoaded(Landroid/os/AsyncResult;)V
    .locals 1
    .parameter "ar"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords$EfCsimEprlLoaded;->this$0:Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;

    #calls: Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->onGetCSimEprlDone(Landroid/os/AsyncResult;)V
    invoke-static {v0, p1}, Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;->access$1300(Lcom/android/internal/telephony/cdma/CdmaLteUiccRecords;Landroid/os/AsyncResult;)V

    return-void
.end method
