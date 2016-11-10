.class Lcom/android/server/notification/RankingHelper$Record;
.super Ljava/lang/Object;
.source "RankingHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/RankingHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Record"
.end annotation


# static fields
.field static UNKNOWN_UID:I


# instance fields
.field peekable:Z

.field pkg:Ljava/lang/String;

.field priority:I

.field uid:I

.field visibility:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/16 v0, -0x2710

    sput v0, Lcom/android/server/notification/RankingHelper$Record;->UNKNOWN_UID:I

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/android/server/notification/RankingHelper$Record;->UNKNOWN_UID:I

    iput v0, p0, Lcom/android/server/notification/RankingHelper$Record;->uid:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/notification/RankingHelper$Record;->priority:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/notification/RankingHelper$Record;->peekable:Z

    const/16 v0, -0x3e8

    iput v0, p0, Lcom/android/server/notification/RankingHelper$Record;->visibility:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/notification/RankingHelper$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/notification/RankingHelper$1;

    .prologue
    invoke-direct {p0}, Lcom/android/server/notification/RankingHelper$Record;-><init>()V

    return-void
.end method
