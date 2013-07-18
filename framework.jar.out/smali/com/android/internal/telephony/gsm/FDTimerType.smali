.class public final enum Lcom/android/internal/telephony/gsm/FDTimerType;
.super Ljava/lang/Enum;
.source "FDTimerType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/gsm/FDTimerType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/gsm/FDTimerType;

.field public static final enum ScreenOffLegacyFD:Lcom/android/internal/telephony/gsm/FDTimerType;

.field public static final enum ScreenOffR8FD:Lcom/android/internal/telephony/gsm/FDTimerType;

.field public static final enum ScreenOnLegacyFD:Lcom/android/internal/telephony/gsm/FDTimerType;

.field public static final enum ScreenOnR8FD:Lcom/android/internal/telephony/gsm/FDTimerType;

.field public static final enum SupportedTimerTypes:Lcom/android/internal/telephony/gsm/FDTimerType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/internal/telephony/gsm/FDTimerType;

    const-string v1, "ScreenOffLegacyFD"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/FDTimerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/FDTimerType;->ScreenOffLegacyFD:Lcom/android/internal/telephony/gsm/FDTimerType;

    new-instance v0, Lcom/android/internal/telephony/gsm/FDTimerType;

    const-string v1, "ScreenOnLegacyFD"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/gsm/FDTimerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/FDTimerType;->ScreenOnLegacyFD:Lcom/android/internal/telephony/gsm/FDTimerType;

    new-instance v0, Lcom/android/internal/telephony/gsm/FDTimerType;

    const-string v1, "ScreenOffR8FD"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/gsm/FDTimerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/FDTimerType;->ScreenOffR8FD:Lcom/android/internal/telephony/gsm/FDTimerType;

    new-instance v0, Lcom/android/internal/telephony/gsm/FDTimerType;

    const-string v1, "ScreenOnR8FD"

    invoke-direct {v0, v1, v5}, Lcom/android/internal/telephony/gsm/FDTimerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/FDTimerType;->ScreenOnR8FD:Lcom/android/internal/telephony/gsm/FDTimerType;

    new-instance v0, Lcom/android/internal/telephony/gsm/FDTimerType;

    const-string v1, "SupportedTimerTypes"

    invoke-direct {v0, v1, v6}, Lcom/android/internal/telephony/gsm/FDTimerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/FDTimerType;->SupportedTimerTypes:Lcom/android/internal/telephony/gsm/FDTimerType;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/internal/telephony/gsm/FDTimerType;

    sget-object v1, Lcom/android/internal/telephony/gsm/FDTimerType;->ScreenOffLegacyFD:Lcom/android/internal/telephony/gsm/FDTimerType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/gsm/FDTimerType;->ScreenOnLegacyFD:Lcom/android/internal/telephony/gsm/FDTimerType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/gsm/FDTimerType;->ScreenOffR8FD:Lcom/android/internal/telephony/gsm/FDTimerType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/gsm/FDTimerType;->ScreenOnR8FD:Lcom/android/internal/telephony/gsm/FDTimerType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/telephony/gsm/FDTimerType;->SupportedTimerTypes:Lcom/android/internal/telephony/gsm/FDTimerType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/internal/telephony/gsm/FDTimerType;->$VALUES:[Lcom/android/internal/telephony/gsm/FDTimerType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/FDTimerType;
    .locals 1
    .parameter "name"

    .prologue
    const-class v0, Lcom/android/internal/telephony/gsm/FDTimerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/FDTimerType;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/gsm/FDTimerType;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/telephony/gsm/FDTimerType;->$VALUES:[Lcom/android/internal/telephony/gsm/FDTimerType;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/gsm/FDTimerType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/gsm/FDTimerType;

    return-object v0
.end method
