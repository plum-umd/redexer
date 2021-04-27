.class public Landroidx/core/provider/SelfDestructiveThread;
.super Ljava/lang/Object;
.source "SelfDestructiveThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/provider/SelfDestructiveThread$ReplyCallback;
    }
.end annotation


# static fields
.field private static final MSG_DESTRUCTION:I = 0x0

.field private static final MSG_INVOKE_RUNNABLE:I = 0x1


# instance fields
.field private mCallback:Landroid/os/Handler$Callback;

.field private final mDestructAfterMillisec:I

.field private mGeneration:I

.field private mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private final mPriority:I

.field private mThread:Landroid/os/HandlerThread;

.field private final mThreadName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/core/provider/SelfDestructiveThread;->mLock:Ljava/lang/Object;

    .line 58
    new-instance v0, Landroidx/core/provider/SelfDestructiveThread$1;

    invoke-direct {v0, p0}, Landroidx/core/provider/SelfDestructiveThread$1;-><init>(Landroidx/core/provider/SelfDestructiveThread;)V

    iput-object v0, p0, Landroidx/core/provider/SelfDestructiveThread;->mCallback:Landroid/os/Handler$Callback;

    .line 80
    iput-object p1, p0, Landroidx/core/provider/SelfDestructiveThread;->mThreadName:Ljava/lang/String;

    .line 81
    iput p2, p0, Landroidx/core/provider/SelfDestructiveThread;->mPriority:I

    .line 82
    iput p3, p0, Landroidx/core/provider/SelfDestructiveThread;->mDestructAfterMillisec:I

    const/4 p1, 0x0

    .line 83
    iput p1, p0, Landroidx/core/provider/SelfDestructiveThread;->mGeneration:I

    return-void
.end method

.method private post(Ljava/lang/Runnable;)V
    .locals 5

    .line 107
    iget-object v0, p0, Landroidx/core/provider/SelfDestructiveThread;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 108
    :try_start_0
    iget-object v1, p0, Landroidx/core/provider/SelfDestructiveThread;->mThread:Landroid/os/HandlerThread;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 109
    new-instance v1, Landroid/os/HandlerThread;

    iget-object v3, p0, Landroidx/core/provider/SelfDestructiveThread;->mThreadName:Ljava/lang/String;

    iget v4, p0, Landroidx/core/provider/SelfDestructiveThread;->mPriority:I

    invoke-direct {v1, v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Landroidx/core/provider/SelfDestructiveThread;->mThread:Landroid/os/HandlerThread;

    .line 110
    iget-object v1, p0, Landroidx/core/provider/SelfDestructiveThread;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 111
    new-instance v1, Landroid/os/Handler;

    iget-object v3, p0, Landroidx/core/provider/SelfDestructiveThread;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iget-object v4, p0, Landroidx/core/provider/SelfDestructiveThread;->mCallback:Landroid/os/Handler$Callback;

    invoke-direct {v1, v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Landroidx/core/provider/SelfDestructiveThread;->mHandler:Landroid/os/Handler;

    .line 112
    iget v1, p0, Landroidx/core/provider/SelfDestructiveThread;->mGeneration:I

    add-int/2addr v1, v2

    iput v1, p0, Landroidx/core/provider/SelfDestructiveThread;->mGeneration:I

    .line 114
    :cond_0
    iget-object v1, p0, Landroidx/core/provider/SelfDestructiveThread;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 115
    iget-object v1, p0, Landroidx/core/provider/SelfDestructiveThread;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Landroidx/core/provider/SelfDestructiveThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 116
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public getGeneration()I
    .locals 2

    .line 101
    iget-object v0, p0, Landroidx/core/provider/SelfDestructiveThread;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 102
    :try_start_0
    iget v1, p0, Landroidx/core/provider/SelfDestructiveThread;->mGeneration:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 103
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isRunning()Z
    .locals 2

    .line 91
    iget-object v0, p0, Landroidx/core/provider/SelfDestructiveThread;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 92
    :try_start_0
    iget-object v1, p0, Landroidx/core/provider/SelfDestructiveThread;->mThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 93
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method onDestruction()V
    .locals 3

    .line 223
    iget-object v0, p0, Landroidx/core/provider/SelfDestructiveThread;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 224
    :try_start_0
    iget-object v1, p0, Landroidx/core/provider/SelfDestructiveThread;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 227
    monitor-exit v0

    return-void

    .line 229
    :cond_0
    iget-object v1, p0, Landroidx/core/provider/SelfDestructiveThread;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    const/4 v1, 0x0

    .line 230
    iput-object v1, p0, Landroidx/core/provider/SelfDestructiveThread;->mThread:Landroid/os/HandlerThread;

    .line 231
    iput-object v1, p0, Landroidx/core/provider/SelfDestructiveThread;->mHandler:Landroid/os/Handler;

    .line 232
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method onInvokeRunnable(Ljava/lang/Runnable;)V
    .locals 4

    .line 214
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 215
    iget-object p1, p0, Landroidx/core/provider/SelfDestructiveThread;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 216
    :try_start_0
    iget-object v0, p0, Landroidx/core/provider/SelfDestructiveThread;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 217
    iget-object v0, p0, Landroidx/core/provider/SelfDestructiveThread;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroidx/core/provider/SelfDestructiveThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget v2, p0, Landroidx/core/provider/SelfDestructiveThread;->mDestructAfterMillisec:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 219
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public postAndReply(Ljava/util/concurrent/Callable;Landroidx/core/provider/SelfDestructiveThread$ReplyCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;",
            "Landroidx/core/provider/SelfDestructiveThread$ReplyCallback<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const/4 v1, 0x6

    aput-object p2, v2, v1

    const-string v0, "Landroidx/core/provider/SelfDestructiveThread;"

    const-string v1, "postAndReply"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    new-instance v6, Landroidx/core/provider/SelfDestructiveThread$2;

    invoke-direct {v6, p0, p1, v5, p2}, Landroidx/core/provider/SelfDestructiveThread$2;-><init>(Landroidx/core/provider/SelfDestructiveThread;Ljava/util/concurrent/Callable;Landroid/os/Handler;Landroidx/core/provider/SelfDestructiveThread$ReplyCallback;)V

    invoke-direct {p0, v6}, Landroidx/core/provider/SelfDestructiveThread;->post(Ljava/lang/Runnable;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/core/provider/SelfDestructiveThread;"

    const-string v1, "postAndReply"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public postAndWait(Ljava/util/concurrent/Callable;I)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;I)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const/4 v1, 0x6

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/core/provider/SelfDestructiveThread;"

    const-string v1, "postAndWait"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v12, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v12}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v12, v2, v1

    const-string v0, "Ljava/util/concurrent/locks/ReentrantLock;"

    const-string v1, "newCondition"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v12}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v13

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v13, v2, v1

    const-string v0, "Ljava/util/concurrent/locks/ReentrantLock;"

    const-string v1, "newCondition"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v14, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v14}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v15, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x1

    invoke-direct {v15, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    new-instance v16, Landroidx/core/provider/SelfDestructiveThread$3;

    move-object/from16 v5, v16

    move-object/from16 v6, p0

    move-object v7, v14

    move-object/from16 v8, p1

    move-object v9, v12

    move-object v10, v15

    move-object v11, v13

    invoke-direct/range {v5 .. v11}, Landroidx/core/provider/SelfDestructiveThread$3;-><init>(Landroidx/core/provider/SelfDestructiveThread;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/Callable;Ljava/util/concurrent/locks/ReentrantLock;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/locks/Condition;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct/range {v0 .. v1}, Landroidx/core/provider/SelfDestructiveThread;->post(Ljava/lang/Runnable;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v12, v2, v1

    const-string v0, "Ljava/util/concurrent/locks/ReentrantLock;"

    const-string v1, "lock"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v12}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/util/concurrent/locks/ReentrantLock;"

    const-string v1, "lock"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v15, v2, v1

    const-string v0, "Ljava/util/concurrent/atomic/AtomicBoolean;"

    const-string v1, "get"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    invoke-virtual {v15}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {p1 .. p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/util/concurrent/atomic/AtomicBoolean;"

    const-string v1, "get"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_1
    if-nez p1, :cond_0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v14, v2, v1

    const-string v0, "Ljava/util/concurrent/atomic/AtomicReference;"

    const-string v1, "get"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_2
    invoke-virtual {v14}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const-string v0, "Ljava/util/concurrent/atomic/AtomicReference;"

    const-string v1, "get"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v12, v2, v1

    const-string v0, "Ljava/util/concurrent/locks/ReentrantLock;"

    const-string v1, "unlock"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v12}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/util/concurrent/locks/ReentrantLock;"

    const-string v1, "unlock"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/core/provider/SelfDestructiveThread;"

    const-string v1, "postAndWait"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p1

    :cond_0
    :try_start_3
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move/from16 v0, p2

    int-to-long v5, v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v5 .. v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/util/concurrent/TimeUnit;"

    const-string v1, "toNanos"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_4
    move-object/from16 v0, p1

    move-wide/from16 v1, v5

    invoke-virtual/range {v0 .. v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/util/concurrent/TimeUnit;"

    const-string v1, "toNanos"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v13, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/util/concurrent/locks/Condition;"

    const-string v1, "awaitNanos"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_5
    move-object/from16 v0, v13

    move-wide/from16 v1, p1

    invoke-interface/range {v0 .. v2}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide p1
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/util/concurrent/locks/Condition;"

    const-string v1, "awaitNanos"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :catch_0
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v15, v2, v1

    const-string v0, "Ljava/util/concurrent/atomic/AtomicBoolean;"

    const-string v1, "get"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_6
    invoke-virtual {v15}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v5 .. v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/util/concurrent/atomic/AtomicBoolean;"

    const-string v1, "get"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_7
    if-nez v5, :cond_1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v14, v2, v1

    const-string v0, "Ljava/util/concurrent/atomic/AtomicReference;"

    const-string v1, "get"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_8
    invoke-virtual {v14}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const-string v0, "Ljava/util/concurrent/atomic/AtomicReference;"

    const-string v1, "get"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v12, v2, v1

    const-string v0, "Ljava/util/concurrent/locks/ReentrantLock;"

    const-string v1, "unlock"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v12}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/util/concurrent/locks/ReentrantLock;"

    const-string v1, "unlock"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/core/provider/SelfDestructiveThread;"

    const-string v1, "postAndWait"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p1

    :cond_1
    const-wide/16 v5, 0x0

    cmp-long v7, p1, v5

    if-lez v7, :cond_2

    goto/16 :goto_0

    :cond_2
    :try_start_9
    new-instance p1, Ljava/lang/InterruptedException;

    const-string p2, "timeout"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-direct/range {v0 .. v1}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/core/provider/SelfDestructiveThread;"

    const-string v1, "postAndWait"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :catchall_0
    move-exception p1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v12, v2, v1

    const-string v0, "Ljava/util/concurrent/locks/ReentrantLock;"

    const-string v1, "unlock"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v12}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/util/concurrent/locks/ReentrantLock;"

    const-string v1, "unlock"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    :goto_1
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/core/provider/SelfDestructiveThread;"

    const-string v1, "postAndWait"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :goto_2
    goto/16 :goto_1
.end method
