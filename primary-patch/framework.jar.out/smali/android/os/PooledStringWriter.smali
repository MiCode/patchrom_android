.class public Landroid/os/PooledStringWriter;
.super Ljava/lang/Object;
.source "PooledStringWriter.java"


# instance fields
.field private mNext:I

.field private final mOut:Landroid/os/Parcel;

.field private final mPool:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mStart:I


# direct methods
.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/PooledStringWriter;->mOut:Landroid/os/Parcel;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/os/PooledStringWriter;->mPool:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    iput v0, p0, Landroid/os/PooledStringWriter;->mStart:I

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 3

    .prologue
    iget-object v1, p0, Landroid/os/PooledStringWriter;->mOut:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .local v0, "pos":I
    iget-object v1, p0, Landroid/os/PooledStringWriter;->mOut:Landroid/os/Parcel;

    iget v2, p0, Landroid/os/PooledStringWriter;->mStart:I

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    iget-object v1, p0, Landroid/os/PooledStringWriter;->mOut:Landroid/os/Parcel;

    iget v2, p0, Landroid/os/PooledStringWriter;->mNext:I

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Landroid/os/PooledStringWriter;->mOut:Landroid/os/Parcel;

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method

.method public getStringCount()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/os/PooledStringWriter;->mPool:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public writeString(Ljava/lang/String;)V
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    iget-object v1, p0, Landroid/os/PooledStringWriter;->mPool:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .local v0, "cur":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/os/PooledStringWriter;->mOut:Landroid/os/Parcel;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Landroid/os/PooledStringWriter;->mPool:Ljava/util/HashMap;

    iget v2, p0, Landroid/os/PooledStringWriter;->mNext:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Landroid/os/PooledStringWriter;->mOut:Landroid/os/Parcel;

    iget v2, p0, Landroid/os/PooledStringWriter;->mNext:I

    add-int/lit8 v2, v2, 0x1

    neg-int v2, v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Landroid/os/PooledStringWriter;->mOut:Landroid/os/Parcel;

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v1, p0, Landroid/os/PooledStringWriter;->mNext:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/os/PooledStringWriter;->mNext:I

    goto :goto_0
.end method
