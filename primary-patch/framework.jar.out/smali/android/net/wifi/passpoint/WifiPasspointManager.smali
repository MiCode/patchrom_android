.class public Landroid/net/wifi/passpoint/WifiPasspointManager;
.super Ljava/lang/Object;
.source "WifiPasspointManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/passpoint/WifiPasspointManager$ParcelableString;,
        Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;,
        Landroid/net/wifi/passpoint/WifiPasspointManager$OsuRemListener;,
        Landroid/net/wifi/passpoint/WifiPasspointManager$ActionListener;,
        Landroid/net/wifi/passpoint/WifiPasspointManager$ChannelListener;
    }
.end annotation


# static fields
.field private static final BASE:I = 0x28000

.field private static final DBG:Z = true

.field public static final PASSPOINT_CRED_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.passpoint.CRED_CHANGE"

.field public static final PASSPOINT_OSU_AVAILABLE_ACTION:Ljava/lang/String; = "android.net.wifi.passpoint.OSU_AVAILABLE"

.field public static final PASSPOINT_STATE_ACCESS:I = 0x3

.field public static final PASSPOINT_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.passpoint.STATE_CHANGE"

.field public static final PASSPOINT_STATE_DISABLED:I = 0x1

.field public static final PASSPOINT_STATE_DISCOVERY:I = 0x2

.field public static final PASSPOINT_STATE_PROVISION:I = 0x4

.field public static final PASSPOINT_STATE_UNKNOWN:I = 0x0

.field public static final PASSPOINT_USER_REM_REQ_ACTION:Ljava/lang/String; = "android.net.wifi.passpoint.USER_REM_REQ"

.field public static final PROTOCOL_DM:Ljava/lang/String; = "OMA-DM-ClientInitiated"

.field public static final PROTOCOL_SOAP:Ljava/lang/String; = "SPP-ClientInitiated"

.field public static final REASON_BUSY:I = 0x2

.field public static final REASON_ERROR:I = 0x0

.field public static final REASON_INVALID_PARAMETER:I = 0x3

.field public static final REASON_NOT_TRUSTED:I = 0x4

.field public static final REASON_WIFI_DISABLED:I = 0x1

.field public static final REQUEST_ANQP_INFO:I = 0x28001

.field public static final REQUEST_ANQP_INFO_FAILED:I = 0x28002

.field public static final REQUEST_ANQP_INFO_SUCCEEDED:I = 0x28003

.field public static final REQUEST_OSU_ICON:I = 0x28004

.field public static final REQUEST_OSU_ICON_FAILED:I = 0x28005

.field public static final REQUEST_OSU_ICON_SUCCEEDED:I = 0x28006

.field public static final START_OSU:I = 0x28007

.field public static final START_OSU_BROWSER:I = 0x28008

.field public static final START_OSU_FAILED:I = 0x28009

.field public static final START_OSU_SUCCEEDED:I = 0x2800a

.field private static final TAG:Ljava/lang/String; = "PasspointManager"


# instance fields
.field private mContext:Landroid/content/Context;

.field mService:Landroid/net/wifi/passpoint/IWifiPasspointManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/passpoint/IWifiPasspointManager;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/net/wifi/passpoint/IWifiPasspointManager;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/wifi/passpoint/WifiPasspointManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/net/wifi/passpoint/WifiPasspointManager;->mService:Landroid/net/wifi/passpoint/IWifiPasspointManager;

    return-void
.end method

.method private static checkChannel(Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;)V
    .locals 2
    .param p0, "c"    # Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;

    .prologue
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Channel needs to be initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public addCredential(Landroid/net/wifi/passpoint/WifiPasspointCredential;)Z
    .locals 2
    .param p1, "cred"    # Landroid/net/wifi/passpoint/WifiPasspointCredential;

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/passpoint/WifiPasspointManager;->mService:Landroid/net/wifi/passpoint/IWifiPasspointManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/passpoint/IWifiPasspointManager;->addCredential(Landroid/net/wifi/passpoint/WifiPasspointCredential;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public connect(Landroid/net/wifi/passpoint/WifiPasspointPolicy;)V
    .locals 0
    .param p1, "policy"    # Landroid/net/wifi/passpoint/WifiPasspointPolicy;

    .prologue
    return-void
.end method

.method public getCredentials()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/passpoint/WifiPasspointCredential;",
            ">;"
        }
    .end annotation

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/passpoint/WifiPasspointManager;->mService:Landroid/net/wifi/passpoint/IWifiPasspointManager;

    invoke-interface {v1}, Landroid/net/wifi/passpoint/IWifiPasspointManager;->getCredentials()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMessenger()Landroid/os/Messenger;
    .locals 2

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/passpoint/WifiPasspointManager;->mService:Landroid/net/wifi/passpoint/IWifiPasspointManager;

    invoke-interface {v1}, Landroid/net/wifi/passpoint/IWifiPasspointManager;->getMessenger()Landroid/os/Messenger;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPasspointState()I
    .locals 2

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/passpoint/WifiPasspointManager;->mService:Landroid/net/wifi/passpoint/IWifiPasspointManager;

    invoke-interface {v1}, Landroid/net/wifi/passpoint/IWifiPasspointManager;->getPasspointState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/passpoint/WifiPasspointManager$ChannelListener;)Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;
    .locals 5
    .param p1, "srcContext"    # Landroid/content/Context;
    .param p2, "srcLooper"    # Landroid/os/Looper;
    .param p3, "listener"    # Landroid/net/wifi/passpoint/WifiPasspointManager$ChannelListener;

    .prologue
    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/net/wifi/passpoint/WifiPasspointManager;->getMessenger()Landroid/os/Messenger;

    move-result-object v1

    .local v1, "messenger":Landroid/os/Messenger;
    if-nez v1, :cond_1

    move-object v0, v2

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;

    invoke-direct {v0, p1, p2, p3}, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/passpoint/WifiPasspointManager$ChannelListener;)V

    .local v0, "c":Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;
    # getter for: Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v0}, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->access$600(Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v3

    # getter for: Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->mHandler:Landroid/net/wifi/passpoint/WifiPasspointManager$Channel$PasspointHandler;
    invoke-static {v0}, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->access$500(Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;)Landroid/net/wifi/passpoint/WifiPasspointManager$Channel$PasspointHandler;

    move-result-object v4

    invoke-virtual {v3, p1, v4, v1}, Lcom/android/internal/util/AsyncChannel;->connectSync(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)I

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, v2

    goto :goto_0
.end method

.method public removeCredential(Landroid/net/wifi/passpoint/WifiPasspointCredential;)Z
    .locals 2
    .param p1, "cred"    # Landroid/net/wifi/passpoint/WifiPasspointCredential;

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/passpoint/WifiPasspointManager;->mService:Landroid/net/wifi/passpoint/IWifiPasspointManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/passpoint/IWifiPasspointManager;->removeCredential(Landroid/net/wifi/passpoint/WifiPasspointCredential;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public requestAnqpInfo(Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;Ljava/util/List;ILandroid/net/wifi/passpoint/WifiPasspointManager$ActionListener;)V
    .locals 8
    .param p1, "c"    # Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;
    .param p3, "mask"    # I
    .param p4, "listener"    # Landroid/net/wifi/passpoint/WifiPasspointManager$ActionListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;I",
            "Landroid/net/wifi/passpoint/WifiPasspointManager$ActionListener;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "requested":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    const-string v5, "PasspointManager"

    const-string v6, "requestAnqpInfo start"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "PasspointManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "requested.size="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Landroid/net/wifi/passpoint/WifiPasspointManager;->checkChannel(Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/ScanResult;

    .local v4, "sr":Landroid/net/wifi/ScanResult;
    iget-object v5, v4, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v6, "[HS20]"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    # invokes: Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->anqpRequestStart(Landroid/net/wifi/ScanResult;)V
    invoke-static {p1, v4}, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->access$700(Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;Landroid/net/wifi/ScanResult;)V

    const-string v5, "PasspointManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "adding "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v4    # "sr":Landroid/net/wifi/ScanResult;
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "count":I
    const-string v5, "PasspointManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "after filter, count="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_2

    const-string v5, "PasspointManager"

    const-string v6, "ANQP info request contains no HS20 APs, skipped"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p4}, Landroid/net/wifi/passpoint/WifiPasspointManager$ActionListener;->onSuccess()V

    :goto_1
    return-void

    :cond_2
    # invokes: Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->putListener(Ljava/lang/Object;I)I
    invoke-static {p1, p4, v0}, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->access$800(Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;Ljava/lang/Object;I)I

    move-result v2

    .local v2, "key":I
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/ScanResult;

    .restart local v4    # "sr":Landroid/net/wifi/ScanResult;
    # getter for: Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {p1}, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->access$600(Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v5

    const v6, 0x28001

    invoke-virtual {v5, v6, p3, v2, v4}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    goto :goto_2

    .end local v4    # "sr":Landroid/net/wifi/ScanResult;
    :cond_3
    const-string v5, "PasspointManager"

    const-string v6, "requestAnqpInfo end"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public requestCredentialMatch(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/passpoint/WifiPasspointPolicy;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "requested":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/passpoint/WifiPasspointManager;->mService:Landroid/net/wifi/passpoint/IWifiPasspointManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/passpoint/IWifiPasspointManager;->requestCredentialMatch(Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public requestOsuIcons(Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;Ljava/util/List;ILandroid/net/wifi/passpoint/WifiPasspointManager$ActionListener;)V
    .locals 0
    .param p1, "c"    # Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;
    .param p3, "resolution"    # I
    .param p4, "listener"    # Landroid/net/wifi/passpoint/WifiPasspointManager$ActionListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/passpoint/WifiPasspointOsuProvider;",
            ">;I",
            "Landroid/net/wifi/passpoint/WifiPasspointManager$ActionListener;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "requested":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/passpoint/WifiPasspointOsuProvider;>;"
    return-void
.end method

.method public startOsu(Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;Landroid/net/wifi/passpoint/WifiPasspointOsuProvider;Landroid/net/wifi/passpoint/WifiPasspointManager$OsuRemListener;)V
    .locals 4
    .param p1, "c"    # Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;
    .param p2, "osu"    # Landroid/net/wifi/passpoint/WifiPasspointOsuProvider;
    .param p3, "listener"    # Landroid/net/wifi/passpoint/WifiPasspointManager$OsuRemListener;

    .prologue
    const-string v1, "PasspointManager"

    const-string v2, "startOsu start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Landroid/net/wifi/passpoint/WifiPasspointManager;->checkChannel(Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;)V

    # invokes: Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->putListener(Ljava/lang/Object;)I
    invoke-static {p1, p3}, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->access$900(Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;Ljava/lang/Object;)I

    move-result v0

    .local v0, "key":I
    # getter for: Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {p1}, Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;->access$600(Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    const v2, 0x28007

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    const-string v1, "PasspointManager"

    const-string v2, "startOsu end"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public startRemediation(Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;Landroid/net/wifi/passpoint/WifiPasspointManager$OsuRemListener;)V
    .locals 0
    .param p1, "c"    # Landroid/net/wifi/passpoint/WifiPasspointManager$Channel;
    .param p2, "listener"    # Landroid/net/wifi/passpoint/WifiPasspointManager$OsuRemListener;

    .prologue
    return-void
.end method

.method public updateCredential(Landroid/net/wifi/passpoint/WifiPasspointCredential;)Z
    .locals 2
    .param p1, "cred"    # Landroid/net/wifi/passpoint/WifiPasspointCredential;

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/passpoint/WifiPasspointManager;->mService:Landroid/net/wifi/passpoint/IWifiPasspointManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/passpoint/IWifiPasspointManager;->updateCredential(Landroid/net/wifi/passpoint/WifiPasspointCredential;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method
