.class abstract Landroid/app/SystemServiceRegistry$StaticOuterContextServiceFetcher;
.super Ljava/lang/Object;
.source "SystemServiceRegistry.java"

# interfaces
.implements Landroid/app/SystemServiceRegistry$ServiceFetcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SystemServiceRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "StaticOuterContextServiceFetcher"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/app/SystemServiceRegistry$ServiceFetcher",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private mCachedInstance:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .local p0, "this":Landroid/app/SystemServiceRegistry$StaticOuterContextServiceFetcher;, "Landroid/app/SystemServiceRegistry$StaticOuterContextServiceFetcher<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract createService(Landroid/content/Context;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")TT;"
        }
    .end annotation
.end method

.method public final getService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 1
    .param p1, "ctx"    # Landroid/app/ContextImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ContextImpl;",
            ")TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Landroid/app/SystemServiceRegistry$StaticOuterContextServiceFetcher;, "Landroid/app/SystemServiceRegistry$StaticOuterContextServiceFetcher<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/app/SystemServiceRegistry$StaticOuterContextServiceFetcher;->mCachedInstance:Ljava/lang/Object;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/SystemServiceRegistry$StaticOuterContextServiceFetcher;->createService(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/app/SystemServiceRegistry$StaticOuterContextServiceFetcher;->mCachedInstance:Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Landroid/app/SystemServiceRegistry$StaticOuterContextServiceFetcher;->mCachedInstance:Ljava/lang/Object;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
