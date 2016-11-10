.class final Lcom/android/server/am/UidRecord$ChangeItem;
.super Ljava/lang/Object;
.source "UidRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/UidRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ChangeItem"
.end annotation


# instance fields
.field gone:Z

.field processState:I

.field uid:I

.field uidRecord:Lcom/android/server/am/UidRecord;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
