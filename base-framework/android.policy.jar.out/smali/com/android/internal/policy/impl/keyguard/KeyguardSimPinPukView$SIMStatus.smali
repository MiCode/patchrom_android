.class final enum Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$SIMStatus;
.super Ljava/lang/Enum;
.source "KeyguardSimPinPukView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "SIMStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$SIMStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$SIMStatus;

.field public static final enum SIM1_BOTH_SIM_INSERTED:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$SIMStatus;

.field public static final enum SIM1_ONLY_SIM1_INSERTED:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$SIMStatus;

.field public static final enum SIM2_BOTH_SIM_INSERTED:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$SIMStatus;

.field public static final enum SIM2_ONLY_SIM1_INSERTED:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$SIMStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$SIMStatus;

    const-string v1, "SIM1_BOTH_SIM_INSERTED"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$SIMStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$SIMStatus;->SIM1_BOTH_SIM_INSERTED:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$SIMStatus;

    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$SIMStatus;

    const-string v1, "SIM1_ONLY_SIM1_INSERTED"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$SIMStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$SIMStatus;->SIM1_ONLY_SIM1_INSERTED:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$SIMStatus;

    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$SIMStatus;

    const-string v1, "SIM2_BOTH_SIM_INSERTED"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$SIMStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$SIMStatus;->SIM2_BOTH_SIM_INSERTED:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$SIMStatus;

    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$SIMStatus;

    const-string v1, "SIM2_ONLY_SIM1_INSERTED"

    invoke-direct {v0, v1, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$SIMStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$SIMStatus;->SIM2_ONLY_SIM1_INSERTED:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$SIMStatus;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$SIMStatus;

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$SIMStatus;->SIM1_BOTH_SIM_INSERTED:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$SIMStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$SIMStatus;->SIM1_ONLY_SIM1_INSERTED:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$SIMStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$SIMStatus;->SIM2_BOTH_SIM_INSERTED:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$SIMStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$SIMStatus;->SIM2_ONLY_SIM1_INSERTED:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$SIMStatus;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$SIMStatus;->$VALUES:[Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$SIMStatus;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$SIMStatus;
    .locals 1
    .parameter "name"

    .prologue
    const-class v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$SIMStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$SIMStatus;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$SIMStatus;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$SIMStatus;->$VALUES:[Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$SIMStatus;

    invoke-virtual {v0}, [Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$SIMStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinPukView$SIMStatus;

    return-object v0
.end method
