.class final enum Lcom/android/server/ConnectivityService$NotificationType;
.super Ljava/lang/Enum;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "NotificationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/ConnectivityService$NotificationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/ConnectivityService$NotificationType;

.field public static final enum NO_INTERNET:Lcom/android/server/ConnectivityService$NotificationType;

.field public static final enum SIGN_IN:Lcom/android/server/ConnectivityService$NotificationType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/server/ConnectivityService$NotificationType;

    const-string v1, "SIGN_IN"

    invoke-direct {v0, v1, v2}, Lcom/android/server/ConnectivityService$NotificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/ConnectivityService$NotificationType;->SIGN_IN:Lcom/android/server/ConnectivityService$NotificationType;

    new-instance v0, Lcom/android/server/ConnectivityService$NotificationType;

    const-string v1, "NO_INTERNET"

    invoke-direct {v0, v1, v3}, Lcom/android/server/ConnectivityService$NotificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/ConnectivityService$NotificationType;->NO_INTERNET:Lcom/android/server/ConnectivityService$NotificationType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/server/ConnectivityService$NotificationType;

    sget-object v1, Lcom/android/server/ConnectivityService$NotificationType;->SIGN_IN:Lcom/android/server/ConnectivityService$NotificationType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/ConnectivityService$NotificationType;->NO_INTERNET:Lcom/android/server/ConnectivityService$NotificationType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/server/ConnectivityService$NotificationType;->$VALUES:[Lcom/android/server/ConnectivityService$NotificationType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/ConnectivityService$NotificationType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v0, Lcom/android/server/ConnectivityService$NotificationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/ConnectivityService$NotificationType;

    return-object v0
.end method

.method public static values()[Lcom/android/server/ConnectivityService$NotificationType;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/server/ConnectivityService$NotificationType;->$VALUES:[Lcom/android/server/ConnectivityService$NotificationType;

    invoke-virtual {v0}, [Lcom/android/server/ConnectivityService$NotificationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/ConnectivityService$NotificationType;

    return-object v0
.end method
