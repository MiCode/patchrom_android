.class public Lcom/android/internal/telephony/gsm/PBMemStorage;
.super Ljava/lang/Object;
.source "PBMemStorage.java"


# static fields
.field public static final INT_NOT_SET:I = -0x1

.field public static final STRING_NOT_SET:Ljava/lang/String; = ""


# instance fields
.field private mStorage:Ljava/lang/String;

.field private mTotal:I

.field private mUsed:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/PBMemStorage;->mStorage:Ljava/lang/String;

    iput v1, p0, Lcom/android/internal/telephony/gsm/PBMemStorage;->mUsed:I

    iput v1, p0, Lcom/android/internal/telephony/gsm/PBMemStorage;->mTotal:I

    return-void
.end method

.method public static createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/gsm/PBMemStorage;
    .locals 2
    .parameter "source"

    .prologue
    new-instance v0, Lcom/android/internal/telephony/gsm/PBMemStorage;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/PBMemStorage;-><init>()V

    .local v0, p:Lcom/android/internal/telephony/gsm/PBMemStorage;
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/gsm/PBMemStorage;->mStorage:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/gsm/PBMemStorage;->mUsed:I

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/gsm/PBMemStorage;->mTotal:I

    return-object v0
.end method


# virtual methods
.method public getStorage()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/PBMemStorage;->mStorage:Ljava/lang/String;

    return-object v0
.end method

.method public getTotal()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/gsm/PBMemStorage;->mTotal:I

    return v0
.end method

.method public getUsed()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/gsm/PBMemStorage;->mUsed:I

    return v0
.end method

.method public setStorage(Ljava/lang/String;)V
    .locals 0
    .parameter "sStorage"

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/PBMemStorage;->mStorage:Ljava/lang/String;

    return-void
.end method

.method public setTotal(I)V
    .locals 0
    .parameter "iTotal"

    .prologue
    iput p1, p0, Lcom/android/internal/telephony/gsm/PBMemStorage;->mTotal:I

    return-void
.end method

.method public setUsed(I)V
    .locals 0
    .parameter "iUsed"

    .prologue
    iput p1, p0, Lcom/android/internal/telephony/gsm/PBMemStorage;->mUsed:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";storage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/PBMemStorage;->mStorage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",used: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/PBMemStorage;->mUsed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",total:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/PBMemStorage;->mTotal:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
