.class final enum Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;
.super Ljava/lang/Enum;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ReapUnvalidatedNetworks"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;

.field public static final enum DONT_REAP:Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;

.field public static final enum REAP:Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;

    const-string v1, "REAP"

    invoke-direct {v0, v1, v2}, Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;->REAP:Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;

    new-instance v0, Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;

    const-string v1, "DONT_REAP"

    invoke-direct {v0, v1, v3}, Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;->DONT_REAP:Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;

    sget-object v1, Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;->REAP:Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;->DONT_REAP:Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;->$VALUES:[Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v0, Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;

    return-object v0
.end method

.method public static values()[Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;->$VALUES:[Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;

    invoke-virtual {v0}, [Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;

    return-object v0
.end method
