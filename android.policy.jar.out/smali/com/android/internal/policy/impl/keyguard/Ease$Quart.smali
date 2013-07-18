.class Lcom/android/internal/policy/impl/keyguard/Ease$Quart;
.super Ljava/lang/Object;
.source "Ease.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/Ease;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Quart"
.end annotation


# static fields
.field public static final easeIn:Landroid/animation/TimeInterpolator;

.field public static final easeInOut:Landroid/animation/TimeInterpolator;

.field public static final easeOut:Landroid/animation/TimeInterpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/Ease$Quart$1;

    invoke-direct {v0}, Lcom/android/internal/policy/impl/keyguard/Ease$Quart$1;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/Ease$Quart;->easeIn:Landroid/animation/TimeInterpolator;

    new-instance v0, Lcom/android/internal/policy/impl/keyguard/Ease$Quart$2;

    invoke-direct {v0}, Lcom/android/internal/policy/impl/keyguard/Ease$Quart$2;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/Ease$Quart;->easeOut:Landroid/animation/TimeInterpolator;

    new-instance v0, Lcom/android/internal/policy/impl/keyguard/Ease$Quart$3;

    invoke-direct {v0}, Lcom/android/internal/policy/impl/keyguard/Ease$Quart$3;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/Ease$Quart;->easeInOut:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
