.class Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$1;
.super Ljava/lang/Object;
.source "UiccCarrierPrivilegeRules.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;

    # invokes: Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->openChannel()V
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->access$100(Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;)V

    return-void
.end method
