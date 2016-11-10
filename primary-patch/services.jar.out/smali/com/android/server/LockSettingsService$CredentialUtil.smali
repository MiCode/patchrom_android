.class interface abstract Lcom/android/server/LockSettingsService$CredentialUtil;
.super Ljava/lang/Object;
.source "LockSettingsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LockSettingsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "CredentialUtil"
.end annotation


# virtual methods
.method public abstract adjustForKeystore(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract setCredential(Ljava/lang/String;Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract toHash(Ljava/lang/String;I)[B
.end method
