.class Lcom/android/internal/policy/impl/keyguard/CarrierText$1;
.super Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
.source "CarrierText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/CarrierText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mPlmn:Ljava/lang/CharSequence;

.field private mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

.field private mSpn:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/CarrierText;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/CarrierText;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/CarrierText$1;->this$0:Lcom/android/internal/policy/impl/keyguard/CarrierText;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 4
    .parameter "plmn"
    .parameter "spn"

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/CarrierText$1;->mPlmn:Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/android/internal/policy/impl/keyguard/CarrierText$1;->mSpn:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CarrierText$1;->this$0:Lcom/android/internal/policy/impl/keyguard/CarrierText;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/CarrierText$1;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/CarrierText$1;->mPlmn:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/CarrierText$1;->mSpn:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/CarrierText;->updateCarrierText(Lcom/android/internal/telephony/IccCardConstants$State;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onSimStateChanged(Lcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 4
    .parameter "simState"

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/CarrierText$1;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CarrierText$1;->this$0:Lcom/android/internal/policy/impl/keyguard/CarrierText;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/CarrierText$1;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/CarrierText$1;->mPlmn:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/CarrierText$1;->mSpn:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/CarrierText;->updateCarrierText(Lcom/android/internal/telephony/IccCardConstants$State;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void
.end method
