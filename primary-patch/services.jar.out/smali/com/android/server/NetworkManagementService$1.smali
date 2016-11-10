.class Lcom/android/server/NetworkManagementService$1;
.super Landroid/telephony/PhoneStateListener;
.source "NetworkManagementService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/NetworkManagementService;-><init>(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NetworkManagementService;


# direct methods
.method constructor <init>(Lcom/android/server/NetworkManagementService;ILandroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # I
    .param p3, "x1"    # Landroid/os/Looper;

    .prologue
    iput-object p1, p0, Lcom/android/server/NetworkManagementService$1;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-direct {p0, p2, p3}, Landroid/telephony/PhoneStateListener;-><init>(ILandroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public onDataConnectionRealTimeInfoChanged(Landroid/telephony/DataConnectionRealTimeInfo;)V
    .locals 7
    .param p1, "dcRtInfo"    # Landroid/telephony/DataConnectionRealTimeInfo;

    .prologue
    # getter for: Lcom/android/server/NetworkManagementService;->DBG:Z
    invoke-static {}, Lcom/android/server/NetworkManagementService;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "NetworkManagement"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataConnectionRealTimeInfoChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService$1;->this$0:Lcom/android/server/NetworkManagementService;

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/telephony/DataConnectionRealTimeInfo;->getDcPowerState()I

    move-result v3

    invoke-virtual {p1}, Landroid/telephony/DataConnectionRealTimeInfo;->getTime()J

    move-result-wide v4

    const/4 v6, 0x1

    # invokes: Lcom/android/server/NetworkManagementService;->notifyInterfaceClassActivity(IIJZ)V
    invoke-static/range {v1 .. v6}, Lcom/android/server/NetworkManagementService;->access$200(Lcom/android/server/NetworkManagementService;IIJZ)V

    return-void
.end method
