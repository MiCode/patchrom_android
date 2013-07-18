.class public final enum Lcom/android/internal/telephony/Phone$IccServiceStatus;
.super Ljava/lang/Enum;
.source "Phone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/Phone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IccServiceStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/Phone$IccServiceStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/Phone$IccServiceStatus;

.field public static final enum ACTIVATED:Lcom/android/internal/telephony/Phone$IccServiceStatus;

.field public static final enum INACTIVATED:Lcom/android/internal/telephony/Phone$IccServiceStatus;

.field public static final enum NOT_EXIST_IN_SIM:Lcom/android/internal/telephony/Phone$IccServiceStatus;

.field public static final enum NOT_EXIST_IN_USIM:Lcom/android/internal/telephony/Phone$IccServiceStatus;

.field public static final enum UNKNOWN:Lcom/android/internal/telephony/Phone$IccServiceStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/internal/telephony/Phone$IccServiceStatus;

    const-string v1, "NOT_EXIST_IN_SIM"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/Phone$IccServiceStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/Phone$IccServiceStatus;->NOT_EXIST_IN_SIM:Lcom/android/internal/telephony/Phone$IccServiceStatus;

    new-instance v0, Lcom/android/internal/telephony/Phone$IccServiceStatus;

    const-string v1, "NOT_EXIST_IN_USIM"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/Phone$IccServiceStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/Phone$IccServiceStatus;->NOT_EXIST_IN_USIM:Lcom/android/internal/telephony/Phone$IccServiceStatus;

    new-instance v0, Lcom/android/internal/telephony/Phone$IccServiceStatus;

    const-string v1, "ACTIVATED"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/Phone$IccServiceStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/Phone$IccServiceStatus;->ACTIVATED:Lcom/android/internal/telephony/Phone$IccServiceStatus;

    new-instance v0, Lcom/android/internal/telephony/Phone$IccServiceStatus;

    const-string v1, "INACTIVATED"

    invoke-direct {v0, v1, v5}, Lcom/android/internal/telephony/Phone$IccServiceStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/Phone$IccServiceStatus;->INACTIVATED:Lcom/android/internal/telephony/Phone$IccServiceStatus;

    new-instance v0, Lcom/android/internal/telephony/Phone$IccServiceStatus;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v6}, Lcom/android/internal/telephony/Phone$IccServiceStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/Phone$IccServiceStatus;->UNKNOWN:Lcom/android/internal/telephony/Phone$IccServiceStatus;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/internal/telephony/Phone$IccServiceStatus;

    sget-object v1, Lcom/android/internal/telephony/Phone$IccServiceStatus;->NOT_EXIST_IN_SIM:Lcom/android/internal/telephony/Phone$IccServiceStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/Phone$IccServiceStatus;->NOT_EXIST_IN_USIM:Lcom/android/internal/telephony/Phone$IccServiceStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/Phone$IccServiceStatus;->ACTIVATED:Lcom/android/internal/telephony/Phone$IccServiceStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/Phone$IccServiceStatus;->INACTIVATED:Lcom/android/internal/telephony/Phone$IccServiceStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/telephony/Phone$IccServiceStatus;->UNKNOWN:Lcom/android/internal/telephony/Phone$IccServiceStatus;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/internal/telephony/Phone$IccServiceStatus;->$VALUES:[Lcom/android/internal/telephony/Phone$IccServiceStatus;

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
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/Phone$IccServiceStatus;
    .locals 1
    .parameter "name"

    .prologue
    const-class v0, Lcom/android/internal/telephony/Phone$IccServiceStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Phone$IccServiceStatus;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/Phone$IccServiceStatus;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/telephony/Phone$IccServiceStatus;->$VALUES:[Lcom/android/internal/telephony/Phone$IccServiceStatus;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/Phone$IccServiceStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/Phone$IccServiceStatus;

    return-object v0
.end method
