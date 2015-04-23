.class public final Landroid/app/VoiceInteractor;
.super Ljava/lang/Object;
.source "VoiceInteractor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/VoiceInteractor$Prompt;,
        Landroid/app/VoiceInteractor$CommandRequest;,
        Landroid/app/VoiceInteractor$AbortVoiceRequest;,
        Landroid/app/VoiceInteractor$CompleteVoiceRequest;,
        Landroid/app/VoiceInteractor$PickOptionRequest;,
        Landroid/app/VoiceInteractor$ConfirmationRequest;,
        Landroid/app/VoiceInteractor$Request;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final MSG_ABORT_VOICE_RESULT:I = 0x4

.field static final MSG_CANCEL_RESULT:I = 0x6

.field static final MSG_COMMAND_RESULT:I = 0x5

.field static final MSG_COMPLETE_VOICE_RESULT:I = 0x3

.field static final MSG_CONFIRMATION_RESULT:I = 0x1

.field static final MSG_PICK_OPTION_RESULT:I = 0x2

.field static final NO_REQUESTS:[Landroid/app/VoiceInteractor$Request;

.field static final TAG:Ljava/lang/String; = "VoiceInteractor"


# instance fields
.field final mActiveRequests:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/os/IBinder;",
            "Landroid/app/VoiceInteractor$Request;",
            ">;"
        }
    .end annotation
.end field

.field mActivity:Landroid/app/Activity;

.field final mCallback:Lcom/android/internal/app/IVoiceInteractorCallback$Stub;

.field mContext:Landroid/content/Context;

.field final mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

.field final mHandlerCallerCallback:Lcom/android/internal/os/HandlerCaller$Callback;

.field final mInteractor:Lcom/android/internal/app/IVoiceInteractor;

.field mRetaining:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/app/VoiceInteractor$Request;

    sput-object v0, Landroid/app/VoiceInteractor;->NO_REQUESTS:[Landroid/app/VoiceInteractor$Request;

    return-void
.end method

.method constructor <init>(Lcom/android/internal/app/IVoiceInteractor;Landroid/content/Context;Landroid/app/Activity;Landroid/os/Looper;)V
    .locals 3
    .param p1, "interactor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "activity"    # Landroid/app/Activity;
    .param p4, "looper"    # Landroid/os/Looper;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/app/VoiceInteractor$1;

    invoke-direct {v0, p0}, Landroid/app/VoiceInteractor$1;-><init>(Landroid/app/VoiceInteractor;)V

    iput-object v0, p0, Landroid/app/VoiceInteractor;->mHandlerCallerCallback:Lcom/android/internal/os/HandlerCaller$Callback;

    new-instance v0, Landroid/app/VoiceInteractor$2;

    invoke-direct {v0, p0}, Landroid/app/VoiceInteractor$2;-><init>(Landroid/app/VoiceInteractor;)V

    iput-object v0, p0, Landroid/app/VoiceInteractor;->mCallback:Lcom/android/internal/app/IVoiceInteractorCallback$Stub;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/VoiceInteractor;->mActiveRequests:Landroid/util/ArrayMap;

    iput-object p1, p0, Landroid/app/VoiceInteractor;->mInteractor:Lcom/android/internal/app/IVoiceInteractor;

    iput-object p2, p0, Landroid/app/VoiceInteractor;->mContext:Landroid/content/Context;

    iput-object p3, p0, Landroid/app/VoiceInteractor;->mActivity:Landroid/app/Activity;

    new-instance v0, Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/app/VoiceInteractor;->mHandlerCallerCallback:Lcom/android/internal/os/HandlerCaller$Callback;

    const/4 v2, 0x1

    invoke-direct {v0, p2, p4, v1, v2}, Lcom/android/internal/os/HandlerCaller;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/os/HandlerCaller$Callback;Z)V

    iput-object v0, p0, Landroid/app/VoiceInteractor;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    return-void
.end method

.method private makeRequestList()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/VoiceInteractor$Request;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v3, p0, Landroid/app/VoiceInteractor;->mActiveRequests:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .local v0, "N":I
    const/4 v3, 0x1

    if-ge v0, v3, :cond_1

    const/4 v2, 0x0

    :cond_0
    return-object v2

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/VoiceInteractor$Request;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v3, p0, Landroid/app/VoiceInteractor;->mActiveRequests:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method attachActivity(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/app/VoiceInteractor;->mRetaining:Z

    iget-object v3, p0, Landroid/app/VoiceInteractor;->mActivity:Landroid/app/Activity;

    if-ne v3, p1, :cond_1

    :cond_0
    return-void

    :cond_1
    iput-object p1, p0, Landroid/app/VoiceInteractor;->mContext:Landroid/content/Context;

    iput-object p1, p0, Landroid/app/VoiceInteractor;->mActivity:Landroid/app/Activity;

    invoke-direct {p0}, Landroid/app/VoiceInteractor;->makeRequestList()Ljava/util/ArrayList;

    move-result-object v2

    .local v2, "reqs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/VoiceInteractor$Request;>;"
    if-eqz v2, :cond_0

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/VoiceInteractor$Request;

    .local v1, "req":Landroid/app/VoiceInteractor$Request;
    iput-object p1, v1, Landroid/app/VoiceInteractor$Request;->mContext:Landroid/content/Context;

    iput-object p1, v1, Landroid/app/VoiceInteractor$Request;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, p1}, Landroid/app/VoiceInteractor$Request;->onAttached(Landroid/app/Activity;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method detachActivity()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    invoke-direct {p0}, Landroid/app/VoiceInteractor;->makeRequestList()Ljava/util/ArrayList;

    move-result-object v2

    .local v2, "reqs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/VoiceInteractor$Request;>;"
    if-eqz v2, :cond_0

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/VoiceInteractor$Request;

    .local v1, "req":Landroid/app/VoiceInteractor$Request;
    invoke-virtual {v1}, Landroid/app/VoiceInteractor$Request;->onDetached()V

    iput-object v4, v1, Landroid/app/VoiceInteractor$Request;->mActivity:Landroid/app/Activity;

    iput-object v4, v1, Landroid/app/VoiceInteractor$Request;->mContext:Landroid/content/Context;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    .end local v1    # "req":Landroid/app/VoiceInteractor$Request;
    :cond_0
    iget-boolean v3, p0, Landroid/app/VoiceInteractor;->mRetaining:Z

    if-nez v3, :cond_2

    invoke-direct {p0}, Landroid/app/VoiceInteractor;->makeRequestList()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/VoiceInteractor$Request;

    .restart local v1    # "req":Landroid/app/VoiceInteractor$Request;
    invoke-virtual {v1}, Landroid/app/VoiceInteractor$Request;->cancel()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    .end local v1    # "req":Landroid/app/VoiceInteractor$Request;
    :cond_1
    iget-object v3, p0, Landroid/app/VoiceInteractor;->mActiveRequests:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->clear()V

    :cond_2
    iput-object v4, p0, Landroid/app/VoiceInteractor;->mContext:Landroid/content/Context;

    iput-object v4, p0, Landroid/app/VoiceInteractor;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, "innerPrefix":Ljava/lang/String;
    iget-object v3, p0, Landroid/app/VoiceInteractor;->mActiveRequests:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "Active voice requests:"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Landroid/app/VoiceInteractor;->mActiveRequests:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Landroid/app/VoiceInteractor;->mActiveRequests:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/VoiceInteractor$Request;

    .local v2, "req":Landroid/app/VoiceInteractor$Request;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {v2, v1, p2, p3, p4}, Landroid/app/VoiceInteractor$Request;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    .end local v2    # "req":Landroid/app/VoiceInteractor$Request;
    :cond_0
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "VoiceInteractor misc state:"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  mInteractor="

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/app/VoiceInteractor;->mInteractor:Lcom/android/internal/app/IVoiceInteractor;

    invoke-interface {v3}, Lcom/android/internal/app/IVoiceInteractor;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  mActivity="

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/app/VoiceInteractor;->mActivity:Landroid/app/Activity;

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method

.method public getActiveRequest(Ljava/lang/String;)Landroid/app/VoiceInteractor$Request;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    iget-object v4, p0, Landroid/app/VoiceInteractor;->mActiveRequests:Landroid/util/ArrayMap;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Landroid/app/VoiceInteractor;->mActiveRequests:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v3, p0, Landroid/app/VoiceInteractor;->mActiveRequests:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/VoiceInteractor$Request;

    .local v2, "req":Landroid/app/VoiceInteractor$Request;
    invoke-virtual {v2}, Landroid/app/VoiceInteractor$Request;->getName()Ljava/lang/String;

    move-result-object v3

    if-eq p1, v3, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {v2}, Landroid/app/VoiceInteractor$Request;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    monitor-exit v4

    .end local v2    # "req":Landroid/app/VoiceInteractor$Request;
    :goto_1
    return-object v2

    .restart local v2    # "req":Landroid/app/VoiceInteractor$Request;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v2    # "req":Landroid/app/VoiceInteractor$Request;
    :cond_2
    monitor-exit v4

    const/4 v2, 0x0

    goto :goto_1

    .end local v0    # "N":I
    .end local v1    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getActiveRequests()[Landroid/app/VoiceInteractor$Request;
    .locals 5

    .prologue
    iget-object v4, p0, Landroid/app/VoiceInteractor;->mActiveRequests:Landroid/util/ArrayMap;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Landroid/app/VoiceInteractor;->mActiveRequests:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .local v0, "N":I
    if-gtz v0, :cond_0

    sget-object v2, Landroid/app/VoiceInteractor;->NO_REQUESTS:[Landroid/app/VoiceInteractor$Request;

    monitor-exit v4

    :goto_0
    return-object v2

    :cond_0
    new-array v2, v0, [Landroid/app/VoiceInteractor$Request;

    .local v2, "requests":[Landroid/app/VoiceInteractor$Request;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    iget-object v3, p0, Landroid/app/VoiceInteractor;->mActiveRequests:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/VoiceInteractor$Request;

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    monitor-exit v4

    goto :goto_0

    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "requests":[Landroid/app/VoiceInteractor$Request;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method pullRequest(Lcom/android/internal/app/IVoiceInteractorRequest;Z)Landroid/app/VoiceInteractor$Request;
    .locals 4
    .param p1, "request"    # Lcom/android/internal/app/IVoiceInteractorRequest;
    .param p2, "complete"    # Z

    .prologue
    iget-object v2, p0, Landroid/app/VoiceInteractor;->mActiveRequests:Landroid/util/ArrayMap;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Landroid/app/VoiceInteractor;->mActiveRequests:Landroid/util/ArrayMap;

    invoke-interface {p1}, Lcom/android/internal/app/IVoiceInteractorRequest;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/VoiceInteractor$Request;

    .local v0, "req":Landroid/app/VoiceInteractor$Request;
    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    iget-object v1, p0, Landroid/app/VoiceInteractor;->mActiveRequests:Landroid/util/ArrayMap;

    invoke-interface {p1}, Lcom/android/internal/app/IVoiceInteractorRequest;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    monitor-exit v2

    return-object v0

    .end local v0    # "req":Landroid/app/VoiceInteractor$Request;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method retainInstance()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/VoiceInteractor;->mRetaining:Z

    return-void
.end method

.method public submitRequest(Landroid/app/VoiceInteractor$Request;)Z
    .locals 1
    .param p1, "request"    # Landroid/app/VoiceInteractor$Request;

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/VoiceInteractor;->submitRequest(Landroid/app/VoiceInteractor$Request;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public submitRequest(Landroid/app/VoiceInteractor$Request;Ljava/lang/String;)Z
    .locals 5
    .param p1, "request"    # Landroid/app/VoiceInteractor$Request;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    :try_start_0
    iget-object v2, p1, Landroid/app/VoiceInteractor$Request;->mRequestInterface:Lcom/android/internal/app/IVoiceInteractorRequest;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Given "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is already active"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "VoiceInteractor"

    const-string v3, "Remove voice interactor service died"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return v2

    :cond_0
    :try_start_1
    iget-object v2, p0, Landroid/app/VoiceInteractor;->mInteractor:Lcom/android/internal/app/IVoiceInteractor;

    iget-object v3, p0, Landroid/app/VoiceInteractor;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/app/VoiceInteractor;->mCallback:Lcom/android/internal/app/IVoiceInteractorCallback$Stub;

    invoke-virtual {p1, v2, v3, v4}, Landroid/app/VoiceInteractor$Request;->submit(Lcom/android/internal/app/IVoiceInteractor;Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractorCallback;)Lcom/android/internal/app/IVoiceInteractorRequest;

    move-result-object v1

    .local v1, "ireq":Lcom/android/internal/app/IVoiceInteractorRequest;
    iput-object v1, p1, Landroid/app/VoiceInteractor$Request;->mRequestInterface:Lcom/android/internal/app/IVoiceInteractorRequest;

    iget-object v2, p0, Landroid/app/VoiceInteractor;->mContext:Landroid/content/Context;

    iput-object v2, p1, Landroid/app/VoiceInteractor$Request;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/app/VoiceInteractor;->mActivity:Landroid/app/Activity;

    iput-object v2, p1, Landroid/app/VoiceInteractor$Request;->mActivity:Landroid/app/Activity;

    iput-object p2, p1, Landroid/app/VoiceInteractor$Request;->mName:Ljava/lang/String;

    iget-object v3, p0, Landroid/app/VoiceInteractor;->mActiveRequests:Landroid/util/ArrayMap;

    monitor-enter v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iget-object v2, p0, Landroid/app/VoiceInteractor;->mActiveRequests:Landroid/util/ArrayMap;

    invoke-interface {v1}, Lcom/android/internal/app/IVoiceInteractorRequest;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v2, v4, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v3

    const/4 v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
.end method

.method public supportsCommands([Ljava/lang/String;)[Z
    .locals 4
    .param p1, "commands"    # [Ljava/lang/String;

    .prologue
    :try_start_0
    iget-object v2, p0, Landroid/app/VoiceInteractor;->mInteractor:Lcom/android/internal/app/IVoiceInteractor;

    iget-object v3, p0, Landroid/app/VoiceInteractor;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Lcom/android/internal/app/IVoiceInteractor;->supportsCommands(Ljava/lang/String;[Ljava/lang/String;)[Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .local v1, "res":[Z
    return-object v1

    .end local v1    # "res":[Z
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Voice interactor has died"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
