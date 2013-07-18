.class public final Landroid/app/ANRAppManager;
.super Ljava/lang/Object;
.source "ANRAppManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ANRAppManager$MessageLogger;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "ANRAppManager"

.field private static mEnableLooperLog:Z

.field private static sInstance:Landroid/app/ANRAppManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput-object v0, Landroid/app/ANRAppManager;->sInstance:Landroid/app/ANRAppManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    sget-boolean v0, Landroid/app/ANRAppManager;->mEnableLooperLog:Z

    return v0
.end method

.method public static dumpMessageHistory()V
    .locals 0

    .prologue
    invoke-static {}, Landroid/app/ANRAppManager$MessageLogger;->dump()V

    return-void
.end method

.method public static getDefault()Landroid/app/ANRAppManager;
    .locals 1

    .prologue
    sget-object v0, Landroid/app/ANRAppManager;->sInstance:Landroid/app/ANRAppManager;

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/ANRAppManager;

    invoke-direct {v0}, Landroid/app/ANRAppManager;-><init>()V

    sput-object v0, Landroid/app/ANRAppManager;->sInstance:Landroid/app/ANRAppManager;

    :cond_0
    sget-object v0, Landroid/app/ANRAppManager;->sInstance:Landroid/app/ANRAppManager;

    return-object v0
.end method


# virtual methods
.method public newMessageLogger(Z)Landroid/app/ANRAppManager$MessageLogger;
    .locals 1
    .parameter "mValue"

    .prologue
    sput-boolean p1, Landroid/app/ANRAppManager;->mEnableLooperLog:Z

    new-instance v0, Landroid/app/ANRAppManager$MessageLogger;

    invoke-direct {v0}, Landroid/app/ANRAppManager$MessageLogger;-><init>()V

    return-object v0
.end method
