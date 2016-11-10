.class public Landroid/view/accessibility/AccessibilityRecord;
.super Ljava/lang/Object;
.source "AccessibilityRecord.java"


# static fields
.field private static final GET_SOURCE_PREFETCH_FLAGS:I = 0x7

.field private static final MAX_POOL_SIZE:I = 0xa

.field private static final PROPERTY_CHECKED:I = 0x1

.field private static final PROPERTY_ENABLED:I = 0x2

.field private static final PROPERTY_FULL_SCREEN:I = 0x80

.field private static final PROPERTY_IMPORTANT_FOR_ACCESSIBILITY:I = 0x200

.field private static final PROPERTY_PASSWORD:I = 0x4

.field private static final PROPERTY_SCROLLABLE:I = 0x100

.field private static final UNDEFINED:I = -0x1

.field private static sPool:Landroid/view/accessibility/AccessibilityRecord;

.field private static final sPoolLock:Ljava/lang/Object;

.field private static sPoolSize:I


# instance fields
.field mAddedCount:I

.field mBeforeText:Ljava/lang/CharSequence;

.field mBooleanProperties:I

.field mClassName:Ljava/lang/CharSequence;

.field mConnectionId:I

.field mContentDescription:Ljava/lang/CharSequence;

.field mCurrentItemIndex:I

.field mFromIndex:I

.field private mIsInPool:Z

.field mItemCount:I

.field mMaxScrollX:I

.field mMaxScrollY:I

.field private mNext:Landroid/view/accessibility/AccessibilityRecord;

.field mParcelableData:Landroid/os/Parcelable;

.field mRemovedCount:I

.field mScrollX:I

.field mScrollY:I

.field mSealed:Z

.field mSourceNode:Landroid/view/accessibility/AccessibilityNodeInfo;

.field mSourceWindowId:I

.field final mText:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field mToIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/accessibility/AccessibilityRecord;->sPoolLock:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mBooleanProperties:I

    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mCurrentItemIndex:I

    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mItemCount:I

    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mFromIndex:I

    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mToIndex:I

    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollX:I

    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollY:I

    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollX:I

    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollY:I

    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mAddedCount:I

    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mRemovedCount:I

    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceWindowId:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mText:Ljava/util/List;

    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mConnectionId:I

    return-void
.end method

.method private clearSourceNode()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceNode:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceNode:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceNode:Landroid/view/accessibility/AccessibilityNodeInfo;

    :cond_0
    return-void
.end method

.method private getBooleanProperty(I)Z
    .locals 1
    .param p1, "property"    # I

    .prologue
    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mBooleanProperties:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static obtain()Landroid/view/accessibility/AccessibilityRecord;
    .locals 3

    .prologue
    sget-object v2, Landroid/view/accessibility/AccessibilityRecord;->sPoolLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-object v1, Landroid/view/accessibility/AccessibilityRecord;->sPool:Landroid/view/accessibility/AccessibilityRecord;

    if-eqz v1, :cond_0

    sget-object v0, Landroid/view/accessibility/AccessibilityRecord;->sPool:Landroid/view/accessibility/AccessibilityRecord;

    .local v0, "record":Landroid/view/accessibility/AccessibilityRecord;
    sget-object v1, Landroid/view/accessibility/AccessibilityRecord;->sPool:Landroid/view/accessibility/AccessibilityRecord;

    iget-object v1, v1, Landroid/view/accessibility/AccessibilityRecord;->mNext:Landroid/view/accessibility/AccessibilityRecord;

    sput-object v1, Landroid/view/accessibility/AccessibilityRecord;->sPool:Landroid/view/accessibility/AccessibilityRecord;

    sget v1, Landroid/view/accessibility/AccessibilityRecord;->sPoolSize:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Landroid/view/accessibility/AccessibilityRecord;->sPoolSize:I

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/view/accessibility/AccessibilityRecord;->mNext:Landroid/view/accessibility/AccessibilityRecord;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/view/accessibility/AccessibilityRecord;->mIsInPool:Z

    monitor-exit v2

    .end local v0    # "record":Landroid/view/accessibility/AccessibilityRecord;
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/view/accessibility/AccessibilityRecord;

    invoke-direct {v0}, Landroid/view/accessibility/AccessibilityRecord;-><init>()V

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static obtain(Landroid/view/accessibility/AccessibilityRecord;)Landroid/view/accessibility/AccessibilityRecord;
    .locals 1
    .param p0, "record"    # Landroid/view/accessibility/AccessibilityRecord;

    .prologue
    invoke-static {}, Landroid/view/accessibility/AccessibilityRecord;->obtain()Landroid/view/accessibility/AccessibilityRecord;

    move-result-object v0

    .local v0, "clone":Landroid/view/accessibility/AccessibilityRecord;
    invoke-virtual {v0, p0}, Landroid/view/accessibility/AccessibilityRecord;->init(Landroid/view/accessibility/AccessibilityRecord;)V

    return-object v0
.end method

.method private setBooleanProperty(IZ)V
    .locals 2
    .param p1, "property"    # I
    .param p2, "value"    # Z

    .prologue
    if-eqz p2, :cond_0

    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mBooleanProperties:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mBooleanProperties:I

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mBooleanProperties:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mBooleanProperties:I

    goto :goto_0
.end method


# virtual methods
.method clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v1, -0x1

    iput-boolean v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mSealed:Z

    iput v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mBooleanProperties:I

    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mCurrentItemIndex:I

    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mItemCount:I

    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mFromIndex:I

    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mToIndex:I

    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollX:I

    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollY:I

    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollX:I

    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollY:I

    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mAddedCount:I

    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mRemovedCount:I

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mClassName:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mContentDescription:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mBeforeText:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mParcelableData:Landroid/os/Parcelable;

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mText:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityRecord;->clearSourceNode()V

    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceWindowId:I

    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mConnectionId:I

    return-void
.end method

.method enforceNotSealed()V
    .locals 2

    .prologue
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->isSealed()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot perform this action on a sealed instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method enforceSealed()V
    .locals 2

    .prologue
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->isSealed()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot perform this action on a not sealed instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public getAddedCount()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mAddedCount:I

    return v0
.end method

.method public getBeforeText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mBeforeText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getClassName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mClassName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mContentDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getCurrentItemIndex()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mCurrentItemIndex:I

    return v0
.end method

.method public getFromIndex()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mFromIndex:I

    return v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mItemCount:I

    return v0
.end method

.method public getMaxScrollX()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollX:I

    return v0
.end method

.method public getMaxScrollY()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollY:I

    return v0
.end method

.method public getParcelableData()Landroid/os/Parcelable;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mParcelableData:Landroid/os/Parcelable;

    return-object v0
.end method

.method public getRemovedCount()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mRemovedCount:I

    return v0
.end method

.method public getScrollX()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollX:I

    return v0
.end method

.method public getScrollY()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollY:I

    return v0
.end method

.method public getSource()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceSealed()V

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceNode:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceNode:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSourceNodeId()J
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceNode:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceNode:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getText()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mText:Ljava/util/List;

    return-object v0
.end method

.method public getToIndex()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mToIndex:I

    return v0
.end method

.method public getWindowId()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceWindowId:I

    return v0
.end method

.method init(Landroid/view/accessibility/AccessibilityRecord;)V
    .locals 2
    .param p1, "record"    # Landroid/view/accessibility/AccessibilityRecord;

    .prologue
    iget-boolean v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mSealed:Z

    iput-boolean v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mSealed:Z

    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mBooleanProperties:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mBooleanProperties:I

    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mCurrentItemIndex:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mCurrentItemIndex:I

    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mItemCount:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mItemCount:I

    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mFromIndex:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mFromIndex:I

    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mToIndex:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mToIndex:I

    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mScrollX:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollX:I

    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mScrollY:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollY:I

    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollX:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollX:I

    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollY:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollY:I

    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mAddedCount:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mAddedCount:I

    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mRemovedCount:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mRemovedCount:I

    iget-object v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mClassName:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mClassName:Ljava/lang/CharSequence;

    iget-object v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mContentDescription:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mContentDescription:Ljava/lang/CharSequence;

    iget-object v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mBeforeText:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mBeforeText:Ljava/lang/CharSequence;

    iget-object v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mParcelableData:Landroid/os/Parcelable;

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mParcelableData:Landroid/os/Parcelable;

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mText:Ljava/util/List;

    iget-object v1, p1, Landroid/view/accessibility/AccessibilityRecord;->mText:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mSourceWindowId:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceWindowId:I

    iget-object v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mSourceNode:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mSourceNode:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceNode:Landroid/view/accessibility/AccessibilityNodeInfo;

    :cond_0
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mConnectionId:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mConnectionId:I

    return-void
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityRecord;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityRecord;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isFullScreen()Z
    .locals 1

    .prologue
    const/16 v0, 0x80

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityRecord;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isImportantForAccessibility()Z
    .locals 1

    .prologue
    const/16 v0, 0x200

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityRecord;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isPassword()Z
    .locals 1

    .prologue
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityRecord;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isScrollable()Z
    .locals 1

    .prologue
    const/16 v0, 0x100

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityRecord;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method isSealed()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mSealed:Z

    return v0
.end method

.method public recycle()V
    .locals 3

    .prologue
    iget-boolean v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mIsInPool:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Record already recycled!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->clear()V

    sget-object v1, Landroid/view/accessibility/AccessibilityRecord;->sPoolLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget v0, Landroid/view/accessibility/AccessibilityRecord;->sPoolSize:I

    const/16 v2, 0xa

    if-gt v0, v2, :cond_1

    sget-object v0, Landroid/view/accessibility/AccessibilityRecord;->sPool:Landroid/view/accessibility/AccessibilityRecord;

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mNext:Landroid/view/accessibility/AccessibilityRecord;

    sput-object p0, Landroid/view/accessibility/AccessibilityRecord;->sPool:Landroid/view/accessibility/AccessibilityRecord;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mIsInPool:Z

    sget v0, Landroid/view/accessibility/AccessibilityRecord;->sPoolSize:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/view/accessibility/AccessibilityRecord;->sPoolSize:I

    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setAddedCount(I)V
    .locals 0
    .param p1, "addedCount"    # I

    .prologue
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    iput p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mAddedCount:I

    return-void
.end method

.method public setBeforeText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "beforeText"    # Ljava/lang/CharSequence;

    .prologue
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    iput-object p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mBeforeText:Ljava/lang/CharSequence;

    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "isChecked"    # Z

    .prologue
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setBooleanProperty(IZ)V

    return-void
.end method

.method public setClassName(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "className"    # Ljava/lang/CharSequence;

    .prologue
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    iput-object p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mClassName:Ljava/lang/CharSequence;

    return-void
.end method

.method public setConnectionId(I)V
    .locals 2
    .param p1, "connectionId"    # I

    .prologue
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    iput p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mConnectionId:I

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceNode:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceNode:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mConnectionId:I

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setConnectionId(I)V

    :cond_0
    return-void
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "contentDescription"    # Ljava/lang/CharSequence;

    .prologue
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    iput-object p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mContentDescription:Ljava/lang/CharSequence;

    return-void
.end method

.method public setCurrentItemIndex(I)V
    .locals 0
    .param p1, "currentItemIndex"    # I

    .prologue
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    iput p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mCurrentItemIndex:I

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "isEnabled"    # Z

    .prologue
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setBooleanProperty(IZ)V

    return-void
.end method

.method public setFromIndex(I)V
    .locals 0
    .param p1, "fromIndex"    # I

    .prologue
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    iput p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mFromIndex:I

    return-void
.end method

.method public setFullScreen(Z)V
    .locals 1
    .param p1, "isFullScreen"    # Z

    .prologue
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    const/16 v0, 0x80

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setBooleanProperty(IZ)V

    return-void
.end method

.method public setItemCount(I)V
    .locals 0
    .param p1, "itemCount"    # I

    .prologue
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    iput p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mItemCount:I

    return-void
.end method

.method public setMaxScrollX(I)V
    .locals 0
    .param p1, "maxScrollX"    # I

    .prologue
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    iput p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollX:I

    return-void
.end method

.method public setMaxScrollY(I)V
    .locals 0
    .param p1, "maxScrollY"    # I

    .prologue
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    iput p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollY:I

    return-void
.end method

.method public setParcelableData(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "parcelableData"    # Landroid/os/Parcelable;

    .prologue
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    iput-object p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mParcelableData:Landroid/os/Parcelable;

    return-void
.end method

.method public setPassword(Z)V
    .locals 1
    .param p1, "isPassword"    # Z

    .prologue
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setBooleanProperty(IZ)V

    return-void
.end method

.method public setRemovedCount(I)V
    .locals 0
    .param p1, "removedCount"    # I

    .prologue
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    iput p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mRemovedCount:I

    return-void
.end method

.method public setScrollX(I)V
    .locals 0
    .param p1, "scrollX"    # I

    .prologue
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    iput p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollX:I

    return-void
.end method

.method public setScrollY(I)V
    .locals 0
    .param p1, "scrollY"    # I

    .prologue
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    iput p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollY:I

    return-void
.end method

.method public setScrollable(Z)V
    .locals 1
    .param p1, "scrollable"    # Z

    .prologue
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    const/16 v0, 0x100

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setBooleanProperty(IZ)V

    return-void
.end method

.method public setSealed(Z)V
    .locals 1
    .param p1, "sealed"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mSealed:Z

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceNode:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceNode:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSealed(Z)V

    :cond_0
    return-void
.end method

.method public setSource(Landroid/view/View;)V
    .locals 1
    .param p1, "source"    # Landroid/view/View;

    .prologue
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setSource(Landroid/view/View;I)V

    return-void
.end method

.method public setSource(Landroid/view/View;I)V
    .locals 3
    .param p1, "root"    # Landroid/view/View;
    .param p2, "virtualDescendantId"    # I

    .prologue
    const/4 v2, -0x1

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    const/4 v0, 0x1

    .local v0, "important":Z
    iput v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceWindowId:I

    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityRecord;->clearSourceNode()V

    if-eqz p1, :cond_2

    if-eq p2, v2, :cond_0

    const v2, 0x7fffffff

    if-ne p2, v2, :cond_3

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->isImportantForAccessibility()Z

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    iput-object v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceNode:Landroid/view/accessibility/AccessibilityNodeInfo;

    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityWindowId()I

    move-result v2

    iput v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceWindowId:I

    :cond_2
    const/16 v2, 0x200

    invoke-direct {p0, v2, v0}, Landroid/view/accessibility/AccessibilityRecord;->setBooleanProperty(IZ)V

    return-void

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v1

    .local v1, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-eqz v1, :cond_1

    invoke-virtual {v1, p2}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    iput-object v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceNode:Landroid/view/accessibility/AccessibilityNodeInfo;

    goto :goto_0
.end method

.method public setToIndex(I)V
    .locals 0
    .param p1, "toIndex"    # I

    .prologue
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    iput p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mToIndex:I

    return-void
.end method

.method public setWindowId(I)V
    .locals 0
    .param p1, "windowId"    # I

    .prologue
    iput p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceWindowId:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .local v0, "builder":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " [ ClassName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mClassName:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "; Text: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mText:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "; ContentDescription: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "; ItemCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mItemCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "; CurrentItemIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mCurrentItemIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "; IsEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {p0, v2}, Landroid/view/accessibility/AccessibilityRecord;->getBooleanProperty(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "; IsPassword: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x4

    invoke-direct {p0, v2}, Landroid/view/accessibility/AccessibilityRecord;->getBooleanProperty(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "; IsChecked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Landroid/view/accessibility/AccessibilityRecord;->getBooleanProperty(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "; IsFullScreen: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x80

    invoke-direct {p0, v2}, Landroid/view/accessibility/AccessibilityRecord;->getBooleanProperty(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "; Scrollable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x100

    invoke-direct {p0, v2}, Landroid/view/accessibility/AccessibilityRecord;->getBooleanProperty(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "; BeforeText: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mBeforeText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "; FromIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mFromIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "; ToIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mToIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "; ScrollX: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "; ScrollY: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "; MaxScrollX: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "; MaxScrollY: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "; AddedCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mAddedCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "; RemovedCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mRemovedCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "; ParcelableData: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mParcelableData:Landroid/os/Parcelable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
