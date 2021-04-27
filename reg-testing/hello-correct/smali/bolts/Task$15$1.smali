.class Lbolts/Task$15$1;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbolts/Task$15;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/Continuation<",
        "TTContinuationResult;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lbolts/Task$15;


# direct methods
.method constructor <init>(Lbolts/Task$15;)V
    .locals 0

    iput-object p1, p0, Lbolts/Task$15$1;->this$0:Lbolts/Task$15;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Lbolts/Task$15$1;"

    const-string v1, "then"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lbolts/Task$15$1;->then(Lbolts/Task;)Ljava/lang/Void;

    move-result-object p1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lbolts/Task$15$1;"

    const-string v1, "then"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p1
.end method

.method public then(Lbolts/Task;)Ljava/lang/Void;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task<",
            "TTContinuationResult;>;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Lbolts/Task$15$1;"

    const-string v1, "then"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Lbolts/Task$15$1;->this$0:Lbolts/Task$15;

    iget-object v5, v5, Lbolts/Task$15;->val$ct:Lbolts/CancellationToken;

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    iget-object v5, p0, Lbolts/Task$15$1;->this$0:Lbolts/Task$15;

    iget-object v5, v5, Lbolts/Task$15;->val$ct:Lbolts/CancellationToken;

    invoke-virtual {v5}, Lbolts/CancellationToken;->isCancellationRequested()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object p1, p0, Lbolts/Task$15$1;->this$0:Lbolts/Task$15;

    iget-object p1, p1, Lbolts/Task$15;->val$tcs:Lbolts/TaskCompletionSource;

    invoke-virtual {p1}, Lbolts/TaskCompletionSource;->setCancelled()V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lbolts/Task$15$1;"

    const-string v1, "then"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v6

    :cond_0
    invoke-virtual {p1}, Lbolts/Task;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object p1, p0, Lbolts/Task$15$1;->this$0:Lbolts/Task$15;

    iget-object p1, p1, Lbolts/Task$15;->val$tcs:Lbolts/TaskCompletionSource;

    invoke-virtual {p1}, Lbolts/TaskCompletionSource;->setCancelled()V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lbolts/Task;->isFaulted()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lbolts/Task$15$1;->this$0:Lbolts/Task$15;

    iget-object v5, v5, Lbolts/Task$15;->val$tcs:Lbolts/TaskCompletionSource;

    invoke-virtual {p1}, Lbolts/Task;->getError()Ljava/lang/Exception;

    move-result-object p1

    invoke-virtual {v5, p1}, Lbolts/TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lbolts/Task$15$1;->this$0:Lbolts/Task$15;

    iget-object v5, v5, Lbolts/Task$15;->val$tcs:Lbolts/TaskCompletionSource;

    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v5, p1}, Lbolts/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    :goto_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lbolts/Task$15$1;"

    const-string v1, "then"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v6
.end method
