.class Landroid/hardware/fingerprint/FingerprintManager$MyHandler;
.super Landroid/os/Handler;
.source "FingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/fingerprint/FingerprintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/fingerprint/FingerprintManager;


# direct methods
.method private constructor <init>(Landroid/hardware/fingerprint/FingerprintManager;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    iput-object p1, p0, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/hardware/fingerprint/FingerprintManager;Landroid/content/Context;Landroid/hardware/fingerprint/FingerprintManager$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/hardware/fingerprint/FingerprintManager;
    .param p2, "x1"    # Landroid/content/Context;
    .param p3, "x2"    # Landroid/hardware/fingerprint/FingerprintManager$1;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;-><init>(Landroid/hardware/fingerprint/FingerprintManager;Landroid/content/Context;)V

    return-void
.end method

.method private constructor <init>(Landroid/hardware/fingerprint/FingerprintManager;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    iput-object p1, p0, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/hardware/fingerprint/FingerprintManager;Landroid/os/Looper;Landroid/hardware/fingerprint/FingerprintManager$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/hardware/fingerprint/FingerprintManager;
    .param p2, "x1"    # Landroid/os/Looper;
    .param p3, "x2"    # Landroid/hardware/fingerprint/FingerprintManager$1;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;-><init>(Landroid/hardware/fingerprint/FingerprintManager;Landroid/os/Looper;)V

    return-void
.end method

.method private sendAcquiredResult(JI)V
    .locals 2
    .param p1, "deviceId"    # J
    .param p3, "acquireInfo"    # I

    .prologue
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    # getter for: Landroid/hardware/fingerprint/FingerprintManager;->mAuthenticationCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;
    invoke-static {v1}, Landroid/hardware/fingerprint/FingerprintManager;->access$800(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    # getter for: Landroid/hardware/fingerprint/FingerprintManager;->mAuthenticationCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;
    invoke-static {v1}, Landroid/hardware/fingerprint/FingerprintManager;->access$800(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;->onAuthenticationAcquired(I)V

    :cond_0
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    # invokes: Landroid/hardware/fingerprint/FingerprintManager;->getAcquiredString(I)Ljava/lang/String;
    invoke-static {v1, p3}, Landroid/hardware/fingerprint/FingerprintManager;->access$1000(Landroid/hardware/fingerprint/FingerprintManager;I)Ljava/lang/String;

    move-result-object v0

    .local v0, "msg":Ljava/lang/String;
    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    # getter for: Landroid/hardware/fingerprint/FingerprintManager;->mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;
    invoke-static {v1}, Landroid/hardware/fingerprint/FingerprintManager;->access$600(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    # getter for: Landroid/hardware/fingerprint/FingerprintManager;->mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;
    invoke-static {v1}, Landroid/hardware/fingerprint/FingerprintManager;->access$600(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    move-result-object v1

    invoke-virtual {v1, p3, v0}, Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;->onEnrollmentHelp(ILjava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    # getter for: Landroid/hardware/fingerprint/FingerprintManager;->mAuthenticationCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;
    invoke-static {v1}, Landroid/hardware/fingerprint/FingerprintManager;->access$800(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    # getter for: Landroid/hardware/fingerprint/FingerprintManager;->mAuthenticationCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;
    invoke-static {v1}, Landroid/hardware/fingerprint/FingerprintManager;->access$800(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    move-result-object v1

    invoke-virtual {v1, p3, v0}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;->onAuthenticationHelp(ILjava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private sendAuthenticatedFailed()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    # getter for: Landroid/hardware/fingerprint/FingerprintManager;->mAuthenticationCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;
    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager;->access$800(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    # getter for: Landroid/hardware/fingerprint/FingerprintManager;->mAuthenticationCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;
    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager;->access$800(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;->onAuthenticationFailed()V

    :cond_0
    return-void
.end method

.method private sendAuthenticatedSucceeded(Landroid/hardware/fingerprint/Fingerprint;)V
    .locals 2
    .param p1, "fp"    # Landroid/hardware/fingerprint/Fingerprint;

    .prologue
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    # getter for: Landroid/hardware/fingerprint/FingerprintManager;->mAuthenticationCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;
    invoke-static {v1}, Landroid/hardware/fingerprint/FingerprintManager;->access$800(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    # getter for: Landroid/hardware/fingerprint/FingerprintManager;->mCryptoObject:Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;
    invoke-static {v1}, Landroid/hardware/fingerprint/FingerprintManager;->access$900(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;-><init>(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/hardware/fingerprint/Fingerprint;)V

    .local v0, "result":Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    # getter for: Landroid/hardware/fingerprint/FingerprintManager;->mAuthenticationCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;
    invoke-static {v1}, Landroid/hardware/fingerprint/FingerprintManager;->access$800(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;->onAuthenticationSucceeded(Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)V

    .end local v0    # "result":Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;
    :cond_0
    return-void
.end method

.method private sendEnrollResult(Landroid/hardware/fingerprint/Fingerprint;I)V
    .locals 1
    .param p1, "fp"    # Landroid/hardware/fingerprint/Fingerprint;
    .param p2, "remaining"    # I

    .prologue
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    # getter for: Landroid/hardware/fingerprint/FingerprintManager;->mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;
    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager;->access$600(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    # getter for: Landroid/hardware/fingerprint/FingerprintManager;->mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;
    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager;->access$600(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;->onEnrollmentProgress(I)V

    :cond_0
    return-void
.end method

.method private sendErrorResult(JI)V
    .locals 3
    .param p1, "deviceId"    # J
    .param p3, "errMsgId"    # I

    .prologue
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    # getter for: Landroid/hardware/fingerprint/FingerprintManager;->mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;
    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager;->access$600(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    # getter for: Landroid/hardware/fingerprint/FingerprintManager;->mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;
    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager;->access$600(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    # invokes: Landroid/hardware/fingerprint/FingerprintManager;->getErrorString(I)Ljava/lang/String;
    invoke-static {v1, p3}, Landroid/hardware/fingerprint/FingerprintManager;->access$700(Landroid/hardware/fingerprint/FingerprintManager;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;->onEnrollmentError(ILjava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    # getter for: Landroid/hardware/fingerprint/FingerprintManager;->mAuthenticationCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;
    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager;->access$800(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    # getter for: Landroid/hardware/fingerprint/FingerprintManager;->mAuthenticationCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;
    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager;->access$800(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    # invokes: Landroid/hardware/fingerprint/FingerprintManager;->getErrorString(I)Ljava/lang/String;
    invoke-static {v1, p3}, Landroid/hardware/fingerprint/FingerprintManager;->access$700(Landroid/hardware/fingerprint/FingerprintManager;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    # getter for: Landroid/hardware/fingerprint/FingerprintManager;->mRemovalCallback:Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;
    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager;->access$400(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    # getter for: Landroid/hardware/fingerprint/FingerprintManager;->mRemovalCallback:Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;
    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager;->access$400(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    # getter for: Landroid/hardware/fingerprint/FingerprintManager;->mRemovalFingerprint:Landroid/hardware/fingerprint/Fingerprint;
    invoke-static {v1}, Landroid/hardware/fingerprint/FingerprintManager;->access$500(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/hardware/fingerprint/Fingerprint;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    # invokes: Landroid/hardware/fingerprint/FingerprintManager;->getErrorString(I)Ljava/lang/String;
    invoke-static {v2, p3}, Landroid/hardware/fingerprint/FingerprintManager;->access$700(Landroid/hardware/fingerprint/FingerprintManager;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p3, v2}, Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;->onRemovalError(Landroid/hardware/fingerprint/Fingerprint;ILjava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private sendRemovedResult(JII)V
    .locals 5
    .param p1, "deviceId"    # J
    .param p3, "fingerId"    # I
    .param p4, "groupId"    # I

    .prologue
    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    # getter for: Landroid/hardware/fingerprint/FingerprintManager;->mRemovalCallback:Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;
    invoke-static {v2}, Landroid/hardware/fingerprint/FingerprintManager;->access$400(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    # getter for: Landroid/hardware/fingerprint/FingerprintManager;->mRemovalFingerprint:Landroid/hardware/fingerprint/Fingerprint;
    invoke-static {v2}, Landroid/hardware/fingerprint/FingerprintManager;->access$500(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/hardware/fingerprint/Fingerprint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v0

    .local v0, "reqFingerId":I
    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    # getter for: Landroid/hardware/fingerprint/FingerprintManager;->mRemovalFingerprint:Landroid/hardware/fingerprint/Fingerprint;
    invoke-static {v2}, Landroid/hardware/fingerprint/FingerprintManager;->access$500(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/hardware/fingerprint/Fingerprint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/fingerprint/Fingerprint;->getGroupId()I

    move-result v1

    .local v1, "reqGroupId":I
    if-eq p3, v0, :cond_0

    const-string v2, "FingerprintManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Finger id didn\'t match: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " != "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eq p3, v0, :cond_1

    const-string v2, "FingerprintManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Group id didn\'t match: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " != "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    # getter for: Landroid/hardware/fingerprint/FingerprintManager;->mRemovalCallback:Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;
    invoke-static {v2}, Landroid/hardware/fingerprint/FingerprintManager;->access$400(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    # getter for: Landroid/hardware/fingerprint/FingerprintManager;->mRemovalFingerprint:Landroid/hardware/fingerprint/Fingerprint;
    invoke-static {v3}, Landroid/hardware/fingerprint/FingerprintManager;->access$500(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/hardware/fingerprint/Fingerprint;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;->onRemovalSucceeded(Landroid/hardware/fingerprint/Fingerprint;)V

    .end local v0    # "reqFingerId":I
    .end local v1    # "reqGroupId":I
    :cond_2
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/fingerprint/Fingerprint;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, v1}, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->sendEnrollResult(Landroid/hardware/fingerprint/Fingerprint;I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, v1, v2}, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->sendAcquiredResult(JI)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/fingerprint/Fingerprint;

    invoke-direct {p0, v0}, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->sendAuthenticatedSucceeded(Landroid/hardware/fingerprint/Fingerprint;)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->sendAuthenticatedFailed()V

    goto :goto_0

    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, v1, v2}, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->sendErrorResult(JI)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->sendRemovedResult(JII)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
