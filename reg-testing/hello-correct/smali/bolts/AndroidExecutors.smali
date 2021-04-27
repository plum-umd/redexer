.class final Lbolts/AndroidExecutors;
.super Ljava/lang/Object;
.source "AndroidExecutors.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbolts/AndroidExecutors$UIThreadExecutor;
    }
.end annotation


# static fields
.field static final CORE_POOL_SIZE:I

.field private static final CPU_COUNT:I

.field private static final INSTANCE:Lbolts/AndroidExecutors;

.field static final KEEP_ALIVE_TIME:J = 0x1L

.field static final MAX_POOL_SIZE:I


# instance fields
.field private final uiThread:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    new-instance v0, Lbolts/AndroidExecutors;

    invoke-direct {v0}, Lbolts/AndroidExecutors;-><init>()V

    sput-object v0, Lbolts/AndroidExecutors;->INSTANCE:Lbolts/AndroidExecutors;

    .line 58
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lbolts/AndroidExecutors;->CPU_COUNT:I

    .line 59
    sget v0, Lbolts/AndroidExecutors;->CPU_COUNT:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lbolts/AndroidExecutors;->CORE_POOL_SIZE:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    .line 60
    sput v0, Lbolts/AndroidExecutors;->MAX_POOL_SIZE:I

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lbolts/AndroidExecutors$UIThreadExecutor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbolts/AndroidExecutors$UIThreadExecutor;-><init>(Lbolts/AndroidExecutors$1;)V

    iput-object v0, p0, Lbolts/AndroidExecutors;->uiThread:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static allowCoreThreadTimeout(Ljava/util/concurrent/ThreadPoolExecutor;Z)V
    .locals 7

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Lbolts/AndroidExecutors;"

    const-string v1, "allowCoreThreadTimeout"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x9

    if-lt v5, v6, :cond_0

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/util/concurrent/ThreadPoolExecutor;"

    const-string v1, "allowCoreThreadTimeOut"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/util/concurrent/ThreadPoolExecutor;"

    const-string v1, "allowCoreThreadTimeOut"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lbolts/AndroidExecutors;"

    const-string v1, "allowCoreThreadTimeout"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static newCachedThreadPool()Ljava/util/concurrent/ExecutorService;
    .locals 13

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lbolts/AndroidExecutors;"

    const-string v1, "newCachedThreadPool"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v12, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v6, Lbolts/AndroidExecutors;->CORE_POOL_SIZE:I

    sget v7, Lbolts/AndroidExecutors;->MAX_POOL_SIZE:I

    sget-object v10, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v11, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v11}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const-wide/16 v8, 0x1

    move-object v5, v12

    invoke-direct/range {v5 .. v11}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    const/4 v5, 0x1

    invoke-static {v12, v5}, Lbolts/AndroidExecutors;->allowCoreThreadTimeout(Ljava/util/concurrent/ThreadPoolExecutor;Z)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lbolts/AndroidExecutors;"

    const-string v1, "newCachedThreadPool"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v12
.end method

.method public static newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;
    .locals 14

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Lbolts/AndroidExecutors;"

    const-string v1, "newCachedThreadPool"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v13, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v6, Lbolts/AndroidExecutors;->CORE_POOL_SIZE:I

    sget v7, Lbolts/AndroidExecutors;->MAX_POOL_SIZE:I

    sget-object v10, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v11, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v11}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const-wide/16 v8, 0x1

    move-object v5, v13

    move-object v12, p0

    invoke-direct/range {v5 .. v12}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    const/4 p0, 0x1

    invoke-static {v13, p0}, Lbolts/AndroidExecutors;->allowCoreThreadTimeout(Ljava/util/concurrent/ThreadPoolExecutor;Z)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lbolts/AndroidExecutors;"

    const-string v1, "newCachedThreadPool"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v13
.end method

.method public static uiThread()Ljava/util/concurrent/Executor;
    .locals 6

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lbolts/AndroidExecutors;"

    const-string v1, "uiThread"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v5, Lbolts/AndroidExecutors;->INSTANCE:Lbolts/AndroidExecutors;

    iget-object v5, v5, Lbolts/AndroidExecutors;->uiThread:Ljava/util/concurrent/Executor;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lbolts/AndroidExecutors;"

    const-string v1, "uiThread"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5
.end method
