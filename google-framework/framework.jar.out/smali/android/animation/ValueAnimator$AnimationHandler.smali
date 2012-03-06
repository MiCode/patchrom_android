.class Landroid/animation/ValueAnimator$AnimationHandler;
.super Landroid/os/Handler;
.source "ValueAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnimationHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 569
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/animation/ValueAnimator$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 569
    invoke-direct {p0}, Landroid/animation/ValueAnimator$AnimationHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 26
    .parameter "msg"

    .prologue
    .line 584
    const/4 v6, 0x1

    .line 585
    .local v6, callAgain:Z
    invoke-static {}, Landroid/animation/ValueAnimator;->access$000()Ljava/lang/ThreadLocal;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 586
    .local v5, animations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/ValueAnimator;>;"
    invoke-static {}, Landroid/animation/ValueAnimator;->access$100()Ljava/lang/ThreadLocal;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    .line 587
    .local v10, delayedAnims:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/ValueAnimator;>;"
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v19, v0

    packed-switch v19, :pswitch_data_0

    .line 681
    :cond_0
    :goto_0
    return-void

    .line 591
    :pswitch_0
    invoke-static {}, Landroid/animation/ValueAnimator;->access$200()Ljava/lang/ThreadLocal;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/ArrayList;

    .line 592
    .local v16, pendingAnimations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/ValueAnimator;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v19

    if-gtz v19, :cond_1

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v19

    if-lez v19, :cond_2

    .line 593
    :cond_1
    const/4 v6, 0x0

    .line 600
    :cond_2
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v19

    if-lez v19, :cond_4

    .line 601
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/ArrayList;

    .line 603
    .local v17, pendingCopy:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/ValueAnimator;>;"
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->clear()V

    .line 604
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 605
    .local v7, count:I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_1
    if-ge v12, v7, :cond_2

    .line 606
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/ValueAnimator;

    .line 608
    .local v4, anim:Landroid/animation/ValueAnimator;
    #getter for: Landroid/animation/ValueAnimator;->mStartDelay:J
    invoke-static {v4}, Landroid/animation/ValueAnimator;->access$300(Landroid/animation/ValueAnimator;)J

    move-result-wide v19

    const-wide/16 v21, 0x0

    cmp-long v19, v19, v21

    if-nez v19, :cond_3

    .line 609
    #calls: Landroid/animation/ValueAnimator;->startAnimation()V
    invoke-static {v4}, Landroid/animation/ValueAnimator;->access$400(Landroid/animation/ValueAnimator;)V

    .line 605
    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 611
    :cond_3
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 619
    .end local v4           #anim:Landroid/animation/ValueAnimator;
    .end local v7           #count:I
    .end local v12           #i:I
    .end local v16           #pendingAnimations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/ValueAnimator;>;"
    .end local v17           #pendingCopy:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/ValueAnimator;>;"
    :cond_4
    :pswitch_1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v8

    .line 620
    .local v8, currentTime:J
    invoke-static {}, Landroid/animation/ValueAnimator;->access$500()Ljava/lang/ThreadLocal;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/ArrayList;

    .line 621
    .local v18, readyAnims:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/ValueAnimator;>;"
    invoke-static {}, Landroid/animation/ValueAnimator;->access$600()Ljava/lang/ThreadLocal;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    .line 625
    .local v11, endingAnims:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/ValueAnimator;>;"
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 626
    .local v14, numDelayedAnims:I
    const/4 v12, 0x0

    .restart local v12       #i:I
    :goto_3
    if-ge v12, v14, :cond_6

    .line 627
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/ValueAnimator;

    .line 628
    .restart local v4       #anim:Landroid/animation/ValueAnimator;
    #calls: Landroid/animation/ValueAnimator;->delayedAnimationFrame(J)Z
    invoke-static {v4, v8, v9}, Landroid/animation/ValueAnimator;->access$700(Landroid/animation/ValueAnimator;J)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 629
    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 626
    :cond_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 632
    .end local v4           #anim:Landroid/animation/ValueAnimator;
    :cond_6
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 633
    .local v15, numReadyAnims:I
    if-lez v15, :cond_8

    .line 634
    const/4 v12, 0x0

    :goto_4
    if-ge v12, v15, :cond_7

    .line 635
    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/ValueAnimator;

    .line 636
    .restart local v4       #anim:Landroid/animation/ValueAnimator;
    #calls: Landroid/animation/ValueAnimator;->startAnimation()V
    invoke-static {v4}, Landroid/animation/ValueAnimator;->access$400(Landroid/animation/ValueAnimator;)V

    .line 637
    const/16 v19, 0x1

    move/from16 v0, v19

    #setter for: Landroid/animation/ValueAnimator;->mRunning:Z
    invoke-static {v4, v0}, Landroid/animation/ValueAnimator;->access$802(Landroid/animation/ValueAnimator;Z)Z

    .line 638
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 634
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 640
    .end local v4           #anim:Landroid/animation/ValueAnimator;
    :cond_7
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->clear()V

    .line 645
    :cond_8
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 646
    .local v13, numAnims:I
    const/4 v12, 0x0

    .line 647
    :goto_5
    if-ge v12, v13, :cond_b

    .line 648
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/ValueAnimator;

    .line 649
    .restart local v4       #anim:Landroid/animation/ValueAnimator;
    invoke-virtual {v4, v8, v9}, Landroid/animation/ValueAnimator;->animationFrame(J)Z

    move-result v19

    if-eqz v19, :cond_9

    .line 650
    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 652
    :cond_9
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    if-ne v0, v13, :cond_a

    .line 653
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 662
    :cond_a
    add-int/lit8 v13, v13, -0x1

    .line 663
    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_5

    .line 666
    .end local v4           #anim:Landroid/animation/ValueAnimator;
    :cond_b
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v19

    if-lez v19, :cond_d

    .line 667
    const/4 v12, 0x0

    :goto_6
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v12, v0, :cond_c

    .line 668
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/animation/ValueAnimator;

    #calls: Landroid/animation/ValueAnimator;->endAnimation()V
    invoke-static/range {v19 .. v19}, Landroid/animation/ValueAnimator;->access$900(Landroid/animation/ValueAnimator;)V

    .line 667
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 670
    :cond_c
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 675
    :cond_d
    if-eqz v6, :cond_0

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v19

    if-eqz v19, :cond_e

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_0

    .line 676
    :cond_e
    const/16 v19, 0x1

    const-wide/16 v20, 0x0

    invoke-static {}, Landroid/animation/ValueAnimator;->access$1000()J

    move-result-wide v22

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v24

    sub-long v24, v24, v8

    sub-long v22, v22, v24

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v20

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/animation/ValueAnimator$AnimationHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 587
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
