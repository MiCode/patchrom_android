.class Lcom/android/server/ConnectivityService$CheckMp$Params;
.super Ljava/lang/Object;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService$CheckMp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Params"
.end annotation


# instance fields
.field private mCb:Lcom/android/server/ConnectivityService$CheckMp$CallBack;

.field private mTimeOutMs:J

.field private mUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;JLcom/android/server/ConnectivityService$CheckMp$CallBack;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "timeOutMs"    # J
    .param p4, "cb"    # Lcom/android/server/ConnectivityService$CheckMp$CallBack;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/ConnectivityService$CheckMp$Params;->mUrl:Ljava/lang/String;

    iput-wide p2, p0, Lcom/android/server/ConnectivityService$CheckMp$Params;->mTimeOutMs:J

    iput-object p4, p0, Lcom/android/server/ConnectivityService$CheckMp$Params;->mCb:Lcom/android/server/ConnectivityService$CheckMp$CallBack;

    return-void
.end method

.method static synthetic access$4800(Lcom/android/server/ConnectivityService$CheckMp$Params;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ConnectivityService$CheckMp$Params;

    .prologue
    iget-object v0, p0, Lcom/android/server/ConnectivityService$CheckMp$Params;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/android/server/ConnectivityService$CheckMp$Params;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/ConnectivityService$CheckMp$Params;

    .prologue
    iget-wide v0, p0, Lcom/android/server/ConnectivityService$CheckMp$Params;->mTimeOutMs:J

    return-wide v0
.end method

.method static synthetic access$5200(Lcom/android/server/ConnectivityService$CheckMp$Params;)Lcom/android/server/ConnectivityService$CheckMp$CallBack;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ConnectivityService$CheckMp$Params;

    .prologue
    iget-object v0, p0, Lcom/android/server/ConnectivityService$CheckMp$Params;->mCb:Lcom/android/server/ConnectivityService$CheckMp$CallBack;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{ url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ConnectivityService$CheckMp$Params;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mTimeOutMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/ConnectivityService$CheckMp$Params;->mTimeOutMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mCb="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ConnectivityService$CheckMp$Params;->mCb:Lcom/android/server/ConnectivityService$CheckMp$CallBack;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
