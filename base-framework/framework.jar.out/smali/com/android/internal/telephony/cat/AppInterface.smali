.class public interface abstract Lcom/android/internal/telephony/cat/AppInterface;
.super Ljava/lang/Object;
.source "AppInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    }
.end annotation


# static fields
.field public static final CAT_CMD_ACTION:Ljava/lang/String; = "android.intent.action.stk.command"

.field public static final CAT_CMD_ACTION_2:Ljava/lang/String; = "android.intent.action.stk.command_2"

.field public static final CAT_SESSION_END_ACTION:Ljava/lang/String; = "android.intent.action.stk.session_end"

.field public static final CAT_SESSION_END_ACTION_2:Ljava/lang/String; = "android.intent.action.stk.session_end_2"


# virtual methods
.method public abstract getMenuTitleFromEf()Ljava/lang/String;
.end method

.method public abstract onCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V
.end method

.method public abstract onDBHandler(I)V
.end method

.method public abstract onEventDownload(Lcom/android/internal/telephony/cat/CatResponseMessage;)V
.end method
