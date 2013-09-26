.class public final Landroid/animation/ObjectAnimator;
.super Landroid/animation/ValueAnimator;
.source "ObjectAnimator.java"


# static fields
.field private static final DBG:Z


# instance fields
.field private mProperty:Landroid/util/Property;

.field private mPropertyName:Ljava/lang/String;

.field private mTarget:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Landroid/util/Property;)V
    .locals 0
    .parameter
    .parameter
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
    .local p1, target:Ljava/lang/Object;,"TT;"
    .local p2, property:Landroid/util/Property;,"Landroid/util/Property<TT;*>;"
    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object p1, p0, Landroid/animation/ObjectAnimator;->mTarget:Ljava/lang/Object;

    invoke-virtual {p0, p2}, Landroid/animation/ObjectAnimator;->setProperty(Landroid/util/Property;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .parameter "target"
    .parameter "propertyName"

    .prologue
    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object p1, p0, Landroid/animation/ObjectAnimator;->mTarget:Ljava/lang/Object;

    invoke-virtual {p0, p2}, Landroid/animation/ObjectAnimator;->setPropertyName(Ljava/lang/String;)V

    return-void
.end method

.method public static varargs ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;
    .locals 1
    .parameter
    .parameter
    .parameter "values"
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
    .local p0, target:Ljava/lang/Object;,"TT;"
    .local p1, property:Landroid/util/Property;,"Landroid/util/Property<TT;Ljava/lang/Float;>;"
    new-instance v0, Landroid/animation/ObjectAnimator;

    invoke-direct {v0, p0, p1}, Landroid/animation/ObjectAnimator;-><init>(Ljava/lang/Object;Landroid/util/Property;)V

    .local v0, anim:Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, p2}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    return-object v0
.end method

.method public static varargs ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;
    .locals 1
    .parameter "target"
    .parameter "propertyName"
    .parameter "values"

    .prologue
    new-instance v0, Landroid/animation/ObjectAnimator;

    invoke-direct {v0, p0, p1}, Landroid/animation/ObjectAnimator;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .local v0, anim:Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, p2}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    return-object v0
.end method

.method public static varargs ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;
    .locals 1
    .parameter
    .parameter
    .parameter "values"
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
    .local p0, target:Ljava/lang/Object;,"TT;"
    .local p1, property:Landroid/util/Property;,"Landroid/util/Property<TT;Ljava/lang/Integer;>;"
    new-instance v0, Landroid/animation/ObjectAnimator;

    invoke-direct {v0, p0, p1}, Landroid/animation/ObjectAnimator;-><init>(Ljava/lang/Object;Landroid/util/Property;)V

    .local v0, anim:Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, p2}, Landroid/animation/ObjectAnimator;->setIntValues([I)V

    return-object v0
.end method

.method public static varargs ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;
    .locals 1
    .parameter "target"
    .parameter "propertyName"
    .parameter "values"

    .prologue
    new-instance v0, Landroid/animation/ObjectAnimator;

    invoke-direct {v0, p0, p1}, Landroid/animation/ObjectAnimator;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .local v0, anim:Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, p2}, Landroid/animation/ObjectAnimator;->setIntValues([I)V

    return-object v0
.end method

.method public static varargs ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
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
    .local p0, target:Ljava/lang/Object;,"TT;"
    .local p1, property:Landroid/util/Property;,"Landroid/util/Property<TT;TV;>;"
    .local p2, evaluator:Landroid/animation/TypeEvaluator;,"Landroid/animation/TypeEvaluator<TV;>;"
    .local p3, values:[Ljava/lang/Object;,"[TV;"
    new-instance v0, Landroid/animation/ObjectAnimator;

    invoke-direct {v0, p0, p1}, Landroid/animation/ObjectAnimator;-><init>(Ljava/lang/Object;Landroid/util/Property;)V

    .local v0, anim:Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, p3}, Landroid/animation/ObjectAnimator;->setObjectValues([Ljava/lang/Object;)V

    invoke-virtual {v0, p2}, Landroid/animation/ObjectAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    return-object v0
.end method

.method public static varargs ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;
    .locals 1
    .parameter "target"
    .parameter "propertyName"
    .parameter "evaluator"
    .parameter "values"

    .prologue
    new-instance v0, Landroid/animation/ObjectAnimator;

    invoke-direct {v0, p0, p1}, Landroid/animation/ObjectAnimator;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .local v0, anim:Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, p3}, Landroid/animation/ObjectAnimator;->setObjectValues([Ljava/lang/Object;)V

    invoke-virtual {v0, p2}, Landroid/animation/ObjectAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    return-object v0
.end method

.method public static varargs ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;
    .locals 1
    .parameter "target"
    .parameter "values"

    .prologue
    new-instance v0, Landroid/animation/ObjectAnimator;

    invoke-direct {v0}, Landroid/animation/ObjectAnimator;-><init>()V

    .local v0, anim:Landroid/animation/ObjectAnimator;
    iput-object p0, v0, Landroid/animation/ObjectAnimator;->mTarget:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    return-object v0
.end method


# virtual methods
.method animateValue(F)V
    .locals 4
    .parameter "fraction"

    .prologue
    invoke-super {p0, p1}, Landroid/animation/ValueAnimator;->animateValue(F)V

    iget-object v2, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v1, v2

    .local v1, numValues:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v2, v2, v0

    iget-object v3, p0, Landroid/animation/ObjectAnimator;->mTarget:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Landroid/animation/PropertyValuesHolder;->setAnimatedValue(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
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

    .local v0, anim:Landroid/animation/ObjectAnimator;
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

.method public getPropertyName()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/animation/ObjectAnimator;->mPropertyName:Ljava/lang/String;

    return-object v0
.end method

.method public getTarget()Ljava/lang/Object;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/animation/ObjectAnimator;->mTarget:Ljava/lang/Object;

    return-object v0
.end method

.method initAnimation()V
    .locals 4

    .prologue
    iget-boolean v2, p0, Landroid/animation/ObjectAnimator;->mInitialized:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v1, v2

    .local v1, numValues:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v2, v2, v0

    iget-object v3, p0, Landroid/animation/ObjectAnimator;->mTarget:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Landroid/animation/PropertyValuesHolder;->setupSetterAndGetter(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0}, Landroid/animation/ValueAnimator;->initAnimation()V

    .end local v0           #i:I
    .end local v1           #numValues:I
    :cond_1
    return-void
.end method

.method public bridge synthetic setDuration(J)Landroid/animation/Animator;
    .locals 1
    .parameter "x0"

    .prologue
    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method public setDuration(J)Landroid/animation/ObjectAnimator;
    .locals 0
    .parameter "duration"

    .prologue
    invoke-super {p0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method public bridge synthetic setDuration(J)Landroid/animation/ValueAnimator;
    .locals 1
    .parameter "x0"

    .prologue
    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method public varargs setFloatValues([F)V
    .locals 3
    .parameter "values"

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
    .parameter "values"

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
    .parameter "values"

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
    .parameter "property"

    .prologue
    const/4 v4, 0x0

    iget-object v2, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v1, v2, v4

    .local v1, valuesHolder:Landroid/animation/PropertyValuesHolder;
    invoke-virtual {v1}, Landroid/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v0

    .local v0, oldName:Ljava/lang/String;
    invoke-virtual {v1, p1}, Landroid/animation/PropertyValuesHolder;->setProperty(Landroid/util/Property;)V

    iget-object v2, p0, Landroid/animation/ObjectAnimator;->mValuesMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Landroid/animation/ObjectAnimator;->mValuesMap:Ljava/util/HashMap;

    iget-object v3, p0, Landroid/animation/ObjectAnimator;->mPropertyName:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v0           #oldName:Ljava/lang/String;
    .end local v1           #valuesHolder:Landroid/animation/PropertyValuesHolder;
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
    .parameter "propertyName"

    .prologue
    const/4 v3, 0x0

    iget-object v2, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v1, v2, v3

    .local v1, valuesHolder:Landroid/animation/PropertyValuesHolder;
    invoke-virtual {v1}, Landroid/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v0

    .local v0, oldName:Ljava/lang/String;
    invoke-virtual {v1, p1}, Landroid/animation/PropertyValuesHolder;->setPropertyName(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/animation/ObjectAnimator;->mValuesMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Landroid/animation/ObjectAnimator;->mValuesMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v0           #oldName:Ljava/lang/String;
    .end local v1           #valuesHolder:Landroid/animation/PropertyValuesHolder;
    :cond_0
    iput-object p1, p0, Landroid/animation/ObjectAnimator;->mPropertyName:Ljava/lang/String;

    iput-boolean v3, p0, Landroid/animation/ObjectAnimator;->mInitialized:Z

    return-void
.end method

.method public setTarget(Ljava/lang/Object;)V
    .locals 3
    .parameter "target"

    .prologue
    iget-object v1, p0, Landroid/animation/ObjectAnimator;->mTarget:Ljava/lang/Object;

    if-eq v1, p1, :cond_0

    iget-object v0, p0, Landroid/animation/ObjectAnimator;->mTarget:Ljava/lang/Object;

    .local v0, oldTarget:Ljava/lang/Object;
    iput-object p1, p0, Landroid/animation/ObjectAnimator;->mTarget:Ljava/lang/Object;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_1

    .end local v0           #oldTarget:Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .restart local v0       #oldTarget:Ljava/lang/Object;
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/animation/ObjectAnimator;->mInitialized:Z

    goto :goto_0
.end method

.method public setupEndValues()V
    .locals 4

    .prologue
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->initAnimation()V

    iget-object v2, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v1, v2

    .local v1, numValues:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v2, v2, v0

    iget-object v3, p0, Landroid/animation/ObjectAnimator;->mTarget:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Landroid/animation/PropertyValuesHolder;->setupEndValue(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setupStartValues()V
    .locals 4

    .prologue
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->initAnimation()V

    iget-object v2, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    array-length v1, v2

    .local v1, numValues:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    aget-object v2, v2, v0

    iget-object v3, p0, Landroid/animation/ObjectAnimator;->mTarget:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Landroid/animation/PropertyValuesHolder;->setupStartValue(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public start()V
    .locals 0

    .prologue
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

    iget-object v3, p0, Landroid/animation/ObjectAnimator;->mTarget:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, returnVal:Ljava/lang/String;
    iget-object v2, p0, Landroid/animation/ObjectAnimator;->mValues:[Landroid/animation/PropertyValuesHolder;

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    .local v0, i:I
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

    .end local v0           #i:I
    :cond_0
    return-object v1
.end method
