.class public final enum Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;
.super Ljava/lang/Enum;
.source "WifiP2pServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "P2pStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

.field public static final enum BOTH_GO_INTENT_15:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

.field public static final enum INCOMPATIBLE_PARAMETERS:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

.field public static final enum INCOMPATIBLE_PROVISIONING_METHOD:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

.field public static final enum INFORMATION_IS_CURRENTLY_UNAVAILABLE:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

.field public static final enum INVALID_PARAMETER:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

.field public static final enum LIMIT_REACHED:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

.field public static final enum NO_COMMON_CHANNEL:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

.field public static final enum PREVIOUS_PROTOCOL_ERROR:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

.field public static final enum REJECTED_BY_USER:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

.field public static final enum SUCCESS:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

.field public static final enum UNABLE_TO_ACCOMMODATE_REQUEST:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

.field public static final enum UNKNOWN:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

.field public static final enum UNKNOWN_P2P_GROUP:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->SUCCESS:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    new-instance v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    const-string v1, "INFORMATION_IS_CURRENTLY_UNAVAILABLE"

    invoke-direct {v0, v1, v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->INFORMATION_IS_CURRENTLY_UNAVAILABLE:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    new-instance v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    const-string v1, "INCOMPATIBLE_PARAMETERS"

    invoke-direct {v0, v1, v5}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->INCOMPATIBLE_PARAMETERS:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    new-instance v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    const-string v1, "LIMIT_REACHED"

    invoke-direct {v0, v1, v6}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->LIMIT_REACHED:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    new-instance v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    const-string v1, "INVALID_PARAMETER"

    invoke-direct {v0, v1, v7}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->INVALID_PARAMETER:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    new-instance v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    const-string v1, "UNABLE_TO_ACCOMMODATE_REQUEST"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->UNABLE_TO_ACCOMMODATE_REQUEST:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    new-instance v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    const-string v1, "PREVIOUS_PROTOCOL_ERROR"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->PREVIOUS_PROTOCOL_ERROR:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    new-instance v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    const-string v1, "NO_COMMON_CHANNEL"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->NO_COMMON_CHANNEL:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    new-instance v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    const-string v1, "UNKNOWN_P2P_GROUP"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->UNKNOWN_P2P_GROUP:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    new-instance v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    const-string v1, "BOTH_GO_INTENT_15"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->BOTH_GO_INTENT_15:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    new-instance v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    const-string v1, "INCOMPATIBLE_PROVISIONING_METHOD"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->INCOMPATIBLE_PROVISIONING_METHOD:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    new-instance v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    const-string v1, "REJECTED_BY_USER"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->REJECTED_BY_USER:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    new-instance v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    const-string v1, "UNKNOWN"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->UNKNOWN:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    const/16 v0, 0xd

    new-array v0, v0, [Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    sget-object v1, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->SUCCESS:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->INFORMATION_IS_CURRENTLY_UNAVAILABLE:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->INCOMPATIBLE_PARAMETERS:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->LIMIT_REACHED:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->INVALID_PARAMETER:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->UNABLE_TO_ACCOMMODATE_REQUEST:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->PREVIOUS_PROTOCOL_ERROR:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->NO_COMMON_CHANNEL:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->UNKNOWN_P2P_GROUP:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->BOTH_GO_INTENT_15:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->INCOMPATIBLE_PROVISIONING_METHOD:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->REJECTED_BY_USER:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->UNKNOWN:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->$VALUES:[Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(I)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;
    .locals 1
    .param p0, "error"    # I

    .prologue
    packed-switch p0, :pswitch_data_0

    sget-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->UNKNOWN:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->SUCCESS:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->INFORMATION_IS_CURRENTLY_UNAVAILABLE:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->INCOMPATIBLE_PARAMETERS:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->LIMIT_REACHED:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->INVALID_PARAMETER:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    goto :goto_0

    :pswitch_5
    sget-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->UNABLE_TO_ACCOMMODATE_REQUEST:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    goto :goto_0

    :pswitch_6
    sget-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->PREVIOUS_PROTOCOL_ERROR:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    goto :goto_0

    :pswitch_7
    sget-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->NO_COMMON_CHANNEL:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    goto :goto_0

    :pswitch_8
    sget-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->UNKNOWN_P2P_GROUP:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    goto :goto_0

    :pswitch_9
    sget-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->BOTH_GO_INTENT_15:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    goto :goto_0

    :pswitch_a
    sget-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->INCOMPATIBLE_PROVISIONING_METHOD:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    goto :goto_0

    :pswitch_b
    sget-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->REJECTED_BY_USER:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    return-object v0
.end method

.method public static values()[Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->$VALUES:[Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    invoke-virtual {v0}, [Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStatus;

    return-object v0
.end method
