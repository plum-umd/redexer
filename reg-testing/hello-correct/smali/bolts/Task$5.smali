.class final Lbolts/Task$5;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbolts/Task;->whenAnyResult(Ljava/util/Collection;)Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/Continuation<",
        "TTResult;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$firstCompleted:Lbolts/TaskCompletionSource;

.field final synthetic val$isAnyTaskComplete:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Ljava/util/concurrent/atomic/AtomicBoolean;Lbolts/TaskCompletionSource;)V
    .locals 0

    .line 410
    iput-object p1, p0, Lbolts/Task$5;->val$isAnyTaskComplete:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p2, p0, Lbolts/Task$5;->val$firstCompleted:Lbolts/TaskCompletionSource;

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

    const-string v0, "Lbolts/Task$5;"

    const-string v1, "then"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lbolts/Task$5;->then(Lbolts/Task;)Ljava/lang/Void;

    move-result-object p1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lbolts/Task$5;"

    const-string v1, "then"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p1
.end method

.method public then(Lbolts/Task;)Ljava/lang/Void;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task<",
            "TTResult;>;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Lbolts/Task$5;"

    const-string v1, "then"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Lbolts/Task$5;->val$isAnyTaskComplete:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v6 .. v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x6

    invoke-static/range {v7 .. v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/util/concurrent/atomic/AtomicBoolean;"

    const-string v1, "compareAndSet"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v5 .. v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/util/concurrent/atomic/AtomicBoolean;"

    const-string v1, "compareAndSet"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v5, :cond_0

    iget-object v5, p0, Lbolts/Task$5;->val$firstCompleted:Lbolts/TaskCompletionSource;

    invoke-virtual {v5, p1}, Lbolts/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lbolts/Task;->getError()Ljava/lang/Exception;

    :goto_0
    const/4 p1, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lbolts/Task$5;"

    const-string v1, "then"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p1
.end method
