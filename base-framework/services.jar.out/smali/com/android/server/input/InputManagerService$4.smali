.class Lcom/android/server/input/InputManagerService$4;
.super Ljava/lang/Object;
.source "InputManagerService.java"

# interfaces
.implements Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/input/InputManagerService;->updateKeyboardLayouts()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/input/InputManagerService;

.field final synthetic val$availableKeyboardLayouts:Ljava/util/HashSet;


# direct methods
.method constructor <init>(Lcom/android/server/input/InputManagerService;Ljava/util/HashSet;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/input/InputManagerService$4;->this$0:Lcom/android/server/input/InputManagerService;

    iput-object p2, p0, Lcom/android/server/input/InputManagerService$4;->val$availableKeyboardLayouts:Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visitKeyboardLayout(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "descriptor"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "collection"    # Ljava/lang/String;
    .param p5, "keyboardLayoutResId"    # I
    .param p6, "priority"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$4;->val$availableKeyboardLayouts:Ljava/util/HashSet;

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method
