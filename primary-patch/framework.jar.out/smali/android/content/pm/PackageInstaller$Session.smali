.class public Landroid/content/pm/PackageInstaller$Session;
.super Ljava/lang/Object;
.source "PackageInstaller.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageInstaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Session"
.end annotation


# instance fields
.field private mSession:Landroid/content/pm/IPackageInstallerSession;


# direct methods
.method public constructor <init>(Landroid/content/pm/IPackageInstallerSession;)V
    .locals 0
    .param p1, "session"    # Landroid/content/pm/IPackageInstallerSession;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    return-void
.end method


# virtual methods
.method public abandon()V
    .locals 2

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    invoke-interface {v1}, Landroid/content/pm/IPackageInstallerSession;->abandon()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public addProgress(F)V
    .locals 2
    .param p1, "progress"    # F

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    invoke-interface {v1, p1}, Landroid/content/pm/IPackageInstallerSession;->addClientProgress(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public close()V
    .locals 2

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    invoke-interface {v1}, Landroid/content/pm/IPackageInstallerSession;->close()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public commit(Landroid/content/IntentSender;)V
    .locals 2
    .param p1, "statusReceiver"    # Landroid/content/IntentSender;

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    invoke-interface {v1, p1}, Landroid/content/pm/IPackageInstallerSession;->commit(Landroid/content/IntentSender;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public fsync(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    instance-of v0, p1, Landroid/os/FileBridge$FileBridgeOutputStream;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/os/FileBridge$FileBridgeOutputStream;

    .end local p1    # "out":Ljava/io/OutputStream;
    invoke-virtual {p1}, Landroid/os/FileBridge$FileBridgeOutputStream;->fsync()V

    return-void

    .restart local p1    # "out":Ljava/io/OutputStream;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unrecognized stream"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNames()[Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    invoke-interface {v1}, Landroid/content/pm/IPackageInstallerSession;->getNames()[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {v0}, Landroid/util/ExceptionUtils;->maybeUnwrapIOException(Ljava/lang/RuntimeException;)V

    throw v0

    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public openRead(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    :try_start_0
    iget-object v2, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    invoke-interface {v2, p1}, Landroid/content/pm/IPackageInstallerSession;->openRead(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .local v1, "pfd":Landroid/os/ParcelFileDescriptor;
    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v2, v1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v2

    .end local v1    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {v0}, Landroid/util/ExceptionUtils;->maybeUnwrapIOException(Ljava/lang/RuntimeException;)V

    throw v0

    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public openWrite(Ljava/lang/String;JJ)Ljava/io/OutputStream;
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "offsetBytes"    # J
    .param p4, "lengthBytes"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageInstallerSession;->openWrite(Ljava/lang/String;JJ)Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    .local v6, "clientSocket":Landroid/os/ParcelFileDescriptor;
    new-instance v0, Landroid/os/FileBridge$FileBridgeOutputStream;

    invoke-direct {v0, v6}, Landroid/os/FileBridge$FileBridgeOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v0

    .end local v6    # "clientSocket":Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v7

    .local v7, "e":Ljava/lang/RuntimeException;
    invoke-static {v7}, Landroid/util/ExceptionUtils;->maybeUnwrapIOException(Ljava/lang/RuntimeException;)V

    throw v7

    .end local v7    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v7

    .local v7, "e":Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public setProgress(F)V
    .locals 0
    .param p1, "progress"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageInstaller$Session;->setStagingProgress(F)V

    return-void
.end method

.method public setStagingProgress(F)V
    .locals 2
    .param p1, "progress"    # F

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    invoke-interface {v1, p1}, Landroid/content/pm/IPackageInstallerSession;->setClientProgress(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
