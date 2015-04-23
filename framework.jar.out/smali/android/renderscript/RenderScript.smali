.class public Landroid/renderscript/RenderScript;
.super Ljava/lang/Object;
.source "RenderScript.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/RenderScript$MessageThread;,
        Landroid/renderscript/RenderScript$Priority;,
        Landroid/renderscript/RenderScript$RSErrorHandler;,
        Landroid/renderscript/RenderScript$RSMessageHandler;,
        Landroid/renderscript/RenderScript$ContextType;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final LOG_ENABLED:Z = false

.field static final LOG_TAG:Ljava/lang/String; = "RenderScript_jni"

.field static final TRACE_TAG:J = 0x8000L

.field static mCacheDir:Ljava/io/File; = null

.field static registerNativeAllocation:Ljava/lang/reflect/Method; = null

.field static registerNativeFree:Ljava/lang/reflect/Method; = null

.field static sInitialized:Z = false

.field static final sMinorID:J = 0x1L

.field static sRuntime:Ljava/lang/Object;


# instance fields
.field private mApplicationContext:Landroid/content/Context;

.field mContext:I

.field mContextType:Landroid/renderscript/RenderScript$ContextType;

.field mDev:I

.field mElement_ALLOCATION:Landroid/renderscript/Element;

.field mElement_A_8:Landroid/renderscript/Element;

.field mElement_BOOLEAN:Landroid/renderscript/Element;

.field mElement_CHAR_2:Landroid/renderscript/Element;

.field mElement_CHAR_3:Landroid/renderscript/Element;

.field mElement_CHAR_4:Landroid/renderscript/Element;

.field mElement_DOUBLE_2:Landroid/renderscript/Element;

.field mElement_DOUBLE_3:Landroid/renderscript/Element;

.field mElement_DOUBLE_4:Landroid/renderscript/Element;

.field mElement_ELEMENT:Landroid/renderscript/Element;

.field mElement_F32:Landroid/renderscript/Element;

.field mElement_F64:Landroid/renderscript/Element;

.field mElement_FLOAT_2:Landroid/renderscript/Element;

.field mElement_FLOAT_3:Landroid/renderscript/Element;

.field mElement_FLOAT_4:Landroid/renderscript/Element;

.field mElement_FONT:Landroid/renderscript/Element;

.field mElement_I16:Landroid/renderscript/Element;

.field mElement_I32:Landroid/renderscript/Element;

.field mElement_I64:Landroid/renderscript/Element;

.field mElement_I8:Landroid/renderscript/Element;

.field mElement_INT_2:Landroid/renderscript/Element;

.field mElement_INT_3:Landroid/renderscript/Element;

.field mElement_INT_4:Landroid/renderscript/Element;

.field mElement_LONG_2:Landroid/renderscript/Element;

.field mElement_LONG_3:Landroid/renderscript/Element;

.field mElement_LONG_4:Landroid/renderscript/Element;

.field mElement_MATRIX_2X2:Landroid/renderscript/Element;

.field mElement_MATRIX_3X3:Landroid/renderscript/Element;

.field mElement_MATRIX_4X4:Landroid/renderscript/Element;

.field mElement_MESH:Landroid/renderscript/Element;

.field mElement_PROGRAM_FRAGMENT:Landroid/renderscript/Element;

.field mElement_PROGRAM_RASTER:Landroid/renderscript/Element;

.field mElement_PROGRAM_STORE:Landroid/renderscript/Element;

.field mElement_PROGRAM_VERTEX:Landroid/renderscript/Element;

.field mElement_RGBA_4444:Landroid/renderscript/Element;

.field mElement_RGBA_5551:Landroid/renderscript/Element;

.field mElement_RGBA_8888:Landroid/renderscript/Element;

.field mElement_RGB_565:Landroid/renderscript/Element;

.field mElement_RGB_888:Landroid/renderscript/Element;

.field mElement_SAMPLER:Landroid/renderscript/Element;

.field mElement_SCRIPT:Landroid/renderscript/Element;

.field mElement_SHORT_2:Landroid/renderscript/Element;

.field mElement_SHORT_3:Landroid/renderscript/Element;

.field mElement_SHORT_4:Landroid/renderscript/Element;

.field mElement_TYPE:Landroid/renderscript/Element;

.field mElement_U16:Landroid/renderscript/Element;

.field mElement_U32:Landroid/renderscript/Element;

.field mElement_U64:Landroid/renderscript/Element;

.field mElement_U8:Landroid/renderscript/Element;

.field mElement_UCHAR_2:Landroid/renderscript/Element;

.field mElement_UCHAR_3:Landroid/renderscript/Element;

.field mElement_UCHAR_4:Landroid/renderscript/Element;

.field mElement_UINT_2:Landroid/renderscript/Element;

.field mElement_UINT_3:Landroid/renderscript/Element;

.field mElement_UINT_4:Landroid/renderscript/Element;

.field mElement_ULONG_2:Landroid/renderscript/Element;

.field mElement_ULONG_3:Landroid/renderscript/Element;

.field mElement_ULONG_4:Landroid/renderscript/Element;

.field mElement_USHORT_2:Landroid/renderscript/Element;

.field mElement_USHORT_3:Landroid/renderscript/Element;

.field mElement_USHORT_4:Landroid/renderscript/Element;

.field mElement_YUV:Landroid/renderscript/Element;

.field mErrorCallback:Landroid/renderscript/RenderScript$RSErrorHandler;

.field mMessageCallback:Landroid/renderscript/RenderScript$RSMessageHandler;

.field mMessageThread:Landroid/renderscript/RenderScript$MessageThread;

.field mProgramRaster_CULL_BACK:Landroid/renderscript/ProgramRaster;

.field mProgramRaster_CULL_FRONT:Landroid/renderscript/ProgramRaster;

.field mProgramRaster_CULL_NONE:Landroid/renderscript/ProgramRaster;

.field mProgramStore_BLEND_ALPHA_DEPTH_NO_DEPTH:Landroid/renderscript/ProgramStore;

.field mProgramStore_BLEND_ALPHA_DEPTH_TEST:Landroid/renderscript/ProgramStore;

.field mProgramStore_BLEND_NONE_DEPTH_NO_DEPTH:Landroid/renderscript/ProgramStore;

.field mProgramStore_BLEND_NONE_DEPTH_TEST:Landroid/renderscript/ProgramStore;

.field mRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field mSampler_CLAMP_LINEAR:Landroid/renderscript/Sampler;

.field mSampler_CLAMP_LINEAR_MIP_LINEAR:Landroid/renderscript/Sampler;

.field mSampler_CLAMP_NEAREST:Landroid/renderscript/Sampler;

.field mSampler_MIRRORED_REPEAT_LINEAR:Landroid/renderscript/Sampler;

.field mSampler_MIRRORED_REPEAT_LINEAR_MIP_LINEAR:Landroid/renderscript/Sampler;

.field mSampler_MIRRORED_REPEAT_NEAREST:Landroid/renderscript/Sampler;

.field mSampler_WRAP_LINEAR:Landroid/renderscript/Sampler;

.field mSampler_WRAP_LINEAR_MIP_LINEAR:Landroid/renderscript/Sampler;

.field mSampler_WRAP_NEAREST:Landroid/renderscript/Sampler;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    sput-boolean v4, Landroid/renderscript/RenderScript;->sInitialized:Z

    const-string v3, "config.disable_renderscript"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    :try_start_0
    const-string v3, "dalvik.system.VMRuntime"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .local v2, "vm_runtime":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "getRuntime"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .local v1, "get_runtime":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sput-object v3, Landroid/renderscript/RenderScript;->sRuntime:Ljava/lang/Object;

    const-string v3, "registerNativeAllocation"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Landroid/renderscript/RenderScript;->registerNativeAllocation:Ljava/lang/reflect/Method;

    const-string v3, "registerNativeFree"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Landroid/renderscript/RenderScript;->registerNativeFree:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v3, "rs_jni"

    invoke-static {v3}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    invoke-static {}, Landroid/renderscript/RenderScript;->_nInit()V

    const/4 v3, 0x1

    sput-boolean v3, Landroid/renderscript/RenderScript;->sInitialized:Z
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    return-void

    .end local v1    # "get_runtime":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "RenderScript_jni"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error loading GC methods: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/renderscript/RSRuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error loading GC methods: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "get_runtime":Ljava/lang/reflect/Method;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v3, "RenderScript_jni"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error loading RS jni library: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/renderscript/RSRuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error loading RS jni library: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mMessageCallback:Landroid/renderscript/RenderScript$RSMessageHandler;

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mErrorCallback:Landroid/renderscript/RenderScript$RSErrorHandler;

    sget-object v0, Landroid/renderscript/RenderScript$ContextType;->NORMAL:Landroid/renderscript/RenderScript$ContextType;

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mContextType:Landroid/renderscript/RenderScript$ContextType;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mApplicationContext:Landroid/content/Context;

    :cond_0
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    return-void
.end method

.method static native _nInit()V
.end method

.method public static create(Landroid/content/Context;)Landroid/renderscript/RenderScript;
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    sget-object v0, Landroid/renderscript/RenderScript$ContextType;->NORMAL:Landroid/renderscript/RenderScript$ContextType;

    invoke-static {p0, v0}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;Landroid/renderscript/RenderScript$ContextType;)Landroid/renderscript/RenderScript;

    move-result-object v0

    return-object v0
.end method

.method public static create(Landroid/content/Context;I)Landroid/renderscript/RenderScript;
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "sdkVersion"    # I

    .prologue
    sget-object v0, Landroid/renderscript/RenderScript$ContextType;->NORMAL:Landroid/renderscript/RenderScript$ContextType;

    invoke-static {p0, p1, v0}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;ILandroid/renderscript/RenderScript$ContextType;)Landroid/renderscript/RenderScript;

    move-result-object v0

    return-object v0
.end method

.method public static create(Landroid/content/Context;ILandroid/renderscript/RenderScript$ContextType;)Landroid/renderscript/RenderScript;
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "sdkVersion"    # I
    .param p2, "ct"    # Landroid/renderscript/RenderScript$ContextType;

    .prologue
    sget-boolean v1, Landroid/renderscript/RenderScript;->sInitialized:Z

    if-nez v1, :cond_0

    const-string v1, "RenderScript_jni"

    const-string v2, "RenderScript.create() called when disabled; someone is likely to crash"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/renderscript/RenderScript;

    invoke-direct {v0, p0}, Landroid/renderscript/RenderScript;-><init>(Landroid/content/Context;)V

    .local v0, "rs":Landroid/renderscript/RenderScript;
    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->nDeviceCreate()I

    move-result v1

    iput v1, v0, Landroid/renderscript/RenderScript;->mDev:I

    iget v1, v0, Landroid/renderscript/RenderScript;->mDev:I

    const/4 v2, 0x0

    iget v3, p2, Landroid/renderscript/RenderScript$ContextType;->mID:I

    invoke-virtual {v0, v1, v2, p1, v3}, Landroid/renderscript/RenderScript;->nContextCreate(IIII)I

    move-result v1

    iput v1, v0, Landroid/renderscript/RenderScript;->mContext:I

    iput-object p2, v0, Landroid/renderscript/RenderScript;->mContextType:Landroid/renderscript/RenderScript$ContextType;

    iget v1, v0, Landroid/renderscript/RenderScript;->mContext:I

    if-nez v1, :cond_1

    new-instance v1, Landroid/renderscript/RSDriverException;

    const-string v2, "Failed to create RS context."

    invoke-direct {v1, v2}, Landroid/renderscript/RSDriverException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v1, Landroid/renderscript/RenderScript$MessageThread;

    invoke-direct {v1, v0}, Landroid/renderscript/RenderScript$MessageThread;-><init>(Landroid/renderscript/RenderScript;)V

    iput-object v1, v0, Landroid/renderscript/RenderScript;->mMessageThread:Landroid/renderscript/RenderScript$MessageThread;

    iget-object v1, v0, Landroid/renderscript/RenderScript;->mMessageThread:Landroid/renderscript/RenderScript$MessageThread;

    invoke-virtual {v1}, Landroid/renderscript/RenderScript$MessageThread;->start()V

    goto :goto_0
.end method

.method public static create(Landroid/content/Context;Landroid/renderscript/RenderScript$ContextType;)Landroid/renderscript/RenderScript;
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "ct"    # Landroid/renderscript/RenderScript$ContextType;

    .prologue
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v0, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .local v0, "v":I
    invoke-static {p0, v0, p1}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;ILandroid/renderscript/RenderScript$ContextType;)Landroid/renderscript/RenderScript;

    move-result-object v1

    return-object v1
.end method

.method public static getMinorID()J
    .locals 2

    .prologue
    const-wide/16 v0, 0x1

    return-wide v0
.end method

.method public static setupDiskCache(Ljava/io/File;)V
    .locals 2
    .param p0, "cacheDir"    # Ljava/io/File;

    .prologue
    sget-boolean v0, Landroid/renderscript/RenderScript;->sInitialized:Z

    if-nez v0, :cond_0

    const-string v0, "RenderScript_jni"

    const-string v1, "RenderScript.setupDiskCache() called when disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    sput-object p0, Landroid/renderscript/RenderScript;->mCacheDir:Ljava/io/File;

    goto :goto_0
.end method


# virtual methods
.method public contextDump()V
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/renderscript/RenderScript;->nContextDump(I)V

    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->nContextFinish()V

    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0}, Landroid/renderscript/RenderScript;->nContextDeinitToClient(I)V

    iget-object v0, p0, Landroid/renderscript/RenderScript;->mMessageThread:Landroid/renderscript/RenderScript$MessageThread;

    iput-boolean v1, v0, Landroid/renderscript/RenderScript$MessageThread;->mRun:Z

    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mMessageThread:Landroid/renderscript/RenderScript$MessageThread;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript$MessageThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->nContextDestroy()V

    iget v0, p0, Landroid/renderscript/RenderScript;->mDev:I

    invoke-virtual {p0, v0}, Landroid/renderscript/RenderScript;->nDeviceDestroy(I)V

    iput v1, p0, Landroid/renderscript/RenderScript;->mDev:I

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public finish()V
    .locals 0

    .prologue
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->nContextFinish()V

    return-void
.end method

.method public final getApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mApplicationContext:Landroid/content/Context;

    return-object v0
.end method

.method public getErrorHandler()Landroid/renderscript/RenderScript$RSErrorHandler;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mErrorCallback:Landroid/renderscript/RenderScript$RSErrorHandler;

    return-object v0
.end method

.method public getMessageHandler()Landroid/renderscript/RenderScript$RSMessageHandler;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mMessageCallback:Landroid/renderscript/RenderScript$RSMessageHandler;

    return-object v0
.end method

.method isAlive()Z
    .locals 1

    .prologue
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method declared-synchronized nAllocationCopyFromBitmap(ILandroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "alloc"    # I
    .param p2, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/renderscript/RenderScript;->rsnAllocationCopyFromBitmap(IILandroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationCopyToBitmap(ILandroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "alloc"    # I
    .param p2, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/renderscript/RenderScript;->rsnAllocationCopyToBitmap(IILandroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationCreateBitmapBackedAllocation(IILandroid/graphics/Bitmap;I)I
    .locals 6
    .param p1, "type"    # I
    .param p2, "mip"    # I
    .param p3, "bmp"    # Landroid/graphics/Bitmap;
    .param p4, "usage"    # I

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->rsnAllocationCreateBitmapBackedAllocation(IIILandroid/graphics/Bitmap;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationCreateBitmapRef(ILandroid/graphics/Bitmap;)I
    .locals 1
    .param p1, "type"    # I
    .param p2, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/renderscript/RenderScript;->rsnAllocationCreateBitmapRef(IILandroid/graphics/Bitmap;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationCreateFromAssetStream(III)I
    .locals 1
    .param p1, "mips"    # I
    .param p2, "assetStream"    # I
    .param p3, "usage"    # I

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/renderscript/RenderScript;->rsnAllocationCreateFromAssetStream(IIII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationCreateFromBitmap(IILandroid/graphics/Bitmap;I)I
    .locals 6
    .param p1, "type"    # I
    .param p2, "mip"    # I
    .param p3, "bmp"    # Landroid/graphics/Bitmap;
    .param p4, "usage"    # I

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->rsnAllocationCreateFromBitmap(IIILandroid/graphics/Bitmap;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationCreateTyped(IIII)I
    .locals 6
    .param p1, "type"    # I
    .param p2, "mip"    # I
    .param p3, "usage"    # I
    .param p4, "pointer"    # I

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->rsnAllocationCreateTyped(IIIII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationCubeCreateFromBitmap(IILandroid/graphics/Bitmap;I)I
    .locals 6
    .param p1, "type"    # I
    .param p2, "mip"    # I
    .param p3, "bmp"    # Landroid/graphics/Bitmap;
    .param p4, "usage"    # I

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->rsnAllocationCubeCreateFromBitmap(IIILandroid/graphics/Bitmap;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationData1D(IIII[BI)V
    .locals 8
    .param p1, "id"    # I
    .param p2, "off"    # I
    .param p3, "mip"    # I
    .param p4, "count"    # I
    .param p5, "d"    # [B
    .param p6, "sizeBytes"    # I

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/RenderScript;->rsnAllocationData1D(IIIII[BI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationData1D(IIII[FI)V
    .locals 8
    .param p1, "id"    # I
    .param p2, "off"    # I
    .param p3, "mip"    # I
    .param p4, "count"    # I
    .param p5, "d"    # [F
    .param p6, "sizeBytes"    # I

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/RenderScript;->rsnAllocationData1D(IIIII[FI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationData1D(IIII[II)V
    .locals 8
    .param p1, "id"    # I
    .param p2, "off"    # I
    .param p3, "mip"    # I
    .param p4, "count"    # I
    .param p5, "d"    # [I
    .param p6, "sizeBytes"    # I

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/RenderScript;->rsnAllocationData1D(IIIII[II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationData1D(IIII[SI)V
    .locals 8
    .param p1, "id"    # I
    .param p2, "off"    # I
    .param p3, "mip"    # I
    .param p4, "count"    # I
    .param p5, "d"    # [S
    .param p6, "sizeBytes"    # I

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/RenderScript;->rsnAllocationData1D(IIIII[SI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationData2D(IIIIIIIIIIII)V
    .locals 14
    .param p1, "dstAlloc"    # I
    .param p2, "dstXoff"    # I
    .param p3, "dstYoff"    # I
    .param p4, "dstMip"    # I
    .param p5, "dstFace"    # I
    .param p6, "width"    # I
    .param p7, "height"    # I
    .param p8, "srcAlloc"    # I
    .param p9, "srcXoff"    # I
    .param p10, "srcYoff"    # I
    .param p11, "srcMip"    # I
    .param p12, "srcFace"    # I

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    invoke-virtual/range {v0 .. v13}, Landroid/renderscript/RenderScript;->rsnAllocationData2D(IIIIIIIIIIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationData2D(IIIIIII[BI)V
    .locals 11
    .param p1, "id"    # I
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I
    .param p4, "mip"    # I
    .param p5, "face"    # I
    .param p6, "w"    # I
    .param p7, "h"    # I
    .param p8, "d"    # [B
    .param p9, "sizeBytes"    # I

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    invoke-virtual/range {v0 .. v10}, Landroid/renderscript/RenderScript;->rsnAllocationData2D(IIIIIIII[BI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationData2D(IIIIIII[FI)V
    .locals 11
    .param p1, "id"    # I
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I
    .param p4, "mip"    # I
    .param p5, "face"    # I
    .param p6, "w"    # I
    .param p7, "h"    # I
    .param p8, "d"    # [F
    .param p9, "sizeBytes"    # I

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    invoke-virtual/range {v0 .. v10}, Landroid/renderscript/RenderScript;->rsnAllocationData2D(IIIIIIII[FI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationData2D(IIIIIII[II)V
    .locals 11
    .param p1, "id"    # I
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I
    .param p4, "mip"    # I
    .param p5, "face"    # I
    .param p6, "w"    # I
    .param p7, "h"    # I
    .param p8, "d"    # [I
    .param p9, "sizeBytes"    # I

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    invoke-virtual/range {v0 .. v10}, Landroid/renderscript/RenderScript;->rsnAllocationData2D(IIIIIIII[II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationData2D(IIIIIII[SI)V
    .locals 11
    .param p1, "id"    # I
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I
    .param p4, "mip"    # I
    .param p5, "face"    # I
    .param p6, "w"    # I
    .param p7, "h"    # I
    .param p8, "d"    # [S
    .param p9, "sizeBytes"    # I

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    invoke-virtual/range {v0 .. v10}, Landroid/renderscript/RenderScript;->rsnAllocationData2D(IIIIIIII[SI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationData2D(IIIIILandroid/graphics/Bitmap;)V
    .locals 8
    .param p1, "id"    # I
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I
    .param p4, "mip"    # I
    .param p5, "face"    # I
    .param p6, "b"    # Landroid/graphics/Bitmap;

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/RenderScript;->rsnAllocationData2D(IIIIIILandroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationData3D(IIIIIIIIIIIII)V
    .locals 15
    .param p1, "dstAlloc"    # I
    .param p2, "dstXoff"    # I
    .param p3, "dstYoff"    # I
    .param p4, "dstZoff"    # I
    .param p5, "dstMip"    # I
    .param p6, "width"    # I
    .param p7, "height"    # I
    .param p8, "depth"    # I
    .param p9, "srcAlloc"    # I
    .param p10, "srcXoff"    # I
    .param p11, "srcYoff"    # I
    .param p12, "srcZoff"    # I
    .param p13, "srcMip"    # I

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    invoke-virtual/range {v0 .. v14}, Landroid/renderscript/RenderScript;->rsnAllocationData3D(IIIIIIIIIIIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationData3D(IIIIIIII[BI)V
    .locals 12
    .param p1, "id"    # I
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I
    .param p4, "zoff"    # I
    .param p5, "mip"    # I
    .param p6, "w"    # I
    .param p7, "h"    # I
    .param p8, "depth"    # I
    .param p9, "d"    # [B
    .param p10, "sizeBytes"    # I

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    invoke-virtual/range {v0 .. v11}, Landroid/renderscript/RenderScript;->rsnAllocationData3D(IIIIIIIII[BI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationData3D(IIIIIIII[FI)V
    .locals 12
    .param p1, "id"    # I
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I
    .param p4, "zoff"    # I
    .param p5, "mip"    # I
    .param p6, "w"    # I
    .param p7, "h"    # I
    .param p8, "depth"    # I
    .param p9, "d"    # [F
    .param p10, "sizeBytes"    # I

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    invoke-virtual/range {v0 .. v11}, Landroid/renderscript/RenderScript;->rsnAllocationData3D(IIIIIIIII[FI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationData3D(IIIIIIII[II)V
    .locals 12
    .param p1, "id"    # I
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I
    .param p4, "zoff"    # I
    .param p5, "mip"    # I
    .param p6, "w"    # I
    .param p7, "h"    # I
    .param p8, "depth"    # I
    .param p9, "d"    # [I
    .param p10, "sizeBytes"    # I

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    invoke-virtual/range {v0 .. v11}, Landroid/renderscript/RenderScript;->rsnAllocationData3D(IIIIIIIII[II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationData3D(IIIIIIII[SI)V
    .locals 12
    .param p1, "id"    # I
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I
    .param p4, "zoff"    # I
    .param p5, "mip"    # I
    .param p6, "w"    # I
    .param p7, "h"    # I
    .param p8, "depth"    # I
    .param p9, "d"    # [S
    .param p10, "sizeBytes"    # I

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    invoke-virtual/range {v0 .. v11}, Landroid/renderscript/RenderScript;->rsnAllocationData3D(IIIIIIIII[SI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationElementData1D(IIII[BI)V
    .locals 8
    .param p1, "id"    # I
    .param p2, "xoff"    # I
    .param p3, "mip"    # I
    .param p4, "compIdx"    # I
    .param p5, "d"    # [B
    .param p6, "sizeBytes"    # I

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/RenderScript;->rsnAllocationElementData1D(IIIII[BI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationGenerateMipmaps(I)V
    .locals 1
    .param p1, "alloc"    # I

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1}, Landroid/renderscript/RenderScript;->rsnAllocationGenerateMipmaps(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationGetSurface(I)Landroid/view/Surface;
    .locals 1
    .param p1, "alloc"    # I

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1}, Landroid/renderscript/RenderScript;->rsnAllocationGetSurface(II)Landroid/view/Surface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationGetType(I)I
    .locals 1
    .param p1, "id"    # I

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1}, Landroid/renderscript/RenderScript;->rsnAllocationGetType(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationIoReceive(I)V
    .locals 1
    .param p1, "alloc"    # I

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1}, Landroid/renderscript/RenderScript;->rsnAllocationIoReceive(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationIoSend(I)V
    .locals 1
    .param p1, "alloc"    # I

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1}, Landroid/renderscript/RenderScript;->rsnAllocationIoSend(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationRead(I[B)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "d"    # [B

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/renderscript/RenderScript;->rsnAllocationRead(II[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationRead(I[F)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "d"    # [F

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/renderscript/RenderScript;->rsnAllocationRead(II[F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationRead(I[I)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "d"    # [I

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/renderscript/RenderScript;->rsnAllocationRead(II[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationRead(I[S)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "d"    # [S

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/renderscript/RenderScript;->rsnAllocationRead(II[S)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationResize1D(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "dimX"    # I

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/renderscript/RenderScript;->rsnAllocationResize1D(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationSetSurface(ILandroid/view/Surface;)V
    .locals 1
    .param p1, "alloc"    # I
    .param p2, "sur"    # Landroid/view/Surface;

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/renderscript/RenderScript;->rsnAllocationSetSurface(IILandroid/view/Surface;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAllocationSyncAll(II)V
    .locals 1
    .param p1, "alloc"    # I
    .param p2, "src"    # I

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/renderscript/RenderScript;->rsnAllocationSyncAll(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nAssignName(I[B)V
    .locals 1
    .param p1, "obj"    # I
    .param p2, "name"    # [B

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/renderscript/RenderScript;->rsnAssignName(II[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nContextBindProgramFragment(I)V
    .locals 1
    .param p1, "pf"    # I

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1}, Landroid/renderscript/RenderScript;->rsnContextBindProgramFragment(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nContextBindProgramRaster(I)V
    .locals 1
    .param p1, "pr"    # I

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1}, Landroid/renderscript/RenderScript;->rsnContextBindProgramRaster(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nContextBindProgramStore(I)V
    .locals 1
    .param p1, "pfs"    # I

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1}, Landroid/renderscript/RenderScript;->rsnContextBindProgramStore(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nContextBindProgramVertex(I)V
    .locals 1
    .param p1, "pv"    # I

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1}, Landroid/renderscript/RenderScript;->rsnContextBindProgramVertex(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nContextBindRootScript(I)V
    .locals 1
    .param p1, "script"    # I

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1}, Landroid/renderscript/RenderScript;->rsnContextBindRootScript(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nContextBindSampler(II)V
    .locals 1
    .param p1, "sampler"    # I
    .param p2, "slot"    # I

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/renderscript/RenderScript;->rsnContextBindSampler(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nContextCreate(IIII)I
    .locals 1
    .param p1, "dev"    # I
    .param p2, "ver"    # I
    .param p3, "sdkVer"    # I
    .param p4, "contextType"    # I

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/renderscript/RenderScript;->rsnContextCreate(IIII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nContextCreateGL(IIIIIIIIIIIIIFI)I
    .locals 1
    .param p1, "dev"    # I
    .param p2, "ver"    # I
    .param p3, "sdkVer"    # I
    .param p4, "colorMin"    # I
    .param p5, "colorPref"    # I
    .param p6, "alphaMin"    # I
    .param p7, "alphaPref"    # I
    .param p8, "depthMin"    # I
    .param p9, "depthPref"    # I
    .param p10, "stencilMin"    # I
    .param p11, "stencilPref"    # I
    .param p12, "samplesMin"    # I
    .param p13, "samplesPref"    # I
    .param p14, "samplesQ"    # F
    .param p15, "dpi"    # I

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual/range {p0 .. p15}, Landroid/renderscript/RenderScript;->rsnContextCreateGL(IIIIIIIIIIIIIFI)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method native nContextDeinitToClient(I)V
.end method

.method declared-synchronized nContextDestroy()V
    .locals 3

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget-object v2, p0, Landroid/renderscript/RenderScript;->mRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    .local v1, "wlock":Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    .local v0, "curCon":I
    const/4 v2, 0x0

    iput v2, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    invoke-virtual {p0, v0}, Landroid/renderscript/RenderScript;->rsnContextDestroy(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .end local v0    # "curCon":I
    .end local v1    # "wlock":Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method declared-synchronized nContextDump(I)V
    .locals 1
    .param p1, "bits"    # I

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1}, Landroid/renderscript/RenderScript;->rsnContextDump(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nContextFinish()V
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0}, Landroid/renderscript/RenderScript;->rsnContextFinish(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method native nContextGetErrorMessage(I)Ljava/lang/String;
.end method

.method native nContextGetUserMessage(I[I)I
.end method

.method native nContextInitToClient(I)V
.end method

.method declared-synchronized nContextPause()V
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0}, Landroid/renderscript/RenderScript;->rsnContextPause(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method native nContextPeekMessage(I[I)I
.end method

.method declared-synchronized nContextResume()V
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0}, Landroid/renderscript/RenderScript;->rsnContextResume(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nContextSendMessage(I[I)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "data"    # [I

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/renderscript/RenderScript;->rsnContextSendMessage(II[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nContextSetPriority(I)V
    .locals 1
    .param p1, "p"    # I

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1}, Landroid/renderscript/RenderScript;->rsnContextSetPriority(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nContextSetSurface(IILandroid/view/Surface;)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "sur"    # Landroid/view/Surface;

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/renderscript/RenderScript;->rsnContextSetSurface(IIILandroid/view/Surface;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nContextSetSurfaceTexture(IILandroid/graphics/SurfaceTexture;)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "sur"    # Landroid/graphics/SurfaceTexture;

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/renderscript/RenderScript;->rsnContextSetSurfaceTexture(IIILandroid/graphics/SurfaceTexture;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method native nDeviceCreate()I
.end method

.method native nDeviceDestroy(I)V
.end method

.method native nDeviceSetConfig(III)V
.end method

.method declared-synchronized nElementCreate(IIZI)I
    .locals 6
    .param p1, "type"    # I
    .param p2, "kind"    # I
    .param p3, "norm"    # Z
    .param p4, "vecSize"    # I

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->rsnElementCreate(IIIZI)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nElementCreate2([I[Ljava/lang/String;[I)I
    .locals 1
    .param p1, "elements"    # [I
    .param p2, "names"    # [Ljava/lang/String;
    .param p3, "arraySizes"    # [I

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/renderscript/RenderScript;->rsnElementCreate2(I[I[Ljava/lang/String;[I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nElementGetNativeData(I[I)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "elementData"    # [I

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/renderscript/RenderScript;->rsnElementGetNativeData(II[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nElementGetSubElements(I[I[Ljava/lang/String;[I)V
    .locals 6
    .param p1, "id"    # I
    .param p2, "IDs"    # [I
    .param p3, "names"    # [Ljava/lang/String;
    .param p4, "arraySizes"    # [I

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->rsnElementGetSubElements(II[I[Ljava/lang/String;[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nFileA3DCreateFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)I
    .locals 1
    .param p1, "mgr"    # Landroid/content/res/AssetManager;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/renderscript/RenderScript;->rsnFileA3DCreateFromAsset(ILandroid/content/res/AssetManager;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nFileA3DCreateFromAssetStream(I)I
    .locals 1
    .param p1, "assetStream"    # I

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1}, Landroid/renderscript/RenderScript;->rsnFileA3DCreateFromAssetStream(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nFileA3DCreateFromFile(Ljava/lang/String;)I
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1}, Landroid/renderscript/RenderScript;->rsnFileA3DCreateFromFile(ILjava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nFileA3DGetEntryByIndex(II)I
    .locals 1
    .param p1, "fileA3D"    # I
    .param p2, "index"    # I

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/renderscript/RenderScript;->rsnFileA3DGetEntryByIndex(III)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nFileA3DGetIndexEntries(II[I[Ljava/lang/String;)V
    .locals 6
    .param p1, "fileA3D"    # I
    .param p2, "numEntries"    # I
    .param p3, "IDs"    # [I
    .param p4, "names"    # [Ljava/lang/String;

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->rsnFileA3DGetIndexEntries(III[I[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nFileA3DGetNumIndexEntries(I)I
    .locals 1
    .param p1, "fileA3D"    # I

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1}, Landroid/renderscript/RenderScript;->rsnFileA3DGetNumIndexEntries(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nFontCreateFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;FI)I
    .locals 6
    .param p1, "mgr"    # Landroid/content/res/AssetManager;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "size"    # F
    .param p4, "dpi"    # I

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->rsnFontCreateFromAsset(ILandroid/content/res/AssetManager;Ljava/lang/String;FI)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nFontCreateFromAssetStream(Ljava/lang/String;FII)I
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "size"    # F
    .param p3, "dpi"    # I
    .param p4, "assetStream"    # I

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->rsnFontCreateFromAssetStream(ILjava/lang/String;FII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nFontCreateFromFile(Ljava/lang/String;FI)I
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "size"    # F
    .param p3, "dpi"    # I

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/renderscript/RenderScript;->rsnFontCreateFromFile(ILjava/lang/String;FI)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nGetName(I)Ljava/lang/String;
    .locals 1
    .param p1, "obj"    # I

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1}, Landroid/renderscript/RenderScript;->rsnGetName(II)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nMeshCreate([I[I[I)I
    .locals 1
    .param p1, "vtx"    # [I
    .param p2, "idx"    # [I
    .param p3, "prim"    # [I

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/renderscript/RenderScript;->rsnMeshCreate(I[I[I[I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nMeshGetIndexCount(I)I
    .locals 1
    .param p1, "id"    # I

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1}, Landroid/renderscript/RenderScript;->rsnMeshGetIndexCount(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nMeshGetIndices(I[I[II)V
    .locals 6
    .param p1, "id"    # I
    .param p2, "idxIds"    # [I
    .param p3, "primitives"    # [I
    .param p4, "vtxIdCount"    # I

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->rsnMeshGetIndices(II[I[II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nMeshGetVertexBufferCount(I)I
    .locals 1
    .param p1, "id"    # I

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1}, Landroid/renderscript/RenderScript;->rsnMeshGetVertexBufferCount(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nMeshGetVertices(I[II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "vtxIds"    # [I
    .param p3, "vtxIdCount"    # I

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/renderscript/RenderScript;->rsnMeshGetVertices(II[II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method nObjDestroy(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1}, Landroid/renderscript/RenderScript;->rsnObjDestroy(II)V

    :cond_0
    return-void
.end method

.method declared-synchronized nPathCreate(IZIIF)I
    .locals 7
    .param p1, "prim"    # I
    .param p2, "isStatic"    # Z
    .param p3, "vtx"    # I
    .param p4, "loop"    # I
    .param p5, "q"    # F

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Landroid/renderscript/RenderScript;->rsnPathCreate(IIZIIF)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nProgramBindConstants(III)V
    .locals 1
    .param p1, "pv"    # I
    .param p2, "slot"    # I
    .param p3, "mID"    # I

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/renderscript/RenderScript;->rsnProgramBindConstants(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nProgramBindSampler(III)V
    .locals 1
    .param p1, "vpf"    # I
    .param p2, "slot"    # I
    .param p3, "s"    # I

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/renderscript/RenderScript;->rsnProgramBindSampler(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nProgramBindTexture(III)V
    .locals 1
    .param p1, "vpf"    # I
    .param p2, "slot"    # I
    .param p3, "a"    # I

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/renderscript/RenderScript;->rsnProgramBindTexture(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nProgramFragmentCreate(Ljava/lang/String;[Ljava/lang/String;[I)I
    .locals 1
    .param p1, "shader"    # Ljava/lang/String;
    .param p2, "texNames"    # [Ljava/lang/String;
    .param p3, "params"    # [I

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/renderscript/RenderScript;->rsnProgramFragmentCreate(ILjava/lang/String;[Ljava/lang/String;[I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nProgramRasterCreate(ZI)I
    .locals 1
    .param p1, "pointSprite"    # Z
    .param p2, "cullMode"    # I

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/renderscript/RenderScript;->rsnProgramRasterCreate(IZI)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nProgramStoreCreate(ZZZZZZIII)I
    .locals 11
    .param p1, "r"    # Z
    .param p2, "g"    # Z
    .param p3, "b"    # Z
    .param p4, "a"    # Z
    .param p5, "depthMask"    # Z
    .param p6, "dither"    # Z
    .param p7, "srcMode"    # I
    .param p8, "dstMode"    # I
    .param p9, "depthFunc"    # I

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-virtual/range {v0 .. v10}, Landroid/renderscript/RenderScript;->rsnProgramStoreCreate(IZZZZZZIII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nProgramVertexCreate(Ljava/lang/String;[Ljava/lang/String;[I)I
    .locals 1
    .param p1, "shader"    # Ljava/lang/String;
    .param p2, "texNames"    # [Ljava/lang/String;
    .param p3, "params"    # [I

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/renderscript/RenderScript;->rsnProgramVertexCreate(ILjava/lang/String;[Ljava/lang/String;[I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nSamplerCreate(IIIIIF)I
    .locals 8
    .param p1, "magFilter"    # I
    .param p2, "minFilter"    # I
    .param p3, "wrapS"    # I
    .param p4, "wrapT"    # I
    .param p5, "wrapR"    # I
    .param p6, "aniso"    # F

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/RenderScript;->rsnSamplerCreate(IIIIIIF)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptBindAllocation(III)V
    .locals 1
    .param p1, "script"    # I
    .param p2, "alloc"    # I
    .param p3, "slot"    # I

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/renderscript/RenderScript;->rsnScriptBindAllocation(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptCCreate(Ljava/lang/String;Ljava/lang/String;[BI)I
    .locals 6
    .param p1, "resName"    # Ljava/lang/String;
    .param p2, "cacheDir"    # Ljava/lang/String;
    .param p3, "script"    # [B
    .param p4, "length"    # I

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->rsnScriptCCreate(ILjava/lang/String;Ljava/lang/String;[BI)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptFieldIDCreate(II)I
    .locals 1
    .param p1, "sid"    # I
    .param p2, "slot"    # I

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/renderscript/RenderScript;->rsnScriptFieldIDCreate(III)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptForEach(IIII[B)V
    .locals 7
    .param p1, "id"    # I
    .param p2, "slot"    # I
    .param p3, "ain"    # I
    .param p4, "aout"    # I
    .param p5, "params"    # [B

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    if-nez p5, :cond_0

    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->rsnScriptForEach(IIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Landroid/renderscript/RenderScript;->rsnScriptForEach(IIIII[B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptForEachClipped(IIII[BIIIIII)V
    .locals 13
    .param p1, "id"    # I
    .param p2, "slot"    # I
    .param p3, "ain"    # I
    .param p4, "aout"    # I
    .param p5, "params"    # [B
    .param p6, "xstart"    # I
    .param p7, "xend"    # I
    .param p8, "ystart"    # I
    .param p9, "yend"    # I
    .param p10, "zstart"    # I
    .param p11, "zend"    # I

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    if-nez p5, :cond_0

    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-virtual/range {v0 .. v11}, Landroid/renderscript/RenderScript;->rsnScriptForEachClipped(IIIIIIIIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    invoke-virtual/range {v0 .. v12}, Landroid/renderscript/RenderScript;->rsnScriptForEachClipped(IIIII[BIIIIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptGetVarD(II)D
    .locals 2
    .param p1, "id"    # I
    .param p2, "slot"    # I

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/renderscript/RenderScript;->rsnScriptGetVarD(III)D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptGetVarF(II)F
    .locals 1
    .param p1, "id"    # I
    .param p2, "slot"    # I

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/renderscript/RenderScript;->rsnScriptGetVarF(III)F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptGetVarI(II)I
    .locals 1
    .param p1, "id"    # I
    .param p2, "slot"    # I

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/renderscript/RenderScript;->rsnScriptGetVarI(III)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptGetVarJ(II)J
    .locals 2
    .param p1, "id"    # I
    .param p2, "slot"    # I

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/renderscript/RenderScript;->rsnScriptGetVarJ(III)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptGetVarV(II[B)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "slot"    # I
    .param p3, "val"    # [B

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/renderscript/RenderScript;->rsnScriptGetVarV(III[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptGroupCreate([I[I[I[I[I)I
    .locals 7
    .param p1, "kernels"    # [I
    .param p2, "src"    # [I
    .param p3, "dstk"    # [I
    .param p4, "dstf"    # [I
    .param p5, "types"    # [I

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Landroid/renderscript/RenderScript;->rsnScriptGroupCreate(I[I[I[I[I[I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptGroupExecute(I)V
    .locals 1
    .param p1, "group"    # I

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1}, Landroid/renderscript/RenderScript;->rsnScriptGroupExecute(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptGroupSetInput(III)V
    .locals 1
    .param p1, "group"    # I
    .param p2, "kernel"    # I
    .param p3, "alloc"    # I

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/renderscript/RenderScript;->rsnScriptGroupSetInput(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptGroupSetOutput(III)V
    .locals 1
    .param p1, "group"    # I
    .param p2, "kernel"    # I
    .param p3, "alloc"    # I

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/renderscript/RenderScript;->rsnScriptGroupSetOutput(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptIntrinsicCreate(II)I
    .locals 1
    .param p1, "id"    # I
    .param p2, "eid"    # I

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/renderscript/RenderScript;->rsnScriptIntrinsicCreate(III)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptInvoke(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "slot"    # I

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/renderscript/RenderScript;->rsnScriptInvoke(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptInvokeV(II[B)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "slot"    # I
    .param p3, "params"    # [B

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/renderscript/RenderScript;->rsnScriptInvokeV(III[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptKernelIDCreate(III)I
    .locals 1
    .param p1, "sid"    # I
    .param p2, "slot"    # I
    .param p3, "sig"    # I

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/renderscript/RenderScript;->rsnScriptKernelIDCreate(IIII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptSetTimeZone(I[B)V
    .locals 1
    .param p1, "script"    # I
    .param p2, "timeZone"    # [B

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/renderscript/RenderScript;->rsnScriptSetTimeZone(II[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptSetVarD(IID)V
    .locals 6
    .param p1, "id"    # I
    .param p2, "slot"    # I
    .param p3, "val"    # D

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->rsnScriptSetVarD(IIID)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptSetVarF(IIF)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "slot"    # I
    .param p3, "val"    # F

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/renderscript/RenderScript;->rsnScriptSetVarF(IIIF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptSetVarI(III)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "slot"    # I
    .param p3, "val"    # I

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/renderscript/RenderScript;->rsnScriptSetVarI(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptSetVarJ(IIJ)V
    .locals 6
    .param p1, "id"    # I
    .param p2, "slot"    # I
    .param p3, "val"    # J

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->rsnScriptSetVarJ(IIIJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptSetVarObj(III)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "slot"    # I
    .param p3, "val"    # I

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/renderscript/RenderScript;->rsnScriptSetVarObj(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptSetVarV(II[B)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "slot"    # I
    .param p3, "val"    # [B

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/renderscript/RenderScript;->rsnScriptSetVarV(III[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nScriptSetVarVE(II[BI[I)V
    .locals 7
    .param p1, "id"    # I
    .param p2, "slot"    # I
    .param p3, "val"    # [B
    .param p4, "e"    # I
    .param p5, "dims"    # [I

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Landroid/renderscript/RenderScript;->rsnScriptSetVarVE(III[BI[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nTypeCreate(IIIIZZI)I
    .locals 9
    .param p1, "eid"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "z"    # I
    .param p5, "mips"    # Z
    .param p6, "faces"    # Z
    .param p7, "yuv"    # I

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget v1, p0, Landroid/renderscript/RenderScript;->mContext:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Landroid/renderscript/RenderScript;->rsnTypeCreate(IIIIIZZI)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized nTypeGetNativeData(I[I)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "typeData"    # [I

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/renderscript/RenderScript;->rsnTypeGetNativeData(II[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method native rsnAllocationCopyFromBitmap(IILandroid/graphics/Bitmap;)V
.end method

.method native rsnAllocationCopyToBitmap(IILandroid/graphics/Bitmap;)V
.end method

.method native rsnAllocationCreateBitmapBackedAllocation(IIILandroid/graphics/Bitmap;I)I
.end method

.method native rsnAllocationCreateBitmapRef(IILandroid/graphics/Bitmap;)I
.end method

.method native rsnAllocationCreateFromAssetStream(IIII)I
.end method

.method native rsnAllocationCreateFromBitmap(IIILandroid/graphics/Bitmap;I)I
.end method

.method native rsnAllocationCreateTyped(IIIII)I
.end method

.method native rsnAllocationCubeCreateFromBitmap(IIILandroid/graphics/Bitmap;I)I
.end method

.method native rsnAllocationData1D(IIIII[BI)V
.end method

.method native rsnAllocationData1D(IIIII[FI)V
.end method

.method native rsnAllocationData1D(IIIII[II)V
.end method

.method native rsnAllocationData1D(IIIII[SI)V
.end method

.method native rsnAllocationData2D(IIIIIIIIIIIII)V
.end method

.method native rsnAllocationData2D(IIIIIIII[BI)V
.end method

.method native rsnAllocationData2D(IIIIIIII[FI)V
.end method

.method native rsnAllocationData2D(IIIIIIII[II)V
.end method

.method native rsnAllocationData2D(IIIIIIII[SI)V
.end method

.method native rsnAllocationData2D(IIIIIILandroid/graphics/Bitmap;)V
.end method

.method native rsnAllocationData3D(IIIIIIIIIIIIII)V
.end method

.method native rsnAllocationData3D(IIIIIIIII[BI)V
.end method

.method native rsnAllocationData3D(IIIIIIIII[FI)V
.end method

.method native rsnAllocationData3D(IIIIIIIII[II)V
.end method

.method native rsnAllocationData3D(IIIIIIIII[SI)V
.end method

.method native rsnAllocationElementData1D(IIIII[BI)V
.end method

.method native rsnAllocationGenerateMipmaps(II)V
.end method

.method native rsnAllocationGetSurface(II)Landroid/view/Surface;
.end method

.method native rsnAllocationGetType(II)I
.end method

.method native rsnAllocationIoReceive(II)V
.end method

.method native rsnAllocationIoSend(II)V
.end method

.method native rsnAllocationRead(II[B)V
.end method

.method native rsnAllocationRead(II[F)V
.end method

.method native rsnAllocationRead(II[I)V
.end method

.method native rsnAllocationRead(II[S)V
.end method

.method native rsnAllocationResize1D(III)V
.end method

.method native rsnAllocationSetSurface(IILandroid/view/Surface;)V
.end method

.method native rsnAllocationSyncAll(III)V
.end method

.method native rsnAssignName(II[B)V
.end method

.method native rsnContextBindProgramFragment(II)V
.end method

.method native rsnContextBindProgramRaster(II)V
.end method

.method native rsnContextBindProgramStore(II)V
.end method

.method native rsnContextBindProgramVertex(II)V
.end method

.method native rsnContextBindRootScript(II)V
.end method

.method native rsnContextBindSampler(III)V
.end method

.method native rsnContextCreate(IIII)I
.end method

.method native rsnContextCreateGL(IIIIIIIIIIIIIFI)I
.end method

.method native rsnContextDestroy(I)V
.end method

.method native rsnContextDump(II)V
.end method

.method native rsnContextFinish(I)V
.end method

.method native rsnContextPause(I)V
.end method

.method native rsnContextResume(I)V
.end method

.method native rsnContextSendMessage(II[I)V
.end method

.method native rsnContextSetPriority(II)V
.end method

.method native rsnContextSetSurface(IIILandroid/view/Surface;)V
.end method

.method native rsnContextSetSurfaceTexture(IIILandroid/graphics/SurfaceTexture;)V
.end method

.method native rsnElementCreate(IIIZI)I
.end method

.method native rsnElementCreate2(I[I[Ljava/lang/String;[I)I
.end method

.method native rsnElementGetNativeData(II[I)V
.end method

.method native rsnElementGetSubElements(II[I[Ljava/lang/String;[I)V
.end method

.method native rsnFileA3DCreateFromAsset(ILandroid/content/res/AssetManager;Ljava/lang/String;)I
.end method

.method native rsnFileA3DCreateFromAssetStream(II)I
.end method

.method native rsnFileA3DCreateFromFile(ILjava/lang/String;)I
.end method

.method native rsnFileA3DGetEntryByIndex(III)I
.end method

.method native rsnFileA3DGetIndexEntries(III[I[Ljava/lang/String;)V
.end method

.method native rsnFileA3DGetNumIndexEntries(II)I
.end method

.method native rsnFontCreateFromAsset(ILandroid/content/res/AssetManager;Ljava/lang/String;FI)I
.end method

.method native rsnFontCreateFromAssetStream(ILjava/lang/String;FII)I
.end method

.method native rsnFontCreateFromFile(ILjava/lang/String;FI)I
.end method

.method native rsnGetName(II)Ljava/lang/String;
.end method

.method native rsnMeshCreate(I[I[I[I)I
.end method

.method native rsnMeshGetIndexCount(II)I
.end method

.method native rsnMeshGetIndices(II[I[II)V
.end method

.method native rsnMeshGetVertexBufferCount(II)I
.end method

.method native rsnMeshGetVertices(II[II)V
.end method

.method native rsnObjDestroy(II)V
.end method

.method native rsnPathCreate(IIZIIF)I
.end method

.method native rsnProgramBindConstants(IIII)V
.end method

.method native rsnProgramBindSampler(IIII)V
.end method

.method native rsnProgramBindTexture(IIII)V
.end method

.method native rsnProgramFragmentCreate(ILjava/lang/String;[Ljava/lang/String;[I)I
.end method

.method native rsnProgramRasterCreate(IZI)I
.end method

.method native rsnProgramStoreCreate(IZZZZZZIII)I
.end method

.method native rsnProgramVertexCreate(ILjava/lang/String;[Ljava/lang/String;[I)I
.end method

.method native rsnSamplerCreate(IIIIIIF)I
.end method

.method native rsnScriptBindAllocation(IIII)V
.end method

.method native rsnScriptCCreate(ILjava/lang/String;Ljava/lang/String;[BI)I
.end method

.method native rsnScriptFieldIDCreate(III)I
.end method

.method native rsnScriptForEach(IIIII)V
.end method

.method native rsnScriptForEach(IIIII[B)V
.end method

.method native rsnScriptForEachClipped(IIIIIIIIIII)V
.end method

.method native rsnScriptForEachClipped(IIIII[BIIIIII)V
.end method

.method native rsnScriptGetVarD(III)D
.end method

.method native rsnScriptGetVarF(III)F
.end method

.method native rsnScriptGetVarI(III)I
.end method

.method native rsnScriptGetVarJ(III)J
.end method

.method native rsnScriptGetVarV(III[B)V
.end method

.method native rsnScriptGroupCreate(I[I[I[I[I[I)I
.end method

.method native rsnScriptGroupExecute(II)V
.end method

.method native rsnScriptGroupSetInput(IIII)V
.end method

.method native rsnScriptGroupSetOutput(IIII)V
.end method

.method native rsnScriptIntrinsicCreate(III)I
.end method

.method native rsnScriptInvoke(III)V
.end method

.method native rsnScriptInvokeV(III[B)V
.end method

.method native rsnScriptKernelIDCreate(IIII)I
.end method

.method native rsnScriptSetTimeZone(II[B)V
.end method

.method native rsnScriptSetVarD(IIID)V
.end method

.method native rsnScriptSetVarF(IIIF)V
.end method

.method native rsnScriptSetVarI(IIII)V
.end method

.method native rsnScriptSetVarJ(IIIJ)V
.end method

.method native rsnScriptSetVarObj(IIII)V
.end method

.method native rsnScriptSetVarV(III[B)V
.end method

.method native rsnScriptSetVarVE(III[BI[I)V
.end method

.method native rsnTypeCreate(IIIIIZZI)I
.end method

.method native rsnTypeGetNativeData(II[I)V
.end method

.method safeID(Landroid/renderscript/BaseObj;)I
    .locals 1
    .param p1, "o"    # Landroid/renderscript/BaseObj;

    .prologue
    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public sendMessage(I[I)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "data"    # [I

    .prologue
    invoke-virtual {p0, p1, p2}, Landroid/renderscript/RenderScript;->nContextSendMessage(I[I)V

    return-void
.end method

.method public setErrorHandler(Landroid/renderscript/RenderScript$RSErrorHandler;)V
    .locals 0
    .param p1, "msg"    # Landroid/renderscript/RenderScript$RSErrorHandler;

    .prologue
    iput-object p1, p0, Landroid/renderscript/RenderScript;->mErrorCallback:Landroid/renderscript/RenderScript$RSErrorHandler;

    return-void
.end method

.method public setMessageHandler(Landroid/renderscript/RenderScript$RSMessageHandler;)V
    .locals 0
    .param p1, "msg"    # Landroid/renderscript/RenderScript$RSMessageHandler;

    .prologue
    iput-object p1, p0, Landroid/renderscript/RenderScript;->mMessageCallback:Landroid/renderscript/RenderScript$RSMessageHandler;

    return-void
.end method

.method public setPriority(Landroid/renderscript/RenderScript$Priority;)V
    .locals 1
    .param p1, "p"    # Landroid/renderscript/RenderScript$Priority;

    .prologue
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    iget v0, p1, Landroid/renderscript/RenderScript$Priority;->mID:I

    invoke-virtual {p0, v0}, Landroid/renderscript/RenderScript;->nContextSetPriority(I)V

    return-void
.end method

.method validate()V
    .locals 2

    .prologue
    iget v0, p0, Landroid/renderscript/RenderScript;->mContext:I

    if-nez v0, :cond_0

    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Calling RS with no Context active."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method
