.class public Lcom/android/internal/policy/impl/keyguard/UnReadEventView;
.super Landroid/widget/LinearLayout;
.source "UnReadEventView.java"


# static fields
.field private static final CLEAR_NEW_EVENT_VIEW_INTENT:Ljava/lang/String; = "android.intent.action.KEYGUARD_CLEAR_UREAD_TIPS"

.field private static final DEBUG:Z = true

.field private static final MISSED_CALL_SETTING:Ljava/lang/String; = "com_android_contacts_mtk_unread"

.field private static final TAG:Ljava/lang/String; = "UnReadEventView"

.field private static final UNRAD_EMAIL_SETTING:Ljava/lang/String; = "com_android_email_mtk_unread"

.field private static final UNREAD_MMS_SETTING:Ljava/lang/String; = "com_android_mms_mtk_unread"


# instance fields
.field private mClearUnReadTipRceiver:Landroid/content/BroadcastReceiver;

.field private mNewEventViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;",
            ">;"
        }
    .end annotation
.end field

.field private mQueryBaseTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/UnReadEventView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/impl/keyguard/UnReadEventView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v6, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v5, Lcom/android/internal/policy/impl/keyguard/UnReadEventView$1;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/keyguard/UnReadEventView$1;-><init>(Lcom/android/internal/policy/impl/keyguard/UnReadEventView;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/UnReadEventView;->mClearUnReadTipRceiver:Landroid/content/BroadcastReceiver;

    sget-object v5, Lcom/mediatek/internal/R$styleable;->UnReadEventView:[I

    invoke-virtual {p1, p2, v5, p3, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .local v1, a:Landroid/content/res/TypedArray;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    .local v0, N:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_3

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .local v2, attr:I
    packed-switch v2, :pswitch_data_0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :pswitch_0
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .local v4, outValue:Landroid/util/TypedValue;
    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget v5, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/keyguard/UnReadEventView;->initUnReadViews(I)V

    :cond_1
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/UnReadEventView;->mNewEventViews:Ljava/util/ArrayList;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/UnReadEventView;->mNewEventViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-gtz v5, :cond_0

    :cond_2
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Must specify at least one target drawable"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .end local v2           #attr:I
    .end local v4           #outValue:Landroid/util/TypedValue;
    :cond_3
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/keyguard/UnReadEventView;->setMotionEventSplittingEnabled(Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/UnReadEventView;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/UnReadEventView;->mNewEventViews:Ljava/util/ArrayList;

    return-object v0
.end method

.method private initUnReadViews(I)V
    .locals 12
    .parameter "resourceId"

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/UnReadEventView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .local v8, res:Landroid/content/res/Resources;
    invoke-virtual {v8, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, array:Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    .local v1, count:I
    if-gtz v1, :cond_0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    :goto_0
    return-void

    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .local v3, drawables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/drawable/Drawable;>;"
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/UnReadEventView;->getContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "layout_inflater"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    .local v5, layouterInfalter:Landroid/view/LayoutInflater;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v1}, Ljava/util/ArrayList;-><init>(I)V

    .local v7, newEventViwsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;>;"
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v1, :cond_2

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v9

    .local v9, value:Landroid/util/TypedValue;
    if-eqz v9, :cond_1

    iget v10, v9, Landroid/util/TypedValue;->resourceId:I

    if-lez v10, :cond_1

    const v10, 0x207000d

    const/4 v11, 0x0

    invoke-virtual {v5, v10, p0, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .local v2, drawableView:Landroid/view/ViewGroup;
    const v10, 0x20e0023

    invoke-virtual {v2, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;

    .local v6, newEventView:Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;
    invoke-virtual {v6, v2}, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->setTopParent(Landroid/view/ViewGroup;)V

    iget v10, v9, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v6, v10}, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->init(I)V

    const/4 v10, 0x4

    invoke-virtual {v6, v10}, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->setViewVisibility(I)V

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/keyguard/UnReadEventView;->addView(Landroid/view/View;)V

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v2           #drawableView:Landroid/view/ViewGroup;
    .end local v6           #newEventView:Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v9           #value:Landroid/util/TypedValue;
    :cond_2
    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/UnReadEventView;->mNewEventViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0
.end method

.method private registerNewEventObserver(Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;)V
    .locals 8
    .parameter "newEventView"

    .prologue
    invoke-virtual {p1}, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->getResourceId()I

    move-result v2

    .local v2, resourceId:I
    const-string v3, "TAG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mQueryBaseTimeWhenRegisterNewEvevtObserver="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/android/internal/policy/impl/keyguard/UnReadEventView;->mQueryBaseTime:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch v2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/MmsUnReadObserver;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iget-wide v4, p0, Lcom/android/internal/policy/impl/keyguard/UnReadEventView;->mQueryBaseTime:J

    invoke-direct {v1, v3, p1, v4, v5}, Lcom/android/internal/policy/impl/keyguard/MmsUnReadObserver;-><init>(Landroid/os/Handler;Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;J)V

    .local v1, obMms:Lcom/android/internal/policy/impl/keyguard/MmsUnReadObserver;
    sget-object v3, Lcom/android/internal/policy/impl/keyguard/MmsUnReadObserver;->MMS_URI:Landroid/net/Uri;

    invoke-virtual {p1, v3, v1}, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->registerForQueryObserver(Landroid/net/Uri;Lcom/android/internal/policy/impl/keyguard/UnReadObserver;)V

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/MmsUnReadObserver;->refreshUnReadNumber()V

    goto :goto_0

    .end local v1           #obMms:Lcom/android/internal/policy/impl/keyguard/MmsUnReadObserver;
    :pswitch_1
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/MissCallUnReadObserver;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iget-wide v4, p0, Lcom/android/internal/policy/impl/keyguard/UnReadEventView;->mQueryBaseTime:J

    invoke-direct {v0, v3, p1, v4, v5}, Lcom/android/internal/policy/impl/keyguard/MissCallUnReadObserver;-><init>(Landroid/os/Handler;Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;J)V

    .local v0, obMissCall:Lcom/android/internal/policy/impl/keyguard/MissCallUnReadObserver;
    sget-object v3, Lcom/android/internal/policy/impl/keyguard/MissCallUnReadObserver;->MISS_CALL_URI:Landroid/net/Uri;

    invoke-virtual {p1, v3, v0}, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->registerForQueryObserver(Landroid/net/Uri;Lcom/android/internal/policy/impl/keyguard/UnReadObserver;)V

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/MissCallUnReadObserver;->refreshUnReadNumber()V

    goto :goto_0

    .end local v0           #obMissCall:Lcom/android/internal/policy/impl/keyguard/MissCallUnReadObserver;
    :pswitch_2
    sget-object v3, Lcom/android/internal/policy/impl/keyguard/EmailUnReadObserver;->EMAIL_CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Lcom/android/internal/policy/impl/keyguard/EmailUnReadObserver;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    iget-wide v6, p0, Lcom/android/internal/policy/impl/keyguard/UnReadEventView;->mQueryBaseTime:J

    invoke-direct {v4, v5, p1, v6, v7}, Lcom/android/internal/policy/impl/keyguard/EmailUnReadObserver;-><init>(Landroid/os/Handler;Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;J)V

    invoke-virtual {p1, v3, v4}, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->registerForQueryObserver(Landroid/net/Uri;Lcom/android/internal/policy/impl/keyguard/UnReadObserver;)V

    goto :goto_0

    :pswitch_3
    sget-object v3, Lcom/android/internal/policy/impl/keyguard/CalendarUnReadObserver;->CALENDAR_URL:Landroid/net/Uri;

    new-instance v4, Lcom/android/internal/policy/impl/keyguard/CalendarUnReadObserver;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    iget-wide v6, p0, Lcom/android/internal/policy/impl/keyguard/UnReadEventView;->mQueryBaseTime:J

    invoke-direct {v4, v5, p1, v6, v7}, Lcom/android/internal/policy/impl/keyguard/CalendarUnReadObserver;-><init>(Landroid/os/Handler;Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;J)V

    invoke-virtual {p1, v3, v4}, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->registerForQueryObserver(Landroid/net/Uri;Lcom/android/internal/policy/impl/keyguard/UnReadObserver;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x202006f
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getNewEventViewList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/UnReadEventView;->mNewEventViews:Ljava/util/ArrayList;

    return-object v0
.end method

.method public onAttachedToWindow()V
    .locals 5

    .prologue
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/UnReadEventView;->mNewEventViews:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/UnReadEventView;->mNewEventViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/UnReadEventView;->mNewEventViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_2

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/UnReadEventView;->mNewEventViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;

    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/keyguard/UnReadEventView;->registerNewEventObserver(Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .local v1, filter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.KEYGUARD_CLEAR_UREAD_TIPS"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/UnReadEventView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/UnReadEventView;->mClearUnReadTipRceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 4

    .prologue
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/UnReadEventView;->mNewEventViews:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/UnReadEventView;->mNewEventViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/UnReadEventView;->mNewEventViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/UnReadEventView;->mNewEventViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;->unRegisterNewEventObserver()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/UnReadEventView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/UnReadEventView;->mClearUnReadTipRceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    return-void
.end method

.method public updateQueryBaseTimeAndRefreshUnReadNumber(J)V
    .locals 4
    .parameter "qbt"

    .prologue
    iput-wide p1, p0, Lcom/android/internal/policy/impl/keyguard/UnReadEventView;->mQueryBaseTime:J

    const-string v0, "TAG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mQueryBaseTimeReceived="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/internal/policy/impl/keyguard/UnReadEventView;->mQueryBaseTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
