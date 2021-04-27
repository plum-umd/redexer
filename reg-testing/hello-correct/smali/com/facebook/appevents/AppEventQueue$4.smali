.class final Lcom/facebook/appevents/AppEventQueue$4;
.super Ljava/lang/Object;
.source "AppEventQueue.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/AppEventQueue;->add(Lcom/facebook/appevents/AccessTokenAppIdPair;Lcom/facebook/appevents/AppEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$accessTokenAppId:Lcom/facebook/appevents/AccessTokenAppIdPair;

.field final synthetic val$appEvent:Lcom/facebook/appevents/AppEvent;


# direct methods
.method constructor <init>(Lcom/facebook/appevents/AccessTokenAppIdPair;Lcom/facebook/appevents/AppEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/appevents/AppEventQueue$4;->val$accessTokenAppId:Lcom/facebook/appevents/AccessTokenAppIdPair;

    iput-object p2, p0, Lcom/facebook/appevents/AppEventQueue$4;->val$appEvent:Lcom/facebook/appevents/AppEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Lcom/facebook/appevents/AppEventQueue$4;"

    const-string v1, "run"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/facebook/appevents/AppEventQueue;->access$100()Lcom/facebook/appevents/AppEventCollection;

    move-result-object v5

    iget-object v6, p0, Lcom/facebook/appevents/AppEventQueue$4;->val$accessTokenAppId:Lcom/facebook/appevents/AccessTokenAppIdPair;

    iget-object v7, p0, Lcom/facebook/appevents/AppEventQueue$4;->val$appEvent:Lcom/facebook/appevents/AppEvent;

    invoke-virtual {v5, v6, v7}, Lcom/facebook/appevents/AppEventCollection;->addEvent(Lcom/facebook/appevents/AccessTokenAppIdPair;Lcom/facebook/appevents/AppEvent;)V

    invoke-static {}, Lcom/facebook/appevents/AppEventsLogger;->getFlushBehavior()Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;

    move-result-object v5

    sget-object v6, Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;->EXPLICIT_ONLY:Lcom/facebook/appevents/AppEventsLogger$FlushBehavior;

    if-eq v5, v6, :cond_0

    invoke-static {}, Lcom/facebook/appevents/AppEventQueue;->access$100()Lcom/facebook/appevents/AppEventCollection;

    move-result-object v5

    invoke-virtual {v5}, Lcom/facebook/appevents/AppEventCollection;->getEventCount()I

    move-result v5

    const/16 v6, 0x64

    if-le v5, v6, :cond_0

    sget-object v5, Lcom/facebook/appevents/FlushReason;->EVENT_THRESHOLD:Lcom/facebook/appevents/FlushReason;

    invoke-static {v5}, Lcom/facebook/appevents/AppEventQueue;->flushAndWait(Lcom/facebook/appevents/FlushReason;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/facebook/appevents/AppEventQueue;->access$000()Ljava/util/concurrent/ScheduledFuture;

    move-result-object v5

    if-nez v5, :cond_1

    invoke-static {}, Lcom/facebook/appevents/AppEventQueue;->access$300()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v5

    invoke-static {}, Lcom/facebook/appevents/AppEventQueue;->access$200()Ljava/lang/Runnable;

    move-result-object v6

    const-wide/16 v7, 0xf

    sget-object v9, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    aput-object v6, v2, v1

    const/4 v1, 0x6

    invoke-static/range {v7 .. v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x7

    aput-object v9, v2, v1

    const-string v0, "Ljava/util/concurrent/ScheduledExecutorService;"

    const-string v1, "schedule"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v5, v6, v7, v8, v9}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Ljava/util/concurrent/ScheduledExecutorService;"

    const-string v1, "schedule"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v5}, Lcom/facebook/appevents/AppEventQueue;->access$002(Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;

    :cond_1
    :goto_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/appevents/AppEventQueue$4;"

    const-string v1, "run"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
