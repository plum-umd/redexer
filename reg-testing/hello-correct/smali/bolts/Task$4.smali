.class final Lbolts/Task$4;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbolts/Task;->call(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;Lbolts/CancellationToken;)Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callable:Ljava/util/concurrent/Callable;

.field final synthetic val$ct:Lbolts/CancellationToken;

.field final synthetic val$tcs:Lbolts/TaskCompletionSource;


# direct methods
.method constructor <init>(Lbolts/CancellationToken;Lbolts/TaskCompletionSource;Ljava/util/concurrent/Callable;)V
    .locals 0

    .line 348
    iput-object p1, p0, Lbolts/Task$4;->val$ct:Lbolts/CancellationToken;

    iput-object p2, p0, Lbolts/Task$4;->val$tcs:Lbolts/TaskCompletionSource;

    iput-object p3, p0, Lbolts/Task$4;->val$callable:Ljava/util/concurrent/Callable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Lbolts/Task$4;"

    const-string v1, "run"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Lbolts/Task$4;->val$ct:Lbolts/CancellationToken;

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lbolts/CancellationToken;->isCancellationRequested()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lbolts/Task$4;->val$tcs:Lbolts/TaskCompletionSource;

    invoke-virtual {v5}, Lbolts/TaskCompletionSource;->setCancelled()V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lbolts/Task$4;"

    const-string v1, "run"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    :try_start_0
    iget-object v5, p0, Lbolts/Task$4;->val$tcs:Lbolts/TaskCompletionSource;

    iget-object v6, p0, Lbolts/Task$4;->val$callable:Ljava/util/concurrent/Callable;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const-string v0, "Ljava/util/concurrent/Callable;"

    const-string v1, "call"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_1
    invoke-interface {v6}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v6
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const-string v0, "Ljava/util/concurrent/Callable;"

    const-string v1, "call"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_2
    invoke-virtual {v5, v6}, Lbolts/TaskCompletionSource;->setResult(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    iget-object v6, p0, Lbolts/Task$4;->val$tcs:Lbolts/TaskCompletionSource;

    invoke-virtual {v6, v5}, Lbolts/TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_1
    iget-object v5, p0, Lbolts/Task$4;->val$tcs:Lbolts/TaskCompletionSource;

    invoke-virtual {v5}, Lbolts/TaskCompletionSource;->setCancelled()V

    :goto_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lbolts/Task$4;"

    const-string v1, "run"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method