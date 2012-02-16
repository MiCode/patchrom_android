.class public final enum Landroid/net/wifi/p2p/WifiP2pConfig$Persist;
.super Ljava/lang/Enum;
.source "WifiP2pConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/p2p/WifiP2pConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Persist"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/net/wifi/p2p/WifiP2pConfig$Persist;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/net/wifi/p2p/WifiP2pConfig$Persist;

.field public static final enum NO:Landroid/net/wifi/p2p/WifiP2pConfig$Persist;

.field public static final enum SYSTEM_DEFAULT:Landroid/net/wifi/p2p/WifiP2pConfig$Persist;

.field public static final enum YES:Landroid/net/wifi/p2p/WifiP2pConfig$Persist;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 54
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pConfig$Persist;

    const-string v1, "SYSTEM_DEFAULT"

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pConfig$Persist;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pConfig$Persist;->SYSTEM_DEFAULT:Landroid/net/wifi/p2p/WifiP2pConfig$Persist;

    .line 55
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pConfig$Persist;

    const-string v1, "YES"

    invoke-direct {v0, v1, v3}, Landroid/net/wifi/p2p/WifiP2pConfig$Persist;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pConfig$Persist;->YES:Landroid/net/wifi/p2p/WifiP2pConfig$Persist;

    .line 56
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pConfig$Persist;

    const-string v1, "NO"

    invoke-direct {v0, v1, v4}, Landroid/net/wifi/p2p/WifiP2pConfig$Persist;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pConfig$Persist;->NO:Landroid/net/wifi/p2p/WifiP2pConfig$Persist;

    .line 53
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/net/wifi/p2p/WifiP2pConfig$Persist;

    sget-object v1, Landroid/net/wifi/p2p/WifiP2pConfig$Persist;->SYSTEM_DEFAULT:Landroid/net/wifi/p2p/WifiP2pConfig$Persist;

    aput-object v1, v0, v2

    sget-object v1, Landroid/net/wifi/p2p/WifiP2pConfig$Persist;->YES:Landroid/net/wifi/p2p/WifiP2pConfig$Persist;

    aput-object v1, v0, v3

    sget-object v1, Landroid/net/wifi/p2p/WifiP2pConfig$Persist;->NO:Landroid/net/wifi/p2p/WifiP2pConfig$Persist;

    aput-object v1, v0, v4

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pConfig$Persist;->$VALUES:[Landroid/net/wifi/p2p/WifiP2pConfig$Persist;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pConfig$Persist;
    .locals 1
    .parameter "name"

    .prologue
    .line 53
    const-class v0, Landroid/net/wifi/p2p/WifiP2pConfig$Persist;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pConfig$Persist;

    return-object v0
.end method

.method public static values()[Landroid/net/wifi/p2p/WifiP2pConfig$Persist;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Landroid/net/wifi/p2p/WifiP2pConfig$Persist;->$VALUES:[Landroid/net/wifi/p2p/WifiP2pConfig$Persist;

    invoke-virtual {v0}, [Landroid/net/wifi/p2p/WifiP2pConfig$Persist;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/wifi/p2p/WifiP2pConfig$Persist;

    return-object v0
.end method
