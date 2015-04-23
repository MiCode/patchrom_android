.class public Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.super Ljava/lang/Object;
.source "SubscriptionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/SubscriptionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnSubscriptionsChangedListener"
.end annotation


# instance fields
.field callback:Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener$1;

    invoke-direct {v0, p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener$1;-><init>(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    iput-object v0, p0, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener$2;

    invoke-direct {v0, p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener$2;-><init>(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    iput-object v0, p0, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;->callback:Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    return-void
.end method

.method static synthetic access$000(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .prologue
    iget-object v0, p0, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    const-string v0, "SubscriptionManager"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public onSubscriptionsChanged()V
    .locals 0

    .prologue
    return-void
.end method
