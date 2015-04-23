.class public Landroid/telecom/AuthenticatorService;
.super Landroid/app/Service;
.source "AuthenticatorService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/AuthenticatorService$Authenticator;
    }
.end annotation


# static fields
.field private static mAuthenticator:Landroid/telecom/AuthenticatorService$Authenticator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    sget-object v0, Landroid/telecom/AuthenticatorService;->mAuthenticator:Landroid/telecom/AuthenticatorService$Authenticator;

    invoke-virtual {v0}, Landroid/telecom/AuthenticatorService$Authenticator;->getIBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    new-instance v0, Landroid/telecom/AuthenticatorService$Authenticator;

    invoke-direct {v0, p0, p0}, Landroid/telecom/AuthenticatorService$Authenticator;-><init>(Landroid/telecom/AuthenticatorService;Landroid/content/Context;)V

    sput-object v0, Landroid/telecom/AuthenticatorService;->mAuthenticator:Landroid/telecom/AuthenticatorService$Authenticator;

    return-void
.end method
