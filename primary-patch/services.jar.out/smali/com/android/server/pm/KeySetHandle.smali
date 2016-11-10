.class Lcom/android/server/pm/KeySetHandle;
.super Landroid/os/Binder;
.source "KeySetHandle.java"


# instance fields
.field private final mId:J

.field private mRefCount:I


# direct methods
.method protected constructor <init>(J)V
    .locals 1
    .param p1, "id"    # J

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    iput-wide p1, p0, Lcom/android/server/pm/KeySetHandle;->mId:J

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/pm/KeySetHandle;->mRefCount:I

    return-void
.end method

.method protected constructor <init>(JI)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "refCount"    # I

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    iput-wide p1, p0, Lcom/android/server/pm/KeySetHandle;->mId:J

    iput p3, p0, Lcom/android/server/pm/KeySetHandle;->mRefCount:I

    return-void
.end method


# virtual methods
.method protected decrRefCountLPw()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/server/pm/KeySetHandle;->mRefCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/pm/KeySetHandle;->mRefCount:I

    iget v0, p0, Lcom/android/server/pm/KeySetHandle;->mRefCount:I

    return v0
.end method

.method public getId()J
    .locals 2

    .prologue
    iget-wide v0, p0, Lcom/android/server/pm/KeySetHandle;->mId:J

    return-wide v0
.end method

.method protected getRefCountLPr()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/server/pm/KeySetHandle;->mRefCount:I

    return v0
.end method

.method protected incrRefCountLPw()V
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/server/pm/KeySetHandle;->mRefCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/pm/KeySetHandle;->mRefCount:I

    return-void
.end method

.method protected setRefCountLPw(I)V
    .locals 0
    .param p1, "newCount"    # I

    .prologue
    iput p1, p0, Lcom/android/server/pm/KeySetHandle;->mRefCount:I

    return-void
.end method
