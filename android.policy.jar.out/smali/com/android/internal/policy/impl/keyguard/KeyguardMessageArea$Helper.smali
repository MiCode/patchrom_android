.class public Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$Helper;
.super Ljava/lang/Object;
.source "KeyguardMessageArea.java"

# interfaces
.implements Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Helper"
.end annotation


# instance fields
.field mMessageArea:Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x1020280

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t find keyguard_message_area in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public hideBouncer(I)V
    .locals 2
    .parameter "duration"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->showMessage(I)V
    invoke-static {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mShowingBouncer:Z

    return-void
.end method

.method public setMessage(IZ)V
    .locals 2
    .parameter "resId"
    .parameter "important"

    .prologue
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mMessage:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->securityMessageChanged()V

    :cond_0
    return-void
.end method

.method public varargs setMessage(IZ[Ljava/lang/Object;)V
    .locals 2
    .parameter "resId"
    .parameter "important"
    .parameter "formatArgs"

    .prologue
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1, p3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mMessage:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->securityMessageChanged()V

    :cond_0
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;Z)V
    .locals 1
    .parameter "msg"
    .parameter "important"

    .prologue
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;

    iput-object p1, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mMessage:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->securityMessageChanged()V

    :cond_0
    return-void
.end method

.method public setTimeout(I)V
    .locals 3
    .parameter "timeoutMs"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;

    int-to-long v1, p1

    iput-wide v1, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mTimeout:J

    return-void
.end method

.method public showBouncer(I)V
    .locals 2
    .parameter "duration"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;

    const/4 v1, 0x0

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->hideMessage(IZ)V
    invoke-static {v0, p1, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;IZ)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$Helper;->mMessageArea:Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->mShowingBouncer:Z

    return-void
.end method
