.class Lbolts/Task$11;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbolts/Task;->continueWithTask(Lbolts/Continuation;Ljava/util/concurrent/Executor;Lbolts/CancellationToken;)Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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
.field final synthetic this$0:Lbolts/Task;

.field final synthetic val$continuation:Lbolts/Continuation;

.field final synthetic val$ct:Lbolts/CancellationToken;

.field final synthetic val$executor:Ljava/util/concurrent/Executor;

.field final synthetic val$tcs:Lbolts/TaskCompletionSource;


# direct methods
.method constructor <init>(Lbolts/Task;Lbolts/TaskCompletionSource;Lbolts/Continuation;Ljava/util/concurrent/Executor;Lbolts/CancellationToken;)V
    .locals 0

    .line 705
    iput-object p1, p0, Lbolts/Task$11;->this$0:Lbolts/Task;

    iput-object p2, p0, Lbolts/Task$11;->val$tcs:Lbolts/TaskCompletionSource;

    iput-object p3, p0, Lbolts/Task$11;->val$continuation:Lbolts/Continuation;

    iput-object p4, p0, Lbolts/Task$11;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p5, p0, Lbolts/Task$11;->val$ct:Lbolts/CancellationToken;

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

    const-string v0, "Lbolts/Task$11;"

    const-string v1, "then"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lbolts/Task$11;->then(Lbolts/Task;)Ljava/lang/Void;

    move-result-object p1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lbolts/Task$11;"

    const-string v1, "then"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p1
.end method

.method public then(Lbolts/Task;)Ljava/lang/Void;
    .locals 9
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

    const-string v0, "Lbolts/Task$11;"

    const-string v1, "then"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Lbolts/Task$11;->val$tcs:Lbolts/TaskCompletionSource;

    iget-object v6, p0, Lbolts/Task$11;->val$continuation:Lbolts/Continuation;

    iget-object v7, p0, Lbolts/Task$11;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v8, p0, Lbolts/Task$11;->val$ct:Lbolts/CancellationToken;

    invoke-static {v5, v6, p1, v7, v8}, Lbolts/Task;->access$100(Lbolts/TaskCompletionSource;Lbolts/Continuation;Lbolts/Task;Ljava/util/concurrent/Executor;Lbolts/CancellationToken;)V

    const/4 p1, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lbolts/Task$11;"

    const-string v1, "then"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p1
.end method
