.class public final Landroid/media/MediaDrm$KeyRequest;
.super Ljava/lang/Object;
.source "MediaDrm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaDrm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "KeyRequest"
.end annotation


# static fields
.field public static final REQUEST_TYPE_INITIAL:I = 0x0

.field public static final REQUEST_TYPE_RELEASE:I = 0x2

.field public static final REQUEST_TYPE_RENEWAL:I = 0x1


# instance fields
.field private mData:[B

.field private mDefaultUrl:Ljava/lang/String;

.field private mRequestType:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/media/MediaDrm$KeyRequest;->mData:[B

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "KeyRequest is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/media/MediaDrm$KeyRequest;->mData:[B

    return-object v0
.end method

.method public getDefaultUrl()Ljava/lang/String;
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/media/MediaDrm$KeyRequest;->mDefaultUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "KeyRequest is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/media/MediaDrm$KeyRequest;->mDefaultUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestType()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/media/MediaDrm$KeyRequest;->mRequestType:I

    return v0
.end method
