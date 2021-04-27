.class Lbolts/Task$9;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbolts/Task;->continueWhile(Ljava/util/concurrent/Callable;Lbolts/Continuation;Ljava/util/concurrent/Executor;Lbolts/CancellationToken;)Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/Continuation<",
        "Ljava/lang/Void;",
        "Lbolts/Task<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lbolts/Task;

.field final synthetic val$continuation:Lbolts/Continuation;

.field final synthetic val$ct:Lbolts/CancellationToken;

.field final synthetic val$executor:Ljava/util/concurrent/Executor;

.field final synthetic val$predicate:Ljava/util/concurrent/Callable;

.field final synthetic val$predicateContinuation:Lbolts/Capture;


# direct methods
.method constructor <init>(Lbolts/Task;Lbolts/CancellationToken;Ljava/util/concurrent/Callable;Lbolts/Continuation;Ljava/util/concurrent/Executor;Lbolts/Capture;)V
    .locals 0

    .line 611
    iput-object p1, p0, Lbolts/Task$9;->this$0:Lbolts/Task;

    iput-object p2, p0, Lbolts/Task$9;->val$ct:Lbolts/CancellationToken;

    iput-object p3, p0, Lbolts/Task$9;->val$predicate:Ljava/util/concurrent/Callable;

    iput-object p4, p0, Lbolts/Task$9;->val$continuation:Lbolts/Continuation;

    iput-object p5, p0, Lbolts/Task$9;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p6, p0, Lbolts/Task$9;->val$predicateContinuation:Lbolts/Capture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lbolts/Task;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task<",
            "Ljava/lang/Void;",
            ">;)",
            "Lbolts/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

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

    const-string v0, "Lbolts/Task$9;"

    const-string v1, "then"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lbolts/Task$9;->val$ct:Lbolts/CancellationToken;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lbolts/CancellationToken;->isCancellationRequested()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lbolts/Task;->cancelled()Lbolts/Task;

    move-result-object p1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lbolts/Task$9;"

    const-string v1, "then"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p1

    :cond_0
    iget-object p1, p0, Lbolts/Task$9;->val$predicate:Ljava/util/concurrent/Callable;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const-string v0, "Ljava/util/concurrent/Callable;"

    const-string v1, "call"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const-string v0, "Ljava/util/concurrent/Callable;"

    const-string v1, "call"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    check-cast p1, Ljava/lang/Boolean;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const-string v0, "Ljava/lang/Boolean;"

    const-string v1, "booleanValue"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {p1 .. p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/Boolean;"

    const-string v1, "booleanValue"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v5, 0x0

    if-eqz p1, :cond_1

    invoke-static {v5}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object p1

    iget-object v5, p0, Lbolts/Task$9;->val$continuation:Lbolts/Continuation;

    iget-object v6, p0, Lbolts/Task$9;->val$executor:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, v5, v6}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    move-result-object p1

    iget-object v5, p0, Lbolts/Task$9;->val$predicateContinuation:Lbolts/Capture;

    invoke-virtual {v5}, Lbolts/Capture;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lbolts/Continuation;

    iget-object v6, p0, Lbolts/Task$9;->val$executor:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, v5, v6}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    move-result-object p1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lbolts/Task$9;"

    const-string v1, "then"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p1

    :cond_1
    invoke-static {v5}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object p1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lbolts/Task$9;"

    const-string v1, "then"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p1
.end method

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

    const-string v0, "Lbolts/Task$9;"

    const-string v1, "then"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lbolts/Task$9;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object p1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lbolts/Task$9;"

    const-string v1, "then"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p1
.end method
