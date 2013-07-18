.class public Lcom/android/internal/policy/impl/keyguard/MissCallUnReadObserver;
.super Lcom/android/internal/policy/impl/keyguard/UnReadObserver;
.source "MissCallUnReadObserver.java"


# static fields
.field private static final MISS_CALL_PROJECTION:[Ljava/lang/String; = null

.field private static final MISS_CALL_SELECTION:Ljava/lang/String; = "(new = ? AND type = ? AND is_read = ? AND date >= "

.field private static final MISS_CALL_SELECTION_ARGS:[Ljava/lang/String; = null

.field public static final MISS_CALL_URI:Landroid/net/Uri; = null

.field private static final TAG:Ljava/lang/String; = "MissCallUnReadObserver"


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x3

    const/4 v2, 0x0

    sget-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/MissCallUnReadObserver;->MISS_CALL_URI:Landroid/net/Uri;

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "new"

    aput-object v1, v0, v4

    const-string v1, "date"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/MissCallUnReadObserver;->MISS_CALL_PROJECTION:[Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "1"

    aput-object v1, v0, v2

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/MissCallUnReadObserver;->MISS_CALL_SELECTION_ARGS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;J)V
    .locals 0
    .parameter "handler"
    .parameter "newEventView"
    .parameter "createTime"

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/policy/impl/keyguard/UnReadObserver;-><init>(Landroid/os/Handler;Lcom/android/internal/policy/impl/keyguard/LockScreenNewEventView;J)V

    return-void
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/MissCallUnReadObserver;->MISS_CALL_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()[Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/MissCallUnReadObserver;->MISS_CALL_SELECTION_ARGS:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public refreshUnReadNumber()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    new-instance v0, Lcom/android/internal/policy/impl/keyguard/MissCallUnReadObserver$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/MissCallUnReadObserver$1;-><init>(Lcom/android/internal/policy/impl/keyguard/MissCallUnReadObserver;)V

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Void;

    const/4 v2, 0x0

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/MissCallUnReadObserver$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
