.class Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;
.super Ljava/lang/Object;
.source "WifiP2pServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClientInfo"
.end annotation


# instance fields
.field private mMessenger:Landroid/os/Messenger;

.field private mReqList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mServList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;


# direct methods
.method private constructor <init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Landroid/os/Messenger;)V
    .locals 1
    .param p2, "m"    # Landroid/os/Messenger;

    .prologue
    iput-object p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->mMessenger:Landroid/os/Messenger;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->mReqList:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->mServList:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Landroid/os/Messenger;Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;
    .param p2, "x1"    # Landroid/os/Messenger;
    .param p3, "x2"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$1;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;-><init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Landroid/os/Messenger;)V

    return-void
.end method

.method static synthetic access$12500(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->mReqList:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$12600(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->mServList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$12700(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;)Landroid/os/Messenger;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;

    .prologue
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$ClientInfo;->mMessenger:Landroid/os/Messenger;

    return-object v0
.end method
