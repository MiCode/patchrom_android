.class Lorg/apache/http/conn/ssl/SSLSocketFactory$NoPreloadHolder;
.super Ljava/lang/Object;
.source "SSLSocketFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/http/conn/ssl/SSLSocketFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NoPreloadHolder"
.end annotation


# static fields
.field private static final DEFAULT_FACTORY:Lorg/apache/http/conn/ssl/SSLSocketFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    new-instance v0, Lorg/apache/http/conn/ssl/SSLSocketFactory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/http/conn/ssl/SSLSocketFactory;-><init>(Lorg/apache/http/conn/ssl/SSLSocketFactory$1;)V

    sput-object v0, Lorg/apache/http/conn/ssl/SSLSocketFactory$NoPreloadHolder;->DEFAULT_FACTORY:Lorg/apache/http/conn/ssl/SSLSocketFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lorg/apache/http/conn/ssl/SSLSocketFactory;
    .locals 1

    .prologue
    sget-object v0, Lorg/apache/http/conn/ssl/SSLSocketFactory$NoPreloadHolder;->DEFAULT_FACTORY:Lorg/apache/http/conn/ssl/SSLSocketFactory;

    return-object v0
.end method
