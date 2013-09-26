.class Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;
.super Landroid/animation/PropertyValuesHolder;
.source "PropertyValuesHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/animation/PropertyValuesHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IntPropertyValuesHolder"
.end annotation


# static fields
.field private static final sJNISetterPropertyMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field mIntAnimatedValue:I

.field mIntKeyframeSet:Landroid/animation/IntKeyframeSet;

.field private mIntProperty:Landroid/util/IntProperty;

.field mJniSetter:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->sJNISetterPropertyMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/util/Property;Landroid/animation/IntKeyframeSet;)V
    .locals 1
    .parameter "property"
    .parameter "keyframeSet"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/animation/PropertyValuesHolder;-><init>(Landroid/util/Property;Landroid/animation/PropertyValuesHolder$1;)V

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    iput-object v0, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mValueType:Ljava/lang/Class;

    iput-object p2, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mKeyframeSet:Landroid/animation/KeyframeSet;

    iget-object v0, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mKeyframeSet:Landroid/animation/KeyframeSet;

    check-cast v0, Landroid/animation/IntKeyframeSet;

    iput-object v0, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntKeyframeSet:Landroid/animation/IntKeyframeSet;

    instance-of v0, p1, Landroid/util/IntProperty;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mProperty:Landroid/util/Property;

    check-cast v0, Landroid/util/IntProperty;

    iput-object v0, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntProperty:Landroid/util/IntProperty;

    :cond_0
    return-void
.end method

.method public varargs constructor <init>(Landroid/util/Property;[I)V
    .locals 1
    .parameter "property"
    .parameter "values"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/animation/PropertyValuesHolder;-><init>(Landroid/util/Property;Landroid/animation/PropertyValuesHolder$1;)V

    invoke-virtual {p0, p2}, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->setIntValues([I)V

    instance-of v0, p1, Landroid/util/IntProperty;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mProperty:Landroid/util/Property;

    check-cast v0, Landroid/util/IntProperty;

    iput-object v0, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntProperty:Landroid/util/IntProperty;

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/animation/IntKeyframeSet;)V
    .locals 1
    .parameter "propertyName"
    .parameter "keyframeSet"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/animation/PropertyValuesHolder;-><init>(Ljava/lang/String;Landroid/animation/PropertyValuesHolder$1;)V

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    iput-object v0, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mValueType:Ljava/lang/Class;

    iput-object p2, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mKeyframeSet:Landroid/animation/KeyframeSet;

    iget-object v0, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mKeyframeSet:Landroid/animation/KeyframeSet;

    check-cast v0, Landroid/animation/IntKeyframeSet;

    iput-object v0, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntKeyframeSet:Landroid/animation/IntKeyframeSet;

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;[I)V
    .locals 1
    .parameter "propertyName"
    .parameter "values"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/animation/PropertyValuesHolder;-><init>(Ljava/lang/String;Landroid/animation/PropertyValuesHolder$1;)V

    invoke-virtual {p0, p2}, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->setIntValues([I)V

    return-void
.end method


# virtual methods
.method calculateValue(F)V
    .locals 1
    .parameter "fraction"

    .prologue
    iget-object v0, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntKeyframeSet:Landroid/animation/IntKeyframeSet;

    invoke-virtual {v0, p1}, Landroid/animation/IntKeyframeSet;->getIntValue(F)I

    move-result v0

    iput v0, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntAnimatedValue:I

    return-void
.end method

.method public clone()Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;
    .locals 2

    .prologue
    invoke-super {p0}, Landroid/animation/PropertyValuesHolder;->clone()Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    check-cast v0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;

    .local v0, newPVH:Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;
    iget-object v1, v0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mKeyframeSet:Landroid/animation/KeyframeSet;

    check-cast v1, Landroid/animation/IntKeyframeSet;

    iput-object v1, v0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntKeyframeSet:Landroid/animation/IntKeyframeSet;

    return-object v0
.end method

.method public bridge synthetic clone()Landroid/animation/PropertyValuesHolder;
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->clone()Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;

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
    invoke-virtual {p0}, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->clone()Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;

    move-result-object v0

    return-object v0
.end method

.method getAnimatedValue()Ljava/lang/Object;
    .locals 1

    .prologue
    iget v0, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntAnimatedValue:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method setAnimatedValue(Ljava/lang/Object;)V
    .locals 4
    .parameter "target"

    .prologue
    iget-object v1, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntProperty:Landroid/util/IntProperty;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntProperty:Landroid/util/IntProperty;

    iget v2, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntAnimatedValue:I

    invoke-virtual {v1, p1, v2}, Landroid/util/IntProperty;->setValue(Ljava/lang/Object;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mProperty:Landroid/util/Property;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mProperty:Landroid/util/Property;

    iget v2, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntAnimatedValue:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget v1, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mJniSetter:I

    if-eqz v1, :cond_3

    iget v1, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mJniSetter:I

    iget v2, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntAnimatedValue:I

    #calls: Landroid/animation/PropertyValuesHolder;->nCallIntMethod(Ljava/lang/Object;II)V
    invoke-static {p1, v1, v2}, Landroid/animation/PropertyValuesHolder;->access$200(Ljava/lang/Object;II)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mSetter:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mTmpValueArray:[Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntAnimatedValue:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v1, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mSetter:Ljava/lang/reflect/Method;

    iget-object v2, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mTmpValueArray:[Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    const-string v1, "PropertyValuesHolder"

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v0

    .local v0, e:Ljava/lang/IllegalAccessException;
    const-string v1, "PropertyValuesHolder"

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public varargs setIntValues([I)V
    .locals 1
    .parameter "values"

    .prologue
    invoke-super {p0, p1}, Landroid/animation/PropertyValuesHolder;->setIntValues([I)V

    iget-object v0, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mKeyframeSet:Landroid/animation/KeyframeSet;

    check-cast v0, Landroid/animation/IntKeyframeSet;

    iput-object v0, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntKeyframeSet:Landroid/animation/IntKeyframeSet;

    return-void
.end method

.method setupSetter(Ljava/lang/Class;)V
    .locals 5
    .parameter "targetClass"

    .prologue
    iget-object v3, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mProperty:Landroid/util/Property;

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v3, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mPropertyMapLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    sget-object v3, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->sJNISetterPropertyMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .local v2, propertyMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz v2, :cond_2

    iget-object v3, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .local v0, mJniSetterInteger:Ljava/lang/Integer;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mJniSetter:I

    .end local v0           #mJniSetterInteger:Ljava/lang/Integer;
    :cond_2
    iget v3, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mJniSetter:I

    if-nez v3, :cond_4

    const-string v3, "set"

    iget-object v4, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->getMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, methodName:Ljava/lang/String;
    #calls: Landroid/animation/PropertyValuesHolder;->nGetIntMethod(Ljava/lang/Class;Ljava/lang/String;)I
    invoke-static {p1, v1}, Landroid/animation/PropertyValuesHolder;->access$300(Ljava/lang/Class;Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mJniSetter:I

    iget v3, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mJniSetter:I

    if-eqz v3, :cond_4

    if-nez v2, :cond_3

    new-instance v2, Ljava/util/HashMap;

    .end local v2           #propertyMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .restart local v2       #propertyMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    sget-object v3, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->sJNISetterPropertyMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v3, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    iget v4, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mJniSetter:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #methodName:Ljava/lang/String;
    :cond_4
    iget-object v3, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mPropertyMapLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .end local v2           #propertyMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :goto_1
    iget v3, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mJniSetter:I

    if-nez v3, :cond_0

    invoke-super {p0, p1}, Landroid/animation/PropertyValuesHolder;->setupSetter(Ljava/lang/Class;)V

    goto :goto_0

    :catch_0
    move-exception v3

    iget-object v3, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mPropertyMapLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception v3

    iget-object v4, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mPropertyMapLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v3
.end method
