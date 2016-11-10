.class final Landroid/app/assist/AssistStructure$ParcelTransferWriter;
.super Landroid/os/Binder;
.source "AssistStructure.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/assist/AssistStructure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ParcelTransferWriter"
.end annotation


# instance fields
.field mCurViewStackEntry:Landroid/app/assist/AssistStructure$ViewStackEntry;

.field mCurViewStackPos:I

.field mCurWindow:I

.field mNumWindows:I

.field mNumWrittenViews:I

.field mNumWrittenWindows:I

.field final mTmpMatrix:[F

.field final mViewStack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/assist/AssistStructure$ViewStackEntry;",
            ">;"
        }
    .end annotation
.end field

.field final mWriteStructure:Z


# direct methods
.method constructor <init>(Landroid/app/assist/AssistStructure;Landroid/os/Parcel;)V
    .locals 1
    .param p1, "as"    # Landroid/app/assist/AssistStructure;
    .param p2, "out"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mViewStack:Ljava/util/ArrayList;

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mTmpMatrix:[F

    invoke-virtual {p1}, Landroid/app/assist/AssistStructure;->waitForReady()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mWriteStructure:Z

    iget-object v0, p1, Landroid/app/assist/AssistStructure;->mActivityComponent:Landroid/content/ComponentName;

    invoke-static {v0, p2}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    iget-object v0, p1, Landroid/app/assist/AssistStructure;->mWindowNodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mNumWindows:I

    iget-boolean v0, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mWriteStructure:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mNumWindows:I

    if-lez v0, :cond_0

    iget v0, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mNumWindows:I

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method


# virtual methods
.method pushViewStackEntry(Landroid/app/assist/AssistStructure$ViewNode;I)V
    .locals 2
    .param p1, "node"    # Landroid/app/assist/AssistStructure$ViewNode;
    .param p2, "pos"    # I

    .prologue
    iget-object v1, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mViewStack:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p2, v1, :cond_0

    new-instance v0, Landroid/app/assist/AssistStructure$ViewStackEntry;

    invoke-direct {v0}, Landroid/app/assist/AssistStructure$ViewStackEntry;-><init>()V

    .local v0, "entry":Landroid/app/assist/AssistStructure$ViewStackEntry;
    iget-object v1, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mViewStack:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    iput-object p1, v0, Landroid/app/assist/AssistStructure$ViewStackEntry;->node:Landroid/app/assist/AssistStructure$ViewNode;

    invoke-virtual {p1}, Landroid/app/assist/AssistStructure$ViewNode;->getChildCount()I

    move-result v1

    iput v1, v0, Landroid/app/assist/AssistStructure$ViewStackEntry;->numChildren:I

    const/4 v1, 0x0

    iput v1, v0, Landroid/app/assist/AssistStructure$ViewStackEntry;->curChild:I

    iput-object v0, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mCurViewStackEntry:Landroid/app/assist/AssistStructure$ViewStackEntry;

    return-void

    .end local v0    # "entry":Landroid/app/assist/AssistStructure$ViewStackEntry;
    :cond_0
    iget-object v1, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mViewStack:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/assist/AssistStructure$ViewStackEntry;

    .restart local v0    # "entry":Landroid/app/assist/AssistStructure$ViewStackEntry;
    goto :goto_0
.end method

.method writeNextEntryToParcel(Landroid/app/assist/AssistStructure;Landroid/os/Parcel;Landroid/os/PooledStringWriter;)Z
    .locals 7
    .param p1, "as"    # Landroid/app/assist/AssistStructure;
    .param p2, "out"    # Landroid/os/Parcel;
    .param p3, "pwriter"    # Landroid/os/PooledStringWriter;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    iget-object v6, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mCurViewStackEntry:Landroid/app/assist/AssistStructure$ViewStackEntry;

    if-eqz v6, :cond_3

    iget-object v4, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mCurViewStackEntry:Landroid/app/assist/AssistStructure$ViewStackEntry;

    iget v4, v4, Landroid/app/assist/AssistStructure$ViewStackEntry;->curChild:I

    iget-object v6, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mCurViewStackEntry:Landroid/app/assist/AssistStructure$ViewStackEntry;

    iget v6, v6, Landroid/app/assist/AssistStructure$ViewStackEntry;->numChildren:I

    if-ge v4, v6, :cond_1

    iget-object v4, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mCurViewStackEntry:Landroid/app/assist/AssistStructure$ViewStackEntry;

    iget-object v4, v4, Landroid/app/assist/AssistStructure$ViewStackEntry;->node:Landroid/app/assist/AssistStructure$ViewNode;

    iget-object v4, v4, Landroid/app/assist/AssistStructure$ViewNode;->mChildren:[Landroid/app/assist/AssistStructure$ViewNode;

    iget-object v6, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mCurViewStackEntry:Landroid/app/assist/AssistStructure$ViewStackEntry;

    iget v6, v6, Landroid/app/assist/AssistStructure$ViewStackEntry;->curChild:I

    aget-object v0, v4, v6

    .local v0, "child":Landroid/app/assist/AssistStructure$ViewNode;
    iget-object v4, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mCurViewStackEntry:Landroid/app/assist/AssistStructure$ViewStackEntry;

    iget v6, v4, Landroid/app/assist/AssistStructure$ViewStackEntry;->curChild:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v4, Landroid/app/assist/AssistStructure$ViewStackEntry;->curChild:I

    invoke-virtual {p0, v0, p2, p3, v5}, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->writeView(Landroid/app/assist/AssistStructure$ViewNode;Landroid/os/Parcel;Landroid/os/PooledStringWriter;I)V

    move v4, v5

    .end local v0    # "child":Landroid/app/assist/AssistStructure$ViewNode;
    :cond_0
    :goto_0
    return v4

    :cond_1
    iget v4, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mCurViewStackPos:I

    add-int/lit8 v1, v4, -0x1

    iput v1, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mCurViewStackPos:I

    .local v1, "pos":I
    if-gez v1, :cond_2

    const/4 v4, 0x0

    iput-object v4, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mCurViewStackEntry:Landroid/app/assist/AssistStructure$ViewStackEntry;

    :goto_1
    move v4, v5

    goto :goto_0

    :cond_2
    iget-object v4, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mViewStack:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/assist/AssistStructure$ViewStackEntry;

    iput-object v4, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mCurViewStackEntry:Landroid/app/assist/AssistStructure$ViewStackEntry;

    iget-object v4, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mCurViewStackEntry:Landroid/app/assist/AssistStructure$ViewStackEntry;

    iget v4, v4, Landroid/app/assist/AssistStructure$ViewStackEntry;->curChild:I

    iget-object v6, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mCurViewStackEntry:Landroid/app/assist/AssistStructure$ViewStackEntry;

    iget v6, v6, Landroid/app/assist/AssistStructure$ViewStackEntry;->numChildren:I

    if-ge v4, v6, :cond_1

    goto :goto_1

    .end local v1    # "pos":I
    :cond_3
    iget v1, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mCurWindow:I

    .restart local v1    # "pos":I
    iget v6, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mNumWindows:I

    if-ge v1, v6, :cond_0

    iget-object v6, p1, Landroid/app/assist/AssistStructure;->mWindowNodes:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/assist/AssistStructure$WindowNode;

    .local v3, "win":Landroid/app/assist/AssistStructure$WindowNode;
    iget v6, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mCurWindow:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mCurWindow:I

    const v6, 0x11111111

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v6, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mTmpMatrix:[F

    invoke-virtual {v3, p2, p3, v6}, Landroid/app/assist/AssistStructure$WindowNode;->writeSelfToParcel(Landroid/os/Parcel;Landroid/os/PooledStringWriter;[F)V

    iget v6, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mNumWrittenWindows:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mNumWrittenWindows:I

    iget-object v2, v3, Landroid/app/assist/AssistStructure$WindowNode;->mRoot:Landroid/app/assist/AssistStructure$ViewNode;

    .local v2, "root":Landroid/app/assist/AssistStructure$ViewNode;
    iput v4, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mCurViewStackPos:I

    invoke-virtual {p0, v2, p2, p3, v4}, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->writeView(Landroid/app/assist/AssistStructure$ViewNode;Landroid/os/Parcel;Landroid/os/PooledStringWriter;I)V

    move v4, v5

    goto :goto_0
.end method

.method writeToParcel(Landroid/app/assist/AssistStructure;Landroid/os/Parcel;)V
    .locals 5
    .param p1, "as"    # Landroid/app/assist/AssistStructure;
    .param p2, "out"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .local v1, "start":I
    iput v2, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mNumWrittenWindows:I

    iput v2, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mNumWrittenViews:I

    invoke-virtual {p0, p1, p2}, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->writeToParcelInner(Landroid/app/assist/AssistStructure;Landroid/os/Parcel;)Z

    move-result v0

    .local v0, "more":Z
    const-string v3, "AssistStructure"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Flattened "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v0, :cond_0

    const-string v2, "partial"

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " assist data: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " bytes, containing "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mNumWrittenWindows:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " windows, "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mNumWrittenViews:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " views"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v2, "final"

    goto :goto_0
.end method

.method writeToParcelInner(Landroid/app/assist/AssistStructure;Landroid/os/Parcel;)Z
    .locals 4
    .param p1, "as"    # Landroid/app/assist/AssistStructure;
    .param p2, "out"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x0

    iget v2, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mNumWindows:I

    if-nez v2, :cond_0

    :goto_0
    return v1

    :cond_0
    new-instance v0, Landroid/os/PooledStringWriter;

    invoke-direct {v0, p2}, Landroid/os/PooledStringWriter;-><init>(Landroid/os/Parcel;)V

    .local v0, "pwriter":Landroid/os/PooledStringWriter;
    :cond_1
    invoke-virtual {p0, p1, p2, v0}, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->writeNextEntryToParcel(Landroid/app/assist/AssistStructure;Landroid/os/Parcel;Landroid/os/PooledStringWriter;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p2}, Landroid/os/Parcel;->dataSize()I

    move-result v2

    const/high16 v3, 0x10000

    if-le v2, v3, :cond_1

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-virtual {v0}, Landroid/os/PooledStringWriter;->finish()V

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/os/PooledStringWriter;->finish()V

    iget-object v2, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mViewStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method writeView(Landroid/app/assist/AssistStructure$ViewNode;Landroid/os/Parcel;Landroid/os/PooledStringWriter;I)V
    .locals 3
    .param p1, "child"    # Landroid/app/assist/AssistStructure$ViewNode;
    .param p2, "out"    # Landroid/os/Parcel;
    .param p3, "pwriter"    # Landroid/os/PooledStringWriter;
    .param p4, "levelAdj"    # I

    .prologue
    const v2, 0x22222222

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mTmpMatrix:[F

    invoke-virtual {p1, p2, p3, v2}, Landroid/app/assist/AssistStructure$ViewNode;->writeSelfToParcel(Landroid/os/Parcel;Landroid/os/PooledStringWriter;[F)I

    move-result v0

    .local v0, "flags":I
    iget v2, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mNumWrittenViews:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mNumWrittenViews:I

    const/high16 v2, 0x100000

    and-int/2addr v2, v0

    if-eqz v2, :cond_0

    iget-object v2, p1, Landroid/app/assist/AssistStructure$ViewNode;->mChildren:[Landroid/app/assist/AssistStructure$ViewNode;

    array-length v2, v2

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget v2, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mCurViewStackPos:I

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->mCurViewStackPos:I

    .local v1, "pos":I
    invoke-virtual {p0, p1, v1}, Landroid/app/assist/AssistStructure$ParcelTransferWriter;->pushViewStackEntry(Landroid/app/assist/AssistStructure$ViewNode;I)V

    .end local v1    # "pos":I
    :cond_0
    return-void
.end method
