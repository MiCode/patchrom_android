.class public final enum Lcom/android/internal/telephony/gsm/FDModeType;
.super Ljava/lang/Enum;
.source "FDModeType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/gsm/FDModeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/gsm/FDModeType;

.field public static final enum DISABLE_MD_FD:Lcom/android/internal/telephony/gsm/FDModeType;

.field public static final enum ENABLE_MD_FD:Lcom/android/internal/telephony/gsm/FDModeType;

.field public static final enum INFO_MD_SCREEN_STATUS:Lcom/android/internal/telephony/gsm/FDModeType;

.field public static final enum SET_FD_INACTIVITY_TIMER:Lcom/android/internal/telephony/gsm/FDModeType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/internal/telephony/gsm/FDModeType;

    const-string v1, "DISABLE_MD_FD"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/FDModeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/FDModeType;->DISABLE_MD_FD:Lcom/android/internal/telephony/gsm/FDModeType;

    new-instance v0, Lcom/android/internal/telephony/gsm/FDModeType;

    const-string v1, "ENABLE_MD_FD"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/gsm/FDModeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/FDModeType;->ENABLE_MD_FD:Lcom/android/internal/telephony/gsm/FDModeType;

    new-instance v0, Lcom/android/internal/telephony/gsm/FDModeType;

    const-string v1, "SET_FD_INACTIVITY_TIMER"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/gsm/FDModeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/FDModeType;->SET_FD_INACTIVITY_TIMER:Lcom/android/internal/telephony/gsm/FDModeType;

    new-instance v0, Lcom/android/internal/telephony/gsm/FDModeType;

    const-string v1, "INFO_MD_SCREEN_STATUS"

    invoke-direct {v0, v1, v5}, Lcom/android/internal/telephony/gsm/FDModeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/FDModeType;->INFO_MD_SCREEN_STATUS:Lcom/android/internal/telephony/gsm/FDModeType;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/internal/telephony/gsm/FDModeType;

    sget-object v1, Lcom/android/internal/telephony/gsm/FDModeType;->DISABLE_MD_FD:Lcom/android/internal/telephony/gsm/FDModeType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/gsm/FDModeType;->ENABLE_MD_FD:Lcom/android/internal/telephony/gsm/FDModeType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/gsm/FDModeType;->SET_FD_INACTIVITY_TIMER:Lcom/android/internal/telephony/gsm/FDModeType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/gsm/FDModeType;->INFO_MD_SCREEN_STATUS:Lcom/android/internal/telephony/gsm/FDModeType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/internal/telephony/gsm/FDModeType;->$VALUES:[Lcom/android/internal/telephony/gsm/FDModeType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/FDModeType;
    .locals 1
    .parameter "name"

    .prologue
    const-class v0, Lcom/android/internal/telephony/gsm/FDModeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/FDModeType;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/gsm/FDModeType;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/telephony/gsm/FDModeType;->$VALUES:[Lcom/android/internal/telephony/gsm/FDModeType;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/gsm/FDModeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/gsm/FDModeType;

    return-object v0
.end method
