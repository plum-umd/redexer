.class Lbolts/CancellationTokenSource$1;
.super Ljava/lang/Object;
.source "CancellationTokenSource.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbolts/CancellationTokenSource;->cancelAfter(JLjava/util/concurrent/TimeUnit;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbolts/CancellationTokenSource;


# direct methods
.method constructor <init>(Lbolts/CancellationTokenSource;)V
    .locals 0

    iput-object p1, p0, Lbolts/CancellationTokenSource$1;->this$0:Lbolts/CancellationTokenSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 113
    iget-object v0, p0, Lbolts/CancellationTokenSource$1;->this$0:Lbolts/CancellationTokenSource;

    invoke-static {v0}, Lbolts/CancellationTokenSource;->access$000(Lbolts/CancellationTokenSource;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 114
    :try_start_0
    iget-object v1, p0, Lbolts/CancellationTokenSource$1;->this$0:Lbolts/CancellationTokenSource;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lbolts/CancellationTokenSource;->access$102(Lbolts/CancellationTokenSource;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;

    .line 115
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    iget-object v0, p0, Lbolts/CancellationTokenSource$1;->this$0:Lbolts/CancellationTokenSource;

    invoke-virtual {v0}, Lbolts/CancellationTokenSource;->cancel()V

    return-void

    :catchall_0
    move-exception v1

    .line 115
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
