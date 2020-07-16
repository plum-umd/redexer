.class final Lcom/facebook/appevents/internal/ActivityLifecycleTracker$4;
.super Ljava/lang/Object;
.source "ActivityLifecycleTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->onActivityResumed(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activityName:Ljava/lang/String;

.field final synthetic val$appContext:Landroid/content/Context;

.field final synthetic val$currentTime:J


# direct methods
.method constructor <init>(JLjava/lang/String;Landroid/content/Context;)V
    .locals 0

    .line 181
    iput-wide p1, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$4;->val$currentTime:J

    iput-object p3, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$4;->val$activityName:Ljava/lang/String;

    iput-object p4, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$4;->val$appContext:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Lcom/facebook/appevents/internal/ActivityLifecycleTracker$4;"

    const-string v1, "run"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$400()Lcom/facebook/appevents/internal/SessionInfo;

    move-result-object v5

    const/4 v6, 0x0

    if-nez v5, :cond_0

    new-instance v5, Lcom/facebook/appevents/internal/SessionInfo;

    iget-wide v7, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$4;->val$currentTime:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-direct {v5, v7, v6}, Lcom/facebook/appevents/internal/SessionInfo;-><init>(Ljava/lang/Long;Ljava/lang/Long;)V

    invoke-static {v5}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$402(Lcom/facebook/appevents/internal/SessionInfo;)Lcom/facebook/appevents/internal/SessionInfo;

    iget-object v5, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$4;->val$activityName:Ljava/lang/String;

    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$500()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$4;->val$appContext:Landroid/content/Context;

    invoke-static {v5, v6, v7, v8}, Lcom/facebook/appevents/internal/SessionLogger;->logActivateApp(Ljava/lang/String;Lcom/facebook/appevents/internal/SourceApplicationInfo;Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_0
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$400()Lcom/facebook/appevents/internal/SessionInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/facebook/appevents/internal/SessionInfo;->getSessionLastEventTime()Ljava/lang/Long;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-wide v7, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$4;->val$currentTime:J

    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$400()Lcom/facebook/appevents/internal/SessionInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/facebook/appevents/internal/SessionInfo;->getSessionLastEventTime()Ljava/lang/Long;

    move-result-object v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Ljava/lang/Long;"

    const-string v1, "longValue"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v9 .. v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/Long;"

    const-string v1, "longValue"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sub-long/2addr v7, v9

    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$600()I

    move-result v5

    mul-int/lit16 v5, v5, 0x3e8

    int-to-long v9, v5

    cmp-long v5, v7, v9

    if-lez v5, :cond_1

    iget-object v5, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$4;->val$activityName:Ljava/lang/String;

    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$400()Lcom/facebook/appevents/internal/SessionInfo;

    move-result-object v7

    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$500()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v7, v8}, Lcom/facebook/appevents/internal/SessionLogger;->logDeactivateApp(Ljava/lang/String;Lcom/facebook/appevents/internal/SessionInfo;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$4;->val$activityName:Ljava/lang/String;

    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$500()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$4;->val$appContext:Landroid/content/Context;

    invoke-static {v5, v6, v7, v8}, Lcom/facebook/appevents/internal/SessionLogger;->logActivateApp(Ljava/lang/String;Lcom/facebook/appevents/internal/SourceApplicationInfo;Ljava/lang/String;Landroid/content/Context;)V

    new-instance v5, Lcom/facebook/appevents/internal/SessionInfo;

    iget-wide v7, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$4;->val$currentTime:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-direct {v5, v7, v6}, Lcom/facebook/appevents/internal/SessionInfo;-><init>(Ljava/lang/Long;Ljava/lang/Long;)V

    invoke-static {v5}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$402(Lcom/facebook/appevents/internal/SessionInfo;)Lcom/facebook/appevents/internal/SessionInfo;

    goto/16 :goto_0

    :cond_1
    const-wide/16 v5, 0x3e8

    cmp-long v9, v7, v5

    if-lez v9, :cond_2

    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$400()Lcom/facebook/appevents/internal/SessionInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/facebook/appevents/internal/SessionInfo;->incrementInterruptionCount()V

    :cond_2
    :goto_0
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$400()Lcom/facebook/appevents/internal/SessionInfo;

    move-result-object v5

    iget-wide v6, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$4;->val$currentTime:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/facebook/appevents/internal/SessionInfo;->setSessionLastEventTime(Ljava/lang/Long;)V

    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$400()Lcom/facebook/appevents/internal/SessionInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/facebook/appevents/internal/SessionInfo;->writeSessionToDisk()V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/appevents/internal/ActivityLifecycleTracker$4;"

    const-string v1, "run"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
