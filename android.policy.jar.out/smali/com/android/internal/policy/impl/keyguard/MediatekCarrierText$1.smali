.class Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$1;
.super Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
.source "MediatekCarrierText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mPlmn:Ljava/lang/CharSequence;

.field private mPlmnGemini:Ljava/lang/CharSequence;

.field private mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

.field private mSimStateGemini:Lcom/android/internal/telephony/IccCardConstants$State;

.field private mSpn:Ljava/lang/CharSequence;

.field private mSpnGemini:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$1;->this$0:Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 4
    .parameter "plmn"
    .parameter "spn"

    .prologue
    const-string v0, "MediatekCarrierText"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRefreshCarrierInfo plmn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", spn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$1;->mPlmn:Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$1;->mSpn:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$1;->this$0:Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$1;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$1;->mPlmn:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$1;->mSpn:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->updateCarrierText(Lcom/android/internal/telephony/IccCardConstants$State;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onRefreshCarrierInfoGemini(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V
    .locals 4
    .parameter "plmn"
    .parameter "spn"
    .parameter "simId"

    .prologue
    const-string v0, "MediatekCarrierText"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRefreshCarrierInfoGemini plmn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", spn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", simId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p3, :cond_0

    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$1;->mPlmn:Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$1;->mSpn:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$1;->this$0:Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$1;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$1;->mPlmn:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$1;->mSpn:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2, v3, p3}, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->updateCarrierTextGemini(Lcom/android/internal/telephony/IccCardConstants$State;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$1;->mPlmnGemini:Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$1;->mSpnGemini:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$1;->this$0:Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$1;->mSimStateGemini:Lcom/android/internal/telephony/IccCardConstants$State;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$1;->mPlmnGemini:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$1;->mSpnGemini:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2, v3, p3}, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->updateCarrierTextGemini(Lcom/android/internal/telephony/IccCardConstants$State;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    goto :goto_0
.end method

.method public onSearchNetworkUpdate(IZ)V
    .locals 5
    .parameter "simId"
    .parameter "switchOn"

    .prologue
    const-string v1, "MediatekCarrierText"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSearchNetworkUpdate simId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", switchOn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_2

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$1;->this$0:Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x2050093

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, carrierText:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->isGemini()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$1;->this$0:Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;

    sget-object v2, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$StatusMode;->NetworkSearching:Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$StatusMode;

    #setter for: Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->mStatusMode:Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$StatusMode;
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->access$002(Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$StatusMode;)Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$StatusMode;

    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$1;->this$0:Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;

    #calls: Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->updateCarrierTextGeminiForSearchNetwork(Ljava/lang/String;I)V
    invoke-static {v1, v0, p1}, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->access$200(Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;Ljava/lang/String;I)V

    .end local v0           #carrierText:Ljava/lang/String;
    :goto_1
    return-void

    .restart local v0       #carrierText:Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$1;->this$0:Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;

    sget-object v2, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$StatusMode;->NetworkSearching:Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$StatusMode;

    #setter for: Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->mStatusModeGemini:Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$StatusMode;
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->access$102(Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$StatusMode;)Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$StatusMode;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$1;->this$0:Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;

    sget-object v2, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$StatusMode;->NetworkSearching:Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$StatusMode;

    #setter for: Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->mStatusMode:Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$StatusMode;
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->access$002(Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$StatusMode;)Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$StatusMode;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$1;->this$0:Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;

    #calls: Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->updateCarrierTextForSearchNetwork(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->access$300(Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;Ljava/lang/String;)V

    goto :goto_1

    .end local v0           #carrierText:Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->isGemini()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    if-ne v1, p1, :cond_3

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$1;->this$0:Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$1;->this$0:Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$1;->mSimStateGemini:Lcom/android/internal/telephony/IccCardConstants$State;

    #calls: Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->getStatusForIccState(Lcom/android/internal/telephony/IccCardConstants$State;)Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$StatusMode;
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->access$400(Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;Lcom/android/internal/telephony/IccCardConstants$State;)Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$StatusMode;

    move-result-object v2

    #setter for: Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->mStatusModeGemini:Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$StatusMode;
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->access$102(Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$StatusMode;)Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$StatusMode;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$1;->this$0:Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$1;->mSimStateGemini:Lcom/android/internal/telephony/IccCardConstants$State;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$1;->mPlmnGemini:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$1;->mSpnGemini:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2, v3, v4, p1}, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->updateCarrierTextGemini(Lcom/android/internal/telephony/IccCardConstants$State;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$1;->this$0:Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$1;->this$0:Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$1;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    #calls: Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->getStatusForIccState(Lcom/android/internal/telephony/IccCardConstants$State;)Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$StatusMode;
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->access$400(Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;Lcom/android/internal/telephony/IccCardConstants$State;)Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$StatusMode;

    move-result-object v2

    #setter for: Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->mStatusMode:Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$StatusMode;
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->access$002(Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$StatusMode;)Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$StatusMode;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$1;->this$0:Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$1;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$1;->mPlmn:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$1;->mSpn:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2, v3, v4, p1}, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->updateCarrierTextGemini(Lcom/android/internal/telephony/IccCardConstants$State;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$1;->this$0:Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$1;->this$0:Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$1;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    #calls: Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->getStatusForIccState(Lcom/android/internal/telephony/IccCardConstants$State;)Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$StatusMode;
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->access$400(Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;Lcom/android/internal/telephony/IccCardConstants$State;)Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$StatusMode;

    move-result-object v2

    #setter for: Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->mStatusMode:Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$StatusMode;
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->access$002(Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$StatusMode;)Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$StatusMode;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$1;->this$0:Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$1;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$1;->mPlmn:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$1;->mSpn:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->updateCarrierText(Lcom/android/internal/telephony/IccCardConstants$State;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public onSimStateChanged(Lcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 4
    .parameter "simState"

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$1;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    const-string v0, "MediatekCarrierText"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSimStateChanged mSimState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$1;->this$0:Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$1;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$1;->mPlmn:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$1;->mSpn:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->updateCarrierText(Lcom/android/internal/telephony/IccCardConstants$State;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onSimStateChangedGemini(Lcom/android/internal/telephony/IccCardConstants$State;I)V
    .locals 4
    .parameter "simState"
    .parameter "simId"

    .prologue
    const-string v0, "MediatekCarrierText"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSimStateChangedGemini simId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mSimState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUtils;->xlogD(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_0

    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$1;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$1;->this$0:Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$1;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$1;->mPlmn:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$1;->mSpn:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->updateCarrierTextGemini(Lcom/android/internal/telephony/IccCardConstants$State;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$1;->mSimStateGemini:Lcom/android/internal/telephony/IccCardConstants$State;

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$1;->this$0:Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$1;->mSimStateGemini:Lcom/android/internal/telephony/IccCardConstants$State;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$1;->mPlmnGemini:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText$1;->mSpnGemini:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/internal/policy/impl/keyguard/MediatekCarrierText;->updateCarrierTextGemini(Lcom/android/internal/telephony/IccCardConstants$State;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    goto :goto_0
.end method
