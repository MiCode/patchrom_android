.class public Landroid/os/NullVibrator;
.super Landroid/os/Vibrator;
.source "NullVibrator.java"


# static fields
.field private static final sInstance:Landroid/os/NullVibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Landroid/os/NullVibrator;

    invoke-direct {v0}, Landroid/os/NullVibrator;-><init>()V

    sput-object v0, Landroid/os/NullVibrator;->sInstance:Landroid/os/NullVibrator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/os/Vibrator;-><init>()V

    return-void
.end method

.method public static getInstance()Landroid/os/NullVibrator;
    .locals 1

    .prologue
    sget-object v0, Landroid/os/NullVibrator;->sInstance:Landroid/os/NullVibrator;

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    return-void
.end method

.method public hasVibrator()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public vibrate(J)V
    .locals 0
    .parameter "milliseconds"

    .prologue
    return-void
.end method

.method public vibrate([JI)V
    .locals 1
    .parameter "pattern"
    .parameter "repeat"

    .prologue
    array-length v0, p1

    if-lt p2, v0, :cond_0

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_0
    return-void
.end method
