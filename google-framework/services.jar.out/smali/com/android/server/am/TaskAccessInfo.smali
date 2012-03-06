.class final Lcom/android/server/am/TaskAccessInfo;
.super Landroid/app/ActivityManager$TaskThumbnails;
.source "TaskAccessInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/TaskAccessInfo$SubTask;
    }
.end annotation


# instance fields
.field public root:Lcom/android/server/am/ActivityRecord;

.field public rootIndex:I

.field public subtasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskAccessInfo$SubTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/ActivityManager$TaskThumbnails;-><init>()V

    .line 25
    return-void
.end method
