.class public final Landroid/animation/ObjectAnimator;
.super Landroid/animation/ValueAnimator;
.source "ObjectAnimator.java"


# static fields
.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "ObjectAnimator"


# instance fields
.field private mAutoCancel:Z

.field private mProperty:Landroid/util/Property;

.field private mPropertyName:Ljava/lang/String;

.field private mTarget:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/animation/ObjectAnimator;->mAutoCancel:Z

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Landroid/util/Property;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Landroid/util/Property",
            "<TT;*>;)V"
        }
    .end annotation

    .prologue
    .local p1, "target":Ljava/lang/Object;, "TT;"
    .local p2, "property":Landroid/util/Property;, "Landroid/util/Property<TT;*>;"
    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/animation/ObjectAnimator;->mAutoCancel:Z

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    invoke-virtual {p0, p2}, Landroid/animation/ObjectAnimator;->setProperty(Landroid/util/Property;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "propertyName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/animation/ObjectAnimator;->mAutoCancel:Z

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    invoke-virtual {p0, p2}, Landroid/animation/ObjectAnimator;->setPropertyName(Ljava/lang/String;)V

    return-void
.end method

.method private hasSameTargetAndProperties(Landroid/animation/Animator;)Z
    .locals 7
    .param p1, "anim"    # Landroid/animation/Animator;

    .prologue
    const/4 v5, 0x0

    instance-of v4, p1, Landroid/animation/ObjectAnimator;

    if-eqz v4, :cond_3

    move-object v4, p1

    check-cast v4, Landroid/animation/ObjectAnimator;

    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .local v3, "theirValues":[Landroid/animation/PropertyValuesHolder;
    check-cast p1, Landroid/animation/ObjectAnimator;

    .end local p1    # "anim":Landroid/animation/Animator;
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->getTarget()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->getTarget()Ljava/lang/Object;

    move-result-object v6

    if-ne v4, v6, :cond_3

    iget-object v4, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v4, v4

    array-length v6, v3

    if-ne v4, v6, :cond_3

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v4, v4

    if-ge v0, v4, :cond_2

    iget-object v4, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v1, v4, v0

    .local v1, "pvhMine":Landroid/animation/PropertyValuesHolder;
    aget-object v2, v3, v0

    .local v2, "pvhTheirs":Landroid/animation/PropertyValuesHolder;
    invoke-virtual {v1}, Landroid/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Landroid/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Landroid/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    move v4, v5

    .end local v0    # "i":I
    .end local v1    # "pvhMine":Landroid/animation/PropertyValuesHolder;
    .end local v2    # "pvhTheirs":Landroid/animation/PropertyValuesHolder;
    .end local v3    # "theirValues":[Landroid/animation/PropertyValuesHolder;
    :goto_1
    return v4

    .restart local v0    # "i":I
    .restart local v1    # "pvhMine":Landroid/animation/PropertyValuesHolder;
    .restart local v2    # "pvhTheirs":Landroid/animation/PropertyValuesHolder;
    .restart local v3    # "theirValues":[Landroid/animation/PropertyValuesHolder;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1    # "pvhMine":Landroid/animation/PropertyValuesHolder;
    .end local v2    # "pvhTheirs":Landroid/animation/PropertyValuesHolder;
    :cond_2
    const/4 v4, 0x1

    goto :goto_1

    .end local v0    # "i":I
    .end local v3    # "theirValues":[Landroid/animation/PropertyValuesHolder;
    :cond_3
    move v4, v5

    goto :goto_1
.end method

.method public static varargs ofArgb(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;
    .locals 2
    .param p2, "values"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Landroid/util/Property",
            "<TT;",
            "Ljava/lang/Integer;",
            ">;[I)",
            "Landroid/animation/ObjectAnimator;"
        }
    .end annotation

    .prologue
    .local p0, "target":Ljava/lang/Object;, "TT;"
    .local p1, "property":Landroid/util/Property;, "Landroid/util/Property<TT;Ljava/lang/Integer;>;"
    invoke-static {p0, p1, p2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .local v0, "animator":Landroid/animation/ObjectAnimator;
    invoke-static {}, Landroid/animation/ArgbEvaluator;->getInstance()Landroid/animation/ArgbEvaluator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    return-object v0
.end method

.method public static varargs ofArgb(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;
    .locals 2
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "values"    # [I

    .prologue
    invoke-static {p0, p1, p2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .local v0, "animator":Landroid/animation/ObjectAnimator;
    invoke-static {}, Landroid/animation/ArgbEvaluator;->getInstance()Landroid/animation/ArgbEvaluator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    return-object v0
.end method

.method public static ofFloat(Ljava/lang/Object;Landroid/util/Property;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;
    .locals 5
    .param p3, "path"    # Landroid/graphics/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Landroid/util/Property",
            "<TT;",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/util/Property",
            "<TT;",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/graphics/Path;",
            ")",
            "Landroid/animation/ObjectAnimator;"
        }
    .end annotation

    .prologue
    .local p0, "target":Ljava/lang/Object;, "TT;"
    .local p1, "xProperty":Landroid/util/Property;, "Landroid/util/Property<TT;Ljava/lang/Float;>;"
    .local p2, "yProperty":Landroid/util/Property;, "Landroid/util/Property<TT;Ljava/lang/Float;>;"
    invoke-static {p3}, Landroid/animation/KeyframeSet;->ofPath(Landroid/graphics/Path;)Landroid/animation/PathKeyframes;

    move-result-object v0

    .local v0, "keyframes":Landroid/animation/PathKeyframes;
    invoke-virtual {v0}, Landroid/animation/PathKeyframes;->createXFloatKeyframes()Landroid/animation/Keyframes$FloatKeyframes;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/animation/PropertyValuesHolder;->ofKeyframes(Landroid/util/Property;Landroid/animation/Keyframes;)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .local v1, "x":Landroid/animation/PropertyValuesHolder;
    invoke-virtual {v0}, Landroid/animation/PathKeyframes;->createYFloatKeyframes()Landroid/animation/Keyframes$FloatKeyframes;

    move-result-object v3

    invoke-static {p2, v3}, Landroid/animation/PropertyValuesHolder;->ofKeyframes(Landroid/util/Property;Landroid/animation/Keyframes;)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .local v2, "y":Landroid/animation/PropertyValuesHolder;
    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/PropertyValuesHolder;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object v2, v3, v4

    invoke-static {p0, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    return-object v3
.end method

.method public static varargs ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;
    .locals 1
    .param p2, "values"    # [F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Landroid/util/Property",
            "<TT;",
            "Ljava/lang/Float;",
            ">;[F)",
            "Landroid/animation/ObjectAnimator;"
        }
    .end annotation

    .prologue
    .local p0, "target":Ljava/lang/Object;, "TT;"
    .local p1, "property":Landroid/util/Property;, "Landroid/util/Property<TT;Ljava/lang/Float;>;"
    new-instance v0, Landroid/animation/ObjectAnimator;

    invoke-direct {v0, p0, p1}, Landroid/animation/ObjectAnimator;-><init>(Ljava/lang/Object;Landroid/util/Property;)V

    .local v0, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, p2}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    return-object v0
.end method

.method public static ofFloat(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;
    .locals 5
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "xPropertyName"    # Ljava/lang/String;
    .param p2, "yPropertyName"    # Ljava/lang/String;
    .param p3, "path"    # Landroid/graphics/Path;

    .prologue
    invoke-static {p3}, Landroid/animation/KeyframeSet;->ofPath(Landroid/graphics/Path;)Landroid/animation/PathKeyframes;

    move-result-object v0

    .local v0, "keyframes":Landroid/animation/PathKeyframes;
    invoke-virtual {v0}, Landroid/animation/PathKeyframes;->createXFloatKeyframes()Landroid/animation/Keyframes$FloatKeyframes;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/animation/PropertyValuesHolder;->ofKeyframes(Ljava/lang/String;Landroid/animation/Keyframes;)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .local v1, "x":Landroid/animation/PropertyValuesHolder;
    invoke-virtual {v0}, Landroid/animation/PathKeyframes;->createYFloatKeyframes()Landroid/animation/Keyframes$FloatKeyframes;

    move-result-object v3

    invoke-static {p2, v3}, Landroid/animation/PropertyValuesHolder;->ofKeyframes(Ljava/lang/String;Landroid/animation/Keyframes;)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .local v2, "y":Landroid/animation/PropertyValuesHolder;
    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/PropertyValuesHolder;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object v2, v3, v4

    invoke-static {p0, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    return-object v3
.end method

.method public static varargs ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;
    .locals 1
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "values"    # [F

    .prologue
    new-instance v0, Landroid/animation/ObjectAnimator;

    invoke-direct {v0, p0, p1}, Landroid/animation/ObjectAnimator;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .local v0, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, p2}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    return-object v0
.end method

.method public static ofInt(Ljava/lang/Object;Landroid/util/Property;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;
    .locals 5
    .param p3, "path"    # Landroid/graphics/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Landroid/util/Property",
            "<TT;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/Property",
            "<TT;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/graphics/Path;",
            ")",
            "Landroid/animation/ObjectAnimator;"
        }
    .end annotation

    .prologue
    .local p0, "target":Ljava/lang/Object;, "TT;"
    .local p1, "xProperty":Landroid/util/Property;, "Landroid/util/Property<TT;Ljava/lang/Integer;>;"
    .local p2, "yProperty":Landroid/util/Property;, "Landroid/util/Property<TT;Ljava/lang/Integer;>;"
    invoke-static {p3}, Landroid/animation/KeyframeSet;->ofPath(Landroid/graphics/Path;)Landroid/animation/PathKeyframes;

    move-result-object v0

    .local v0, "keyframes":Landroid/animation/PathKeyframes;
    invoke-virtual {v0}, Landroid/animation/PathKeyframes;->createXIntKeyframes()Landroid/animation/Keyframes$IntKeyframes;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/animation/PropertyValuesHolder;->ofKeyframes(Landroid/util/Property;Landroid/animation/Keyframes;)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .local v1, "x":Landroid/animation/PropertyValuesHolder;
    invoke-virtual {v0}, Landroid/animation/PathKeyframes;->createYIntKeyframes()Landroid/animation/Keyframes$IntKeyframes;

    move-result-object v3

    invoke-static {p2, v3}, Landroid/animation/PropertyValuesHolder;->ofKeyframes(Landroid/util/Property;Landroid/animation/Keyframes;)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .local v2, "y":Landroid/animation/PropertyValuesHolder;
    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/PropertyValuesHolder;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object v2, v3, v4

    invoke-static {p0, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    return-object v3
.end method

.method public static varargs ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;
    .locals 1
    .param p2, "values"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Landroid/util/Property",
            "<TT;",
            "Ljava/lang/Integer;",
            ">;[I)",
            "Landroid/animation/ObjectAnimator;"
        }
    .end annotation

    .prologue
    .local p0, "target":Ljava/lang/Object;, "TT;"
    .local p1, "property":Landroid/util/Property;, "Landroid/util/Property<TT;Ljava/lang/Integer;>;"
    new-instance v0, Landroid/animation/ObjectAnimator;

    invoke-direct {v0, p0, p1}, Landroid/animation/ObjectAnimator;-><init>(Ljava/lang/Object;Landroid/util/Property;)V

    .local v0, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, p2}, Landroid/animation/ObjectAnimator;->setIntValues([I)V

    return-object v0
.end method

.method public static ofInt(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;
    .locals 5
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "xPropertyName"    # Ljava/lang/String;
    .param p2, "yPropertyName"    # Ljava/lang/String;
    .param p3, "path"    # Landroid/graphics/Path;

    .prologue
    invoke-static {p3}, Landroid/animation/KeyframeSet;->ofPath(Landroid/graphics/Path;)Landroid/animation/PathKeyframes;

    move-result-object v0

    .local v0, "keyframes":Landroid/animation/PathKeyframes;
    invoke-virtual {v0}, Landroid/animation/PathKeyframes;->createXIntKeyframes()Landroid/animation/Keyframes$IntKeyframes;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/animation/PropertyValuesHolder;->ofKeyframes(Ljava/lang/String;Landroid/animation/Keyframes;)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .local v1, "x":Landroid/animation/PropertyValuesHolder;
    invoke-virtual {v0}, Landroid/animation/PathKeyframes;->createYIntKeyframes()Landroid/animation/Keyframes$IntKeyframes;

    move-result-object v3

    invoke-static {p2, v3}, Landroid/animation/PropertyValuesHolder;->ofKeyframes(Ljava/lang/String;Landroid/animation/Keyframes;)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .local v2, "y":Landroid/animation/PropertyValuesHolder;
    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/PropertyValuesHolder;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object v2, v3, v4

    invoke-static {p0, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    return-object v3
.end method

.method public static varargs ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;
    .locals 1
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "values"    # [I

    .prologue
    new-instance v0, Landroid/animation/ObjectAnimator;

    invoke-direct {v0, p0, p1}, Landroid/animation/ObjectAnimator;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .local v0, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, p2}, Landroid/animation/ObjectAnimator;->setIntValues([I)V

    return-object v0
.end method

.method public static varargs ofMultiFloat(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeConverter;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;
    .locals 3
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "propertyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Landroid/animation/TypeConverter",
            "<TT;[F>;",
            "Landroid/animation/TypeEvaluator",
            "<TT;>;[TT;)",
            "Landroid/animation/ObjectAnimator;"
        }
    .end annotation

    .prologue
    .local p2, "converter":Landroid/animation/TypeConverter;, "Landroid/animation/TypeConverter<TT;[F>;"
    .local p3, "evaluator":Landroid/animation/TypeEvaluator;, "Landroid/animation/TypeEvaluator<TT;>;"
    .local p4, "values":[Ljava/lang/Object;, "[TT;"
    invoke-static {p1, p2, p3, p4}, Landroid/animation/PropertyValuesHolder;->ofMultiFloat(Ljava/lang/String;Landroid/animation/TypeConverter;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .local v0, "pvh":Landroid/animation/PropertyValuesHolder;
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {p0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    return-object v1
.end method

.method public static ofMultiFloat(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;
    .locals 3
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "path"    # Landroid/graphics/Path;

    .prologue
    invoke-static {p1, p2}, Landroid/animation/PropertyValuesHolder;->ofMultiFloat(Ljava/lang/String;Landroid/graphics/Path;)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .local v0, "pvh":Landroid/animation/PropertyValuesHolder;
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {p0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    return-object v1
.end method

.method public static ofMultiFloat(Ljava/lang/Object;Ljava/lang/String;[[F)Landroid/animation/ObjectAnimator;
    .locals 3
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "values"    # [[F

    .prologue
    invoke-static {p1, p2}, Landroid/animation/PropertyValuesHolder;->ofMultiFloat(Ljava/lang/String;[[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .local v0, "pvh":Landroid/animation/PropertyValuesHolder;
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {p0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    return-object v1
.end method

.method public static varargs ofMultiInt(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeConverter;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;
    .locals 3
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "propertyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Landroid/animation/TypeConverter",
            "<TT;[I>;",
            "Landroid/animation/TypeEvaluator",
            "<TT;>;[TT;)",
            "Landroid/animation/ObjectAnimator;"
        }
    .end annotation

    .prologue
    .local p2, "converter":Landroid/animation/TypeConverter;, "Landroid/animation/TypeConverter<TT;[I>;"
    .local p3, "evaluator":Landroid/animation/TypeEvaluator;, "Landroid/animation/TypeEvaluator<TT;>;"
    .local p4, "values":[Ljava/lang/Object;, "[TT;"
    invoke-static {p1, p2, p3, p4}, Landroid/animation/PropertyValuesHolder;->ofMultiInt(Ljava/lang/String;Landroid/animation/TypeConverter;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .local v0, "pvh":Landroid/animation/PropertyValuesHolder;
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {p0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    return-object v1
.end method

.method public static ofMultiInt(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;
    .locals 3
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "path"    # Landroid/graphics/Path;

    .prologue
    invoke-static {p1, p2}, Landroid/animation/PropertyValuesHolder;->ofMultiInt(Ljava/lang/String;Landroid/graphics/Path;)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .local v0, "pvh":Landroid/animation/PropertyValuesHolder;
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {p0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    return-object v1
.end method

.method public static ofMultiInt(Ljava/lang/Object;Ljava/lang/String;[[I)Landroid/animation/ObjectAnimator;
    .locals 3
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "values"    # [[I

    .prologue
    invoke-static {p1, p2}, Landroid/animation/PropertyValuesHolder;->ofMultiInt(Ljava/lang/String;[[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .local v0, "pvh":Landroid/animation/PropertyValuesHolder;
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {p0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    return-object v1
.end method

.method public static varargs ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "P:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Landroid/util/Property",
            "<TT;TP;>;",
            "Landroid/animation/TypeConverter",
            "<TV;TP;>;",
            "Landroid/animation/TypeEvaluator",
            "<TV;>;[TV;)",
            "Landroid/animation/ObjectAnimator;"
        }
    .end annotation

    .prologue
    .local p0, "target":Ljava/lang/Object;, "TT;"
    .local p1, "property":Landroid/util/Property;, "Landroid/util/Property<TT;TP;>;"
    .local p2, "converter":Landroid/animation/TypeConverter;, "Landroid/animation/TypeConverter<TV;TP;>;"
    .local p3, "evaluator":Landroid/animation/TypeEvaluator;, "Landroid/animation/TypeEvaluator<TV;>;"
    .local p4, "values":[Ljava/lang/Object;, "[TV;"
    invoke-static {p1, p2, p3, p4}, Landroid/animation/PropertyValuesHolder;->ofObject(Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .local v0, "pvh":Landroid/animation/PropertyValuesHolder;
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {p0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    return-object v1
.end method

.method public static ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;
    .locals 3
    .param p3, "path"    # Landroid/graphics/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Landroid/util/Property",
            "<TT;TV;>;",
            "Landroid/animation/TypeConverter",
            "<",
            "Landroid/graphics/PointF;",
            "TV;>;",
            "Landroid/graphics/Path;",
            ")",
            "Landroid/animation/ObjectAnimator;"
        }
    .end annotation

    .prologue
    .local p0, "target":Ljava/lang/Object;, "TT;"
    .local p1, "property":Landroid/util/Property;, "Landroid/util/Property<TT;TV;>;"
    .local p2, "converter":Landroid/animation/TypeConverter;, "Landroid/animation/TypeConverter<Landroid/graphics/PointF;TV;>;"
    invoke-static {p1, p2, p3}, Landroid/animation/PropertyValuesHolder;->ofObject(Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .local v0, "pvh":Landroid/animation/PropertyValuesHolder;
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {p0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    return-object v1
.end method

.method public static varargs ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Landroid/util/Property",
            "<TT;TV;>;",
            "Landroid/animation/TypeEvaluator",
            "<TV;>;[TV;)",
            "Landroid/animation/ObjectAnimator;"
        }
    .end annotation

    .prologue
    .local p0, "target":Ljava/lang/Object;, "TT;"
    .local p1, "property":Landroid/util/Property;, "Landroid/util/Property<TT;TV;>;"
    .local p2, "evaluator":Landroid/animation/TypeEvaluator;, "Landroid/animation/TypeEvaluator<TV;>;"
    .local p3, "values":[Ljava/lang/Object;, "[TV;"
    new-instance v0, Landroid/animation/ObjectAnimator;

    invoke-direct {v0, p0, p1}, Landroid/animation/ObjectAnimator;-><init>(Ljava/lang/Object;Landroid/util/Property;)V

    .local v0, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, p3}, Landroid/animation/ObjectAnimator;->setObjectValues([Ljava/lang/Object;)V

    invoke-virtual {v0, p2}, Landroid/animation/ObjectAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    return-object v0
.end method

.method public static ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;
    .locals 3
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p3, "path"    # Landroid/graphics/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Landroid/animation/TypeConverter",
            "<",
            "Landroid/graphics/PointF;",
            "*>;",
            "Landroid/graphics/Path;",
            ")",
            "Landroid/animation/ObjectAnimator;"
        }
    .end annotation

    .prologue
    .local p2, "converter":Landroid/animation/TypeConverter;, "Landroid/animation/TypeConverter<Landroid/graphics/PointF;*>;"
    invoke-static {p1, p2, p3}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .local v0, "pvh":Landroid/animation/PropertyValuesHolder;
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {p0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    return-object v1
.end method

.method public static varargs ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;
    .locals 1
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "evaluator"    # Landroid/animation/TypeEvaluator;
    .param p3, "values"    # [Ljava/lang/Object;

    .prologue
    new-instance v0, Landroid/animation/ObjectAnimator;

    invoke-direct {v0, p0, p1}, Landroid/animation/ObjectAnimator;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .local v0, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, p3}, Landroid/animation/ObjectAnimator;->setObjectValues([Ljava/lang/Object;)V

    invoke-virtual {v0, p2}, Landroid/animation/ObjectAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    return-object v0
.end method

.method public static varargs ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;
    .locals 1
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "values"    # [Landroid/animation/PropertyValuesHolder;

    .prologue
    new-instance v0, Landroid/animation/ObjectAnimator;

    invoke-direct {v0}, Landroid/animation/ObjectAnimator;-><init>()V

    .local v0, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    return-object v0
.end method


# virtual methods
.method animateValue(F)V
    .locals 4
    .param p1, "fraction"    # F

    .prologue
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->getTarget()Ljava/lang/Object;

    move-result-object v2

    .local v2, "target":Ljava/lang/Object;
    iget-object v3, p0, Landroid/animation/ObjectAnimator;->mTarget:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_1

    if-nez v2, :cond_1

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    return-void

    :cond_1
    invoke-super {p0, p1}, Landroid/animation/ValueAnimator;->animateValue(F)V

    iget-object v3, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v1, v3

    .local v1, "numValues":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v3, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v3, v3, v0

    invoke-virtual {v3, v2}, Landroid/animation/PropertyValuesHolder;->setAnimatedValue(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic clone()Landroid/animation/Animator;
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->clone()Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method public clone()Landroid/animation/ObjectAnimator;
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/animation/ValueAnimator;->clone()Landroid/animation/ValueAnimator;

    move-result-object v0

    check-cast v0, Landroid/animation/ObjectAnimator;

    .local v0, "anim":Landroid/animation/ObjectAnimator;
    return-object v0
.end method

.method public bridge synthetic clone()Landroid/animation/ValueAnimator;
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->clone()Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->clone()Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method getNameForTrace()Ljava/lang/String;
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "animator:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->getPropertyName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPropertyName()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .local v1, "propertyName":Ljava/lang/String;
    iget-object v2, p0, Landroid/animation/ObjectAnimator;->mPropertyName:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v1, p0, Landroid/animation/ObjectAnimator;->mPropertyName:Ljava/lang/String;

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget-object v2, p0, Landroid/animation/ObjectAnimator;->mProperty:Landroid/util/Property;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/animation/ObjectAnimator;->mProperty:Landroid/util/Property;

    invoke-virtual {v2}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v2, v2

    if-lez v2, :cond_0

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    if-nez v0, :cond_3

    const-string v1, ""

    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2
.end method

.method public getTarget()Ljava/lang/Object;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/animation/ObjectAnimator;->mTarget:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/animation/ObjectAnimator;->mTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method initAnimation()V
    .locals 4

    .prologue
    iget-boolean v3, p0, Landroid/animation/ObjectAnimator;->mInitialized:Z

    if-nez v3, :cond_1

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->getTarget()Ljava/lang/Object;

    move-result-object v2

    .local v2, "target":Ljava/lang/Object;
    if-eqz v2, :cond_0

    iget-object v3, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v1, v3

    .local v1, "numValues":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v3, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v3, v3, v0

    invoke-virtual {v3, v2}, Landroid/animation/PropertyValuesHolder;->setupSetterAndGetter(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    .end local v1    # "numValues":I
    :cond_0
    invoke-super {p0}, Landroid/animation/ValueAnimator;->initAnimation()V

    .end local v2    # "target":Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method public setAutoCancel(Z)V
    .locals 0
    .param p1, "cancel"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/animation/ObjectAnimator;->mAutoCancel:Z

    return-void
.end method

.method public bridge synthetic setDuration(J)Landroid/animation/Animator;
    .locals 1

    .prologue
    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method public setDuration(J)Landroid/animation/ObjectAnimator;
    .locals 1
    .param p1, "duration"    # J

    .prologue
    invoke-super {p0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method public bridge synthetic setDuration(J)Landroid/animation/ValueAnimator;
    .locals 1

    .prologue
    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method public varargs setFloatValues([F)V
    .locals 3
    .param p1, "values"    # [F

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v0, v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Landroid/animation/ObjectAnimator;->mProperty:Landroid/util/Property;

    if-eqz v0, :cond_1

    new-array v0, v1, [Landroid/animation/PropertyValuesHolder;

    iget-object v1, p0, Landroid/animation/ObjectAnimator;->mProperty:Landroid/util/Property;

    invoke-static {v1, p1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    :goto_0
    return-void

    :cond_1
    new-array v0, v1, [Landroid/animation/PropertyValuesHolder;

    iget-object v1, p0, Landroid/animation/ObjectAnimator;->mPropertyName:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    goto :goto_0
.end method

.method public varargs setIntValues([I)V
    .locals 3
    .param p1, "values"    # [I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v0, v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Landroid/animation/ObjectAnimator;->mProperty:Landroid/util/Property;

    if-eqz v0, :cond_1

    new-array v0, v1, [Landroid/animation/PropertyValuesHolder;

    iget-object v1, p0, Landroid/animation/ObjectAnimator;->mProperty:Landroid/util/Property;

    invoke-static {v1, p1}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    :goto_0
    return-void

    :cond_1
    new-array v0, v1, [Landroid/animation/PropertyValuesHolder;

    iget-object v1, p0, Landroid/animation/ObjectAnimator;->mPropertyName:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    goto :goto_0
.end method

.method public varargs setObjectValues([Ljava/lang/Object;)V
    .locals 4
    .param p1, "values"    # [Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v1, v1

    if-nez v1, :cond_2

    :cond_0
    iget-object v1, p0, Landroid/animation/ObjectAnimator;->mProperty:Landroid/util/Property;

    if-eqz v1, :cond_1

    new-array v1, v2, [Landroid/animation/PropertyValuesHolder;

    iget-object v2, p0, Landroid/animation/ObjectAnimator;->mProperty:Landroid/util/Property;

    check-cast v0, Landroid/animation/TypeEvaluator;

    invoke-static {v2, v0, p1}, Landroid/animation/PropertyValuesHolder;->ofObject(Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    aput-object v0, v1, v3

    invoke-virtual {p0, v1}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    :goto_0
    return-void

    :cond_1
    new-array v1, v2, [Landroid/animation/PropertyValuesHolder;

    iget-object v2, p0, Landroid/animation/ObjectAnimator;->mPropertyName:Ljava/lang/String;

    check-cast v0, Landroid/animation/TypeEvaluator;

    invoke-static {v2, v0, p1}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    aput-object v0, v1, v3

    invoke-virtual {p0, v1}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Landroid/animation/ValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setProperty(Landroid/util/Property;)V
    .locals 5
    .param p1, "property"    # Landroid/util/Property;

    .prologue
    const/4 v4, 0x0

    iget-object v2, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v1, v2, v4

    .local v1, "valuesHolder":Landroid/animation/PropertyValuesHolder;
    invoke-virtual {v1}, Landroid/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v0

    .local v0, "oldName":Ljava/lang/String;
    invoke-virtual {v1, p1}, Landroid/animation/PropertyValuesHolder;->setProperty(Landroid/util/Property;)V

    iget-object v2, p0, Landroid/animation/ObjectAnimator;->mValuesMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Landroid/animation/ObjectAnimator;->mValuesMap:Ljava/util/HashMap;

    iget-object v3, p0, Landroid/animation/ObjectAnimator;->mPropertyName:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v0    # "oldName":Ljava/lang/String;
    .end local v1    # "valuesHolder":Landroid/animation/PropertyValuesHolder;
    :cond_0
    iget-object v2, p0, Landroid/animation/ObjectAnimator;->mProperty:Landroid/util/Property;

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/animation/ObjectAnimator;->mPropertyName:Ljava/lang/String;

    :cond_1
    iput-object p1, p0, Landroid/animation/ObjectAnimator;->mProperty:Landroid/util/Property;

    iput-boolean v4, p0, Landroid/animation/ObjectAnimator;->mInitialized:Z

    return-void
.end method

.method public setPropertyName(Ljava/lang/String;)V
    .locals 4
    .param p1, "propertyName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    iget-object v2, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v1, v2, v3

    .local v1, "valuesHolder":Landroid/animation/PropertyValuesHolder;
    invoke-virtual {v1}, Landroid/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v0

    .local v0, "oldName":Ljava/lang/String;
    invoke-virtual {v1, p1}, Landroid/animation/PropertyValuesHolder;->setPropertyName(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/animation/ObjectAnimator;->mValuesMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Landroid/animation/ObjectAnimator;->mValuesMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v0    # "oldName":Ljava/lang/String;
    .end local v1    # "valuesHolder":Landroid/animation/PropertyValuesHolder;
    :cond_0
    iput-object p1, p0, Landroid/animation/ObjectAnimator;->mPropertyName:Ljava/lang/String;

    iput-boolean v3, p0, Landroid/animation/ObjectAnimator;->mInitialized:Z

    return-void
.end method

.method public setTarget(Ljava/lang/Object;)V
    .locals 2
    .param p1, "target"    # Ljava/lang/Object;

    .prologue
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->getTarget()Ljava/lang/Object;

    move-result-object v0

    .local v0, "oldTarget":Ljava/lang/Object;
    if-eq v0, p1, :cond_1

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    if-nez p1, :cond_2

    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Landroid/animation/ObjectAnimator;->mTarget:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/animation/ObjectAnimator;->mInitialized:Z

    :cond_1
    return-void

    :cond_2
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setupEndValues()V
    .locals 4

    .prologue
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->initAnimation()V

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->getTarget()Ljava/lang/Object;

    move-result-object v2

    .local v2, "target":Ljava/lang/Object;
    if-eqz v2, :cond_0

    iget-object v3, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v1, v3

    .local v1, "numValues":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v3, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v3, v3, v0

    invoke-virtual {v3, v2}, Landroid/animation/PropertyValuesHolder;->setupEndValue(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    .end local v1    # "numValues":I
    :cond_0
    return-void
.end method

.method public setupStartValues()V
    .locals 4

    .prologue
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->initAnimation()V

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->getTarget()Ljava/lang/Object;

    move-result-object v2

    .local v2, "target":Ljava/lang/Object;
    if-eqz v2, :cond_0

    iget-object v3, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v1, v3

    .local v1, "numValues":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v3, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v3, v3, v0

    invoke-virtual {v3, v2}, Landroid/animation/PropertyValuesHolder;->setupStartValue(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    .end local v1    # "numValues":I
    :cond_0
    return-void
.end method

.method public start()V
    .locals 5

    .prologue
    sget-object v4, Landroid/animation/ObjectAnimator;->sAnimationHandler:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/ValueAnimator$AnimationHandler;

    .local v1, "handler":Landroid/animation/ValueAnimator$AnimationHandler;
    if-eqz v1, :cond_5

    iget-object v4, v1, Landroid/animation/ValueAnimator$AnimationHandler;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, "numAnims":I
    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    iget-object v4, v1, Landroid/animation/ValueAnimator$AnimationHandler;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Landroid/animation/ObjectAnimator;

    if-eqz v4, :cond_0

    iget-object v4, v1, Landroid/animation/ValueAnimator$AnimationHandler;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ObjectAnimator;

    .local v0, "anim":Landroid/animation/ObjectAnimator;
    iget-boolean v4, v0, Landroid/animation/ObjectAnimator;->mAutoCancel:Z

    if-eqz v4, :cond_0

    invoke-direct {p0, v0}, Landroid/animation/ObjectAnimator;->hasSameTargetAndProperties(Landroid/animation/Animator;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    iget-object v4, v1, Landroid/animation/ValueAnimator$AnimationHandler;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    :goto_1
    if-ltz v2, :cond_3

    iget-object v4, v1, Landroid/animation/ValueAnimator$AnimationHandler;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Landroid/animation/ObjectAnimator;

    if-eqz v4, :cond_2

    iget-object v4, v1, Landroid/animation/ValueAnimator$AnimationHandler;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ObjectAnimator;

    .restart local v0    # "anim":Landroid/animation/ObjectAnimator;
    iget-boolean v4, v0, Landroid/animation/ObjectAnimator;->mAutoCancel:Z

    if-eqz v4, :cond_2

    invoke-direct {p0, v0}, Landroid/animation/ObjectAnimator;->hasSameTargetAndProperties(Landroid/animation/Animator;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_3
    iget-object v4, v1, Landroid/animation/ValueAnimator$AnimationHandler;->mDelayedAnims:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    :goto_2
    if-ltz v2, :cond_5

    iget-object v4, v1, Landroid/animation/ValueAnimator$AnimationHandler;->mDelayedAnims:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Landroid/animation/ObjectAnimator;

    if-eqz v4, :cond_4

    iget-object v4, v1, Landroid/animation/ValueAnimator$AnimationHandler;->mDelayedAnims:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ObjectAnimator;

    .restart local v0    # "anim":Landroid/animation/ObjectAnimator;
    iget-boolean v4, v0, Landroid/animation/ObjectAnimator;->mAutoCancel:Z

    if-eqz v4, :cond_4

    invoke-direct {p0, v0}, Landroid/animation/ObjectAnimator;->hasSameTargetAndProperties(Landroid/animation/Animator;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .end local v2    # "i":I
    .end local v3    # "numAnims":I
    :cond_5
    invoke-super {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ObjectAnimator@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", target "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->getTarget()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, "returnVal":Ljava/lang/String;
    iget-object v2, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/animation/PropertyValuesHolder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    :cond_0
    return-object v1
.end method
