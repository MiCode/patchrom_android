.class public Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum;
.super Ljava/lang/Object;
.source "MarshalQueryableEnum.java"

# interfaces
.implements Landroid/hardware/camera2/marshal/MarshalQueryable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum$MarshalerEnum;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Enum",
        "<TT;>;>",
        "Ljava/lang/Object;",
        "Landroid/hardware/camera2/marshal/MarshalQueryable",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String;

.field private static final UINT8_MASK:I = 0xff

.field private static final UINT8_MAX:I = 0xff

.field private static final UINT8_MIN:I

.field private static final sEnumValues:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/Enum;",
            ">;[I>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum;->sEnumValues:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .local p0, "this":Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum;, "Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/Enum;)I
    .locals 1
    .param p0, "x0"    # Ljava/lang/Enum;

    .prologue
    invoke-static {p0}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum;->getEnumValue(Ljava/lang/Enum;)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Ljava/lang/Class;I)Ljava/lang/Enum;
    .locals 1
    .param p0, "x0"    # Ljava/lang/Class;
    .param p1, "x1"    # I

    .prologue
    invoke-static {p0, p1}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum;->getEnumFromValue(Ljava/lang/Class;I)Ljava/lang/Enum;

    move-result-object v0

    return-object v0
.end method

.method private static getEnumFromValue(Ljava/lang/Class;I)Ljava/lang/Enum;
    .locals 10
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum",
            "<TT;>;>(",
            "Ljava/lang/Class",
            "<TT;>;I)TT;"
        }
    .end annotation

    .prologue
    .local p0, "enumType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v4, 0x1

    const/4 v5, 0x0

    sget-object v6, Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum;->sEnumValues:Ljava/util/HashMap;

    invoke-virtual {v6, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .local v2, "registeredValues":[I
    if-eqz v2, :cond_3

    const/4 v1, -0x1

    .local v1, "ordinal":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v6, v2

    if-ge v0, v6, :cond_0

    aget v6, v2, v0

    if-ne v6, p1, :cond_2

    move v1, v0

    .end local v0    # "i":I
    :cond_0
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Enum;

    .local v3, "values":[Ljava/lang/Enum;, "[TT;"
    if-ltz v1, :cond_1

    array-length v6, v3

    if-lt v1, v6, :cond_5

    :cond_1
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Argument \'value\' (%d) was not a valid enum value for type %s (registered? %b)"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v5

    aput-object p0, v8, v4

    const/4 v9, 0x2

    if-eqz v2, :cond_4

    :goto_2
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .end local v3    # "values":[Ljava/lang/Enum;, "[TT;"
    .restart local v0    # "i":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    .end local v1    # "ordinal":I
    :cond_3
    move v1, p1

    .restart local v1    # "ordinal":I
    goto :goto_1

    .restart local v3    # "values":[Ljava/lang/Enum;, "[TT;"
    :cond_4
    move v4, v5

    goto :goto_2

    :cond_5
    aget-object v4, v3, v1

    return-object v4
.end method

.method private static getEnumValue(Ljava/lang/Enum;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum",
            "<TT;>;>(TT;)I"
        }
    .end annotation

    .prologue
    .local p0, "enumValue":Ljava/lang/Enum;, "TT;"
    sget-object v2, Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum;->sEnumValues:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .local v1, "values":[I
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    .local v0, "ordinal":I
    if-eqz v1, :cond_0

    aget v0, v1, v0

    .end local v0    # "ordinal":I
    :cond_0
    return v0
.end method

.method public static registerEnumValues(Ljava/lang/Class;[I)V
    .locals 3
    .param p1, "values"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum",
            "<TT;>;>(",
            "Ljava/lang/Class",
            "<TT;>;[I)V"
        }
    .end annotation

    .prologue
    .local p0, "enumType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Enum;

    array-length v0, v0

    array-length v1, p1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected values array to be the same size as the enumTypes values "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum;->sEnumValues:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public createMarshaler(Landroid/hardware/camera2/utils/TypeReference;I)Landroid/hardware/camera2/marshal/Marshaler;
    .locals 1
    .param p2, "nativeType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/utils/TypeReference",
            "<TT;>;I)",
            "Landroid/hardware/camera2/marshal/Marshaler",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum;, "Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum<TT;>;"
    .local p1, "managedType":Landroid/hardware/camera2/utils/TypeReference;, "Landroid/hardware/camera2/utils/TypeReference<TT;>;"
    new-instance v0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum$MarshalerEnum;

    invoke-direct {v0, p0, p1, p2}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum$MarshalerEnum;-><init>(Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum;Landroid/hardware/camera2/utils/TypeReference;I)V

    return-object v0
.end method

.method public isTypeMappingSupported(Landroid/hardware/camera2/utils/TypeReference;I)Z
    .locals 7
    .param p2, "nativeType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/utils/TypeReference",
            "<TT;>;I)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum;, "Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum<TT;>;"
    .local p1, "managedType":Landroid/hardware/camera2/utils/TypeReference;, "Landroid/hardware/camera2/utils/TypeReference<TT;>;"
    const/4 v3, 0x0

    const/4 v2, 0x1

    if-eq p2, v2, :cond_0

    if-nez p2, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroid/hardware/camera2/utils/TypeReference;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    instance-of v4, v4, Ljava/lang/Class;

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Landroid/hardware/camera2/utils/TypeReference;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .local v1, "typeClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->isEnum()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x2

    :try_start_0
    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v1    # "typeClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return v2

    .restart local v1    # "typeClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/NoSuchMethodException;
    sget-object v2, Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t marshal class "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; no default constructor"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    .end local v1    # "typeClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    :goto_1
    move v2, v3

    goto :goto_0

    .restart local v1    # "typeClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/lang/SecurityException;
    sget-object v2, Landroid/hardware/camera2/marshal/impl/MarshalQueryableEnum;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t marshal class "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; not accessible"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
