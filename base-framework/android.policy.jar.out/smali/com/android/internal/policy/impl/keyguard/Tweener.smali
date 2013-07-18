.class Lcom/android/internal/policy/impl/keyguard/Tweener;
.super Ljava/lang/Object;
.source "Tweener.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "Tweener"

.field private static mCleanupListener:Landroid/animation/Animator$AnimatorListener;

.field private static sTweens:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Lcom/android/internal/policy/impl/keyguard/Tweener;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field animator:Landroid/animation/ObjectAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/Tweener;->sTweens:Ljava/util/HashMap;

    new-instance v0, Lcom/android/internal/policy/impl/keyguard/Tweener$1;

    invoke-direct {v0}, Lcom/android/internal/policy/impl/keyguard/Tweener$1;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/Tweener;->mCleanupListener:Landroid/animation/Animator$AnimatorListener;

    return-void
.end method

.method public constructor <init>(Landroid/animation/ObjectAnimator;)V
    .locals 0
    .parameter "anim"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/Tweener;->animator:Landroid/animation/ObjectAnimator;

    return-void
.end method

.method static synthetic access$000(Landroid/animation/Animator;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-static {p0}, Lcom/android/internal/policy/impl/keyguard/Tweener;->remove(Landroid/animation/Animator;)V

    return-void
.end method

.method private static remove(Landroid/animation/Animator;)V
    .locals 3
    .parameter "animator"

    .prologue
    sget-object v2, Lcom/android/internal/policy/impl/keyguard/Tweener;->sTweens:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Object;Lcom/android/internal/policy/impl/keyguard/Tweener;>;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Object;Lcom/android/internal/policy/impl/keyguard/Tweener;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/impl/keyguard/Tweener;

    iget-object v2, v2, Lcom/android/internal/policy/impl/keyguard/Tweener;->animator:Landroid/animation/ObjectAnimator;

    if-ne v2, p0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Object;Lcom/android/internal/policy/impl/keyguard/Tweener;>;"
    :cond_1
    return-void
.end method

.method private static varargs replace(Ljava/util/ArrayList;[Ljava/lang/Object;)V
    .locals 7
    .parameter
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/PropertyValuesHolder;",
            ">;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, props:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/PropertyValuesHolder;>;"
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/Object;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v2, v0, v1

    .local v2, killobject:Ljava/lang/Object;
    sget-object v5, Lcom/android/internal/policy/impl/keyguard/Tweener;->sTweens:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/policy/impl/keyguard/Tweener;

    .local v4, tween:Lcom/android/internal/policy/impl/keyguard/Tweener;
    if-eqz v4, :cond_0

    iget-object v5, v4, Lcom/android/internal/policy/impl/keyguard/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->cancel()V

    if-eqz p0, :cond_1

    iget-object v6, v4, Lcom/android/internal/policy/impl/keyguard/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Landroid/animation/PropertyValuesHolder;

    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/animation/PropertyValuesHolder;

    invoke-virtual {v6, v5}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    sget-object v5, Lcom/android/internal/policy/impl/keyguard/Tweener;->sTweens:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .end local v2           #killobject:Ljava/lang/Object;
    .end local v4           #tween:Lcom/android/internal/policy/impl/keyguard/Tweener;
    :cond_2
    return-void
.end method

.method public static reset()V
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/Tweener;->sTweens:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public static varargs to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/internal/policy/impl/keyguard/Tweener;
    .locals 20
    .parameter "object"
    .parameter "duration"
    .parameter "vars"

    .prologue
    const-wide/16 v3, 0x0

    .local v3, delay:J
    const/4 v14, 0x0

    .local v14, updateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    const/4 v9, 0x0

    .local v9, listener:Landroid/animation/Animator$AnimatorListener;
    const/4 v7, 0x0

    .local v7, interpolator:Landroid/animation/TimeInterpolator;
    const/4 v11, 0x0

    .local v11, repeat:I
    const/4 v12, 0x1

    .local v12, repeatmode:I
    new-instance v10, Ljava/util/ArrayList;

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v16, v0

    div-int/lit8 v16, v16, 0x2

    move/from16 v0, v16

    invoke-direct {v10, v0}, Ljava/util/ArrayList;-><init>(I)V

    .local v10, props:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/PropertyValuesHolder;>;"
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v6, v0, :cond_e

    aget-object v16, p3, v6

    move-object/from16 v0, v16

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v16, v0

    if-nez v16, :cond_0

    new-instance v16, Ljava/lang/IllegalArgumentException;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Key must be a string: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    aget-object v18, p3, v6

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v16

    :cond_0
    aget-object v8, p3, v6

    check-cast v8, Ljava/lang/String;

    .local v8, key:Ljava/lang/String;
    add-int/lit8 v16, v6, 0x1

    aget-object v15, p3, v16

    .local v15, value:Ljava/lang/Object;
    const-string v16, "simultaneousTween"

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2

    .end local v15           #value:Ljava/lang/Object;
    :cond_1
    :goto_1
    add-int/lit8 v6, v6, 0x2

    goto :goto_0

    .restart local v15       #value:Ljava/lang/Object;
    :cond_2
    const-string v16, "ease"

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_3

    move-object v7, v15

    check-cast v7, Landroid/animation/TimeInterpolator;

    goto :goto_1

    :cond_3
    const-string v16, "onUpdate"

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_4

    const-string v16, "onUpdateListener"

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_5

    :cond_4
    move-object v14, v15

    check-cast v14, Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    goto :goto_1

    :cond_5
    const-string v16, "onComplete"

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_6

    const-string v16, "onCompleteListener"

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_7

    :cond_6
    move-object v9, v15

    check-cast v9, Landroid/animation/Animator$AnimatorListener;

    goto :goto_1

    :cond_7
    const-string v16, "delay"

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_8

    check-cast v15, Ljava/lang/Number;

    .end local v15           #value:Ljava/lang/Object;
    invoke-virtual {v15}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    goto :goto_1

    .restart local v15       #value:Ljava/lang/Object;
    :cond_8
    const-string v16, "syncWith"

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_1

    const-string v16, "repeat"

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_9

    check-cast v15, Ljava/lang/Number;

    .end local v15           #value:Ljava/lang/Object;
    invoke-virtual {v15}, Ljava/lang/Number;->intValue()I

    move-result v11

    goto :goto_1

    .restart local v15       #value:Ljava/lang/Object;
    :cond_9
    const-string v16, "repeatmode"

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_a

    check-cast v15, Ljava/lang/Number;

    .end local v15           #value:Ljava/lang/Object;
    invoke-virtual {v15}, Ljava/lang/Number;->intValue()I

    move-result v12

    goto :goto_1

    .restart local v15       #value:Ljava/lang/Object;
    :cond_a
    instance-of v0, v15, [F

    move/from16 v16, v0

    if-eqz v16, :cond_b

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v16, v15

    check-cast v16, [F

    check-cast v16, [F

    const/16 v19, 0x0

    aget v16, v16, v19

    aput v16, v17, v18

    const/16 v16, 0x1

    check-cast v15, [F

    .end local v15           #value:Ljava/lang/Object;
    check-cast v15, [F

    const/16 v18, 0x1

    aget v18, v15, v18

    aput v18, v17, v16

    move-object/from16 v0, v17

    invoke-static {v8, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .restart local v15       #value:Ljava/lang/Object;
    :cond_b
    instance-of v0, v15, [I

    move/from16 v16, v0

    if-eqz v16, :cond_c

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [I

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v16, v15

    check-cast v16, [I

    check-cast v16, [I

    const/16 v19, 0x0

    aget v16, v16, v19

    aput v16, v17, v18

    const/16 v16, 0x1

    check-cast v15, [I

    .end local v15           #value:Ljava/lang/Object;
    check-cast v15, [I

    const/16 v18, 0x1

    aget v18, v15, v18

    aput v18, v17, v16

    move-object/from16 v0, v17

    invoke-static {v8, v0}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .restart local v15       #value:Ljava/lang/Object;
    :cond_c
    instance-of v0, v15, Ljava/lang/Number;

    move/from16 v16, v0

    if-eqz v16, :cond_d

    check-cast v15, Ljava/lang/Number;

    .end local v15           #value:Ljava/lang/Object;
    invoke-virtual {v15}, Ljava/lang/Number;->floatValue()F

    move-result v5

    .local v5, floatValue:F
    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput v5, v16, v17

    move-object/from16 v0, v16

    invoke-static {v8, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .end local v5           #floatValue:F
    .restart local v15       #value:Ljava/lang/Object;
    :cond_d
    new-instance v16, Ljava/lang/IllegalArgumentException;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Bad argument for key \""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\" with value "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v16

    .end local v8           #key:Ljava/lang/String;
    .end local v15           #value:Ljava/lang/Object;
    :cond_e
    sget-object v16, Lcom/android/internal/policy/impl/keyguard/Tweener;->sTweens:Ljava/util/HashMap;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/policy/impl/keyguard/Tweener;

    .local v13, tween:Lcom/android/internal/policy/impl/keyguard/Tweener;
    const/4 v2, 0x0

    .local v2, anim:Landroid/animation/ObjectAnimator;
    if-nez v13, :cond_13

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v16

    move/from16 v0, v16

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v16

    check-cast v16, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-instance v13, Lcom/android/internal/policy/impl/keyguard/Tweener;

    .end local v13           #tween:Lcom/android/internal/policy/impl/keyguard/Tweener;
    invoke-direct {v13, v2}, Lcom/android/internal/policy/impl/keyguard/Tweener;-><init>(Landroid/animation/ObjectAnimator;)V

    .restart local v13       #tween:Lcom/android/internal/policy/impl/keyguard/Tweener;
    sget-object v16, Lcom/android/internal/policy/impl/keyguard/Tweener;->sTweens:Ljava/util/HashMap;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    if-eqz v7, :cond_f

    invoke-virtual {v2, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :cond_f
    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->removeAllUpdateListeners()V

    if-eqz v14, :cond_10

    invoke-virtual {v2, v14}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_10
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->removeAllListeners()V

    sget-object v16, Lcom/android/internal/policy/impl/keyguard/Tweener;->mCleanupListener:Landroid/animation/Animator$AnimatorListener;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-eqz v9, :cond_11

    invoke-virtual {v2, v9}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_11
    if-eqz v11, :cond_12

    const-string v16, "Tweener"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "repeat = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-gez v11, :cond_14

    const/16 v16, -0x1

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    :goto_3
    invoke-virtual {v2, v12}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    :cond_12
    return-object v13

    :cond_13
    sget-object v16, Lcom/android/internal/policy/impl/keyguard/Tweener;->sTweens:Ljava/util/HashMap;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/internal/policy/impl/keyguard/Tweener;

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/internal/policy/impl/keyguard/Tweener;->animator:Landroid/animation/ObjectAnimator;

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object p0, v16, v17

    move-object/from16 v0, v16

    invoke-static {v10, v0}, Lcom/android/internal/policy/impl/keyguard/Tweener;->replace(Ljava/util/ArrayList;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_14
    invoke-virtual {v2, v11}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    goto :goto_3
.end method


# virtual methods
.method varargs from(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/internal/policy/impl/keyguard/Tweener;
    .locals 1
    .parameter "object"
    .parameter "duration"
    .parameter "vars"

    .prologue
    invoke-static {p1, p2, p3, p4}, Lcom/android/internal/policy/impl/keyguard/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/internal/policy/impl/keyguard/Tweener;

    move-result-object v0

    return-object v0
.end method
