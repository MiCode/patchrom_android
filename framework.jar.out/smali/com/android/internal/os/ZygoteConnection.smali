.class Lcom/android/internal/os/ZygoteConnection;
.super Ljava/lang/Object;
.source "ZygoteConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/ZygoteConnection$Arguments;
    }
.end annotation


# static fields
.field private static final CONNECTION_TIMEOUT_MILLIS:I = 0x3e8

.field private static final MAX_ZYGOTE_ARGC:I = 0x400

.field private static final TAG:Ljava/lang/String; = "Zygote"

.field private static final intArray2d:[[I

.field private static sPeerWaitSocket:Landroid/net/LocalSocket;


# instance fields
.field private final mSocket:Landroid/net/LocalSocket;

.field private final mSocketOutStream:Ljava/io/DataOutputStream;

.field private final mSocketReader:Ljava/io/BufferedReader;

.field private final peer:Landroid/net/Credentials;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 51
    filled-new-array {v0, v0}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    sput-object v0, Lcom/android/internal/os/ZygoteConnection;->intArray2d:[[I

    .line 87
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/os/ZygoteConnection;->sPeerWaitSocket:Landroid/net/LocalSocket;

    return-void
.end method

.method constructor <init>(Landroid/net/LocalSocket;)V
    .locals 4
    .parameter "socket"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Lcom/android/internal/os/ZygoteConnection;->mSocket:Landroid/net/LocalSocket;

    .line 98
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Lcom/android/internal/os/ZygoteConnection;->mSocketOutStream:Ljava/io/DataOutputStream;

    .line 101
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v3, 0x100

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    iput-object v1, p0, Lcom/android/internal/os/ZygoteConnection;->mSocketReader:Ljava/io/BufferedReader;

    .line 104
    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection;->mSocket:Landroid/net/LocalSocket;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/net/LocalSocket;->setSoTimeout(I)V

    .line 107
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->getPeerCredentials()Landroid/net/Credentials;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/os/ZygoteConnection;->peer:Landroid/net/Credentials;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    return-void

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, ex:Ljava/io/IOException;
    const-string v1, "Zygote"

    const-string v2, "Cannot read peer credentials"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 110
    throw v0
.end method

.method private static applyCapabilitiesSecurityPolicy(Lcom/android/internal/os/ZygoteConnection$Arguments;Landroid/net/Credentials;)V
    .locals 11
    .parameter "args"
    .parameter "peer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/ZygoteSecurityException;
        }
    .end annotation

    .prologue
    const-wide/16 v9, -0x1

    const-wide/16 v7, 0x0

    .line 695
    iget-wide v3, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->permittedCapabilities:J

    cmp-long v3, v3, v7

    if-nez v3, :cond_1

    iget-wide v3, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->effectiveCapabilities:J

    cmp-long v3, v3, v7

    if-nez v3, :cond_1

    .line 735
    :cond_0
    return-void

    .line 701
    :cond_1
    invoke-virtual {p1}, Landroid/net/Credentials;->getUid()I

    move-result v3

    if-eqz v3, :cond_0

    .line 709
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Credentials;->getPid()I

    move-result v3

    invoke-static {v3}, Lcom/android/internal/os/ZygoteInit;->capgetPermitted(I)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 720
    .local v1, permittedCaps:J
    iget-wide v3, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->permittedCapabilities:J

    xor-long/2addr v3, v9

    iget-wide v5, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->effectiveCapabilities:J

    and-long/2addr v3, v5

    cmp-long v3, v3, v7

    if-eqz v3, :cond_2

    .line 721
    new-instance v3, Lcom/android/internal/os/ZygoteSecurityException;

    const-string v4, "Effective capabilities cannot be superset of  permitted capabilities"

    invoke-direct {v3, v4}, Lcom/android/internal/os/ZygoteSecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 710
    .end local v1           #permittedCaps:J
    :catch_0
    move-exception v0

    .line 711
    .local v0, ex:Ljava/io/IOException;
    new-instance v3, Lcom/android/internal/os/ZygoteSecurityException;

    const-string v4, "Error retrieving peer\'s capabilities."

    invoke-direct {v3, v4}, Lcom/android/internal/os/ZygoteSecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 731
    .end local v0           #ex:Ljava/io/IOException;
    .restart local v1       #permittedCaps:J
    :cond_2
    xor-long v3, v1, v9

    iget-wide v5, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->permittedCapabilities:J

    and-long/2addr v3, v5

    cmp-long v3, v3, v7

    if-eqz v3, :cond_0

    .line 732
    new-instance v3, Lcom/android/internal/os/ZygoteSecurityException;

    const-string v4, "Peer specified unpermitted capabilities"

    invoke-direct {v3, v4}, Lcom/android/internal/os/ZygoteSecurityException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static applyDebuggerSystemProperty(Lcom/android/internal/os/ZygoteConnection$Arguments;)V
    .locals 2
    .parameter "args"

    .prologue
    .line 649
    #const-string v0, "1"

    #const-string/jumbo v1, "ro.debuggable"

    #invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #move-result-object v1

    #invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #move-result v0

    #if-eqz v0, :cond_0

    .line 650
    iget v0, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    .line 652
    :cond_0
    return-void
.end method

.method private static applyInvokeWithSecurityPolicy(Lcom/android/internal/os/ZygoteConnection$Arguments;Landroid/net/Credentials;)V
    .locals 3
    .parameter "args"
    .parameter "peer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/ZygoteSecurityException;
        }
    .end annotation

    .prologue
    .line 752
    invoke-virtual {p1}, Landroid/net/Credentials;->getUid()I

    move-result v0

    .line 754
    .local v0, peerUid:I
    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 755
    new-instance v1, Lcom/android/internal/os/ZygoteSecurityException;

    const-string v2, "Peer is not permitted to specify an explicit invoke-with wrapper command"

    invoke-direct {v1, v2}, Lcom/android/internal/os/ZygoteSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 758
    :cond_0
    return-void
.end method

.method public static applyInvokeWithSystemProperty(Lcom/android/internal/os/ZygoteConnection$Arguments;)V
    .locals 4
    .parameter "args"

    .prologue
    const/16 v3, 0x1f

    .line 766
    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->niceName:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 767
    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->niceName:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 768
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "wrap."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->niceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 769
    .local v0, property:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_0

    .line 770
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 772
    :cond_0
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    .line 773
    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 774
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    .line 778
    .end local v0           #property:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private static applyRlimitSecurityPolicy(Lcom/android/internal/os/ZygoteConnection$Arguments;Landroid/net/Credentials;)V
    .locals 3
    .parameter "args"
    .parameter "peer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/ZygoteSecurityException;
        }
    .end annotation

    .prologue
    .line 670
    invoke-virtual {p1}, Landroid/net/Credentials;->getUid()I

    move-result v0

    .line 672
    .local v0, peerUid:I
    if-eqz v0, :cond_0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 674
    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->rlimits:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 675
    new-instance v1, Lcom/android/internal/os/ZygoteSecurityException;

    const-string v2, "This UID may not specify rlimits."

    invoke-direct {v1, v2}, Lcom/android/internal/os/ZygoteSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 679
    :cond_0
    return-void
.end method

.method private static applyUidSecurityPolicy(Lcom/android/internal/os/ZygoteConnection$Arguments;Landroid/net/Credentials;)V
    .locals 6
    .parameter "args"
    .parameter "peer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/ZygoteSecurityException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x3e8

    const/4 v3, 0x1

    .line 597
    invoke-virtual {p1}, Landroid/net/Credentials;->getUid()I

    move-result v1

    .line 599
    .local v1, peerUid:I
    if-nez v1, :cond_3

    .line 628
    :cond_0
    iget-boolean v4, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->uidSpecified:Z

    if-nez v4, :cond_1

    .line 629
    invoke-virtual {p1}, Landroid/net/Credentials;->getUid()I

    move-result v4

    iput v4, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->uid:I

    .line 630
    iput-boolean v3, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->uidSpecified:Z

    .line 632
    :cond_1
    iget-boolean v4, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->gidSpecified:Z

    if-nez v4, :cond_2

    .line 633
    invoke-virtual {p1}, Landroid/net/Credentials;->getGid()I

    move-result v4

    iput v4, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->gid:I

    .line 634
    iput-boolean v3, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->gidSpecified:Z

    .line 636
    :cond_2
    return-void

    .line 601
    :cond_3
    if-ne v1, v5, :cond_5

    .line 603
    const-string/jumbo v4, "ro.factorytest"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 609
    .local v0, factoryTest:Ljava/lang/String;
    const-string v4, "1"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "2"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    move v2, v3

    .line 612
    .local v2, uidRestricted:Z
    :goto_0
    if-eqz v2, :cond_0

    iget-boolean v4, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->uidSpecified:Z

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->uid:I

    if-ge v4, v5, :cond_0

    .line 614
    new-instance v3, Lcom/android/internal/os/ZygoteSecurityException;

    const-string v4, "System UID may not launch process with UID < 1000"

    invoke-direct {v3, v4}, Lcom/android/internal/os/ZygoteSecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 609
    .end local v2           #uidRestricted:Z
    :cond_4
    const/4 v2, 0x0

    goto :goto_0

    .line 620
    .end local v0           #factoryTest:Ljava/lang/String;
    :cond_5
    iget-boolean v4, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->uidSpecified:Z

    if-nez v4, :cond_6

    iget-boolean v4, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->gidSpecified:Z

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->gids:[I

    if-eqz v4, :cond_0

    .line 622
    :cond_6
    new-instance v3, Lcom/android/internal/os/ZygoteSecurityException;

    const-string v4, "App UIDs may not specify uid\'s or gid\'s"

    invoke-direct {v3, v4}, Lcom/android/internal/os/ZygoteSecurityException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private handleChildProc(Lcom/android/internal/os/ZygoteConnection$Arguments;[Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/PrintStream;)V
    .locals 13
    .parameter "parsedArgs"
    .parameter "descriptors"
    .parameter "pipeFd"
    .parameter "newStderr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;
        }
    .end annotation

    .prologue
    .line 803
    iget-boolean v9, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->peerWait:Z

    if-eqz v9, :cond_0

    .line 805
    :try_start_0
    iget-object v9, p0, Lcom/android/internal/os/ZygoteConnection;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v9}, Landroid/net/LocalSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {v9, v10}, Lcom/android/internal/os/ZygoteInit;->setCloseOnExec(Ljava/io/FileDescriptor;Z)V

    .line 806
    iget-object v9, p0, Lcom/android/internal/os/ZygoteConnection;->mSocket:Landroid/net/LocalSocket;

    sput-object v9, Lcom/android/internal/os/ZygoteConnection;->sPeerWaitSocket:Landroid/net/LocalSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 816
    :goto_0
    if-eqz p2, :cond_2

    .line 818
    const/4 v9, 0x0

    :try_start_1
    aget-object v9, p2, v9

    const/4 v10, 0x1

    aget-object v10, p2, v10

    const/4 v11, 0x2

    aget-object v11, p2, v11

    invoke-static {v9, v10, v11}, Lcom/android/internal/os/ZygoteInit;->reopenStdio(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;)V

    .line 821
    move-object v1, p2

    .local v1, arr$:[Ljava/io/FileDescriptor;
    array-length v7, v1

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_1
    if-ge v6, v7, :cond_1

    aget-object v5, v1, v6

    .line 822
    .local v5, fd:Ljava/io/FileDescriptor;
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 821
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 807
    .end local v1           #arr$:[Ljava/io/FileDescriptor;
    .end local v5           #fd:Ljava/io/FileDescriptor;
    .end local v6           #i$:I
    .end local v7           #len$:I
    :catch_0
    move-exception v4

    .line 808
    .local v4, ex:Ljava/io/IOException;
    const-string v9, "Zygote"

    const-string v10, "Zygote Child: error setting peer wait socket to be close-on-exec"

    invoke-static {v9, v10, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 812
    .end local v4           #ex:Ljava/io/IOException;
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/os/ZygoteConnection;->closeSocket()V

    .line 813
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->closeServerSocket()V

    goto :goto_0

    .line 824
    .restart local v1       #arr$:[Ljava/io/FileDescriptor;
    .restart local v6       #i$:I
    .restart local v7       #len$:I
    :cond_1
    :try_start_2
    sget-object p4, Ljava/lang/System;->err:Ljava/io/PrintStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 830
    .end local v1           #arr$:[Ljava/io/FileDescriptor;
    .end local v6           #i$:I
    .end local v7           #len$:I
    :cond_2
    :goto_2
    iget-object v9, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->niceName:Ljava/lang/String;

    if-eqz v9, :cond_3

    .line 831
    iget-object v9, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->niceName:Ljava/lang/String;

    invoke-static {v9}, Landroid/os/Process;->setArgV0(Ljava/lang/String;)V

    .line 834
    :cond_3
    iget-boolean v9, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->runtimeInit:Z

    if-eqz v9, :cond_5

    .line 835
    iget-object v9, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    if-eqz v9, :cond_4

    .line 836
    iget-object v9, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    iget-object v10, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->niceName:Ljava/lang/String;

    iget v11, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->targetSdkVersion:I

    iget-object v12, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->remainingArgs:[Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-static {v9, v10, v11, v0, v12}, Lcom/android/internal/os/WrapperInit;->execApplication(Ljava/lang/String;Ljava/lang/String;ILjava/io/FileDescriptor;[Ljava/lang/String;)V

    .line 876
    :goto_3
    return-void

    .line 825
    :catch_1
    move-exception v4

    .line 826
    .restart local v4       #ex:Ljava/io/IOException;
    const-string v9, "Zygote"

    const-string v10, "Error reopening stdio"

    invoke-static {v9, v10, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 840
    .end local v4           #ex:Ljava/io/IOException;
    :cond_4
    iget v9, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->targetSdkVersion:I

    iget-object v10, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->remainingArgs:[Ljava/lang/String;

    invoke-static {v9, v10}, Lcom/android/internal/os/RuntimeInit;->zygoteInit(I[Ljava/lang/String;)V

    goto :goto_3

    .line 846
    :cond_5
    :try_start_3
    iget-object v9, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->remainingArgs:[Ljava/lang/String;

    const/4 v10, 0x0

    aget-object v2, v9, v10
    :try_end_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_2

    .line 853
    .local v2, className:Ljava/lang/String;
    iget-object v9, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->remainingArgs:[Ljava/lang/String;

    array-length v9, v9

    add-int/lit8 v9, v9, -0x1

    new-array v8, v9, [Ljava/lang/String;

    .line 854
    .local v8, mainArgs:[Ljava/lang/String;
    iget-object v9, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->remainingArgs:[Ljava/lang/String;

    const/4 v10, 0x1

    const/4 v11, 0x0

    array-length v12, v8

    invoke-static {v9, v10, v8, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 857
    iget-object v9, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    if-eqz v9, :cond_6

    .line 858
    iget-object v9, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    iget-object v10, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->classpath:Ljava/lang/String;

    invoke-static {v9, v10, v2, v8}, Lcom/android/internal/os/WrapperInit;->execStandalone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_3

    .line 847
    .end local v2           #className:Ljava/lang/String;
    .end local v8           #mainArgs:[Ljava/lang/String;
    :catch_2
    move-exception v4

    .line 848
    .local v4, ex:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v9, "Missing required class name argument"

    const/4 v10, 0x0

    move-object/from16 v0, p4

    invoke-static {v0, v9, v10}, Lcom/android/internal/os/ZygoteConnection;->logAndPrintError(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 862
    .end local v4           #ex:Ljava/lang/ArrayIndexOutOfBoundsException;
    .restart local v2       #className:Ljava/lang/String;
    .restart local v8       #mainArgs:[Ljava/lang/String;
    :cond_6
    iget-object v9, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->classpath:Ljava/lang/String;

    if-eqz v9, :cond_7

    .line 863
    new-instance v3, Ldalvik/system/PathClassLoader;

    iget-object v9, p1, Lcom/android/internal/os/ZygoteConnection$Arguments;->classpath:Ljava/lang/String;

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    invoke-direct {v3, v9, v10}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 870
    .local v3, cloader:Ljava/lang/ClassLoader;
    :goto_4
    :try_start_4
    invoke-static {v3, v2, v8}, Lcom/android/internal/os/ZygoteInit;->invokeStaticMain(Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    .line 871
    :catch_3
    move-exception v4

    .line 872
    .local v4, ex:Ljava/lang/RuntimeException;
    const-string v9, "Error starting."

    move-object/from16 v0, p4

    invoke-static {v0, v9, v4}, Lcom/android/internal/os/ZygoteConnection;->logAndPrintError(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 866
    .end local v3           #cloader:Ljava/lang/ClassLoader;
    .end local v4           #ex:Ljava/lang/RuntimeException;
    :cond_7
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .restart local v3       #cloader:Ljava/lang/ClassLoader;
    goto :goto_4
.end method

.method private handleParentProc(I[Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Lcom/android/internal/os/ZygoteConnection$Arguments;)Z
    .locals 13
    .parameter "pid"
    .parameter "descriptors"
    .parameter "pipeFd"
    .parameter "parsedArgs"

    .prologue
    .line 893
    if-lez p1, :cond_0

    .line 894
    invoke-direct {p0, p1}, Lcom/android/internal/os/ZygoteConnection;->setChildPgid(I)V

    .line 897
    :cond_0
    if-eqz p2, :cond_1

    .line 898
    move-object v1, p2

    .local v1, arr$:[Ljava/io/FileDescriptor;
    array-length v7, v1

    .local v7, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v7, :cond_1

    aget-object v3, v1, v4

    .line 899
    .local v3, fd:Ljava/io/FileDescriptor;
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 898
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 903
    .end local v1           #arr$:[Ljava/io/FileDescriptor;
    .end local v3           #fd:Ljava/io/FileDescriptor;
    .end local v4           #i$:I
    .end local v7           #len$:I
    :cond_1
    const/4 v9, 0x0

    .line 904
    .local v9, usingWrapper:Z
    if-eqz p3, :cond_3

    if-lez p1, :cond_3

    .line 905
    new-instance v6, Ljava/io/DataInputStream;

    new-instance v10, Ljava/io/FileInputStream;

    move-object/from16 v0, p3

    invoke-direct {v10, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v6, v10}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 906
    .local v6, is:Ljava/io/DataInputStream;
    const/4 v5, -0x1

    .line 908
    .local v5, innerPid:I
    :try_start_0
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 913
    :try_start_1
    invoke-virtual {v6}, Ljava/io/DataInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 920
    :goto_1
    if-lez v5, :cond_3

    .line 921
    move v8, v5

    .line 922
    .local v8, parentPid:I
    :goto_2
    if-lez v8, :cond_2

    if-eq v8, p1, :cond_2

    .line 923
    invoke-static {v8}, Landroid/os/Process;->getParentPid(I)I

    move-result v8

    goto :goto_2

    .line 909
    .end local v8           #parentPid:I
    :catch_0
    move-exception v2

    .line 910
    .local v2, ex:Ljava/io/IOException;
    :try_start_2
    const-string v10, "Zygote"

    const-string v11, "Error reading pid from wrapped process, child may have died"

    invoke-static {v10, v11, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 913
    :try_start_3
    invoke-virtual {v6}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 914
    :catch_1
    move-exception v10

    goto :goto_1

    .line 912
    .end local v2           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v10

    .line 913
    :try_start_4
    invoke-virtual {v6}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 915
    :goto_3
    throw v10

    .line 925
    .restart local v8       #parentPid:I
    :cond_2
    if-lez v8, :cond_4

    .line 926
    const-string v10, "Zygote"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Wrapped process has pid "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    move p1, v5

    .line 928
    const/4 v9, 0x1

    .line 938
    .end local v5           #innerPid:I
    .end local v6           #is:Ljava/io/DataInputStream;
    .end local v8           #parentPid:I
    :cond_3
    :goto_4
    :try_start_5
    iget-object v10, p0, Lcom/android/internal/os/ZygoteConnection;->mSocketOutStream:Ljava/io/DataOutputStream;

    invoke-virtual {v10, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 939
    iget-object v10, p0, Lcom/android/internal/os/ZygoteConnection;->mSocketOutStream:Ljava/io/DataOutputStream;

    invoke-virtual {v10, v9}, Ljava/io/DataOutputStream;->writeBoolean(Z)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 949
    move-object/from16 v0, p4

    iget-boolean v10, v0, Lcom/android/internal/os/ZygoteConnection$Arguments;->peerWait:Z

    if-eqz v10, :cond_5

    .line 951
    :try_start_6
    iget-object v10, p0, Lcom/android/internal/os/ZygoteConnection;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v10}, Landroid/net/LocalSocket;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 955
    :goto_5
    const/4 v10, 0x1

    .line 957
    :goto_6
    return v10

    .line 930
    .restart local v5       #innerPid:I
    .restart local v6       #is:Ljava/io/DataInputStream;
    .restart local v8       #parentPid:I
    :cond_4
    const-string v10, "Zygote"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Wrapped process reported a pid that is not a child of the process that we forked: childPid="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " innerPid="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 940
    .end local v5           #innerPid:I
    .end local v6           #is:Ljava/io/DataInputStream;
    .end local v8           #parentPid:I
    :catch_2
    move-exception v2

    .line 941
    .restart local v2       #ex:Ljava/io/IOException;
    const-string v10, "Zygote"

    const-string v11, "Error reading from command socket"

    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 942
    const/4 v10, 0x1

    goto :goto_6

    .line 952
    .end local v2           #ex:Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 953
    .restart local v2       #ex:Ljava/io/IOException;
    const-string v10, "Zygote"

    const-string v11, "Zygote: error closing sockets"

    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 957
    .end local v2           #ex:Ljava/io/IOException;
    :cond_5
    const/4 v10, 0x0

    goto :goto_6

    .line 914
    .restart local v5       #innerPid:I
    .restart local v6       #is:Ljava/io/DataInputStream;
    :catch_4
    move-exception v10

    goto/16 :goto_1

    :catch_5
    move-exception v11

    goto :goto_3
.end method

.method private static logAndPrintError(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "newStderr"
    .parameter "message"
    .parameter "ex"

    .prologue
    .line 984
    const-string v0, "Zygote"

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 985
    if-eqz p0, :cond_1

    .line 986
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez p2, :cond_0

    const-string p2, ""

    .end local p2
    :cond_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 988
    :cond_1
    return-void
.end method

.method private readArgumentList()[Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 549
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/os/ZygoteConnection;->mSocketReader:Ljava/io/BufferedReader;

    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 551
    .local v4, s:Ljava/lang/String;
    if-nez v4, :cond_1

    .line 553
    const/4 v3, 0x0

    .line 575
    :cond_0
    return-object v3

    .line 555
    :cond_1
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 562
    .local v0, argc:I
    const/16 v5, 0x400

    if-le v0, v5, :cond_2

    .line 563
    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v6, "max arg count exceeded"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 556
    .end local v0           #argc:I
    .end local v4           #s:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 557
    .local v1, ex:Ljava/lang/NumberFormatException;
    const-string v5, "Zygote"

    const-string v6, "invalid Zygote wire format: non-int at argc"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    new-instance v5, Ljava/io/IOException;

    const-string v6, "invalid wire format"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 566
    .end local v1           #ex:Ljava/lang/NumberFormatException;
    .restart local v0       #argc:I
    .restart local v4       #s:Ljava/lang/String;
    :cond_2
    new-array v3, v0, [Ljava/lang/String;

    .line 567
    .local v3, result:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 568
    iget-object v5, p0, Lcom/android/internal/os/ZygoteConnection;->mSocketReader:Ljava/io/BufferedReader;

    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v2

    .line 569
    aget-object v5, v3, v2

    if-nez v5, :cond_3

    .line 571
    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v6, "truncated request"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 567
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private setChildPgid(I)V
    .locals 3
    .parameter "pid"

    .prologue
    .line 963
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection;->peer:Landroid/net/Credentials;

    invoke-virtual {v1}, Landroid/net/Credentials;->getPid()I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/os/ZygoteInit;->getpgid(I)I

    move-result v1

    invoke-static {p1, v1}, Lcom/android/internal/os/ZygoteInit;->setpgid(II)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 972
    :goto_0
    return-void

    .line 964
    :catch_0
    move-exception v0

    .line 969
    .local v0, ex:Ljava/io/IOException;
    const-string v1, "Zygote"

    const-string v2, "Zygote: setpgid failed. This is normal if peer is not in our session"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method closeSocket()V
    .locals 3

    .prologue
    .line 271
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    :goto_0
    return-void

    .line 272
    :catch_0
    move-exception v0

    .line 273
    .local v0, ex:Ljava/io/IOException;
    const-string v1, "Zygote"

    const-string v2, "Exception while closing command socket in parent"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method getFileDesciptor()Ljava/io/FileDescriptor;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/internal/os/ZygoteConnection;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method run()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;
        }
    .end annotation

    .prologue
    .line 135
    const/16 v0, 0xa

    .line 147
    .local v0, loopCount:I
    :cond_0
    if-gtz v0, :cond_1

    .line 148
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->gc()V

    .line 149
    const/16 v0, 0xa

    .line 154
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/os/ZygoteConnection;->runOnce()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    return-void

    .line 151
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method runOnce()Z
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;
        }
    .end annotation

    .prologue
    .line 177
    const/4 v5, 0x0

    .line 181
    .local v5, parsedArgs:Lcom/android/internal/os/ZygoteConnection$Arguments;
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/os/ZygoteConnection;->readArgumentList()[Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, args:[Ljava/lang/String;
    iget-object v11, p0, Lcom/android/internal/os/ZygoteConnection;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v11}, Landroid/net/LocalSocket;->getAncillaryFileDescriptors()[Ljava/io/FileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 189
    .local v2, descriptors:[Ljava/io/FileDescriptor;
    if-nez v0, :cond_0

    .line 191
    invoke-virtual {p0}, Lcom/android/internal/os/ZygoteConnection;->closeSocket()V

    .line 192
    const/4 v11, 0x1

    .line 262
    .end local v0           #args:[Ljava/lang/String;
    .end local v2           #descriptors:[Ljava/io/FileDescriptor;
    :goto_0
    return v11

    .line 183
    :catch_0
    move-exception v3

    .line 184
    .local v3, ex:Ljava/io/IOException;
    const-string v11, "Zygote"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "IOException on command socket "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-virtual {p0}, Lcom/android/internal/os/ZygoteConnection;->closeSocket()V

    .line 186
    const/4 v11, 0x1

    goto :goto_0

    .line 196
    .end local v3           #ex:Ljava/io/IOException;
    .restart local v0       #args:[Ljava/lang/String;
    .restart local v2       #descriptors:[Ljava/io/FileDescriptor;
    :cond_0
    const/4 v4, 0x0

    .line 198
    .local v4, newStderr:Ljava/io/PrintStream;
    if-eqz v2, :cond_1

    array-length v11, v2

    const/4 v12, 0x3

    if-lt v11, v12, :cond_1

    .line 199
    new-instance v4, Ljava/io/PrintStream;

    .end local v4           #newStderr:Ljava/io/PrintStream;
    new-instance v11, Ljava/io/FileOutputStream;

    const/4 v12, 0x2

    aget-object v12, v2, v12

    invoke-direct {v11, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v4, v11}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 203
    .restart local v4       #newStderr:Ljava/io/PrintStream;
    :cond_1
    const/4 v7, -0x1

    .line 204
    .local v7, pid:I
    const/4 v1, 0x0

    .line 205
    .local v1, childPipeFd:Ljava/io/FileDescriptor;
    const/4 v10, 0x0

    .line 208
    .local v10, serverPipeFd:Ljava/io/FileDescriptor;
    :try_start_1
    new-instance v6, Lcom/android/internal/os/ZygoteConnection$Arguments;

    invoke-direct {v6, v0}, Lcom/android/internal/os/ZygoteConnection$Arguments;-><init>([Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Llibcore/io/ErrnoException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/android/internal/os/ZygoteSecurityException; {:try_start_1 .. :try_end_1} :catch_4

    .line 210
    .end local v5           #parsedArgs:Lcom/android/internal/os/ZygoteConnection$Arguments;
    .local v6, parsedArgs:Lcom/android/internal/os/ZygoteConnection$Arguments;
    :try_start_2
    iget-object v11, p0, Lcom/android/internal/os/ZygoteConnection;->peer:Landroid/net/Credentials;

    invoke-static {v6, v11}, Lcom/android/internal/os/ZygoteConnection;->applyUidSecurityPolicy(Lcom/android/internal/os/ZygoteConnection$Arguments;Landroid/net/Credentials;)V

    .line 211
    iget-object v11, p0, Lcom/android/internal/os/ZygoteConnection;->peer:Landroid/net/Credentials;

    invoke-static {v6, v11}, Lcom/android/internal/os/ZygoteConnection;->applyRlimitSecurityPolicy(Lcom/android/internal/os/ZygoteConnection$Arguments;Landroid/net/Credentials;)V

    .line 212
    iget-object v11, p0, Lcom/android/internal/os/ZygoteConnection;->peer:Landroid/net/Credentials;

    invoke-static {v6, v11}, Lcom/android/internal/os/ZygoteConnection;->applyCapabilitiesSecurityPolicy(Lcom/android/internal/os/ZygoteConnection$Arguments;Landroid/net/Credentials;)V

    .line 213
    iget-object v11, p0, Lcom/android/internal/os/ZygoteConnection;->peer:Landroid/net/Credentials;

    invoke-static {v6, v11}, Lcom/android/internal/os/ZygoteConnection;->applyInvokeWithSecurityPolicy(Lcom/android/internal/os/ZygoteConnection$Arguments;Landroid/net/Credentials;)V

    .line 215
    invoke-static {v6}, Lcom/android/internal/os/ZygoteConnection;->applyDebuggerSystemProperty(Lcom/android/internal/os/ZygoteConnection$Arguments;)V

    .line 216
    invoke-static {v6}, Lcom/android/internal/os/ZygoteConnection;->applyInvokeWithSystemProperty(Lcom/android/internal/os/ZygoteConnection$Arguments;)V

    .line 218
    const/4 v9, 0x0

    check-cast v9, [[I

    .line 220
    .local v9, rlimits:[[I
    iget-object v11, v6, Lcom/android/internal/os/ZygoteConnection$Arguments;->rlimits:Ljava/util/ArrayList;

    if-eqz v11, :cond_2

    .line 221
    iget-object v11, v6, Lcom/android/internal/os/ZygoteConnection$Arguments;->rlimits:Ljava/util/ArrayList;

    sget-object v12, Lcom/android/internal/os/ZygoteConnection;->intArray2d:[[I

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    .end local v9           #rlimits:[[I
    check-cast v9, [[I

    .line 224
    .restart local v9       #rlimits:[[I
    :cond_2
    iget-boolean v11, v6, Lcom/android/internal/os/ZygoteConnection$Arguments;->runtimeInit:Z

    if-eqz v11, :cond_3

    iget-object v11, v6, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    if-eqz v11, :cond_3

    .line 225
    sget-object v11, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v11}, Llibcore/io/Os;->pipe()[Ljava/io/FileDescriptor;

    move-result-object v8

    .line 226
    .local v8, pipeFds:[Ljava/io/FileDescriptor;
    const/4 v11, 0x1

    aget-object v1, v8, v11

    .line 227
    const/4 v11, 0x0

    aget-object v10, v8, v11

    .line 228
    const/4 v11, 0x1

    invoke-static {v10, v11}, Lcom/android/internal/os/ZygoteInit;->setCloseOnExec(Ljava/io/FileDescriptor;Z)V

    .line 231
    .end local v8           #pipeFds:[Ljava/io/FileDescriptor;
    :cond_3
    iget v11, v6, Lcom/android/internal/os/ZygoteConnection$Arguments;->uid:I

    iget v12, v6, Lcom/android/internal/os/ZygoteConnection$Arguments;->gid:I

    iget-object v13, v6, Lcom/android/internal/os/ZygoteConnection$Arguments;->gids:[I

    iget v14, v6, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    invoke-static {v11, v12, v13, v14, v9}, Ldalvik/system/Zygote;->forkAndSpecialize(II[II[[I)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Llibcore/io/ErrnoException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Lcom/android/internal/os/ZygoteSecurityException; {:try_start_2 .. :try_end_2} :catch_5

    move-result v7

    move-object v5, v6

    .line 245
    .end local v6           #parsedArgs:Lcom/android/internal/os/ZygoteConnection$Arguments;
    .end local v9           #rlimits:[[I
    .restart local v5       #parsedArgs:Lcom/android/internal/os/ZygoteConnection$Arguments;
    :goto_1
    if-nez v7, :cond_4

    .line 247
    :try_start_3
    invoke-static {v10}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 248
    const/4 v10, 0x0

    .line 249
    invoke-direct {p0, v5, v2, v1, v4}, Lcom/android/internal/os/ZygoteConnection;->handleChildProc(Lcom/android/internal/os/ZygoteConnection$Arguments;[Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/PrintStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 253
    const/4 v11, 0x1

    .line 261
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 262
    invoke-static {v10}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    goto/16 :goto_0

    .line 233
    :catch_1
    move-exception v3

    .line 234
    .restart local v3       #ex:Ljava/io/IOException;
    :goto_2
    const-string v11, "Exception creating pipe"

    invoke-static {v4, v11, v3}, Lcom/android/internal/os/ZygoteConnection;->logAndPrintError(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 235
    .end local v3           #ex:Ljava/io/IOException;
    :catch_2
    move-exception v3

    .line 236
    .local v3, ex:Llibcore/io/ErrnoException;
    :goto_3
    const-string v11, "Exception creating pipe"

    invoke-static {v4, v11, v3}, Lcom/android/internal/os/ZygoteConnection;->logAndPrintError(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 237
    .end local v3           #ex:Llibcore/io/ErrnoException;
    :catch_3
    move-exception v3

    .line 238
    .local v3, ex:Ljava/lang/IllegalArgumentException;
    :goto_4
    const-string v11, "Invalid zygote arguments"

    invoke-static {v4, v11, v3}, Lcom/android/internal/os/ZygoteConnection;->logAndPrintError(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 239
    .end local v3           #ex:Ljava/lang/IllegalArgumentException;
    :catch_4
    move-exception v3

    .line 240
    .local v3, ex:Lcom/android/internal/os/ZygoteSecurityException;
    :goto_5
    const-string v11, "Zygote security policy prevents request: "

    invoke-static {v4, v11, v3}, Lcom/android/internal/os/ZygoteConnection;->logAndPrintError(Ljava/io/PrintStream;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 256
    .end local v3           #ex:Lcom/android/internal/os/ZygoteSecurityException;
    :cond_4
    :try_start_4
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 257
    const/4 v1, 0x0

    .line 258
    invoke-direct {p0, v7, v2, v10, v5}, Lcom/android/internal/os/ZygoteConnection;->handleParentProc(I[Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Lcom/android/internal/os/ZygoteConnection$Arguments;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v11

    .line 261
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 262
    invoke-static {v10}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    goto/16 :goto_0

    .line 261
    :catchall_0
    move-exception v11

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 262
    invoke-static {v10}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    throw v11

    .line 239
    .end local v5           #parsedArgs:Lcom/android/internal/os/ZygoteConnection$Arguments;
    .restart local v6       #parsedArgs:Lcom/android/internal/os/ZygoteConnection$Arguments;
    :catch_5
    move-exception v3

    move-object v5, v6

    .end local v6           #parsedArgs:Lcom/android/internal/os/ZygoteConnection$Arguments;
    .restart local v5       #parsedArgs:Lcom/android/internal/os/ZygoteConnection$Arguments;
    goto :goto_5

    .line 237
    .end local v5           #parsedArgs:Lcom/android/internal/os/ZygoteConnection$Arguments;
    .restart local v6       #parsedArgs:Lcom/android/internal/os/ZygoteConnection$Arguments;
    :catch_6
    move-exception v3

    move-object v5, v6

    .end local v6           #parsedArgs:Lcom/android/internal/os/ZygoteConnection$Arguments;
    .restart local v5       #parsedArgs:Lcom/android/internal/os/ZygoteConnection$Arguments;
    goto :goto_4

    .line 235
    .end local v5           #parsedArgs:Lcom/android/internal/os/ZygoteConnection$Arguments;
    .restart local v6       #parsedArgs:Lcom/android/internal/os/ZygoteConnection$Arguments;
    :catch_7
    move-exception v3

    move-object v5, v6

    .end local v6           #parsedArgs:Lcom/android/internal/os/ZygoteConnection$Arguments;
    .restart local v5       #parsedArgs:Lcom/android/internal/os/ZygoteConnection$Arguments;
    goto :goto_3

    .line 233
    .end local v5           #parsedArgs:Lcom/android/internal/os/ZygoteConnection$Arguments;
    .restart local v6       #parsedArgs:Lcom/android/internal/os/ZygoteConnection$Arguments;
    :catch_8
    move-exception v3

    move-object v5, v6

    .end local v6           #parsedArgs:Lcom/android/internal/os/ZygoteConnection$Arguments;
    .restart local v5       #parsedArgs:Lcom/android/internal/os/ZygoteConnection$Arguments;
    goto :goto_2
.end method
