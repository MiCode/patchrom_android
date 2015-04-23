.class Landroid/animation/PropertyValuesHolder$MultiIntValuesHolder;
.super Landroid/animation/PropertyValuesHolder;
.source "PropertyValuesHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/animation/PropertyValuesHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MultiIntValuesHolder"
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
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mJniSetter:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/animation/PropertyValuesHolder$MultiIntValuesHolder;->sJNISetterPropertyMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/animation/TypeConverter;Landroid/animation/TypeEvaluator;Landroid/animation/Keyframes;)V
    .locals 1
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "converter"    # Landroid/animation/TypeConverter;
    .param p3, "evaluator"    # Landroid/animation/TypeEvaluator;
    .param p4, "keyframes"    # Landroid/animation/Keyframes;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/animation/PropertyValuesHolder;-><init>(Ljava/lang/String;Landroid/animation/PropertyValuesHolder$1;)V

    invoke-virtual {p0, p2}, Landroid/animation/PropertyValuesHolder$MultiIntValuesHolder;->setConverter(Landroid/animation/TypeConverter;)V

    iput-object p4, p0, Landroid/animation/PropertyValuesHolder$MultiIntValuesHolder;->mKeyframes:Landroid/animation/Keyframes;

    invoke-virtual {p0, p3}, Landroid/animation/PropertyValuesHolder$MultiIntValuesHolder;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;Landroid/animation/TypeConverter;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "converter"    # Landroid/animation/TypeConverter;
    .param p3, "evaluator"    # Landroid/animation/TypeEvaluator;
    .param p4, "values"    # [Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/animation/PropertyValuesHolder;-><init>(Ljava/lang/String;Landroid/animation/PropertyValuesHolder$1;)V

    invoke-virtual {p0, p2}, Landroid/animation/PropertyValuesHolder$MultiIntValuesHolder;->setConverter(Landroid/animation/TypeConverter;)V

    invoke-virtual {p0, p4}, Landroid/animation/PropertyValuesHolder$MultiIntValuesHolder;->setObjectValues([Ljava/lang/Object;)V

    invoke-virtual {p0, p3}, Landroid/animation/PropertyValuesHolder$MultiIntValuesHolder;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    invoke-super {p0}, Landroid/animation/PropertyValuesHolder;->clone()Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    return-object v0
.end method

.method setAnimatedValue(Ljava/lang/Object;)V
    .locals 9
    .param p1, "target"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/animation/PropertyValuesHolder$MultiIntValuesHolder;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    move-object v8, v1

    check-cast v8, [I

    .local v8, "values":[I
    array-length v0, v8

    .local v0, "numParameters":I
    iget-wide v2, p0, Landroid/animation/PropertyValuesHolder$MultiIntValuesHolder;->mJniSetter:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    iget-wide v2, p0, Landroid/animation/PropertyValuesHolder$MultiIntValuesHolder;->mJniSetter:J

    # invokes: Landroid/animation/PropertyValuesHolder;->nCallMultipleIntMethod(Ljava/lang/Object;J[I)V
    invoke-static {p1, v2, v3, v8}, Landroid/animation/PropertyValuesHolder;->access$1200(Ljava/lang/Object;J[I)V

    :cond_0
    :goto_0
    return-void

    :pswitch_1
    iget-wide v2, p0, Landroid/animation/PropertyValuesHolder$MultiIntValuesHolder;->mJniSetter:J

    aget v1, v8, v6

    # invokes: Landroid/animation/PropertyValuesHolder;->nCallIntMethod(Ljava/lang/Object;JI)V
    invoke-static {p1, v2, v3, v1}, Landroid/animation/PropertyValuesHolder;->access$200(Ljava/lang/Object;JI)V

    goto :goto_0

    :pswitch_2
    iget-wide v2, p0, Landroid/animation/PropertyValuesHolder$MultiIntValuesHolder;->mJniSetter:J

    aget v1, v8, v6

    aget v4, v8, v7

    # invokes: Landroid/animation/PropertyValuesHolder;->nCallTwoIntMethod(Ljava/lang/Object;JII)V
    invoke-static {p1, v2, v3, v1, v4}, Landroid/animation/PropertyValuesHolder;->access$1000(Ljava/lang/Object;JII)V

    goto :goto_0

    :pswitch_3
    iget-wide v2, p0, Landroid/animation/PropertyValuesHolder$MultiIntValuesHolder;->mJniSetter:J

    aget v4, v8, v6

    aget v5, v8, v7

    const/4 v1, 0x2

    aget v6, v8, v1

    const/4 v1, 0x3

    aget v7, v8, v1

    move-object v1, p1

    # invokes: Landroid/animation/PropertyValuesHolder;->nCallFourIntMethod(Ljava/lang/Object;JIIII)V
    invoke-static/range {v1 .. v7}, Landroid/animation/PropertyValuesHolder;->access$1100(Ljava/lang/Object;JIIII)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method setupSetter(Ljava/lang/Class;)V
    .locals 14
    .param p1, "targetClass"    # Ljava/lang/Class;

    .prologue
    iget-wide v10, p0, Landroid/animation/PropertyValuesHolder$MultiIntValuesHolder;->mJniSetter:J

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-eqz v9, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v10, Landroid/animation/PropertyValuesHolder$MultiIntValuesHolder;->sJNISetterPropertyMap:Ljava/util/HashMap;

    monitor-enter v10

    :try_start_0
    sget-object v9, Landroid/animation/PropertyValuesHolder$MultiIntValuesHolder;->sJNISetterPropertyMap:Ljava/util/HashMap;

    invoke-virtual {v9, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    .local v6, "propertyMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    const/4 v8, 0x0

    .local v8, "wasInMap":Z
    if-eqz v6, :cond_1

    iget-object v9, p0, Landroid/animation/PropertyValuesHolder$MultiIntValuesHolder;->mPropertyName:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v9, p0, Landroid/animation/PropertyValuesHolder$MultiIntValuesHolder;->mPropertyName:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .local v3, "jniSetter":Ljava/lang/Long;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    iput-wide v12, p0, Landroid/animation/PropertyValuesHolder$MultiIntValuesHolder;->mJniSetter:J

    .end local v3    # "jniSetter":Ljava/lang/Long;
    :cond_1
    if-nez v8, :cond_3

    const-string v9, "set"

    iget-object v11, p0, Landroid/animation/PropertyValuesHolder$MultiIntValuesHolder;->mPropertyName:Ljava/lang/String;

    invoke-static {v9, v11}, Landroid/animation/PropertyValuesHolder$MultiIntValuesHolder;->getMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, "methodName":Ljava/lang/String;
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Landroid/animation/PropertyValuesHolder$MultiIntValuesHolder;->calculateValue(F)V

    invoke-virtual {p0}, Landroid/animation/PropertyValuesHolder$MultiIntValuesHolder;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [I

    move-object v0, v9

    check-cast v0, [I

    move-object v7, v0

    .local v7, "values":[I
    array-length v5, v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v5, "numParams":I
    :try_start_1
    # invokes: Landroid/animation/PropertyValuesHolder;->nGetMultipleIntMethod(Ljava/lang/Class;Ljava/lang/String;I)J
    invoke-static {p1, v4, v5}, Landroid/animation/PropertyValuesHolder;->access$1300(Ljava/lang/Class;Ljava/lang/String;I)J

    move-result-wide v12

    iput-wide v12, p0, Landroid/animation/PropertyValuesHolder$MultiIntValuesHolder;->mJniSetter:J
    :try_end_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-nez v6, :cond_2

    :try_start_2
    new-instance v6, Ljava/util/HashMap;

    .end local v6    # "propertyMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .restart local v6    # "propertyMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    sget-object v9, Landroid/animation/PropertyValuesHolder$MultiIntValuesHolder;->sJNISetterPropertyMap:Ljava/util/HashMap;

    invoke-virtual {v9, p1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v9, p0, Landroid/animation/PropertyValuesHolder$MultiIntValuesHolder;->mPropertyName:Ljava/lang/String;

    iget-wide v12, p0, Landroid/animation/PropertyValuesHolder$MultiIntValuesHolder;->mJniSetter:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v6, v9, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v4    # "methodName":Ljava/lang/String;
    .end local v5    # "numParams":I
    .end local v7    # "values":[I
    :cond_3
    monitor-exit v10

    goto :goto_0

    .end local v6    # "propertyMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v8    # "wasInMap":Z
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v9

    .restart local v4    # "methodName":Ljava/lang/String;
    .restart local v5    # "numParams":I
    .restart local v6    # "propertyMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .restart local v7    # "values":[I
    .restart local v8    # "wasInMap":Z
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/NoSuchMethodError;
    :try_start_3
    iget-object v9, p0, Landroid/animation/PropertyValuesHolder$MultiIntValuesHolder;->mPropertyName:Ljava/lang/String;

    # invokes: Landroid/animation/PropertyValuesHolder;->nGetMultipleIntMethod(Ljava/lang/Class;Ljava/lang/String;I)J
    invoke-static {p1, v9, v5}, Landroid/animation/PropertyValuesHolder;->access$1300(Ljava/lang/Class;Ljava/lang/String;I)J

    move-result-wide v12

    iput-wide v12, p0, Landroid/animation/PropertyValuesHolder$MultiIntValuesHolder;->mJniSetter:J
    :try_end_3
    .catch Ljava/lang/NoSuchMethodError; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v9

    goto :goto_1
.end method

.method setupSetterAndGetter(Ljava/lang/Object;)V
    .locals 1
    .param p1, "target"    # Ljava/lang/Object;

    .prologue
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/animation/PropertyValuesHolder$MultiIntValuesHolder;->setupSetter(Ljava/lang/Class;)V

    return-void
.end method
