.class final Lcom/android/server/am/ActivityManagerService$Association;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Association"
.end annotation


# instance fields
.field mCount:I

.field mNesting:I

.field final mSourceProcess:Ljava/lang/String;

.field final mSourceUid:I

.field mStartTime:J

.field final mTargetComponent:Landroid/content/ComponentName;

.field final mTargetProcess:Ljava/lang/String;

.field final mTargetUid:I

.field mTime:J


# direct methods
.method constructor <init>(ILjava/lang/String;ILandroid/content/ComponentName;Ljava/lang/String;)V
    .locals 0
    .param p1, "sourceUid"    # I
    .param p2, "sourceProcess"    # Ljava/lang/String;
    .param p3, "targetUid"    # I
    .param p4, "targetComponent"    # Landroid/content/ComponentName;
    .param p5, "targetProcess"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/am/ActivityManagerService$Association;->mSourceUid:I

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$Association;->mSourceProcess:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/am/ActivityManagerService$Association;->mTargetUid:I

    iput-object p4, p0, Lcom/android/server/am/ActivityManagerService$Association;->mTargetComponent:Landroid/content/ComponentName;

    iput-object p5, p0, Lcom/android/server/am/ActivityManagerService$Association;->mTargetProcess:Ljava/lang/String;

    return-void
.end method
