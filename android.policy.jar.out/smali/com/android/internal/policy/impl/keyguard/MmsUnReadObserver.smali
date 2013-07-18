.class public Lcom/android/internal/policy/impl/keyguard/MmsUnReadObserver;
.super Lcom/android/internal/policy/impl/keyguard/UnReadObserver;
.source "MmsUnReadObserver.java"


# static fields
.field private static final MMS_QUERY_URI:Landroid/net/Uri; = null

.field private static final MMS_STATUS_PROJECTION:[Ljava/lang/String; = null

.field public static final MMS_URI:Landroid/net/Uri; = null

.field private static final NEW_INCOMING_MM_CONSTRAINT:Ljava/lang/String; = "(read = 0  AND (m_type <> 134 AND m_type <> 136) AND date >= "

.field private static final NEW_INCOMING_SM_CONSTRAINT:Ljava/lang/String; = "(type = 1 AND read = 0 AND date >= "

.field private static final SMS_QUERY_URI:Landroid/net/Uri; = null

.field private static final SMS_STATUS_PROJECTION:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "MmsUnReadObserver"


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    sget-object v0, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/MmsUnReadObserver;->MMS_URI:Landroid/net/Uri;

    const-string v0, "content://mms/inbox"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/MmsUnReadObserver;->MMS_QUERY_URI:Landroid/net/Uri;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "date"

    aput-object v1, v0, v2

    const-string v1, "_id"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/MmsUnReadObserver;->MMS_STATUS_PROJECTION:[Ljava/lang/String;

    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/MmsUnReadObserver;->SMS_QUERY_URI:Landroid/net/Uri;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "date"

    aput-object v1, v0, v2

    const-string v1, "_id"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/MmsUnReadObserver;->SMS_STATUS_PROJECTION:[Ljava/lang/String;

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

.method static synthetic access$000()Landroid/net/Uri;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/MmsUnReadObserver;->MMS_QUERY_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$100()[Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/MmsUnReadObserver;->MMS_STATUS_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()Landroid/net/Uri;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/MmsUnReadObserver;->SMS_QUERY_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$300()[Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/MmsUnReadObserver;->SMS_STATUS_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public refreshUnReadNumber()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    new-instance v0, Lcom/android/internal/policy/impl/keyguard/MmsUnReadObserver$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/MmsUnReadObserver$1;-><init>(Lcom/android/internal/policy/impl/keyguard/MmsUnReadObserver;)V

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Void;

    const/4 v2, 0x0

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/MmsUnReadObserver$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
