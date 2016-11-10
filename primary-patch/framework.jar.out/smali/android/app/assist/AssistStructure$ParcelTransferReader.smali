.class final Landroid/app/assist/AssistStructure$ParcelTransferReader;
.super Ljava/lang/Object;
.source "AssistStructure.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/assist/AssistStructure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ParcelTransferReader"
.end annotation


# instance fields
.field private final mChannel:Landroid/os/IBinder;

.field private mCurParcel:Landroid/os/Parcel;

.field mNumReadViews:I

.field mNumReadWindows:I

.field mStringReader:Landroid/os/PooledStringReader;

.field final mTmpMatrix:[F

.field private mTransferToken:Landroid/os/IBinder;

.field final synthetic this$0:Landroid/app/assist/AssistStructure;


# direct methods
.method constructor <init>(Landroid/app/assist/AssistStructure;Landroid/os/IBinder;)V
    .locals 1
    .param p2, "channel"    # Landroid/os/IBinder;

    .prologue
    iput-object p1, p0, Landroid/app/assist/AssistStructure$ParcelTransferReader;->this$0:Landroid/app/assist/AssistStructure;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mTmpMatrix:[F

    iput-object p2, p0, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mChannel:Landroid/os/IBinder;

    return-void
.end method

.method private fetchData()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .local v0, "data":Landroid/os/Parcel;
    const-string v2, "android.app.AssistStructure"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mTransferToken:Landroid/os/IBinder;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v2, p0, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mCurParcel:Landroid/os/Parcel;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mCurParcel:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    iput-object v2, p0, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mCurParcel:Landroid/os/Parcel;

    :try_start_0
    iget-object v2, p0, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mChannel:Landroid/os/IBinder;

    const/4 v3, 0x2

    iget-object v4, p0, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mCurParcel:Landroid/os/Parcel;

    const/4 v5, 0x0

    invoke-interface {v2, v3, v0, v4, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    iput v6, p0, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mNumReadViews:I

    iput v6, p0, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mNumReadWindows:I

    return-void

    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "AssistStructure"

    const-string v3, "Failure reading AssistStructure data"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failure reading AssistStructure data: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method go()V
    .locals 4

    .prologue
    invoke-direct {p0}, Landroid/app/assist/AssistStructure$ParcelTransferReader;->fetchData()V

    iget-object v2, p0, Landroid/app/assist/AssistStructure$ParcelTransferReader;->this$0:Landroid/app/assist/AssistStructure;

    iget-object v3, p0, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mCurParcel:Landroid/os/Parcel;

    invoke-static {v3}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v3

    iput-object v3, v2, Landroid/app/assist/AssistStructure;->mActivityComponent:Landroid/content/ComponentName;

    iget-object v2, p0, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mCurParcel:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, "N":I
    if-lez v0, :cond_0

    new-instance v2, Landroid/os/PooledStringReader;

    iget-object v3, p0, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mCurParcel:Landroid/os/Parcel;

    invoke-direct {v2, v3}, Landroid/os/PooledStringReader;-><init>(Landroid/os/Parcel;)V

    iput-object v2, p0, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mStringReader:Landroid/os/PooledStringReader;

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroid/app/assist/AssistStructure$ParcelTransferReader;->this$0:Landroid/app/assist/AssistStructure;

    iget-object v2, v2, Landroid/app/assist/AssistStructure;->mWindowNodes:Ljava/util/ArrayList;

    new-instance v3, Landroid/app/assist/AssistStructure$WindowNode;

    invoke-direct {v3, p0}, Landroid/app/assist/AssistStructure$WindowNode;-><init>(Landroid/app/assist/AssistStructure$ParcelTransferReader;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method readParcel(II)Landroid/os/Parcel;
    .locals 4
    .param p1, "validateToken"    # I
    .param p2, "level"    # I

    .prologue
    iget-object v1, p0, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mCurParcel:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, "token":I
    if-eqz v0, :cond_1

    if-eq v0, p1, :cond_0

    new-instance v1, Landroid/os/BadParcelableException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", expected token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mCurParcel:Landroid/os/Parcel;

    :goto_0
    return-object v1

    :cond_1
    iget-object v1, p0, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mCurParcel:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, p0, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mTransferToken:Landroid/os/IBinder;

    iget-object v1, p0, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mTransferToken:Landroid/os/IBinder;

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Reached end of partial data without transfer token"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-direct {p0}, Landroid/app/assist/AssistStructure$ParcelTransferReader;->fetchData()V

    new-instance v1, Landroid/os/PooledStringReader;

    iget-object v2, p0, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mCurParcel:Landroid/os/Parcel;

    invoke-direct {v1, v2}, Landroid/os/PooledStringReader;-><init>(Landroid/os/Parcel;)V

    iput-object v1, p0, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mStringReader:Landroid/os/PooledStringReader;

    iget-object v1, p0, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mCurParcel:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    iget-object v1, p0, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mCurParcel:Landroid/os/Parcel;

    goto :goto_0
.end method
