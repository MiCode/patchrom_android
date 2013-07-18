.class public Lcom/android/internal/telephony/CellBroadcastConfigInfo;
.super Ljava/lang/Object;
.source "CellBroadcastConfigInfo.java"


# instance fields
.field public channelConfigInfo:Ljava/lang/String;

.field public isAllLanguageOn:Z

.field public languageConfigInfo:Ljava/lang/String;

.field public mode:I


# direct methods
.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .parameter "mode"
    .parameter "channels"
    .parameter "languages"
    .parameter "allOn"

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/CellBroadcastConfigInfo;->mode:I

    iput-object v1, p0, Lcom/android/internal/telephony/CellBroadcastConfigInfo;->channelConfigInfo:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/telephony/CellBroadcastConfigInfo;->languageConfigInfo:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/CellBroadcastConfigInfo;->isAllLanguageOn:Z

    iput p1, p0, Lcom/android/internal/telephony/CellBroadcastConfigInfo;->mode:I

    iput-object p2, p0, Lcom/android/internal/telephony/CellBroadcastConfigInfo;->channelConfigInfo:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/internal/telephony/CellBroadcastConfigInfo;->languageConfigInfo:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/android/internal/telephony/CellBroadcastConfigInfo;->isAllLanguageOn:Z

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .local v0, ret:Ljava/lang/StringBuilder;
    const-string v1, "CellBroadcastConfigInfo: mode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/CellBroadcastConfigInfo;->mode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", channel = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/CellBroadcastConfigInfo;->channelConfigInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", language = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/CellBroadcastConfigInfo;->isAllLanguageOn:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/CellBroadcastConfigInfo;->languageConfigInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const-string v1, "all"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
