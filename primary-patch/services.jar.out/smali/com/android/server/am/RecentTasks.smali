.class Lcom/android/server/am/RecentTasks;
.super Ljava/util/ArrayList;
.source "RecentTasks.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/server/am/TaskRecord;",
        ">;"
    }
.end annotation


# static fields
.field private static final MAX_RECENT_BITMAPS:I = 0x3

.field private static final TAG:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_RECENTS:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_TASKS:Ljava/lang/String; = "ActivityManager"

.field private static sTaskRecordComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private final mTmpRecents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final tmpActivityInfo:Landroid/content/pm/ActivityInfo;

.field private final tmpAppInfo:Landroid/content/pm/ApplicationInfo;

.field private final tmpAvailActCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Landroid/content/pm/ActivityInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final tmpAvailAppCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Lcom/android/server/am/RecentTasks$1;

    invoke-direct {v0}, Lcom/android/server/am/RecentTasks$1;-><init>()V

    sput-object v0, Lcom/android/server/am/RecentTasks;->sTaskRecordComparator:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 1
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/RecentTasks;->tmpAvailActCache:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/RecentTasks;->tmpAvailAppCache:Ljava/util/HashMap;

    new-instance v0, Landroid/content/pm/ActivityInfo;

    invoke-direct {v0}, Landroid/content/pm/ActivityInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/RecentTasks;->tmpActivityInfo:Landroid/content/pm/ActivityInfo;

    new-instance v0, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0}, Landroid/content/pm/ApplicationInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/RecentTasks;->tmpAppInfo:Landroid/content/pm/ApplicationInfo;

    iput-object p1, p0, Lcom/android/server/am/RecentTasks;->mService:Lcom/android/server/am/ActivityManagerService;

    return-void
.end method

.method private final moveAffiliatedTasksToFront(Lcom/android/server/am/TaskRecord;I)Z
    .locals 13
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "taskIndex"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v12, -0x1

    invoke-virtual {p0}, Lcom/android/server/am/RecentTasks;->size()I

    move-result v4

    .local v4, "recentsCount":I
    move-object v6, p1

    .local v6, "top":Lcom/android/server/am/TaskRecord;
    move v7, p2

    .local v7, "topIndex":I
    :goto_0
    iget-object v10, v6, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    if-eqz v10, :cond_0

    if-lez v7, :cond_0

    iget-object v6, v6, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    :cond_0
    iget v10, v6, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    iget v11, p1, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    if-ne v10, v11, :cond_5

    move v5, v8

    .local v5, "sane":Z
    :goto_1
    move v1, v7

    .local v1, "endIndex":I
    move-object v3, v6

    .local v3, "prev":Lcom/android/server/am/TaskRecord;
    :cond_1
    if-ge v1, v4, :cond_3

    invoke-virtual {p0, v1}, Lcom/android/server/am/RecentTasks;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    .local v0, "cur":Lcom/android/server/am/TaskRecord;
    if-ne v0, v6, :cond_6

    iget-object v10, v0, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    if-nez v10, :cond_2

    iget v10, v0, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    if-eq v10, v12, :cond_8

    :cond_2
    const-string v10, "ActivityManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Bad chain @"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ": first task has next affiliate: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    .end local v0    # "cur":Lcom/android/server/am/TaskRecord;
    :cond_3
    :goto_2
    if-eqz v5, :cond_4

    if-ge v1, p2, :cond_4

    const-string v10, "ActivityManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Bad chain @"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ": did not extend to task "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " @"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    :cond_4
    if-eqz v5, :cond_c

    move v2, v7

    .local v2, "i":I
    :goto_3
    if-gt v2, v1, :cond_d

    invoke-virtual {p0, v2}, Lcom/android/server/am/RecentTasks;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    .restart local v0    # "cur":Lcom/android/server/am/TaskRecord;
    sub-int v9, v2, v7

    invoke-virtual {p0, v9, v0}, Lcom/android/server/am/RecentTasks;->add(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .end local v0    # "cur":Lcom/android/server/am/TaskRecord;
    .end local v1    # "endIndex":I
    .end local v2    # "i":I
    .end local v3    # "prev":Lcom/android/server/am/TaskRecord;
    .end local v5    # "sane":Z
    :cond_5
    move v5, v9

    goto :goto_1

    .restart local v0    # "cur":Lcom/android/server/am/TaskRecord;
    .restart local v1    # "endIndex":I
    .restart local v3    # "prev":Lcom/android/server/am/TaskRecord;
    .restart local v5    # "sane":Z
    :cond_6
    iget-object v10, v0, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    if-ne v10, v3, :cond_7

    iget v10, v0, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    iget v11, v3, Lcom/android/server/am/TaskRecord;->taskId:I

    if-eq v10, v11, :cond_8

    :cond_7
    const-string v10, "ActivityManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Bad chain @"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ": middle task "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " @"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " has bad next affiliate "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v0, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " id "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v0, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", expected "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    goto/16 :goto_2

    :cond_8
    iget v10, v0, Lcom/android/server/am/TaskRecord;->mPrevAffiliateTaskId:I

    if-ne v10, v12, :cond_9

    iget-object v10, v0, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    if-eqz v10, :cond_3

    const-string v10, "ActivityManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Bad chain @"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ": last task "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " has previous affiliate "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v0, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    goto/16 :goto_2

    :cond_9
    iget-object v10, v0, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    if-nez v10, :cond_a

    const-string v10, "ActivityManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Bad chain @"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ": task "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " has previous affiliate "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v0, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " but should be id "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v0, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    goto/16 :goto_2

    :cond_a
    iget v10, v0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    iget v11, p1, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    if-eq v10, v11, :cond_b

    const-string v10, "ActivityManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Bad chain @"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ": task "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " has affiliated id "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " but should be "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p1, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    goto/16 :goto_2

    :cond_b
    move-object v3, v0

    add-int/lit8 v1, v1, 0x1

    if-lt v1, v4, :cond_1

    const-string v10, "ActivityManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Bad chain ran off index "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ": last task "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    goto/16 :goto_2

    .end local v0    # "cur":Lcom/android/server/am/TaskRecord;
    :cond_c
    move v8, v9

    :cond_d
    return v8
.end method

.method private processNextAffiliateChainLocked(I)I
    .locals 12
    .param p1, "start"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/am/RecentTasks;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/TaskRecord;

    .local v6, "startTask":Lcom/android/server/am/TaskRecord;
    iget v0, v6, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    .local v0, "affiliateId":I
    iget v9, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v9, v0, :cond_0

    iget-object v9, v6, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    if-nez v9, :cond_0

    iget-object v9, v6, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    if-nez v9, :cond_0

    const/4 v9, 0x1

    iput-boolean v9, v6, Lcom/android/server/am/TaskRecord;->inRecents:Z

    add-int/lit8 v9, p1, 0x1

    :goto_0
    return v9

    :cond_0
    iget-object v9, p0, Lcom/android/server/am/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Lcom/android/server/am/RecentTasks;->size()I

    move-result v9

    add-int/lit8 v2, v9, -0x1

    .local v2, "i":I
    :goto_1
    if-lt v2, p1, :cond_2

    invoke-virtual {p0, v2}, Lcom/android/server/am/RecentTasks;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/TaskRecord;

    .local v7, "task":Lcom/android/server/am/TaskRecord;
    iget v9, v7, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    if-ne v9, v0, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/server/am/RecentTasks;->remove(I)Ljava/lang/Object;

    iget-object v9, p0, Lcom/android/server/am/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .end local v7    # "task":Lcom/android/server/am/TaskRecord;
    :cond_2
    iget-object v9, p0, Lcom/android/server/am/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    sget-object v10, Lcom/android/server/am/RecentTasks;->sTaskRecordComparator:Ljava/util/Comparator;

    invoke-static {v9, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v9, p0, Lcom/android/server/am/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    .local v1, "first":Lcom/android/server/am/TaskRecord;
    const/4 v9, 0x1

    iput-boolean v9, v1, Lcom/android/server/am/TaskRecord;->inRecents:Z

    iget-object v9, v1, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    if-eqz v9, :cond_3

    const-string v9, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Link error 1 first.next="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v1, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Lcom/android/server/am/TaskRecord;->setNextAffiliate(Lcom/android/server/am/TaskRecord;)V

    iget-object v9, p0, Lcom/android/server/am/RecentTasks;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v10, 0x0

    invoke-virtual {v9, v1, v10}, Lcom/android/server/am/ActivityManagerService;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    :cond_3
    iget-object v9, p0, Lcom/android/server/am/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v8

    .local v8, "tmpSize":I
    const/4 v2, 0x0

    :goto_2
    add-int/lit8 v9, v8, -0x1

    if-ge v2, v9, :cond_6

    iget-object v9, p0, Lcom/android/server/am/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    .local v4, "next":Lcom/android/server/am/TaskRecord;
    iget-object v9, p0, Lcom/android/server/am/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/TaskRecord;

    .local v5, "prev":Lcom/android/server/am/TaskRecord;
    iget-object v9, v4, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    if-eq v9, v5, :cond_4

    const-string v9, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Link error 2 next="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " prev="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v4, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " setting prev="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4, v5}, Lcom/android/server/am/TaskRecord;->setPrevAffiliate(Lcom/android/server/am/TaskRecord;)V

    iget-object v9, p0, Lcom/android/server/am/RecentTasks;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v10, 0x0

    invoke-virtual {v9, v4, v10}, Lcom/android/server/am/ActivityManagerService;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    :cond_4
    iget-object v9, v5, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    if-eq v9, v4, :cond_5

    const-string v9, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Link error 3 prev="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " next="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v5, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " setting next="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5, v4}, Lcom/android/server/am/TaskRecord;->setNextAffiliate(Lcom/android/server/am/TaskRecord;)V

    iget-object v9, p0, Lcom/android/server/am/RecentTasks;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v10, 0x0

    invoke-virtual {v9, v5, v10}, Lcom/android/server/am/ActivityManagerService;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    :cond_5
    const/4 v9, 0x1

    iput-boolean v9, v5, Lcom/android/server/am/TaskRecord;->inRecents:Z

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    .end local v4    # "next":Lcom/android/server/am/TaskRecord;
    .end local v5    # "prev":Lcom/android/server/am/TaskRecord;
    :cond_6
    iget-object v9, p0, Lcom/android/server/am/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    add-int/lit8 v10, v8, -0x1

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    .local v3, "last":Lcom/android/server/am/TaskRecord;
    iget-object v9, v3, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    if-eqz v9, :cond_7

    const-string v9, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Link error 4 last.prev="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v3, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Lcom/android/server/am/TaskRecord;->setPrevAffiliate(Lcom/android/server/am/TaskRecord;)V

    iget-object v9, p0, Lcom/android/server/am/RecentTasks;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v10, 0x0

    invoke-virtual {v9, v3, v10}, Lcom/android/server/am/ActivityManagerService;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    :cond_7
    iget-object v9, p0, Lcom/android/server/am/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v9}, Lcom/android/server/am/RecentTasks;->addAll(ILjava/util/Collection;)Z

    iget-object v9, p0, Lcom/android/server/am/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    add-int v9, p1, v8

    goto/16 :goto_0
.end method


# virtual methods
.method final addLocked(Lcom/android/server/am/TaskRecord;)V
    .locals 13
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    .prologue
    const/4 v12, -0x1

    const/4 v10, 0x1

    const/4 v9, 0x0

    iget v8, p1, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    iget v11, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v8, v11, :cond_0

    iget v8, p1, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    if-ne v8, v12, :cond_0

    iget v8, p1, Lcom/android/server/am/TaskRecord;->mPrevAffiliateTaskId:I

    if-eq v8, v12, :cond_2

    :cond_0
    move v0, v10

    .local v0, "isAffiliated":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/am/RecentTasks;->size()I

    move-result v5

    .local v5, "recentsCount":I
    iget-object v8, p1, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v8, :cond_3

    :cond_1
    :goto_1
    return-void

    .end local v0    # "isAffiliated":Z
    .end local v5    # "recentsCount":I
    :cond_2
    move v0, v9

    goto :goto_0

    .restart local v0    # "isAffiliated":Z
    .restart local v5    # "recentsCount":I
    :cond_3
    if-nez v0, :cond_4

    if-lez v5, :cond_4

    invoke-virtual {p0, v9}, Lcom/android/server/am/RecentTasks;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-eq v8, p1, :cond_1

    :cond_4
    if-eqz v0, :cond_5

    if-lez v5, :cond_5

    iget-boolean v8, p1, Lcom/android/server/am/TaskRecord;->inRecents:Z

    if-eqz v8, :cond_5

    iget v11, p1, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    invoke-virtual {p0, v9}, Lcom/android/server/am/RecentTasks;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/TaskRecord;

    iget v8, v8, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    if-eq v11, v8, :cond_1

    :cond_5
    const/4 v2, 0x0

    .local v2, "needAffiliationFix":Z
    iget-boolean v8, p1, Lcom/android/server/am/TaskRecord;->inRecents:Z

    if-eqz v8, :cond_7

    invoke-virtual {p0, p1}, Lcom/android/server/am/RecentTasks;->indexOf(Ljava/lang/Object;)I

    move-result v6

    .local v6, "taskIndex":I
    if-ltz v6, :cond_8

    if-nez v0, :cond_6

    invoke-virtual {p0, v6}, Lcom/android/server/am/RecentTasks;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0, v9, p1}, Lcom/android/server/am/RecentTasks;->add(ILjava/lang/Object;)V

    iget-object v8, p0, Lcom/android/server/am/RecentTasks;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v8, p1, v9}, Lcom/android/server/am/ActivityManagerService;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    goto :goto_1

    :cond_6
    invoke-direct {p0, p1, v6}, Lcom/android/server/am/RecentTasks;->moveAffiliatedTasksToFront(Lcom/android/server/am/TaskRecord;I)Z

    move-result v8

    if-nez v8, :cond_1

    const/4 v2, 0x1

    .end local v6    # "taskIndex":I
    :cond_7
    :goto_2
    invoke-virtual {p0, p1, v10}, Lcom/android/server/am/RecentTasks;->trimForTaskLocked(Lcom/android/server/am/TaskRecord;Z)I

    invoke-virtual {p0}, Lcom/android/server/am/RecentTasks;->size()I

    move-result v5

    invoke-static {}, Landroid/app/ActivityManager;->getMaxRecentTasksStatic()I

    move-result v1

    .local v1, "maxRecents":I
    :goto_3
    if-lt v5, v1, :cond_9

    add-int/lit8 v8, v5, -0x1

    invoke-virtual {p0, v8}, Lcom/android/server/am/RecentTasks;->remove(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/TaskRecord;

    .local v7, "tr":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v7}, Lcom/android/server/am/TaskRecord;->removedFromRecents()V

    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    .end local v1    # "maxRecents":I
    .end local v7    # "tr":Lcom/android/server/am/TaskRecord;
    .restart local v6    # "taskIndex":I
    :cond_8
    const-string v8, "ActivityManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Task with inRecent not in recents: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    goto :goto_2

    .end local v6    # "taskIndex":I
    .restart local v1    # "maxRecents":I
    :cond_9
    iput-boolean v10, p1, Lcom/android/server/am/TaskRecord;->inRecents:Z

    if-eqz v0, :cond_a

    if-eqz v2, :cond_c

    :cond_a
    invoke-virtual {p0, v9, p1}, Lcom/android/server/am/RecentTasks;->add(ILjava/lang/Object;)V

    :cond_b
    :goto_4
    if-eqz v2, :cond_1

    iget v8, p1, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {p0, v8}, Lcom/android/server/am/RecentTasks;->cleanupLocked(I)V

    goto/16 :goto_1

    :cond_c
    if-eqz v0, :cond_b

    iget-object v3, p1, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    .local v3, "other":Lcom/android/server/am/TaskRecord;
    if-nez v3, :cond_d

    iget-object v3, p1, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    :cond_d
    if-eqz v3, :cond_10

    invoke-virtual {p0, v3}, Lcom/android/server/am/RecentTasks;->indexOf(Ljava/lang/Object;)I

    move-result v4

    .local v4, "otherIndex":I
    if-ltz v4, :cond_f

    iget-object v8, p1, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    if-ne v3, v8, :cond_e

    add-int/lit8 v6, v4, 0x1

    .restart local v6    # "taskIndex":I
    :goto_5
    invoke-virtual {p0, v6, p1}, Lcom/android/server/am/RecentTasks;->add(ILjava/lang/Object;)V

    invoke-direct {p0, p1, v6}, Lcom/android/server/am/RecentTasks;->moveAffiliatedTasksToFront(Lcom/android/server/am/TaskRecord;I)Z

    move-result v8

    if-nez v8, :cond_1

    const/4 v2, 0x1

    goto :goto_4

    .end local v6    # "taskIndex":I
    :cond_e
    move v6, v4

    .restart local v6    # "taskIndex":I
    goto :goto_5

    .end local v6    # "taskIndex":I
    :cond_f
    const/4 v2, 0x1

    goto :goto_4

    .end local v4    # "otherIndex":I
    :cond_10
    const/4 v2, 0x1

    goto :goto_4
.end method

.method cleanupLocked(I)V
    .locals 13
    .param p1, "userId"    # I

    .prologue
    invoke-virtual {p0}, Lcom/android/server/am/RecentTasks;->size()I

    move-result v5

    .local v5, "recentsCount":I
    if-nez v5, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    .local v4, "pm":Landroid/content/pm/IPackageManager;
    const/4 v10, -0x1

    if-ne p1, v10, :cond_3

    iget-object v10, p0, Lcom/android/server/am/RecentTasks;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v10}, Lcom/android/server/am/ActivityManagerService;->getUsersLocked()[I

    move-result-object v9

    .local v9, "users":[I
    :goto_0
    const/4 v8, 0x0

    .local v8, "userIdx":I
    :goto_1
    array-length v10, v9

    if-ge v8, v10, :cond_10

    aget v7, v9, v8

    .local v7, "user":I
    invoke-virtual {p0}, Lcom/android/server/am/RecentTasks;->size()I

    move-result v10

    add-int/lit8 v5, v10, -0x1

    move v3, v5

    .local v3, "i":I
    :goto_2
    if-ltz v3, :cond_f

    invoke-virtual {p0, v3}, Lcom/android/server/am/RecentTasks;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/TaskRecord;

    .local v6, "task":Lcom/android/server/am/TaskRecord;
    iget v10, v6, Lcom/android/server/am/TaskRecord;->userId:I

    if-eq v10, v7, :cond_4

    :cond_2
    :goto_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .end local v3    # "i":I
    .end local v6    # "task":Lcom/android/server/am/TaskRecord;
    .end local v7    # "user":I
    .end local v8    # "userIdx":I
    .end local v9    # "users":[I
    :cond_3
    const/4 v10, 0x1

    new-array v9, v10, [I

    const/4 v10, 0x0

    aput p1, v9, v10

    goto :goto_0

    .restart local v3    # "i":I
    .restart local v6    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v7    # "user":I
    .restart local v8    # "userIdx":I
    .restart local v9    # "users":[I
    :cond_4
    iget-boolean v10, v6, Lcom/android/server/am/TaskRecord;->autoRemoveRecents:Z

    if-eqz v10, :cond_5

    invoke-virtual {v6}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v10

    if-nez v10, :cond_5

    invoke-virtual {p0, v3}, Lcom/android/server/am/RecentTasks;->remove(I)Ljava/lang/Object;

    invoke-virtual {v6}, Lcom/android/server/am/TaskRecord;->removedFromRecents()V

    const-string v10, "ActivityManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Removing auto-remove without activity: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_5
    iget-object v10, v6, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/android/server/am/RecentTasks;->tmpAvailActCache:Ljava/util/HashMap;

    iget-object v11, v6, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ActivityInfo;

    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    if-nez v0, :cond_7

    :try_start_0
    iget-object v10, v6, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    const/16 v11, 0x2200

    invoke-interface {v4, v10, v11, v7}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->tmpActivityInfo:Landroid/content/pm/ActivityInfo;

    :cond_6
    iget-object v10, p0, Lcom/android/server/am/RecentTasks;->tmpAvailActCache:Ljava/util/HashMap;

    iget-object v11, v6, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    iget-object v10, p0, Lcom/android/server/am/RecentTasks;->tmpActivityInfo:Landroid/content/pm/ActivityInfo;

    if-ne v0, v10, :cond_c

    iget-object v10, p0, Lcom/android/server/am/RecentTasks;->tmpAvailAppCache:Ljava/util/HashMap;

    iget-object v11, v6, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .local v1, "app":Landroid/content/pm/ApplicationInfo;
    if-nez v1, :cond_9

    :try_start_1
    iget-object v10, v6, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x2200

    invoke-interface {v4, v10, v11, v7}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->tmpAppInfo:Landroid/content/pm/ApplicationInfo;

    :cond_8
    iget-object v10, p0, Lcom/android/server/am/RecentTasks;->tmpAvailAppCache:Ljava/util/HashMap;

    iget-object v11, v6, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    iget-object v10, p0, Lcom/android/server/am/RecentTasks;->tmpAppInfo:Landroid/content/pm/ApplicationInfo;

    if-eq v1, v10, :cond_a

    iget v10, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v11, 0x800000

    and-int/2addr v10, v11

    if-nez v10, :cond_b

    :cond_a
    invoke-virtual {p0, v3}, Lcom/android/server/am/RecentTasks;->remove(I)Ljava/lang/Object;

    invoke-virtual {v6}, Lcom/android/server/am/TaskRecord;->removedFromRecents()V

    const-string v10, "ActivityManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Removing no longer valid recent: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .end local v1    # "app":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v2

    .local v2, "e":Landroid/os/RemoteException;
    goto/16 :goto_3

    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local v1    # "app":Landroid/content/pm/ApplicationInfo;
    :catch_1
    move-exception v2

    .restart local v2    # "e":Landroid/os/RemoteException;
    goto/16 :goto_3

    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_b
    const/4 v10, 0x0

    iput-boolean v10, v6, Lcom/android/server/am/TaskRecord;->isAvailable:Z

    goto/16 :goto_3

    .end local v1    # "app":Landroid/content/pm/ApplicationInfo;
    :cond_c
    iget-boolean v10, v0, Landroid/content/pm/ActivityInfo;->enabled:Z

    if-eqz v10, :cond_d

    iget-object v10, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v10, v10, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v10, :cond_d

    iget-object v10, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v11, 0x800000

    and-int/2addr v10, v11

    if-nez v10, :cond_e

    :cond_d
    const/4 v10, 0x0

    iput-boolean v10, v6, Lcom/android/server/am/TaskRecord;->isAvailable:Z

    goto/16 :goto_3

    :cond_e
    const/4 v10, 0x1

    iput-boolean v10, v6, Lcom/android/server/am/TaskRecord;->isAvailable:Z

    goto/16 :goto_3

    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v6    # "task":Lcom/android/server/am/TaskRecord;
    :cond_f
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .end local v3    # "i":I
    .end local v7    # "user":I
    :cond_10
    const/4 v3, 0x0

    .restart local v3    # "i":I
    invoke-virtual {p0}, Lcom/android/server/am/RecentTasks;->size()I

    move-result v5

    :goto_4
    if-ge v3, v5, :cond_0

    invoke-direct {p0, v3}, Lcom/android/server/am/RecentTasks;->processNextAffiliateChainLocked(I)I

    move-result v3

    goto :goto_4
.end method

.method removeTasksForUserLocked(I)V
    .locals 5
    .param p1, "userId"    # I

    .prologue
    if-gtz p1, :cond_0

    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t remove recent task on user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/RecentTasks;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_2

    invoke-virtual {p0, v0}, Lcom/android/server/am/RecentTasks;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    .local v1, "tr":Lcom/android/server/am/TaskRecord;
    iget v2, v1, Lcom/android/server/am/TaskRecord;->userId:I

    if-ne v2, p1, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/server/am/RecentTasks;->remove(I)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->removedFromRecents()V

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .end local v1    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_2
    iget-object v2, p0, Lcom/android/server/am/RecentTasks;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/ActivityManagerService;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    goto :goto_0
.end method

.method taskForIdLocked(I)Lcom/android/server/am/TaskRecord;
    .locals 4
    .param p1, "id"    # I

    .prologue
    invoke-virtual {p0}, Lcom/android/server/am/RecentTasks;->size()I

    move-result v1

    .local v1, "recentsCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/server/am/RecentTasks;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    .local v2, "tr":Lcom/android/server/am/TaskRecord;
    iget v3, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v3, p1, :cond_0

    .end local v2    # "tr":Lcom/android/server/am/TaskRecord;
    :goto_1
    return-object v2

    .restart local v2    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v2    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method trimForTaskLocked(Lcom/android/server/am/TaskRecord;Z)I
    .locals 14
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "doTrim"    # Z

    .prologue
    invoke-virtual {p0}, Lcom/android/server/am/RecentTasks;->size()I

    move-result v5

    .local v5, "recentsCount":I
    iget-object v3, p1, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    .local v3, "intent":Landroid/content/Intent;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/content/Intent;->isDocument()Z

    move-result v12

    if-eqz v12, :cond_1

    const/4 v1, 0x1

    .local v1, "document":Z
    :goto_0
    iget v12, p1, Lcom/android/server/am/TaskRecord;->maxRecents:I

    add-int/lit8 v4, v12, -0x1

    .local v4, "maxRecents":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v5, :cond_f

    invoke-virtual {p0, v2}, Lcom/android/server/am/RecentTasks;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/TaskRecord;

    .local v9, "tr":Lcom/android/server/am/TaskRecord;
    if-eq p1, v9, :cond_b

    iget v12, p1, Lcom/android/server/am/TaskRecord;->userId:I

    iget v13, v9, Lcom/android/server/am/TaskRecord;->userId:I

    if-eq v12, v13, :cond_2

    :cond_0
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v1    # "document":Z
    .end local v2    # "i":I
    .end local v4    # "maxRecents":I
    .end local v9    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .restart local v1    # "document":Z
    .restart local v2    # "i":I
    .restart local v4    # "maxRecents":I
    .restart local v9    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_2
    const/4 v12, 0x3

    if-le v2, v12, :cond_3

    invoke-virtual {v9}, Lcom/android/server/am/TaskRecord;->freeLastThumbnail()V

    :cond_3
    iget-object v10, v9, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    .local v10, "trIntent":Landroid/content/Intent;
    iget-object v12, p1, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    if-eqz v12, :cond_5

    iget-object v12, p1, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    iget-object v13, v9, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    const/4 v7, 0x1

    .local v7, "sameAffinity":Z
    :goto_3
    if-eqz v3, :cond_6

    invoke-virtual {v3, v10}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v12

    if-eqz v12, :cond_6

    const/4 v8, 0x1

    .local v8, "sameIntent":Z
    :goto_4
    if-eqz v10, :cond_7

    invoke-virtual {v10}, Landroid/content/Intent;->isDocument()Z

    move-result v12

    if-eqz v12, :cond_7

    const/4 v11, 0x1

    .local v11, "trIsDocument":Z
    :goto_5
    if-eqz v1, :cond_8

    if-eqz v11, :cond_8

    const/4 v0, 0x1

    .local v0, "bothDocuments":Z
    :goto_6
    if-nez v7, :cond_4

    if-nez v8, :cond_4

    if-eqz v0, :cond_0

    :cond_4
    if-eqz v0, :cond_a

    iget-object v12, p1, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v12, :cond_9

    iget-object v12, v9, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v12, :cond_9

    iget-object v12, p1, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    iget-object v13, v9, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v12, v13}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    const/4 v6, 0x1

    .local v6, "sameActivity":Z
    :goto_7
    if-eqz v6, :cond_0

    if-lez v4, :cond_b

    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .end local v0    # "bothDocuments":Z
    .end local v6    # "sameActivity":Z
    .end local v7    # "sameAffinity":Z
    .end local v8    # "sameIntent":Z
    .end local v11    # "trIsDocument":Z
    :cond_5
    const/4 v7, 0x0

    goto :goto_3

    .restart local v7    # "sameAffinity":Z
    :cond_6
    const/4 v8, 0x0

    goto :goto_4

    .restart local v8    # "sameIntent":Z
    :cond_7
    const/4 v11, 0x0

    goto :goto_5

    .restart local v11    # "trIsDocument":Z
    :cond_8
    const/4 v0, 0x0

    goto :goto_6

    .restart local v0    # "bothDocuments":Z
    :cond_9
    const/4 v6, 0x0

    goto :goto_7

    :cond_a
    if-nez v1, :cond_0

    if-nez v11, :cond_0

    .end local v0    # "bothDocuments":Z
    .end local v7    # "sameAffinity":Z
    .end local v8    # "sameIntent":Z
    .end local v10    # "trIntent":Landroid/content/Intent;
    .end local v11    # "trIsDocument":Z
    :cond_b
    if-nez p2, :cond_c

    .end local v2    # "i":I
    .end local v9    # "tr":Lcom/android/server/am/TaskRecord;
    :goto_8
    return v2

    .restart local v2    # "i":I
    .restart local v9    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_c
    invoke-virtual {v9}, Lcom/android/server/am/TaskRecord;->disposeThumbnail()V

    invoke-virtual {p0, v2}, Lcom/android/server/am/RecentTasks;->remove(I)Ljava/lang/Object;

    if-eq p1, v9, :cond_d

    invoke-virtual {v9}, Lcom/android/server/am/TaskRecord;->removedFromRecents()V

    :cond_d
    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v5, v5, -0x1

    iget-object v12, p1, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-nez v12, :cond_e

    move-object p1, v9

    :cond_e
    iget-object v12, p0, Lcom/android/server/am/RecentTasks;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v13, 0x0

    invoke-virtual {v12, v9, v13}, Lcom/android/server/am/ActivityManagerService;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    goto :goto_2

    .end local v9    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_f
    const/4 v2, -0x1

    goto :goto_8
.end method
