.class public Landroid/security/KeyStoreException;
.super Ljava/lang/Exception;
.source "KeyStoreException.java"


# instance fields
.field private final mErrorCode:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "errorCode"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput p1, p0, Landroid/security/KeyStoreException;->mErrorCode:I

    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/security/KeyStoreException;->mErrorCode:I

    return v0
.end method
