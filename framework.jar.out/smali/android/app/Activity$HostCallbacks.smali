.class Landroid/app/Activity$HostCallbacks;
.super Landroid/app/FragmentHostCallback;
.source "Activity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HostCallbacks"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/FragmentHostCallback",
        "<",
        "Landroid/app/Activity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    iput-object p1, p0, Landroid/app/Activity$HostCallbacks;->this$0:Landroid/app/Activity;

    invoke-direct {p0, p1}, Landroid/app/FragmentHostCallback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    iget-object v0, p0, Landroid/app/Activity$HostCallbacks;->this$0:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onAttachFragment(Landroid/app/Fragment;)V

    return-void
.end method

.method public onDump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    iget-object v0, p0, Landroid/app/Activity$HostCallbacks;->this$0:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/app/Activity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public onFindViewById(I)Landroid/view/View;
    .locals 1
    .param p1, "id"    # I

    .prologue
    iget-object v0, p0, Landroid/app/Activity$HostCallbacks;->this$0:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onGetHost()Landroid/app/Activity;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/app/Activity$HostCallbacks;->this$0:Landroid/app/Activity;

    return-object v0
.end method

.method public bridge synthetic onGetHost()Ljava/lang/Object;
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/app/Activity$HostCallbacks;->onGetHost()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public onGetLayoutInflater()Landroid/view/LayoutInflater;
    .locals 2

    .prologue
    iget-object v1, p0, Landroid/app/Activity$HostCallbacks;->this$0:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .local v0, "result":Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Landroid/app/Activity$HostCallbacks;->onUseFragmentManagerInflaterFactory()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/Activity$HostCallbacks;->this$0:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .end local v0    # "result":Landroid/view/LayoutInflater;
    :cond_0
    return-object v0
.end method

.method public onGetWindowAnimations()I
    .locals 2

    .prologue
    iget-object v1, p0, Landroid/app/Activity$HostCallbacks;->this$0:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .local v0, "w":Landroid/view/Window;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    goto :goto_0
.end method

.method public onHasView()Z
    .locals 2

    .prologue
    iget-object v1, p0, Landroid/app/Activity$HostCallbacks;->this$0:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .local v0, "w":Landroid/view/Window;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onHasWindowAnimations()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/app/Activity$HostCallbacks;->this$0:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInvalidateOptionsMenu()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/app/Activity$HostCallbacks;->this$0:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void
.end method

.method public onRequestPermissionsFromFragment(Landroid/app/Fragment;[Ljava/lang/String;I)V
    .locals 4
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "requestCode"    # I

    .prologue
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "@android:requestPermissions:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, "who":Ljava/lang/String;
    iget-object v2, p0, Landroid/app/Activity$HostCallbacks;->this$0:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/pm/PackageManager;->buildRequestPermissionsIntent([Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Landroid/app/Activity$HostCallbacks;->this$0:Landroid/app/Activity;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v0, p3, v3}, Landroid/app/Activity;->startActivityForResult(Ljava/lang/String;Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public onShouldSaveFragmentState(Landroid/app/Fragment;)Z
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    iget-object v0, p0, Landroid/app/Activity$HostCallbacks;->this$0:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onStartActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "requestCode"    # I
    .param p4, "options"    # Landroid/os/Bundle;

    .prologue
    iget-object v0, p0, Landroid/app/Activity$HostCallbacks;->this$0:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/app/Activity;->startActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public onUseFragmentManagerInflaterFactory()Z
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/app/Activity$HostCallbacks;->this$0:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
