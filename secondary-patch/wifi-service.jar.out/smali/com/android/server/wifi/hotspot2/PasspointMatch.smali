.class public final enum Lcom/android/server/wifi/hotspot2/PasspointMatch;
.super Ljava/lang/Enum;
.source "PasspointMatch.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/wifi/hotspot2/PasspointMatch;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/wifi/hotspot2/PasspointMatch;

.field public static final enum Declined:Lcom/android/server/wifi/hotspot2/PasspointMatch;

.field public static final enum HomeProvider:Lcom/android/server/wifi/hotspot2/PasspointMatch;

.field public static final enum Incomplete:Lcom/android/server/wifi/hotspot2/PasspointMatch;

.field public static final enum None:Lcom/android/server/wifi/hotspot2/PasspointMatch;

.field public static final enum RoamingProvider:Lcom/android/server/wifi/hotspot2/PasspointMatch;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/server/wifi/hotspot2/PasspointMatch;

    const-string v1, "HomeProvider"

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/hotspot2/PasspointMatch;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/hotspot2/PasspointMatch;->HomeProvider:Lcom/android/server/wifi/hotspot2/PasspointMatch;

    new-instance v0, Lcom/android/server/wifi/hotspot2/PasspointMatch;

    const-string v1, "RoamingProvider"

    invoke-direct {v0, v1, v3}, Lcom/android/server/wifi/hotspot2/PasspointMatch;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/hotspot2/PasspointMatch;->RoamingProvider:Lcom/android/server/wifi/hotspot2/PasspointMatch;

    new-instance v0, Lcom/android/server/wifi/hotspot2/PasspointMatch;

    const-string v1, "Incomplete"

    invoke-direct {v0, v1, v4}, Lcom/android/server/wifi/hotspot2/PasspointMatch;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/hotspot2/PasspointMatch;->Incomplete:Lcom/android/server/wifi/hotspot2/PasspointMatch;

    new-instance v0, Lcom/android/server/wifi/hotspot2/PasspointMatch;

    const-string v1, "None"

    invoke-direct {v0, v1, v5}, Lcom/android/server/wifi/hotspot2/PasspointMatch;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/hotspot2/PasspointMatch;->None:Lcom/android/server/wifi/hotspot2/PasspointMatch;

    new-instance v0, Lcom/android/server/wifi/hotspot2/PasspointMatch;

    const-string v1, "Declined"

    invoke-direct {v0, v1, v6}, Lcom/android/server/wifi/hotspot2/PasspointMatch;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/hotspot2/PasspointMatch;->Declined:Lcom/android/server/wifi/hotspot2/PasspointMatch;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/server/wifi/hotspot2/PasspointMatch;

    sget-object v1, Lcom/android/server/wifi/hotspot2/PasspointMatch;->HomeProvider:Lcom/android/server/wifi/hotspot2/PasspointMatch;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/wifi/hotspot2/PasspointMatch;->RoamingProvider:Lcom/android/server/wifi/hotspot2/PasspointMatch;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/wifi/hotspot2/PasspointMatch;->Incomplete:Lcom/android/server/wifi/hotspot2/PasspointMatch;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/wifi/hotspot2/PasspointMatch;->None:Lcom/android/server/wifi/hotspot2/PasspointMatch;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/server/wifi/hotspot2/PasspointMatch;->Declined:Lcom/android/server/wifi/hotspot2/PasspointMatch;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/server/wifi/hotspot2/PasspointMatch;->$VALUES:[Lcom/android/server/wifi/hotspot2/PasspointMatch;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/PasspointMatch;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v0, Lcom/android/server/wifi/hotspot2/PasspointMatch;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/hotspot2/PasspointMatch;

    return-object v0
.end method

.method public static values()[Lcom/android/server/wifi/hotspot2/PasspointMatch;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/server/wifi/hotspot2/PasspointMatch;->$VALUES:[Lcom/android/server/wifi/hotspot2/PasspointMatch;

    invoke-virtual {v0}, [Lcom/android/server/wifi/hotspot2/PasspointMatch;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/wifi/hotspot2/PasspointMatch;

    return-object v0
.end method
