.class public interface abstract Lcom/android/internal/telephony/IConcatenatedSmsFwkExt;
.super Ljava/lang/Object;
.source "IConcatenatedSmsFwkExt.java"


# static fields
.field public static final EVENT_DISPATCH_CONCATE_SMS_SEGMENTS:I = 0xbb9


# virtual methods
.method public abstract cancelTimer(Landroid/os/Handler;Ljava/lang/Object;)V
.end method

.method public abstract deleteExistedSegments(Lcom/android/internal/telephony/TimerRecord;)V
.end method

.method public abstract isFirstConcatenatedSegment(Ljava/lang/String;I)Z
.end method

.method public abstract isLastConcatenatedSegment(Ljava/lang/String;II)Z
.end method

.method public abstract queryExistedSegments(Lcom/android/internal/telephony/TimerRecord;)[[B
.end method

.method public abstract queryTimerRecord(Ljava/lang/String;I)Lcom/android/internal/telephony/TimerRecord;
.end method

.method public abstract refreshTimer(Landroid/os/Handler;Ljava/lang/Object;)V
.end method

.method public abstract startTimer(Landroid/os/Handler;Ljava/lang/Object;)V
.end method
