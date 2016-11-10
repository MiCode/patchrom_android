.class public Lcom/android/server/policy/BurnInProtectionHelper;
.super Ljava/lang/Object;
.source "BurnInProtectionHelper.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# static fields
.field private static final ACTION_BURN_IN_PROTECTION:Ljava/lang/String; = "android.internal.policy.action.BURN_IN_PROTECTION"

.field private static final BURNIN_PROTECTION_MINIMAL_INTERVAL_MS:J

.field private static final BURNIN_PROTECTION_WAKEUP_INTERVAL_MS:J

.field public static final BURN_IN_MAX_RADIUS_DEFAULT:I = -0x1

.field private static final BURN_IN_SHIFT_STEP:I = 0x2

.field private static final CENTERING_ANIMATION_DURATION_MS:J = 0x64L

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "BurnInProtection"


# instance fields
.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private mBurnInProtectionActive:Z

.field private final mBurnInProtectionIntent:Landroid/app/PendingIntent;

.field private mBurnInProtectionReceiver:Landroid/content/BroadcastReceiver;

.field private final mBurnInRadiusMaxSquared:I

.field private final mCenteringAnimator:Landroid/animation/ValueAnimator;

.field private final mDisplay:Landroid/view/Display;

.field private final mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field private mFirstUpdate:Z

.field private mLastBurnInXOffset:I

.field private mLastBurnInYOffset:I

.field private final mMaxHorizontalBurnInOffset:I

.field private final mMaxVerticalBurnInOffset:I

.field private final mMinHorizontalBurnInOffset:I

.field private final mMinVerticalBurnInOffset:I

.field private mXOffsetDirection:I

.field private mYOffsetDirection:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/policy/BurnInProtectionHelper;->BURNIN_PROTECTION_WAKEUP_INTERVAL_MS:J

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/policy/BurnInProtectionHelper;->BURNIN_PROTECTION_MINIMAL_INTERVAL_MS:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIIII)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "minHorizontalOffset"    # I
    .param p3, "maxHorizontalOffset"    # I
    .param p4, "minVerticalOffset"    # I
    .param p5, "maxVerticalOffset"    # I
    .param p6, "maxOffsetRadius"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, -0x1

    const/4 v5, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v5, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mLastBurnInXOffset:I

    iput v2, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mXOffsetDirection:I

    iput v5, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mLastBurnInYOffset:I

    iput v2, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mYOffsetDirection:I

    new-instance v2, Lcom/android/server/policy/BurnInProtectionHelper$1;

    invoke-direct {v2, p0}, Lcom/android/server/policy/BurnInProtectionHelper$1;-><init>(Lcom/android/server/policy/BurnInProtectionHelper;)V

    iput-object v2, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mBurnInProtectionReceiver:Landroid/content/BroadcastReceiver;

    iput p2, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mMinHorizontalBurnInOffset:I

    iput p3, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mMaxHorizontalBurnInOffset:I

    iput p4, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mMinVerticalBurnInOffset:I

    iput p5, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mMaxVerticalBurnInOffset:I

    if-eq p6, v3, :cond_0

    mul-int v2, p6, p6

    iput v2, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mBurnInRadiusMaxSquared:I

    :goto_0
    const-class v2, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManagerInternal;

    iput-object v2, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    const-string v2, "alarm"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    iput-object v2, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v2, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mBurnInProtectionReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.internal.policy.action.BURN_IN_PROTECTION"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.internal.policy.action.BURN_IN_PROTECTION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/high16 v2, 0x8000000

    invoke-static {p1, v5, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mBurnInProtectionIntent:Landroid/app/PendingIntent;

    const-string v2, "display"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .local v0, "displayManager":Landroid/hardware/display/DisplayManager;
    invoke-virtual {v0, v5}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mDisplay:Landroid/view/Display;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mCenteringAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mCenteringAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mCenteringAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v2, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mCenteringAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, p0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v2, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mCenteringAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    .end local v0    # "displayManager":Landroid/hardware/display/DisplayManager;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    iput v3, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mBurnInRadiusMaxSquared:I

    goto :goto_0

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/server/policy/BurnInProtectionHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/BurnInProtectionHelper;

    .prologue
    invoke-direct {p0}, Lcom/android/server/policy/BurnInProtectionHelper;->updateBurnInProtection()V

    return-void
.end method

.method private adjustOffsets()V
    .locals 5

    .prologue
    :cond_0
    iget v2, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mXOffsetDirection:I

    mul-int/lit8 v0, v2, 0x2

    .local v0, "xChange":I
    iget v2, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mLastBurnInXOffset:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mLastBurnInXOffset:I

    iget v2, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mLastBurnInXOffset:I

    iget v3, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mMaxHorizontalBurnInOffset:I

    if-gt v2, v3, :cond_1

    iget v2, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mLastBurnInXOffset:I

    iget v3, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mMinHorizontalBurnInOffset:I

    if-ge v2, v3, :cond_3

    :cond_1
    iget v2, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mLastBurnInXOffset:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mLastBurnInXOffset:I

    iget v2, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mXOffsetDirection:I

    mul-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mXOffsetDirection:I

    iget v2, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mYOffsetDirection:I

    mul-int/lit8 v1, v2, 0x2

    .local v1, "yChange":I
    iget v2, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mLastBurnInYOffset:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mLastBurnInYOffset:I

    iget v2, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mLastBurnInYOffset:I

    iget v3, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mMaxVerticalBurnInOffset:I

    if-gt v2, v3, :cond_2

    iget v2, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mLastBurnInYOffset:I

    iget v3, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mMinVerticalBurnInOffset:I

    if-ge v2, v3, :cond_3

    :cond_2
    iget v2, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mLastBurnInYOffset:I

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mLastBurnInYOffset:I

    iget v2, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mYOffsetDirection:I

    mul-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mYOffsetDirection:I

    .end local v1    # "yChange":I
    :cond_3
    iget v2, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mBurnInRadiusMaxSquared:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_4

    iget v2, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mLastBurnInXOffset:I

    iget v3, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mLastBurnInXOffset:I

    mul-int/2addr v2, v3

    iget v3, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mLastBurnInYOffset:I

    iget v4, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mLastBurnInYOffset:I

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mBurnInRadiusMaxSquared:I

    if-gt v2, v3, :cond_0

    :cond_4
    return-void
.end method

.method private updateBurnInProtection()V
    .locals 12

    .prologue
    iget-boolean v8, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mBurnInProtectionActive:Z

    if-eqz v8, :cond_1

    iget-boolean v8, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mFirstUpdate:Z

    if-eqz v8, :cond_0

    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mFirstUpdate:Z

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .local v6, "nowWall":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .local v4, "nowElapsed":J
    sget-wide v8, Lcom/android/server/policy/BurnInProtectionHelper;->BURNIN_PROTECTION_MINIMAL_INTERVAL_MS:J

    add-long v2, v6, v8

    .local v2, "nextWall":J
    sget-wide v8, Lcom/android/server/policy/BurnInProtectionHelper;->BURNIN_PROTECTION_WAKEUP_INTERVAL_MS:J

    rem-long v8, v2, v8

    sub-long v8, v2, v8

    sget-wide v10, Lcom/android/server/policy/BurnInProtectionHelper;->BURNIN_PROTECTION_WAKEUP_INTERVAL_MS:J

    add-long v2, v8, v10

    sub-long v8, v2, v6

    add-long v0, v4, v8

    .local v0, "nextElapsed":J
    iget-object v8, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v9, 0x3

    iget-object v10, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mBurnInProtectionIntent:Landroid/app/PendingIntent;

    invoke-virtual {v8, v9, v0, v1, v10}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .end local v0    # "nextElapsed":J
    .end local v2    # "nextWall":J
    .end local v4    # "nowElapsed":J
    .end local v6    # "nowWall":J
    :goto_1
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/server/policy/BurnInProtectionHelper;->adjustOffsets()V

    iget-object v8, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget-object v9, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mDisplay:Landroid/view/Display;

    invoke-virtual {v9}, Landroid/view/Display;->getDisplayId()I

    move-result v9

    iget v10, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mLastBurnInXOffset:I

    iget v11, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mLastBurnInYOffset:I

    invoke-virtual {v8, v9, v10, v11}, Landroid/hardware/display/DisplayManagerInternal;->setDisplayOffsets(III)V

    goto :goto_0

    :cond_1
    iget-object v8, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v9, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mBurnInProtectionIntent:Landroid/app/PendingIntent;

    invoke-virtual {v8, v9}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    iget-object v8, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mCenteringAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v8}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1
.end method


# virtual methods
.method public cancelBurnInProtection()V
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mBurnInProtectionActive:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mBurnInProtectionActive:Z

    invoke-direct {p0}, Lcom/android/server/policy/BurnInProtectionHelper;->updateBurnInProtection()V

    :cond_0
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "BurnInProtection"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mBurnInProtectionActive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mBurnInProtectionActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mHorizontalBurnInOffsetsBounds=("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mMinHorizontalBurnInOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mMaxHorizontalBurnInOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mVerticalBurnInOffsetsBounds=("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mMinVerticalBurnInOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mMaxVerticalBurnInOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mBurnInRadiusMaxSquared="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mBurnInRadiusMaxSquared:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mLastBurnInOffset=("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mLastBurnInXOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mLastBurnInYOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mOfsetChangeDirections=("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mXOffsetDirection:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mYOffsetDirection:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mCenteringAnimator:Landroid/animation/ValueAnimator;

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mBurnInProtectionActive:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget-object v1, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1, v2, v2}, Landroid/hardware/display/DisplayManagerInternal;->setDisplayOffsets(III)V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5
    .param p1, "valueAnimator"    # Landroid/animation/ValueAnimator;

    .prologue
    iget-boolean v1, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mBurnInProtectionActive:Z

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .local v0, "value":F
    iget-object v1, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget-object v2, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    iget v3, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mLastBurnInXOffset:I

    int-to-float v3, v3

    mul-float/2addr v3, v0

    float-to-int v3, v3

    iget v4, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mLastBurnInYOffset:I

    int-to-float v4, v4

    mul-float/2addr v4, v0

    float-to-int v4, v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/display/DisplayManagerInternal;->setDisplayOffsets(III)V

    .end local v0    # "value":F
    :cond_0
    return-void
.end method

.method public onDisplayAdded(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 2
    .param p1, "displayId"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/policy/BurnInProtectionHelper;->startBurnInProtection()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/policy/BurnInProtectionHelper;->cancelBurnInProtection()V

    goto :goto_0
.end method

.method public onDisplayRemoved(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    return-void
.end method

.method public startBurnInProtection()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mBurnInProtectionActive:Z

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mBurnInProtectionActive:Z

    iput-boolean v1, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mFirstUpdate:Z

    iget-object v0, p0, Lcom/android/server/policy/BurnInProtectionHelper;->mCenteringAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    invoke-direct {p0}, Lcom/android/server/policy/BurnInProtectionHelper;->updateBurnInProtection()V

    :cond_0
    return-void
.end method
