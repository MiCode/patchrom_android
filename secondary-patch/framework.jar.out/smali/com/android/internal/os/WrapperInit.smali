.class public Lcom/android/internal/os/WrapperInit;
.super Ljava/lang/Object;
.source "WrapperInit.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AndroidRuntime"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static execApplication(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .locals 5
    .param p0, "invokeWith"    # Ljava/lang/String;
    .param p1, "niceName"    # Ljava/lang/String;
    .param p2, "targetSdkVersion"    # I
    .param p3, "instructionSet"    # Ljava/lang/String;
    .param p4, "pipeFd"    # Ljava/io/FileDescriptor;
    .param p5, "args"    # [Ljava/lang/String;

    .prologue
    const/16 v4, 0x20

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .local v1, "command":Ljava/lang/StringBuilder;
    invoke-static {p3}, Ldalvik/system/VMRuntime;->is64BitInstructionSet(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "/system/bin/app_process64"

    .local v0, "appProcess":Ljava/lang/String;
    :goto_0
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " /system/bin --application"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string v2, " \'--nice-name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v2, " com.android.internal.os.WrapperInit "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_2

    invoke-virtual {p4}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v2

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {v1, p5}, Lcom/android/internal/os/Zygote;->appendQuotedShellArgs(Ljava/lang/StringBuilder;[Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/os/Zygote;->execShell(Ljava/lang/String;)V

    return-void

    .end local v0    # "appProcess":Ljava/lang/String;
    :cond_1
    const-string v0, "/system/bin/app_process32"

    .restart local v0    # "appProcess":Ljava/lang/String;
    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static execStandalone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .param p0, "invokeWith"    # Ljava/lang/String;
    .param p1, "classPath"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .local v0, "command":Ljava/lang/StringBuilder;
    const-string v1, " /system/bin/dalvikvm -classpath \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, p3}, Lcom/android/internal/os/Zygote;->appendQuotedShellArgs(Ljava/lang/StringBuilder;[Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/os/Zygote;->execShell(Ljava/lang/String;)V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 10
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    :try_start_0
    aget-object v7, p0, v7

    const/16 v8, 0xa

    invoke-static {v7, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .local v3, "fdNum":I
    const/4 v7, 0x1

    aget-object v7, p0, v7

    const/16 v8, 0xa

    invoke-static {v7, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller; {:try_start_0 .. :try_end_0} :catch_1

    move-result v6

    .local v6, "targetSdkVersion":I
    if-eqz v3, :cond_0

    :try_start_1
    new-instance v2, Ljava/io/FileDescriptor;

    invoke-direct {v2}, Ljava/io/FileDescriptor;-><init>()V

    .local v2, "fd":Ljava/io/FileDescriptor;
    invoke-virtual {v2, v3}, Ljava/io/FileDescriptor;->setInt$(I)V

    new-instance v4, Ljava/io/DataOutputStream;

    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v4, v7}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .local v4, "os":Ljava/io/DataOutputStream;
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller; {:try_start_1 .. :try_end_1} :catch_1

    .end local v2    # "fd":Ljava/io/FileDescriptor;
    .end local v4    # "os":Ljava/io/DataOutputStream;
    :cond_0
    :goto_0
    :try_start_2
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->preload()V

    array-length v7, p0

    add-int/lit8 v7, v7, -0x2

    new-array v5, v7, [Ljava/lang/String;

    .local v5, "runtimeArgs":[Ljava/lang/String;
    const/4 v7, 0x2

    const/4 v8, 0x0

    array-length v9, v5

    invoke-static {p0, v7, v5, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v6, v5}, Lcom/android/internal/os/RuntimeInit;->wrapperInit(I[Ljava/lang/String;)V

    .end local v3    # "fdNum":I
    .end local v5    # "runtimeArgs":[Ljava/lang/String;
    .end local v6    # "targetSdkVersion":I
    :goto_1
    return-void

    .restart local v3    # "fdNum":I
    .restart local v6    # "targetSdkVersion":I
    :catch_0
    move-exception v1

    .local v1, "ex":Ljava/io/IOException;
    const-string v7, "AndroidRuntime"

    const-string v8, "Could not write pid of wrapped process to Zygote pipe."

    invoke-static {v7, v8, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .end local v1    # "ex":Ljava/io/IOException;
    .end local v3    # "fdNum":I
    .end local v6    # "targetSdkVersion":I
    :catch_1
    move-exception v0

    .local v0, "caller":Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;
    invoke-virtual {v0}, Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;->run()V

    goto :goto_1
.end method
