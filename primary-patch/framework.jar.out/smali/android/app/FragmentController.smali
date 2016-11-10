.class public Landroid/app/FragmentController;
.super Ljava/lang/Object;
.source "FragmentController.java"


# instance fields
.field private final mHost:Landroid/app/FragmentHostCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/FragmentHostCallback",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/app/FragmentHostCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/FragmentHostCallback",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p1, "callbacks":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    return-void
.end method

.method public static final createController(Landroid/app/FragmentHostCallback;)Landroid/app/FragmentController;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/FragmentHostCallback",
            "<*>;)",
            "Landroid/app/FragmentController;"
        }
    .end annotation

    .prologue
    .local p0, "callbacks":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<*>;"
    new-instance v0, Landroid/app/FragmentController;

    invoke-direct {v0, p0}, Landroid/app/FragmentController;-><init>(Landroid/app/FragmentHostCallback;)V

    return-object v0
.end method


# virtual methods
.method public attachHost(Landroid/app/Fragment;)V
    .locals 3
    .param p1, "parent"    # Landroid/app/Fragment;

    .prologue
    iget-object v0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    iget-object v0, v0, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    iget-object v1, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    iget-object v2, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v0, v1, v2, p1}, Landroid/app/FragmentManagerImpl;->attachController(Landroid/app/FragmentHostCallback;Landroid/app/FragmentContainer;Landroid/app/Fragment;)V

    return-void
.end method

.method public dispatchActivityCreated()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    iget-object v0, v0, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->dispatchActivityCreated()V

    return-void
.end method

.method public dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    iget-object v0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    iget-object v0, v0, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0, p1}, Landroid/app/FragmentManagerImpl;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public dispatchContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    iget-object v0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    iget-object v0, v0, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0, p1}, Landroid/app/FragmentManagerImpl;->dispatchContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public dispatchCreate()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    iget-object v0, v0, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->dispatchCreate()V

    return-void
.end method

.method public dispatchCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    iget-object v0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    iget-object v0, v0, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0, p1, p2}, Landroid/app/FragmentManagerImpl;->dispatchCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v0

    return v0
.end method

.method public dispatchDestroy()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    iget-object v0, v0, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->dispatchDestroy()V

    return-void
.end method

.method public dispatchDestroyView()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    iget-object v0, v0, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->dispatchDestroyView()V

    return-void
.end method

.method public dispatchLowMemory()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    iget-object v0, v0, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->dispatchLowMemory()V

    return-void
.end method

.method public dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    iget-object v0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    iget-object v0, v0, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0, p1}, Landroid/app/FragmentManagerImpl;->dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public dispatchOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    iget-object v0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    iget-object v0, v0, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0, p1}, Landroid/app/FragmentManagerImpl;->dispatchOptionsMenuClosed(Landroid/view/Menu;)V

    return-void
.end method

.method public dispatchPause()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    iget-object v0, v0, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->dispatchPause()V

    return-void
.end method

.method public dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    iget-object v0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    iget-object v0, v0, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0, p1}, Landroid/app/FragmentManagerImpl;->dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public dispatchResume()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    iget-object v0, v0, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->dispatchResume()V

    return-void
.end method

.method public dispatchStart()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    iget-object v0, v0, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->dispatchStart()V

    return-void
.end method

.method public dispatchStop()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    iget-object v0, v0, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->dispatchStop()V

    return-void
.end method

.method public dispatchTrimMemory(I)V
    .locals 1
    .param p1, "level"    # I

    .prologue
    iget-object v0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    iget-object v0, v0, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0, p1}, Landroid/app/FragmentManagerImpl;->dispatchTrimMemory(I)V

    return-void
.end method

.method public doLoaderDestroy()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/app/FragmentHostCallback;->doLoaderDestroy()V

    return-void
.end method

.method public doLoaderStart()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/app/FragmentHostCallback;->doLoaderStart()V

    return-void
.end method

.method public doLoaderStop(Z)V
    .locals 1
    .param p1, "retain"    # Z

    .prologue
    iget-object v0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v0, p1}, Landroid/app/FragmentHostCallback;->doLoaderStop(Z)V

    return-void
.end method

.method public dumpLoaders(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    iget-object v0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/app/FragmentHostCallback;->dumpLoaders(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public execPendingActions()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    iget-object v0, v0, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->execPendingActions()Z

    move-result v0

    return v0
.end method

.method public findFragmentByWho(Ljava/lang/String;)Landroid/app/Fragment;
    .locals 1
    .param p1, "who"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    iget-object v0, v0, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0, p1}, Landroid/app/FragmentManagerImpl;->findFragmentByWho(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public getFragmentManager()Landroid/app/FragmentManager;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/app/FragmentHostCallback;->getFragmentManagerImpl()Landroid/app/FragmentManagerImpl;

    move-result-object v0

    return-object v0
.end method

.method public getLoaderManager()Landroid/app/LoaderManager;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/app/FragmentHostCallback;->getLoaderManagerImpl()Landroid/app/LoaderManagerImpl;

    move-result-object v0

    return-object v0
.end method

.method public noteStateNotSaved()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    iget-object v0, v0, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->noteStateNotSaved()V

    return-void
.end method

.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    iget-object v0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    iget-object v0, v0, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/app/FragmentManagerImpl;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public reportLoaderStart()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/app/FragmentHostCallback;->reportLoaderStart()V

    return-void
.end method

.method public restoreAllState(Landroid/os/Parcelable;Ljava/util/List;)V
    .locals 1
    .param p1, "state"    # Landroid/os/Parcelable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcelable;",
            "Ljava/util/List",
            "<",
            "Landroid/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "nonConfigList":Ljava/util/List;, "Ljava/util/List<Landroid/app/Fragment;>;"
    iget-object v0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    iget-object v0, v0, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0, p1, p2}, Landroid/app/FragmentManagerImpl;->restoreAllState(Landroid/os/Parcelable;Ljava/util/List;)V

    return-void
.end method

.method public restoreLoaderNonConfig(Landroid/util/ArrayMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/LoaderManager;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "loaderManagers":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/app/LoaderManager;>;"
    iget-object v0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v0, p1}, Landroid/app/FragmentHostCallback;->restoreLoaderNonConfig(Landroid/util/ArrayMap;)V

    return-void
.end method

.method public retainLoaderNonConfig()Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/LoaderManager;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/app/FragmentHostCallback;->retainLoaderNonConfig()Landroid/util/ArrayMap;

    move-result-object v0

    return-object v0
.end method

.method public retainNonConfig()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    iget-object v0, v0, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->retainNonConfig()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public saveAllState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    iget-object v0, v0, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->saveAllState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method
