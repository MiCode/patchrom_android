.class public Landroid/mtp/MtpServer;
.super Ljava/lang/Object;
.source "MtpServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String; = "MtpServer"


# instance fields
.field private mNativeContext:I

.field private mServerEndup:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/mtp/MtpDatabase;Z)V
    .locals 3
    .parameter "database"
    .parameter "usePtp"

    .prologue
    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Landroid/mtp/MtpServer;->mServerEndup:Z

    const-string v0, "MtpServer"

    const-string v1, "MtpServer constructor: native_setup!!"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Landroid/mtp/MtpServer;->mServerEndup:Z

    invoke-direct {p0, p1, p2}, Landroid/mtp/MtpServer;->native_setup(Landroid/mtp/MtpDatabase;Z)V

    return-void
.end method

.method private final native native_add_storage(Landroid/mtp/MtpStorage;)V
.end method

.method private final native native_cleanup()V
.end method

.method private final native native_end_session()V
.end method

.method private final native native_remove_storage(I)V
.end method

.method private final native native_run()V
.end method

.method private final native native_send_object_added(I)V
.end method

.method private final native native_send_object_infoChanged(I)V
.end method

.method private final native native_send_object_removed(I)V
.end method

.method private final native native_send_storage_infoChanged(I)V
.end method

.method private final native native_setup(Landroid/mtp/MtpDatabase;Z)V
.end method

.method private final native native_update_storage(Landroid/mtp/MtpStorage;)V
.end method


# virtual methods
.method public addStorage(Landroid/mtp/MtpStorage;)V
    .locals 0
    .parameter "storage"

    .prologue
    invoke-direct {p0, p1}, Landroid/mtp/MtpServer;->native_add_storage(Landroid/mtp/MtpStorage;)V

    return-void
.end method

.method public endSession()V
    .locals 2

    .prologue
    const-string v0, "MtpServer"

    const-string v1, "MtpServer endSession!!"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/mtp/MtpServer;->native_end_session()V

    return-void
.end method

.method public getStatus()Z
    .locals 2

    .prologue
    const-string v0, "MtpServer"

    const-string v1, "MtpServer getStatus!!"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Landroid/mtp/MtpServer;->mServerEndup:Z

    return v0
.end method

.method public removeStorage(Landroid/mtp/MtpStorage;)V
    .locals 1
    .parameter "storage"

    .prologue
    invoke-virtual {p1}, Landroid/mtp/MtpStorage;->getStorageId()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/mtp/MtpServer;->native_remove_storage(I)V

    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    const-string v0, "MtpServer"

    const-string v1, "MtpServer run!!"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/mtp/MtpServer;->mServerEndup:Z

    invoke-direct {p0}, Landroid/mtp/MtpServer;->native_run()V

    invoke-direct {p0}, Landroid/mtp/MtpServer;->native_cleanup()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/mtp/MtpServer;->mServerEndup:Z

    const-string v0, "MtpServer"

    const-string v1, "MtpServer run-end!!"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public sendObjectAdded(I)V
    .locals 0
    .parameter "handle"

    .prologue
    invoke-direct {p0, p1}, Landroid/mtp/MtpServer;->native_send_object_added(I)V

    return-void
.end method

.method public sendObjectInfoChanged(I)V
    .locals 0
    .parameter "handle"

    .prologue
    invoke-direct {p0, p1}, Landroid/mtp/MtpServer;->native_send_object_infoChanged(I)V

    return-void
.end method

.method public sendObjectRemoved(I)V
    .locals 0
    .parameter "handle"

    .prologue
    invoke-direct {p0, p1}, Landroid/mtp/MtpServer;->native_send_object_removed(I)V

    return-void
.end method

.method public sendStorageInfoChanged(Landroid/mtp/MtpStorage;)V
    .locals 1
    .parameter "storage"

    .prologue
    invoke-virtual {p1}, Landroid/mtp/MtpStorage;->getStorageId()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/mtp/MtpServer;->native_send_storage_infoChanged(I)V

    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    const-string v1, "MtpServer"

    const-string v2, "MtpServer start!!"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/mtp/MtpServer;->mServerEndup:Z

    new-instance v0, Ljava/lang/Thread;

    const-string v1, "MtpServer"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .local v0, thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public updateStorage(Landroid/mtp/MtpStorage;)V
    .locals 0
    .parameter "storage"

    .prologue
    invoke-direct {p0, p1}, Landroid/mtp/MtpServer;->native_update_storage(Landroid/mtp/MtpStorage;)V

    return-void
.end method
