.class public final Landroid/renderscript/ScriptGroup$Builder2;
.super Ljava/lang/Object;
.source "ScriptGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/ScriptGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder2"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ScriptGroup.Builder2"


# instance fields
.field mClosures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/renderscript/ScriptGroup$Closure;",
            ">;"
        }
    .end annotation
.end field

.field mInputs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/renderscript/ScriptGroup$Input;",
            ">;"
        }
    .end annotation
.end field

.field mRS:Landroid/renderscript/RenderScript;


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;)V
    .locals 1
    .param p1, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/renderscript/ScriptGroup$Builder2;->mRS:Landroid/renderscript/RenderScript;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/renderscript/ScriptGroup$Builder2;->mClosures:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/renderscript/ScriptGroup$Builder2;->mInputs:Ljava/util/List;

    return-void
.end method

.method private addInvokeInternal(Landroid/renderscript/Script$InvokeID;[Ljava/lang/Object;Ljava/util/Map;)Landroid/renderscript/ScriptGroup$Closure;
    .locals 2
    .param p1, "invoke"    # Landroid/renderscript/Script$InvokeID;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/renderscript/Script$InvokeID;",
            "[",
            "Ljava/lang/Object;",
            "Ljava/util/Map",
            "<",
            "Landroid/renderscript/Script$FieldID;",
            "Ljava/lang/Object;",
            ">;)",
            "Landroid/renderscript/ScriptGroup$Closure;"
        }
    .end annotation

    .prologue
    .local p3, "globalBindings":Ljava/util/Map;, "Ljava/util/Map<Landroid/renderscript/Script$FieldID;Ljava/lang/Object;>;"
    new-instance v0, Landroid/renderscript/ScriptGroup$Closure;

    iget-object v1, p0, Landroid/renderscript/ScriptGroup$Builder2;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v0, v1, p1, p2, p3}, Landroid/renderscript/ScriptGroup$Closure;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Script$InvokeID;[Ljava/lang/Object;Ljava/util/Map;)V

    .local v0, "c":Landroid/renderscript/ScriptGroup$Closure;
    iget-object v1, p0, Landroid/renderscript/ScriptGroup$Builder2;->mClosures:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private addKernelInternal(Landroid/renderscript/Script$KernelID;Landroid/renderscript/Type;[Ljava/lang/Object;Ljava/util/Map;)Landroid/renderscript/ScriptGroup$Closure;
    .locals 6
    .param p1, "k"    # Landroid/renderscript/Script$KernelID;
    .param p2, "returnType"    # Landroid/renderscript/Type;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/renderscript/Script$KernelID;",
            "Landroid/renderscript/Type;",
            "[",
            "Ljava/lang/Object;",
            "Ljava/util/Map",
            "<",
            "Landroid/renderscript/Script$FieldID;",
            "Ljava/lang/Object;",
            ">;)",
            "Landroid/renderscript/ScriptGroup$Closure;"
        }
    .end annotation

    .prologue
    .local p4, "globalBindings":Ljava/util/Map;, "Ljava/util/Map<Landroid/renderscript/Script$FieldID;Ljava/lang/Object;>;"
    new-instance v0, Landroid/renderscript/ScriptGroup$Closure;

    iget-object v1, p0, Landroid/renderscript/ScriptGroup$Builder2;->mRS:Landroid/renderscript/RenderScript;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/renderscript/ScriptGroup$Closure;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Script$KernelID;Landroid/renderscript/Type;[Ljava/lang/Object;Ljava/util/Map;)V

    .local v0, "c":Landroid/renderscript/ScriptGroup$Closure;
    iget-object v1, p0, Landroid/renderscript/ScriptGroup$Builder2;->mClosures:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private seperateArgsAndBindings([Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/Map;)Z
    .locals 4
    .param p1, "argsAndBindings"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Landroid/renderscript/Script$FieldID;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "args":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .local p3, "bindingMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/renderscript/Script$FieldID;Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    aget-object v2, p1, v1

    instance-of v2, v2, Landroid/renderscript/ScriptGroup$Binding;

    if-eqz v2, :cond_1

    :cond_0
    :goto_1
    array-length v2, p1

    if-ge v1, v2, :cond_3

    aget-object v2, p1, v1

    instance-of v2, v2, Landroid/renderscript/ScriptGroup$Binding;

    if-nez v2, :cond_2

    const/4 v2, 0x0

    :goto_2
    return v2

    :cond_1
    aget-object v2, p1, v1

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    aget-object v0, p1, v1

    check-cast v0, Landroid/renderscript/ScriptGroup$Binding;

    .local v0, "b":Landroid/renderscript/ScriptGroup$Binding;
    invoke-virtual {v0}, Landroid/renderscript/ScriptGroup$Binding;->getField()Landroid/renderscript/Script$FieldID;

    move-result-object v2

    invoke-virtual {v0}, Landroid/renderscript/ScriptGroup$Binding;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p3, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0    # "b":Landroid/renderscript/ScriptGroup$Binding;
    :cond_3
    const/4 v2, 0x1

    goto :goto_2
.end method


# virtual methods
.method public addInput()Landroid/renderscript/ScriptGroup$Input;
    .locals 2

    .prologue
    new-instance v0, Landroid/renderscript/ScriptGroup$Input;

    invoke-direct {v0}, Landroid/renderscript/ScriptGroup$Input;-><init>()V

    .local v0, "unbound":Landroid/renderscript/ScriptGroup$Input;
    iget-object v1, p0, Landroid/renderscript/ScriptGroup$Builder2;->mInputs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public varargs addInvoke(Landroid/renderscript/Script$InvokeID;[Ljava/lang/Object;)Landroid/renderscript/ScriptGroup$Closure;
    .locals 3
    .param p1, "invoke"    # Landroid/renderscript/Script$InvokeID;
    .param p2, "argsAndBindings"    # [Ljava/lang/Object;

    .prologue
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .local v0, "args":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .local v1, "bindingMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/renderscript/Script$FieldID;Ljava/lang/Object;>;"
    invoke-direct {p0, p2, v0, v1}, Landroid/renderscript/ScriptGroup$Builder2;->seperateArgsAndBindings([Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/Map;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, p1, v2, v1}, Landroid/renderscript/ScriptGroup$Builder2;->addInvokeInternal(Landroid/renderscript/Script$InvokeID;[Ljava/lang/Object;Ljava/util/Map;)Landroid/renderscript/ScriptGroup$Closure;

    move-result-object v2

    goto :goto_0
.end method

.method public varargs addKernel(Landroid/renderscript/Script$KernelID;Landroid/renderscript/Type;[Ljava/lang/Object;)Landroid/renderscript/ScriptGroup$Closure;
    .locals 3
    .param p1, "k"    # Landroid/renderscript/Script$KernelID;
    .param p2, "returnType"    # Landroid/renderscript/Type;
    .param p3, "argsAndBindings"    # [Ljava/lang/Object;

    .prologue
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .local v0, "args":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .local v1, "bindingMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/renderscript/Script$FieldID;Ljava/lang/Object;>;"
    invoke-direct {p0, p3, v0, v1}, Landroid/renderscript/ScriptGroup$Builder2;->seperateArgsAndBindings([Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/Map;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, p1, p2, v2, v1}, Landroid/renderscript/ScriptGroup$Builder2;->addKernelInternal(Landroid/renderscript/Script$KernelID;Landroid/renderscript/Type;[Ljava/lang/Object;Ljava/util/Map;)Landroid/renderscript/ScriptGroup$Closure;

    move-result-object v2

    goto :goto_0
.end method

.method public varargs create(Ljava/lang/String;[Landroid/renderscript/ScriptGroup$Future;)Landroid/renderscript/ScriptGroup;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "outputs"    # [Landroid/renderscript/ScriptGroup$Future;

    .prologue
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x64

    if-gt v1, v2, :cond_0

    const-string v1, "[^a-zA-Z0-9-]"

    const-string v2, "_"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    const-string v2, "invalid script group name"

    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v0, Landroid/renderscript/ScriptGroup;

    iget-object v1, p0, Landroid/renderscript/ScriptGroup$Builder2;->mRS:Landroid/renderscript/RenderScript;

    iget-object v3, p0, Landroid/renderscript/ScriptGroup$Builder2;->mClosures:Ljava/util/List;

    iget-object v4, p0, Landroid/renderscript/ScriptGroup$Builder2;->mInputs:Ljava/util/List;

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/renderscript/ScriptGroup;-><init>(Landroid/renderscript/RenderScript;Ljava/lang/String;Ljava/util/List;Ljava/util/List;[Landroid/renderscript/ScriptGroup$Future;)V

    .local v0, "ret":Landroid/renderscript/ScriptGroup;
    return-object v0
.end method
