.class public Lorg/ksoap2/HeaderProperty;
.super Ljava/lang/Object;
.source "HeaderProperty.java"


# instance fields
.field private key:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/ksoap2/HeaderProperty;->key:Ljava/lang/String;

    iput-object p2, p0, Lorg/ksoap2/HeaderProperty;->value:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lorg/ksoap2/HeaderProperty;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lorg/ksoap2/HeaderProperty;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lorg/ksoap2/HeaderProperty;->key:Ljava/lang/String;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lorg/ksoap2/HeaderProperty;->value:Ljava/lang/String;

    return-void
.end method
