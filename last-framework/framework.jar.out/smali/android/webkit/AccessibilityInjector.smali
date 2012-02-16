.class Landroid/webkit/AccessibilityInjector;
.super Ljava/lang/Object;
.source "AccessibilityInjector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/AccessibilityInjector$AccessibilityWebContentKeyBinding;
    }
.end annotation


# static fields
.field private static final ACTION_PERFORM_AXIS_TRANSITION:I = 0x3

.field private static final ACTION_SET_CURRENT_AXIS:I = 0x0

.field private static final ACTION_TRAVERSE_CURRENT_AXIS:I = 0x1

.field private static final ACTION_TRAVERSE_DEFAULT_WEB_VIEW_BEHAVIOR_AXIS:I = 0x4

.field private static final ACTION_TRAVERSE_GIVEN_AXIS:I = 0x2

.field private static final DEBUG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "AccessibilityInjector"

.field private static final NAVIGATION_AXIS_DEFAULT_WEB_VIEW_BEHAVIOR:I = 0x7

.field private static sBindings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/webkit/AccessibilityInjector$AccessibilityWebContentKeyBinding;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCurrentAxis:I

.field private mIsLastSelectionStringNull:Z

.field private mLastDirection:I

.field private mLastDownEventHandled:Z

.field private final mScheduledEventStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/view/accessibility/AccessibilityEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mWebView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/webkit/AccessibilityInjector;->sBindings:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/webkit/WebView;)V
    .locals 1
    .parameter "webView"

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Landroid/webkit/AccessibilityInjector;->mScheduledEventStack:Ljava/util/Stack;

    .line 89
    const/4 v0, 0x2

    iput v0, p0, Landroid/webkit/AccessibilityInjector;->mCurrentAxis:I

    .line 106
    iput-object p1, p0, Landroid/webkit/AccessibilityInjector;->mWebView:Landroid/webkit/WebView;

    .line 107
    invoke-direct {p0}, Landroid/webkit/AccessibilityInjector;->ensureWebContentKeyBindings()V

    .line 108
    return-void
.end method

.method private ensureWebContentKeyBindings()V
    .locals 14

    .prologue
    .line 338
    sget-object v11, Landroid/webkit/AccessibilityInjector;->sBindings:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_1

    .line 373
    :cond_0
    return-void

    .line 342
    :cond_1
    iget-object v11, p0, Landroid/webkit/AccessibilityInjector;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v11}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "accessibility_web_content_key_bindings"

    invoke-static {v11, v12}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 346
    .local v10, webContentKeyBindingsString:Ljava/lang/String;
    new-instance v9, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v11, 0x3b

    invoke-direct {v9, v11}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 347
    .local v9, semiColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v9, v10}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 349
    :goto_0
    invoke-virtual {v9}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 350
    invoke-virtual {v9}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v2

    .line 351
    .local v2, bindingString:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 352
    const-string v11, "AccessibilityInjector"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Disregarding malformed Web content key binding: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 356
    :cond_2
    const-string v11, "="

    invoke-virtual {v2, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 357
    .local v7, keyValueArray:[Ljava/lang/String;
    array-length v11, v7

    const/4 v12, 0x2

    if-eq v11, v12, :cond_3

    .line 358
    const-string v11, "AccessibilityInjector"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Disregarding malformed Web content key binding: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 362
    :cond_3
    const/4 v11, 0x0

    :try_start_0
    aget-object v11, v7, v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 363
    .local v5, keyCodeAndModifiers:J
    const/4 v11, 0x1

    aget-object v11, v7, v11

    const-string v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 364
    .local v0, actionStrings:[Ljava/lang/String;
    array-length v11, v0

    new-array v1, v11, [I

    .line 365
    .local v1, actions:[I
    const/4 v4, 0x0

    .local v4, i:I
    array-length v3, v1

    .local v3, count:I
    :goto_1
    if-ge v4, v3, :cond_4

    .line 366
    aget-object v11, v0, v4

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    aput v11, v1, v4

    .line 365
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 368
    :cond_4
    sget-object v11, Landroid/webkit/AccessibilityInjector;->sBindings:Ljava/util/ArrayList;

    new-instance v12, Landroid/webkit/AccessibilityInjector$AccessibilityWebContentKeyBinding;

    invoke-direct {v12, v5, v6, v1}, Landroid/webkit/AccessibilityInjector$AccessibilityWebContentKeyBinding;-><init>(J[I)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 369
    .end local v0           #actionStrings:[Ljava/lang/String;
    .end local v1           #actions:[I
    .end local v3           #count:I
    .end local v4           #i:I
    .end local v5           #keyCodeAndModifiers:J
    :catch_0
    move-exception v8

    .line 370
    .local v8, nfe:Ljava/lang/NumberFormatException;
    const-string v11, "AccessibilityInjector"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Disregarding malformed key binding: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private getPartialyPopulatedAccessibilityEvent()Landroid/view/accessibility/AccessibilityEvent;
    .locals 2

    .prologue
    .line 327
    const/4 v1, 0x4

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 328
    .local v0, event:Landroid/view/accessibility/AccessibilityEvent;
    iget-object v1, p0, Landroid/webkit/AccessibilityInjector;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 329
    iget-object v1, p0, Landroid/webkit/AccessibilityInjector;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 330
    iget-object v1, p0, Landroid/webkit/AccessibilityInjector;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 331
    return-object v0
.end method

.method private isEnterActionKey(I)Z
    .locals 1
    .parameter "keyCode"

    .prologue
    .line 376
    const/16 v0, 0x17

    if-eq p1, v0, :cond_0

    const/16 v0, 0x42

    if-eq p1, v0, :cond_0

    const/16 v0, 0xa0

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private prefromAxisTransition(IIZLjava/lang/String;)V
    .locals 1
    .parameter "fromAxis"
    .parameter "toAxis"
    .parameter "sendEvent"
    .parameter "contentDescription"

    .prologue
    .line 234
    iget v0, p0, Landroid/webkit/AccessibilityInjector;->mCurrentAxis:I

    if-ne v0, p1, :cond_0

    .line 235
    invoke-direct {p0, p2, p3, p4}, Landroid/webkit/AccessibilityInjector;->setCurrentAxis(IZLjava/lang/String;)V

    .line 237
    :cond_0
    return-void
.end method

.method private sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    .line 312
    const-string v1, "AccessibilityInjector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dispatching: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    iget-object v1, p0, Landroid/webkit/AccessibilityInjector;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 317
    .local v0, accessibilityManager:Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 318
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 320
    :cond_0
    return-void
.end method

.method private setCurrentAxis(IZLjava/lang/String;)V
    .locals 3
    .parameter "axis"
    .parameter "sendEvent"
    .parameter "contentDescription"

    .prologue
    .line 215
    iput p1, p0, Landroid/webkit/AccessibilityInjector;->mCurrentAxis:I

    .line 216
    if-eqz p2, :cond_0

    .line 217
    invoke-direct {p0}, Landroid/webkit/AccessibilityInjector;->getPartialyPopulatedAccessibilityEvent()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 218
    .local v0, event:Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    invoke-virtual {v0, p3}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 220
    invoke-direct {p0, v0}, Landroid/webkit/AccessibilityInjector;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 222
    .end local v0           #event:Landroid/view/accessibility/AccessibilityEvent;
    :cond_0
    return-void
.end method

.method private traverseCurrentAxis(IZLjava/lang/String;)Z
    .locals 1
    .parameter "direction"
    .parameter "sendEvent"
    .parameter "contentDescription"

    .prologue
    .line 250
    iget v0, p0, Landroid/webkit/AccessibilityInjector;->mCurrentAxis:I

    invoke-direct {p0, p1, v0, p2, p3}, Landroid/webkit/AccessibilityInjector;->traverseGivenAxis(IIZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private traverseGivenAxis(IIZLjava/lang/String;)Z
    .locals 4
    .parameter "direction"
    .parameter "axis"
    .parameter "sendEvent"
    .parameter "contentDescription"

    .prologue
    const/4 v2, 0x0

    .line 264
    iget-object v3, p0, Landroid/webkit/AccessibilityInjector;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v1

    .line 265
    .local v1, webViewCore:Landroid/webkit/WebViewCore;
    if-nez v1, :cond_1

    .line 284
    :cond_0
    :goto_0
    return v2

    .line 269
    :cond_1
    const/4 v0, 0x0

    .line 270
    .local v0, event:Landroid/view/accessibility/AccessibilityEvent;
    if-eqz p3, :cond_2

    .line 271
    invoke-direct {p0}, Landroid/webkit/AccessibilityInjector;->getPartialyPopulatedAccessibilityEvent()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 273
    invoke-virtual {v0, p4}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 275
    :cond_2
    iget-object v3, p0, Landroid/webkit/AccessibilityInjector;->mScheduledEventStack:Ljava/util/Stack;

    invoke-virtual {v3, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    const/4 v3, 0x7

    if-eq p2, v3, :cond_0

    .line 283
    const/16 v2, 0xbe

    invoke-virtual {v1, v2, p1, p2}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 284
    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 16
    .parameter "event"

    .prologue
    .line 117
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Landroid/webkit/AccessibilityInjector;->isEnterActionKey(I)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 118
    const/4 v13, 0x0

    .line 203
    :goto_0
    return v13

    .line 121
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_1

    .line 122
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/webkit/AccessibilityInjector;->mLastDownEventHandled:Z

    goto :goto_0

    .line 125
    :cond_1
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/webkit/AccessibilityInjector;->mLastDownEventHandled:Z

    .line 127
    const/4 v3, 0x0

    .line 128
    .local v3, binding:Landroid/webkit/AccessibilityInjector$AccessibilityWebContentKeyBinding;
    sget-object v13, Landroid/webkit/AccessibilityInjector;->sBindings:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/webkit/AccessibilityInjector$AccessibilityWebContentKeyBinding;

    .line 129
    .local v4, candidate:Landroid/webkit/AccessibilityInjector$AccessibilityWebContentKeyBinding;
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v13

    invoke-virtual {v4}, Landroid/webkit/AccessibilityInjector$AccessibilityWebContentKeyBinding;->getKeyCode()I

    move-result v14

    if-ne v13, v14, :cond_2

    invoke-virtual {v4}, Landroid/webkit/AccessibilityInjector$AccessibilityWebContentKeyBinding;->getModifiers()I

    move-result v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 131
    move-object v3, v4

    .line 136
    .end local v4           #candidate:Landroid/webkit/AccessibilityInjector$AccessibilityWebContentKeyBinding;
    :cond_3
    if-nez v3, :cond_4

    .line 137
    const/4 v13, 0x0

    goto :goto_0

    .line 140
    :cond_4
    const/4 v9, 0x0

    .local v9, i:I
    invoke-virtual {v3}, Landroid/webkit/AccessibilityInjector$AccessibilityWebContentKeyBinding;->getActionCount()I

    move-result v6

    .local v6, count:I
    :goto_1
    if-ge v9, v6, :cond_d

    .line 141
    invoke-virtual {v3, v9}, Landroid/webkit/AccessibilityInjector$AccessibilityWebContentKeyBinding;->getActionCode(I)I

    move-result v1

    .line 142
    .local v1, actionCode:I
    invoke-virtual {v3, v9}, Landroid/webkit/AccessibilityInjector$AccessibilityWebContentKeyBinding;->getAction(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    .line 143
    .local v5, contentDescription:Ljava/lang/String;
    packed-switch v1, :pswitch_data_0

    .line 199
    const-string v13, "AccessibilityInjector"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unknown action code: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 145
    :pswitch_0
    invoke-virtual {v3, v9}, Landroid/webkit/AccessibilityInjector$AccessibilityWebContentKeyBinding;->getFirstArgument(I)I

    move-result v2

    .line 146
    .local v2, axis:I
    invoke-virtual {v3, v9}, Landroid/webkit/AccessibilityInjector$AccessibilityWebContentKeyBinding;->getSecondArgument(I)I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_5

    const/4 v11, 0x1

    .line 147
    .local v11, sendEvent:Z
    :goto_3
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v11, v5}, Landroid/webkit/AccessibilityInjector;->setCurrentAxis(IZLjava/lang/String;)V

    .line 148
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/webkit/AccessibilityInjector;->mLastDownEventHandled:Z

    goto :goto_2

    .line 146
    .end local v11           #sendEvent:Z
    :cond_5
    const/4 v11, 0x0

    goto :goto_3

    .line 151
    .end local v2           #axis:I
    :pswitch_1
    invoke-virtual {v3, v9}, Landroid/webkit/AccessibilityInjector$AccessibilityWebContentKeyBinding;->getFirstArgument(I)I

    move-result v7

    .line 153
    .local v7, direction:I
    move-object/from16 v0, p0

    iget v13, v0, Landroid/webkit/AccessibilityInjector;->mLastDirection:I

    if-ne v7, v13, :cond_6

    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/webkit/AccessibilityInjector;->mIsLastSelectionStringNull:Z

    if-eqz v13, :cond_6

    .line 154
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/webkit/AccessibilityInjector;->mIsLastSelectionStringNull:Z

    .line 155
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 157
    :cond_6
    move-object/from16 v0, p0

    iput v7, v0, Landroid/webkit/AccessibilityInjector;->mLastDirection:I

    .line 158
    invoke-virtual {v3, v9}, Landroid/webkit/AccessibilityInjector$AccessibilityWebContentKeyBinding;->getSecondArgument(I)I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_7

    const/4 v11, 0x1

    .line 159
    .restart local v11       #sendEvent:Z
    :goto_4
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v11, v5}, Landroid/webkit/AccessibilityInjector;->traverseCurrentAxis(IZLjava/lang/String;)Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/webkit/AccessibilityInjector;->mLastDownEventHandled:Z

    goto :goto_2

    .line 158
    .end local v11           #sendEvent:Z
    :cond_7
    const/4 v11, 0x0

    goto :goto_4

    .line 163
    .end local v7           #direction:I
    :pswitch_2
    invoke-virtual {v3, v9}, Landroid/webkit/AccessibilityInjector$AccessibilityWebContentKeyBinding;->getFirstArgument(I)I

    move-result v7

    .line 165
    .restart local v7       #direction:I
    move-object/from16 v0, p0

    iget v13, v0, Landroid/webkit/AccessibilityInjector;->mLastDirection:I

    if-ne v7, v13, :cond_8

    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/webkit/AccessibilityInjector;->mIsLastSelectionStringNull:Z

    if-eqz v13, :cond_8

    .line 166
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/webkit/AccessibilityInjector;->mIsLastSelectionStringNull:Z

    .line 167
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 169
    :cond_8
    move-object/from16 v0, p0

    iput v7, v0, Landroid/webkit/AccessibilityInjector;->mLastDirection:I

    .line 170
    invoke-virtual {v3, v9}, Landroid/webkit/AccessibilityInjector$AccessibilityWebContentKeyBinding;->getSecondArgument(I)I

    move-result v2

    .line 171
    .restart local v2       #axis:I
    invoke-virtual {v3, v9}, Landroid/webkit/AccessibilityInjector$AccessibilityWebContentKeyBinding;->getThirdArgument(I)I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_9

    const/4 v11, 0x1

    .line 172
    .restart local v11       #sendEvent:Z
    :goto_5
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v2, v11, v5}, Landroid/webkit/AccessibilityInjector;->traverseGivenAxis(IIZLjava/lang/String;)Z

    .line 173
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/webkit/AccessibilityInjector;->mLastDownEventHandled:Z

    goto :goto_2

    .line 171
    .end local v11           #sendEvent:Z
    :cond_9
    const/4 v11, 0x0

    goto :goto_5

    .line 176
    .end local v2           #axis:I
    .end local v7           #direction:I
    :pswitch_3
    invoke-virtual {v3, v9}, Landroid/webkit/AccessibilityInjector$AccessibilityWebContentKeyBinding;->getFirstArgument(I)I

    move-result v8

    .line 177
    .local v8, fromAxis:I
    invoke-virtual {v3, v9}, Landroid/webkit/AccessibilityInjector$AccessibilityWebContentKeyBinding;->getSecondArgument(I)I

    move-result v12

    .line 178
    .local v12, toAxis:I
    invoke-virtual {v3, v9}, Landroid/webkit/AccessibilityInjector$AccessibilityWebContentKeyBinding;->getThirdArgument(I)I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_a

    const/4 v11, 0x1

    .line 179
    .restart local v11       #sendEvent:Z
    :goto_6
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v12, v11, v5}, Landroid/webkit/AccessibilityInjector;->prefromAxisTransition(IIZLjava/lang/String;)V

    .line 180
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/webkit/AccessibilityInjector;->mLastDownEventHandled:Z

    goto/16 :goto_2

    .line 178
    .end local v11           #sendEvent:Z
    :cond_a
    const/4 v11, 0x0

    goto :goto_6

    .line 186
    .end local v8           #fromAxis:I
    .end local v12           #toAxis:I
    :pswitch_4
    move-object/from16 v0, p0

    iget v13, v0, Landroid/webkit/AccessibilityInjector;->mCurrentAxis:I

    const/4 v14, 0x7

    if-ne v13, v14, :cond_c

    .line 189
    invoke-virtual {v3, v9}, Landroid/webkit/AccessibilityInjector$AccessibilityWebContentKeyBinding;->getFirstArgument(I)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Landroid/webkit/AccessibilityInjector;->mLastDirection:I

    .line 190
    invoke-virtual {v3, v9}, Landroid/webkit/AccessibilityInjector$AccessibilityWebContentKeyBinding;->getSecondArgument(I)I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_b

    const/4 v11, 0x1

    .line 191
    .restart local v11       #sendEvent:Z
    :goto_7
    move-object/from16 v0, p0

    iget v13, v0, Landroid/webkit/AccessibilityInjector;->mLastDirection:I

    const/4 v14, 0x7

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v11, v5}, Landroid/webkit/AccessibilityInjector;->traverseGivenAxis(IIZLjava/lang/String;)Z

    .line 193
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/webkit/AccessibilityInjector;->mLastDownEventHandled:Z

    goto/16 :goto_2

    .line 190
    .end local v11           #sendEvent:Z
    :cond_b
    const/4 v11, 0x0

    goto :goto_7

    .line 195
    :cond_c
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/webkit/AccessibilityInjector;->mLastDownEventHandled:Z

    goto/16 :goto_2

    .line 203
    .end local v1           #actionCode:I
    .end local v5           #contentDescription:Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/webkit/AccessibilityInjector;->mLastDownEventHandled:Z

    goto/16 :goto_0

    .line 143
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onSelectionStringChange(Ljava/lang/String;)V
    .locals 4
    .parameter "selectionString"

    .prologue
    .line 292
    const-string v1, "AccessibilityInjector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Selection string: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    if-nez p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Landroid/webkit/AccessibilityInjector;->mIsLastSelectionStringNull:Z

    .line 295
    iget-object v1, p0, Landroid/webkit/AccessibilityInjector;->mScheduledEventStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 303
    :cond_0
    :goto_1
    return-void

    .line 294
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 298
    :cond_2
    iget-object v1, p0, Landroid/webkit/AccessibilityInjector;->mScheduledEventStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityEvent;

    .line 299
    .local v0, event:Landroid/view/accessibility/AccessibilityEvent;
    if-eqz v0, :cond_0

    .line 300
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 301
    invoke-direct {p0, v0}, Landroid/webkit/AccessibilityInjector;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_1
.end method
