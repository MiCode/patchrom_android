.class public Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable;
.super Ljava/lang/Object;
.source "MarshalQueryableParcelable.java"

# interfaces
.implements Landroid/hardware/camera2/marshal/MarshalQueryable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable$MarshalerParcelable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/Parcelable;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/hardware/camera2/marshal/MarshalQueryable",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final FIELD_CREATOR:Ljava/lang/String; = "CREATOR"

.field private static final TAG:Ljava/lang/String; = "MarshalParcelable"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .local p0, "this":Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable;, "Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    .local p0, "this":Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable;, "Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable<TT;>;"
    .local p1, "managedType":Landroid/hardware/camera2/utils/TypeReference;, "Landroid/hardware/camera2/utils/TypeReference<TT;>;"
    new-instance v0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable$MarshalerParcelable;

    invoke-direct {v0, p0, p1, p2}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable$MarshalerParcelable;-><init>(Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable;Landroid/hardware/camera2/utils/TypeReference;I)V

    return-object v0
.end method

.method public isTypeMappingSupported(Landroid/hardware/camera2/utils/TypeReference;I)Z
    .locals 2
    .param p2, "nativeType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/utils/TypeReference",
            "<TT;>;I)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable;, "Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable<TT;>;"
    .local p1, "managedType":Landroid/hardware/camera2/utils/TypeReference;, "Landroid/hardware/camera2/utils/TypeReference<TT;>;"
    const-class v0, Landroid/os/Parcelable;

    invoke-virtual {p1}, Landroid/hardware/camera2/utils/TypeReference;->getRawType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method
