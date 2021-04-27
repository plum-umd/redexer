.class public Landroidx/arch/core/executor/ArchTaskExecutor;
.super Landroidx/arch/core/executor/TaskExecutor;
.source "ArchTaskExecutor.java"


# static fields
.field private static final sIOThreadExecutor:Ljava/util/concurrent/Executor;

.field private static volatile sInstance:Landroidx/arch/core/executor/ArchTaskExecutor;

.field private static final sMainThreadExecutor:Ljava/util/concurrent/Executor;


# instance fields
.field private mDefaultTaskExecutor:Landroidx/arch/core/executor/TaskExecutor;

.field private mDelegate:Landroidx/arch/core/executor/TaskExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Landroidx/arch/core/executor/ArchTaskExecutor$1;

    invoke-direct {v0}, Landroidx/arch/core/executor/ArchTaskExecutor$1;-><init>()V

    sput-object v0, Landroidx/arch/core/executor/ArchTaskExecutor;->sMainThreadExecutor:Ljava/util/concurrent/Executor;

    .line 50
    new-instance v0, Landroidx/arch/core/executor/ArchTaskExecutor$2;

    invoke-direct {v0}, Landroidx/arch/core/executor/ArchTaskExecutor$2;-><init>()V

    sput-object v0, Landroidx/arch/core/executor/ArchTaskExecutor;->sIOThreadExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Landroidx/arch/core/executor/TaskExecutor;-><init>()V

    .line 58
    new-instance v0, Landroidx/arch/core/executor/DefaultTaskExecutor;

    invoke-direct {v0}, Landroidx/arch/core/executor/DefaultTaskExecutor;-><init>()V

    iput-object v0, p0, Landroidx/arch/core/executor/ArchTaskExecutor;->mDefaultTaskExecutor:Landroidx/arch/core/executor/TaskExecutor;

    .line 59
    iget-object v0, p0, Landroidx/arch/core/executor/ArchTaskExecutor;->mDefaultTaskExecutor:Landroidx/arch/core/executor/TaskExecutor;

    iput-object v0, p0, Landroidx/arch/core/executor/ArchTaskExecutor;->mDelegate:Landroidx/arch/core/executor/TaskExecutor;

    return-void
.end method

.method public static getIOThreadExecutor()Ljava/util/concurrent/Executor;
    .locals 6

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/arch/core/executor/ArchTaskExecutor;"

    const-string v1, "getIOThreadExecutor"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v5, Landroidx/arch/core/executor/ArchTaskExecutor;->sIOThreadExecutor:Ljava/util/concurrent/Executor;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/arch/core/executor/ArchTaskExecutor;"

    const-string v1, "getIOThreadExecutor"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5
.end method

.method public static getInstance()Landroidx/arch/core/executor/ArchTaskExecutor;
    .locals 2

    .line 69
    sget-object v0, Landroidx/arch/core/executor/ArchTaskExecutor;->sInstance:Landroidx/arch/core/executor/ArchTaskExecutor;

    if-eqz v0, :cond_0

    .line 70
    sget-object v0, Landroidx/arch/core/executor/ArchTaskExecutor;->sInstance:Landroidx/arch/core/executor/ArchTaskExecutor;

    return-object v0

    .line 72
    :cond_0
    const-class v0, Landroidx/arch/core/executor/ArchTaskExecutor;

    monitor-enter v0

    .line 73
    :try_start_0
    sget-object v1, Landroidx/arch/core/executor/ArchTaskExecutor;->sInstance:Landroidx/arch/core/executor/ArchTaskExecutor;

    if-nez v1, :cond_1

    .line 74
    new-instance v1, Landroidx/arch/core/executor/ArchTaskExecutor;

    invoke-direct {v1}, Landroidx/arch/core/executor/ArchTaskExecutor;-><init>()V

    sput-object v1, Landroidx/arch/core/executor/ArchTaskExecutor;->sInstance:Landroidx/arch/core/executor/ArchTaskExecutor;

    .line 76
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    sget-object v0, Landroidx/arch/core/executor/ArchTaskExecutor;->sInstance:Landroidx/arch/core/executor/ArchTaskExecutor;

    return-object v0

    :catchall_0
    move-exception v1

    .line 76
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static getMainThreadExecutor()Ljava/util/concurrent/Executor;
    .locals 6

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/arch/core/executor/ArchTaskExecutor;"

    const-string v1, "getMainThreadExecutor"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v5, Landroidx/arch/core/executor/ArchTaskExecutor;->sMainThreadExecutor:Ljava/util/concurrent/Executor;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/arch/core/executor/ArchTaskExecutor;"

    const-string v1, "getMainThreadExecutor"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5
.end method


# virtual methods
.method public executeOnDiskIO(Ljava/lang/Runnable;)V
    .locals 6

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroidx/arch/core/executor/ArchTaskExecutor;"

    const-string v1, "executeOnDiskIO"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/arch/core/executor/ArchTaskExecutor;->mDelegate:Landroidx/arch/core/executor/TaskExecutor;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Ljava/lang/Object;"

    const-string v1, "executeOnDiskIO"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5, p1}, Landroidx/arch/core/executor/TaskExecutor;->executeOnDiskIO(Ljava/lang/Runnable;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/Object;"

    const-string v1, "executeOnDiskIO"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/arch/core/executor/ArchTaskExecutor;"

    const-string v1, "executeOnDiskIO"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public isMainThread()Z
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/arch/core/executor/ArchTaskExecutor;"

    const-string v1, "isMainThread"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/arch/core/executor/ArchTaskExecutor;->mDelegate:Landroidx/arch/core/executor/TaskExecutor;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Ljava/lang/Object;"

    const-string v1, "isMainThread"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5}, Landroidx/arch/core/executor/TaskExecutor;->isMainThread()Z

    move-result v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v5 .. v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/Object;"

    const-string v1, "isMainThread"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/arch/core/executor/ArchTaskExecutor;"

    const-string v1, "isMainThread"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5
.end method

.method public postToMainThread(Ljava/lang/Runnable;)V
    .locals 6

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroidx/arch/core/executor/ArchTaskExecutor;"

    const-string v1, "postToMainThread"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/arch/core/executor/ArchTaskExecutor;->mDelegate:Landroidx/arch/core/executor/TaskExecutor;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Ljava/lang/Object;"

    const-string v1, "postToMainThread"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5, p1}, Landroidx/arch/core/executor/TaskExecutor;->postToMainThread(Ljava/lang/Runnable;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/Object;"

    const-string v1, "postToMainThread"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/arch/core/executor/ArchTaskExecutor;"

    const-string v1, "postToMainThread"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setDelegate(Landroidx/arch/core/executor/TaskExecutor;)V
    .locals 5

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroidx/arch/core/executor/ArchTaskExecutor;"

    const-string v1, "setDelegate"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/arch/core/executor/ArchTaskExecutor;->mDefaultTaskExecutor:Landroidx/arch/core/executor/TaskExecutor;

    :cond_0
    iput-object p1, p0, Landroidx/arch/core/executor/ArchTaskExecutor;->mDelegate:Landroidx/arch/core/executor/TaskExecutor;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/arch/core/executor/ArchTaskExecutor;"

    const-string v1, "setDelegate"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
