.class public final enum Lcom/android/internal/telephony/DataCallState$SetupResult;
.super Ljava/lang/Enum;
.source "DataCallState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/DataCallState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SetupResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/DataCallState$SetupResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/DataCallState$SetupResult;

.field public static final enum ERR_BadCommand:Lcom/android/internal/telephony/DataCallState$SetupResult;

.field public static final enum ERR_GetLastErrorFromRil:Lcom/android/internal/telephony/DataCallState$SetupResult;

.field public static final enum ERR_RilError:Lcom/android/internal/telephony/DataCallState$SetupResult;

.field public static final enum ERR_Stale:Lcom/android/internal/telephony/DataCallState$SetupResult;

.field public static final enum ERR_UnacceptableParameter:Lcom/android/internal/telephony/DataCallState$SetupResult;

.field public static final enum SUCCESS:Lcom/android/internal/telephony/DataCallState$SetupResult;


# instance fields
.field public mFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 56
    new-instance v0, Lcom/android/internal/telephony/DataCallState$SetupResult;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/DataCallState$SetupResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataCallState$SetupResult;->SUCCESS:Lcom/android/internal/telephony/DataCallState$SetupResult;

    .line 57
    new-instance v0, Lcom/android/internal/telephony/DataCallState$SetupResult;

    const-string v1, "ERR_BadCommand"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/DataCallState$SetupResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataCallState$SetupResult;->ERR_BadCommand:Lcom/android/internal/telephony/DataCallState$SetupResult;

    .line 58
    new-instance v0, Lcom/android/internal/telephony/DataCallState$SetupResult;

    const-string v1, "ERR_UnacceptableParameter"

    invoke-direct {v0, v1, v5}, Lcom/android/internal/telephony/DataCallState$SetupResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataCallState$SetupResult;->ERR_UnacceptableParameter:Lcom/android/internal/telephony/DataCallState$SetupResult;

    .line 59
    new-instance v0, Lcom/android/internal/telephony/DataCallState$SetupResult;

    const-string v1, "ERR_GetLastErrorFromRil"

    invoke-direct {v0, v1, v6}, Lcom/android/internal/telephony/DataCallState$SetupResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataCallState$SetupResult;->ERR_GetLastErrorFromRil:Lcom/android/internal/telephony/DataCallState$SetupResult;

    .line 60
    new-instance v0, Lcom/android/internal/telephony/DataCallState$SetupResult;

    const-string v1, "ERR_Stale"

    invoke-direct {v0, v1, v7}, Lcom/android/internal/telephony/DataCallState$SetupResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataCallState$SetupResult;->ERR_Stale:Lcom/android/internal/telephony/DataCallState$SetupResult;

    .line 61
    new-instance v0, Lcom/android/internal/telephony/DataCallState$SetupResult;

    const-string v1, "ERR_RilError"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/DataCallState$SetupResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataCallState$SetupResult;->ERR_RilError:Lcom/android/internal/telephony/DataCallState$SetupResult;

    .line 55
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/android/internal/telephony/DataCallState$SetupResult;

    sget-object v1, Lcom/android/internal/telephony/DataCallState$SetupResult;->SUCCESS:Lcom/android/internal/telephony/DataCallState$SetupResult;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/DataCallState$SetupResult;->ERR_BadCommand:Lcom/android/internal/telephony/DataCallState$SetupResult;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/DataCallState$SetupResult;->ERR_UnacceptableParameter:Lcom/android/internal/telephony/DataCallState$SetupResult;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/telephony/DataCallState$SetupResult;->ERR_GetLastErrorFromRil:Lcom/android/internal/telephony/DataCallState$SetupResult;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/internal/telephony/DataCallState$SetupResult;->ERR_Stale:Lcom/android/internal/telephony/DataCallState$SetupResult;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/internal/telephony/DataCallState$SetupResult;->ERR_RilError:Lcom/android/internal/telephony/DataCallState$SetupResult;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/DataCallState$SetupResult;->$VALUES:[Lcom/android/internal/telephony/DataCallState$SetupResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 66
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/internal/telephony/DataConnection$FailCause;->fromInt(I)Lcom/android/internal/telephony/DataConnection$FailCause;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/DataCallState$SetupResult;->mFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 67
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/DataCallState$SetupResult;
    .locals 1
    .parameter "name"

    .prologue
    .line 55
    const-class v0, Lcom/android/internal/telephony/DataCallState$SetupResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/DataCallState$SetupResult;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/DataCallState$SetupResult;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/android/internal/telephony/DataCallState$SetupResult;->$VALUES:[Lcom/android/internal/telephony/DataCallState$SetupResult;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/DataCallState$SetupResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/DataCallState$SetupResult;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/telephony/DataCallState$SetupResult;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  SetupResult.mFailCause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/DataCallState$SetupResult;->mFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
