.class Lcom/android/server/wm/DisplayContent;
.super Ljava/lang/Object;
.source "DisplayContent.java"


# instance fields
.field final isDefaultDisplay:Z

.field layoutNeeded:Z

.field mBaseDisplayDensity:I

.field mBaseDisplayHeight:I

.field mBaseDisplayRect:Landroid/graphics/Rect;

.field mBaseDisplayWidth:I

.field private final mDisplay:Landroid/view/Display;

.field private final mDisplayId:I

.field private final mDisplayInfo:Landroid/view/DisplayInfo;

.field final mDisplaySizeLock:Ljava/lang/Object;

.field final mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

.field final mExitingTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowToken;",
            ">;"
        }
    .end annotation
.end field

.field private mHomeStack:Lcom/android/server/wm/TaskStack;

.field mInitialDisplayDensity:I

.field mInitialDisplayHeight:I

.field mInitialDisplayWidth:I

.field final mService:Lcom/android/server/wm/WindowManagerService;

.field private mStackBoxes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/StackBox;",
            ">;"
        }
    .end annotation
.end field

.field mTapDetector:Lcom/android/server/wm/StackTapPointerEventListener;

.field private mTaskHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/Task;",
            ">;"
        }
    .end annotation
.end field

.field mTmpRect:Landroid/graphics/Rect;

.field mTouchExcludeRegion:Landroid/graphics/Region;

.field private mWindows:Lcom/android/server/wm/WindowList;

.field pendingLayoutChanges:I


# direct methods
.method constructor <init>(Landroid/view/Display;Lcom/android/server/wm/WindowManagerService;)V
    .locals 5
    .parameter "display"
    .parameter "service"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Lcom/android/server/wm/WindowList;

    invoke-direct {v2}, Lcom/android/server/wm/WindowList;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mWindows:Lcom/android/server/wm/WindowList;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplaySizeLock:Ljava/lang/Object;

    iput v3, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    iput v3, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    iput v3, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    iput v3, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    iput v3, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    iput v3, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    new-instance v2, Landroid/view/DisplayInfo;

    invoke-direct {v2}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayRect:Landroid/graphics/Rect;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mExitingTokens:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/server/wm/AppTokenList;

    invoke-direct {v2}, Lcom/android/server/wm/AppTokenList;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    iput-object v4, p0, Lcom/android/server/wm/DisplayContent;->mHomeStack:Lcom/android/server/wm/TaskStack;

    new-instance v2, Landroid/graphics/Region;

    invoke-direct {v2}, Landroid/graphics/Region;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTaskHistory:Ljava/util/ArrayList;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    iput v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {p1, v2}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    iput-object p2, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    new-instance v0, Lcom/android/server/wm/StackBox;

    invoke-direct {v0, p2, p0, v4}, Lcom/android/server/wm/StackBox;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/StackBox;)V

    .local v0, newBox:Lcom/android/server/wm/StackBox;
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/server/wm/TaskStack;

    invoke-direct {v1, p2, v3, p0}, Lcom/android/server/wm/TaskStack;-><init>(Lcom/android/server/wm/WindowManagerService;ILcom/android/server/wm/DisplayContent;)V

    .local v1, newStack:Lcom/android/server/wm/TaskStack;
    iput-object v0, v1, Lcom/android/server/wm/TaskStack;->mStackBox:Lcom/android/server/wm/StackBox;

    iput-object v1, v0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mHomeStack:Lcom/android/server/wm/TaskStack;

    return-void

    .end local v0           #newBox:Lcom/android/server/wm/StackBox;
    .end local v1           #newStack:Lcom/android/server/wm/TaskStack;
    :cond_0
    move v2, v3

    goto :goto_0
.end method


# virtual methods
.method addStackBox(Lcom/android/server/wm/StackBox;Z)V
    .locals 2
    .parameter "box"
    .parameter "toTop"

    .prologue
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "addStackBox: Too many toplevel StackBoxes!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method addTask(Lcom/android/server/wm/Task;Z)V
    .locals 8
    .parameter "task"
    .parameter "toTop"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget v2, p1, Lcom/android/server/wm/Task;->mUserId:I

    .local v2, userId:I
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, numTasks:I
    if-eqz p2, :cond_3

    add-int/lit8 v1, v0, -0x1

    .local v1, taskNdx:I
    :goto_0
    if-ltz v1, :cond_0

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/Task;

    iget v3, v3, Lcom/android/server/wm/Task;->mUserId:I

    if-ne v3, v2, :cond_2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    :cond_1
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/16 v6, 0x791a

    const/4 v3, 0x3

    new-array v7, v3, [Ljava/lang/Object;

    iget v3, p1, Lcom/android/server/wm/Task;->taskId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v5

    if-eqz p2, :cond_4

    move v3, v4

    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v4

    const/4 v3, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v3

    invoke-static {v6, v7}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    return-void

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .end local v1           #taskNdx:I
    :cond_3
    const/4 v1, 0x0

    .restart local v1       #taskNdx:I
    :goto_2
    if-ge v1, v0, :cond_1

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/Task;

    iget v3, v3, Lcom/android/server/wm/Task;->mUserId:I

    if-eq v3, v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    move v3, v5

    goto :goto_1
.end method

.method animateDimLayers()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .local v0, result:Z
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, stackBoxNdx:I
    :goto_0
    if-ltz v1, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/StackBox;

    invoke-virtual {v2}, Lcom/android/server/wm/StackBox;->animateDimLayers()Z

    move-result v2

    or-int/2addr v0, v2

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method close()V
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, stackBoxNdx:I
    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/StackBox;

    invoke-virtual {v1}, Lcom/android/server/wm/StackBox;->close()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method createStack(IIIF)Lcom/android/server/wm/TaskStack;
    .locals 16
    .parameter "stackId"
    .parameter "relativeStackBoxId"
    .parameter "position"
    .parameter "weight"

    .prologue
    const/4 v6, 0x0

    .local v6, newStack:Lcom/android/server/wm/TaskStack;
    if-nez p1, :cond_3

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_0

    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "createStack: HOME_STACK_ID (0) not first."

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/DisplayContent;->mHomeStack:Lcom/android/server/wm/TaskStack;

    :cond_1
    if-eqz v6, :cond_2

    const/4 v9, 0x1

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    :cond_2
    const/16 v9, 0x791c

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x3

    const/high16 v12, 0x42c8

    mul-float v12, v12, p4

    float-to-double v12, v12

    const-wide/high16 v14, 0x3fe0

    add-double/2addr v12, v14

    double-to-int v12, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    return-object v6

    :cond_3
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v8, v9, -0x1

    .local v8, stackBoxNdx:I
    :goto_0
    if-ltz v8, :cond_5

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/StackBox;

    .local v4, box:Lcom/android/server/wm/StackBox;
    const/4 v9, 0x6

    move/from16 v0, p3

    if-eq v0, v9, :cond_4

    const/4 v9, 0x7

    move/from16 v0, p3

    if-ne v0, v9, :cond_7

    :cond_4
    move/from16 v0, p2

    invoke-virtual {v4, v0}, Lcom/android/server/wm/StackBox;->contains(I)Z

    move-result v9

    if-eqz v9, :cond_8

    new-instance v5, Lcom/android/server/wm/StackBox;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v10, 0x0

    move-object/from16 v0, p0

    invoke-direct {v5, v9, v0, v10}, Lcom/android/server/wm/StackBox;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/StackBox;)V

    .local v5, newBox:Lcom/android/server/wm/StackBox;
    new-instance v6, Lcom/android/server/wm/TaskStack;

    .end local v6           #newStack:Lcom/android/server/wm/TaskStack;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    move/from16 v0, p1

    move-object/from16 v1, p0

    invoke-direct {v6, v9, v0, v1}, Lcom/android/server/wm/TaskStack;-><init>(Lcom/android/server/wm/WindowManagerService;ILcom/android/server/wm/DisplayContent;)V

    .restart local v6       #newStack:Lcom/android/server/wm/TaskStack;
    iput-object v5, v6, Lcom/android/server/wm/TaskStack;->mStackBox:Lcom/android/server/wm/StackBox;

    iput-object v6, v5, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    const/4 v9, 0x6

    move/from16 v0, p3

    if-ne v0, v9, :cond_6

    const/4 v7, 0x1

    .local v7, offset:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    add-int v10, v8, v7

    invoke-virtual {v9, v10, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .end local v4           #box:Lcom/android/server/wm/StackBox;
    .end local v5           #newBox:Lcom/android/server/wm/StackBox;
    .end local v7           #offset:I
    :cond_5
    if-gez v8, :cond_1

    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "createStack: stackBoxId "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " not found."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .restart local v4       #box:Lcom/android/server/wm/StackBox;
    .restart local v5       #newBox:Lcom/android/server/wm/StackBox;
    :cond_6
    const/4 v7, 0x0

    goto :goto_1

    .end local v5           #newBox:Lcom/android/server/wm/StackBox;
    :cond_7
    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/android/server/wm/StackBox;->split(IIIF)Lcom/android/server/wm/TaskStack;

    move-result-object v6

    if-nez v6, :cond_5

    :cond_8
    add-int/lit8 v8, v8, -0x1

    goto :goto_0
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 13
    .parameter "prefix"
    .parameter "pw"

    .prologue
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v10, "Display: mDisplayId="

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v10, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(I)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .local v4, subPrefix:Ljava/lang/String;
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v10, "init="

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v10, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(I)V

    const-string v10, "x"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v10, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(I)V

    const-string v10, " "

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v10, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(I)V

    const-string v10, "dpi"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v10, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    iget v11, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    if-ne v10, v11, :cond_0

    iget v10, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    iget v11, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    if-ne v10, v11, :cond_0

    iget v10, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    iget v11, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    if-eq v10, v11, :cond_1

    :cond_0
    const-string v10, " base="

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v10, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(I)V

    const-string v10, "x"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v10, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(I)V

    const-string v10, " "

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v10, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(I)V

    const-string v10, "dpi"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_1
    const-string v10, " cur="

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v10, v10, Landroid/view/DisplayInfo;->logicalWidth:I

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(I)V

    const-string v10, "x"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v10, v10, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(I)V

    const-string v10, " app="

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v10, v10, Landroid/view/DisplayInfo;->appWidth:I

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(I)V

    const-string v10, "x"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v10, v10, Landroid/view/DisplayInfo;->appHeight:I

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(I)V

    const-string v10, " rng="

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v10, v10, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(I)V

    const-string v10, "x"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v10, v10, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(I)V

    const-string v10, "-"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v10, v10, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(I)V

    const-string v10, "x"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v10, v10, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v10, "layoutNeeded="

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v10, p0, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Z)V

    const/4 v0, 0x0

    .local v0, boxNdx:I
    :goto_0
    iget-object v10, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v0, v10, :cond_2

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v10, "StackBox #"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    iget-object v10, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/StackBox;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "  "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11, p2}, Lcom/android/server/wm/StackBox;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->numTokens()I

    move-result v2

    .local v2, ndx:I
    if-lez v2, :cond_4

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string v10, "  Application tokens in Z order:"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getTasks()Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/android/server/wm/DisplayContent;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v5, v10, -0x1

    .local v5, taskNdx:I
    :goto_1
    if-ltz v5, :cond_4

    iget-object v10, p0, Lcom/android/server/wm/DisplayContent;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/Task;

    iget-object v8, v10, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    .local v8, tokens:Lcom/android/server/wm/AppTokenList;
    invoke-virtual {v8}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v10

    add-int/lit8 v7, v10, -0x1

    .local v7, tokenNdx:I
    move v3, v2

    .end local v2           #ndx:I
    .local v3, ndx:I
    :goto_2
    if-ltz v7, :cond_3

    invoke-virtual {v8, v7}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/AppWindowToken;

    .local v9, wtoken:Lcom/android/server/wm/AppWindowToken;
    const-string v10, "  App #"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v2, v3, -0x1

    .end local v3           #ndx:I
    .restart local v2       #ndx:I
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    const/16 v10, 0x20

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v10, ":"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v10, "    "

    invoke-virtual {v9, p2, v10}, Lcom/android/server/wm/AppWindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    add-int/lit8 v7, v7, -0x1

    move v3, v2

    .end local v2           #ndx:I
    .restart local v3       #ndx:I
    goto :goto_2

    .end local v9           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :cond_3
    add-int/lit8 v5, v5, -0x1

    move v2, v3

    .end local v3           #ndx:I
    .restart local v2       #ndx:I
    goto :goto_1

    .end local v5           #taskNdx:I
    .end local v7           #tokenNdx:I
    .end local v8           #tokens:Lcom/android/server/wm/AppTokenList;
    :cond_4
    iget-object v10, p0, Lcom/android/server/wm/DisplayContent;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_5

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string v10, "  Exiting tokens:"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/server/wm/DisplayContent;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v1, v10, -0x1

    .local v1, i:I
    :goto_3
    if-ltz v1, :cond_5

    iget-object v10, p0, Lcom/android/server/wm/DisplayContent;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowToken;

    .local v6, token:Lcom/android/server/wm/WindowToken;
    const-string v10, "  Exiting #"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v10, 0x20

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const/16 v10, 0x3a

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(C)V

    const-string v10, "    "

    invoke-virtual {v6, p2, v10}, Lcom/android/server/wm/WindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .end local v1           #i:I
    .end local v6           #token:Lcom/android/server/wm/WindowToken;
    :cond_5
    iget-object v10, p0, Lcom/android/server/wm/DisplayContent;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v10}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v10

    if-lez v10, :cond_6

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string v10, "  Exiting application tokens:"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/server/wm/DisplayContent;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v10}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v10

    add-int/lit8 v1, v10, -0x1

    .restart local v1       #i:I
    :goto_4
    if-ltz v1, :cond_6

    iget-object v10, p0, Lcom/android/server/wm/DisplayContent;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v10, v1}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowToken;

    .restart local v6       #token:Lcom/android/server/wm/WindowToken;
    const-string v10, "  Exiting App #"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v10, 0x20

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const/16 v10, 0x3a

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(C)V

    const-string v10, "    "

    invoke-virtual {v6, p2, v10}, Lcom/android/server/wm/WindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    .end local v1           #i:I
    .end local v6           #token:Lcom/android/server/wm/WindowToken;
    :cond_6
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method getDisplay()Landroid/view/Display;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    return-object v0
.end method

.method getDisplayId()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    return v0
.end method

.method getDisplayInfo()Landroid/view/DisplayInfo;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    return-object v0
.end method

.method getHomeStack()Lcom/android/server/wm/TaskStack;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mHomeStack:Lcom/android/server/wm/TaskStack;

    return-object v0
.end method

.method getLogicalDisplayRect(Landroid/graphics/Rect;)V
    .locals 6
    .parameter "out"

    .prologue
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->updateDisplayInfo()V

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v4, Landroid/view/DisplayInfo;->logicalWidth:I

    .local v3, width:I
    iget v4, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    sub-int/2addr v4, v3

    div-int/lit8 v1, v4, 0x2

    .local v1, left:I
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v4, Landroid/view/DisplayInfo;->logicalHeight:I

    .local v0, height:I
    iget v4, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    sub-int/2addr v4, v0

    div-int/lit8 v2, v4, 0x2

    .local v2, top:I
    add-int v4, v1, v3

    add-int v5, v2, v0

    invoke-virtual {p1, v1, v2, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method getStackBounds(I)Landroid/graphics/Rect;
    .locals 3
    .parameter "stackId"

    .prologue
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, stackBoxNdx:I
    :goto_0
    if-ltz v1, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/StackBox;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/StackBox;->getStackBounds(I)Landroid/graphics/Rect;

    move-result-object v0

    .local v0, bounds:Landroid/graphics/Rect;
    if-eqz v0, :cond_0

    .end local v0           #bounds:Landroid/graphics/Rect;
    :goto_1
    return-object v0

    .restart local v0       #bounds:Landroid/graphics/Rect;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .end local v0           #bounds:Landroid/graphics/Rect;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method getStackBoxInfo(Lcom/android/server/wm/StackBox;)Landroid/app/ActivityManager$StackBoxInfo;
    .locals 4
    .parameter "box"

    .prologue
    new-instance v0, Landroid/app/ActivityManager$StackBoxInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$StackBoxInfo;-><init>()V

    .local v0, info:Landroid/app/ActivityManager$StackBoxInfo;
    iget v1, p1, Lcom/android/server/wm/StackBox;->mStackBoxId:I

    iput v1, v0, Landroid/app/ActivityManager$StackBoxInfo;->stackBoxId:I

    iget v1, p1, Lcom/android/server/wm/StackBox;->mWeight:F

    iput v1, v0, Landroid/app/ActivityManager$StackBoxInfo;->weight:F

    iget-boolean v1, p1, Lcom/android/server/wm/StackBox;->mVertical:Z

    iput-boolean v1, v0, Landroid/app/ActivityManager$StackBoxInfo;->vertical:Z

    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p1, Lcom/android/server/wm/StackBox;->mBounds:Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v1, v0, Landroid/app/ActivityManager$StackBoxInfo;->bounds:Landroid/graphics/Rect;

    iget-object v1, p1, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    iget v1, v1, Lcom/android/server/wm/TaskStack;->mStackId:I

    iput v1, v0, Landroid/app/ActivityManager$StackBoxInfo;->stackId:I

    :goto_0
    return-object v0

    :cond_0
    const/4 v1, -0x1

    iput v1, v0, Landroid/app/ActivityManager$StackBoxInfo;->stackId:I

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/app/ActivityManager$StackBoxInfo;

    iput-object v1, v0, Landroid/app/ActivityManager$StackBoxInfo;->children:[Landroid/app/ActivityManager$StackBoxInfo;

    iget-object v1, v0, Landroid/app/ActivityManager$StackBoxInfo;->children:[Landroid/app/ActivityManager$StackBoxInfo;

    const/4 v2, 0x0

    iget-object v3, p1, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    invoke-virtual {p0, v3}, Lcom/android/server/wm/DisplayContent;->getStackBoxInfo(Lcom/android/server/wm/StackBox;)Landroid/app/ActivityManager$StackBoxInfo;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v1, v0, Landroid/app/ActivityManager$StackBoxInfo;->children:[Landroid/app/ActivityManager$StackBoxInfo;

    const/4 v2, 0x1

    iget-object v3, p1, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    invoke-virtual {p0, v3}, Lcom/android/server/wm/DisplayContent;->getStackBoxInfo(Lcom/android/server/wm/StackBox;)Landroid/app/ActivityManager$StackBoxInfo;

    move-result-object v3

    aput-object v3, v1, v2

    goto :goto_0
.end method

.method getStackBoxInfos()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/ActivityManager$StackBoxInfo;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .local v0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/ActivityManager$StackBoxInfo;>;"
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, stackBoxNdx:I
    :goto_0
    if-ltz v1, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/StackBox;

    invoke-virtual {p0, v2}, Lcom/android/server/wm/DisplayContent;->getStackBoxInfo(Lcom/android/server/wm/StackBox;)Landroid/app/ActivityManager$StackBoxInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method getTasks()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/Task;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTaskHistory:Ljava/util/ArrayList;

    return-object v0
.end method

.method getWindowList()Lcom/android/server/wm/WindowList;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mWindows:Lcom/android/server/wm/WindowList;

    return-object v0
.end method

.method public hasAccess(I)Z
    .locals 1
    .parameter "uid"

    .prologue
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0, p1}, Landroid/view/Display;->hasAccess(I)Z

    move-result v0

    return v0
.end method

.method homeOnTop()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/StackBox;

    iget-object v0, v0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mHomeStack:Lcom/android/server/wm/TaskStack;

    if-eq v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method isDimming()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .local v0, result:Z
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, stackBoxNdx:I
    :goto_0
    if-ltz v1, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/StackBox;

    invoke-virtual {v2}, Lcom/android/server/wm/StackBox;->isDimming()Z

    move-result v2

    or-int/2addr v0, v2

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public isPrivate()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method moveHomeStackBox(Z)Z
    .locals 4
    .parameter "toTop"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x791d

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v3, v0}, Landroid/util/EventLog;->writeEvent(II)I

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "moveHomeStackBox: Too many toplevel StackBoxes!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v0, v2

    goto :goto_0

    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "moveHomeStackBox: No home StackBox!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->homeOnTop()Z

    move-result v0

    xor-int/2addr v0, p1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v1

    :cond_1
    :pswitch_2
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method numTokens()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .local v0, count:I
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, taskNdx:I
    :goto_0
    if-ltz v1, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    iget-object v2, v2, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v2}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method removeStackBox(Lcom/android/server/wm/StackBox;)V
    .locals 2
    .parameter "box"

    .prologue
    iget-object v0, p1, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    .local v0, stack:Lcom/android/server/wm/TaskStack;
    if-eqz v0, :cond_0

    iget v1, v0, Lcom/android/server/wm/TaskStack;->mStackId:I

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method removeTask(Lcom/android/server/wm/Task;)V
    .locals 1
    .parameter "task"

    .prologue
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method resetAnimationBackgroundAnimator()V
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, stackBoxNdx:I
    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/StackBox;

    invoke-virtual {v1}, Lcom/android/server/wm/StackBox;->resetAnimationBackgroundAnimator()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method resetDimming()V
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, stackBoxNdx:I
    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/StackBox;

    invoke-virtual {v1}, Lcom/android/server/wm/StackBox;->resetDimming()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method resizeStack(IF)Z
    .locals 4
    .parameter "stackBoxId"
    .parameter "weight"

    .prologue
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, stackBoxNdx:I
    :goto_0
    if-ltz v1, :cond_1

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/StackBox;

    .local v0, box:Lcom/android/server/wm/StackBox;
    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/StackBox;->resize(IF)Z

    move-result v3

    if-eqz v3, :cond_0

    iput-boolean v2, p0, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    .end local v0           #box:Lcom/android/server/wm/StackBox;
    :goto_1
    return v2

    .restart local v0       #box:Lcom/android/server/wm/StackBox;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .end local v0           #box:Lcom/android/server/wm/StackBox;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method setStackBoxSize(Landroid/graphics/Rect;)Z
    .locals 4
    .parameter "contentRect"

    .prologue
    const/4 v0, 0x0

    .local v0, change:Z
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, stackBoxNdx:I
    :goto_0
    if-ltz v1, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/StackBox;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Lcom/android/server/wm/StackBox;->setStackBoxSizes(Landroid/graphics/Rect;Z)Z

    move-result v2

    or-int/2addr v0, v2

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method setTouchExcludeRegion(Lcom/android/server/wm/TaskStack;)V
    .locals 7
    .parameter "focusedStack"

    .prologue
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v3

    .local v3, windows:Lcom/android/server/wm/WindowList;
    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {v3, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .local v2, win:Lcom/android/server/wm/WindowState;
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v1

    .local v1, stack:Lcom/android/server/wm/TaskStack;
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v1, :cond_0

    if-eq v1, p1, :cond_0

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    sget-object v6, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .end local v1           #stack:Lcom/android/server/wm/TaskStack;
    .end local v2           #win:Lcom/android/server/wm/WindowState;
    :cond_1
    return-void
.end method

.method stackIdFromPoint(II)I
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/StackBox;

    .local v0, topBox:Lcom/android/server/wm/StackBox;
    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/StackBox;->stackIdFromPoint(II)I

    move-result v1

    return v1
.end method

.method stopDimmingIfNeeded()V
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, stackBoxNdx:I
    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/StackBox;

    invoke-virtual {v1}, Lcom/android/server/wm/StackBox;->stopDimmingIfNeeded()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method switchUserStacks(II)V
    .locals 5
    .parameter "oldUserId"
    .parameter "newUserId"

    .prologue
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v3

    .local v3, windows:Lcom/android/server/wm/WindowList;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    invoke-virtual {v3, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .local v2, win:Lcom/android/server/wm/WindowState;
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isHiddenFromUserLocked()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/android/server/wm/WindowState;->hideLw(Z)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v2           #win:Lcom/android/server/wm/WindowState;
    :cond_1
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, stackBoxNdx:I
    :goto_1
    if-ltz v1, :cond_2

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mStackBoxes:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/StackBox;

    invoke-virtual {v4, p2}, Lcom/android/server/wm/StackBox;->switchUserStacks(I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method updateDisplayInfo()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    return-void
.end method
