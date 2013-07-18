.class public interface abstract Lcom/android/internal/telephony/IMessageWaitingExt;
.super Ljava/lang/Object;
.source "IMessageWaitingExt.java"


# virtual methods
.method public abstract addElement(Lcom/android/internal/telephony/MessageWaitingIndication;)V
.end method

.method public abstract getMwiElements()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/MessageWaitingIndication;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getVoiceMailCount()I
.end method
