.class final Lbolts/BoltsExecutors;
.super Ljava/lang/Object;
.source "BoltsExecutors.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbolts/BoltsExecutors$ImmediateExecutor;
    }
.end annotation


# static fields
.field private static final INSTANCE:Lbolts/BoltsExecutors;


# instance fields
.field private final background:Ljava/util/concurrent/ExecutorService;

.field private final immediate:Ljava/util/concurrent/Executor;

.field private final scheduled:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lbolts/BoltsExecutors;

    invoke-direct {v0}, Lbolts/BoltsExecutors;-><init>()V

    sput-object v0, Lbolts/BoltsExecutors;->INSTANCE:Lbolts/BoltsExecutors;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-static {}, Lbolts/BoltsExecutors;->isAndroidRuntime()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lbolts/AndroidExecutors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lbolts/BoltsExecutors;->background:Ljava/util/concurrent/ExecutorService;

    .line 32
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lbolts/BoltsExecutors;->scheduled:Ljava/util/concurrent/ScheduledExecutorService;

    .line 33
    new-instance v0, Lbolts/BoltsExecutors$ImmediateExecutor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbolts/BoltsExecutors$ImmediateExecutor;-><init>(Lbolts/BoltsExecutors$1;)V

    iput-object v0, p0, Lbolts/BoltsExecutors;->immediate:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static background()Ljava/util/concurrent/ExecutorService;
    .locals 6

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lbolts/BoltsExecutors;"

    const-string v1, "background"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v5, Lbolts/BoltsExecutors;->INSTANCE:Lbolts/BoltsExecutors;

    iget-object v5, v5, Lbolts/BoltsExecutors;->background:Ljava/util/concurrent/ExecutorService;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lbolts/BoltsExecutors;"

    const-string v1, "background"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5
.end method

.method static immediate()Ljava/util/concurrent/Executor;
    .locals 6

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lbolts/BoltsExecutors;"

    const-string v1, "immediate"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v5, Lbolts/BoltsExecutors;->INSTANCE:Lbolts/BoltsExecutors;

    iget-object v5, v5, Lbolts/BoltsExecutors;->immediate:Ljava/util/concurrent/Executor;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lbolts/BoltsExecutors;"

    const-string v1, "immediate"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5
.end method

.method private static isAndroidRuntime()Z
    .locals 7

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lbolts/BoltsExecutors;"

    const-string v1, "isAndroidRuntime"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v5, "java.runtime.name"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Ljava/lang/System;"

    const-string v1, "getProperty"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Ljava/lang/System;"

    const-string v1, "getProperty"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v5, :cond_0

    const/4 v5, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lbolts/BoltsExecutors;"

    const-string v1, "isAndroidRuntime"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5

    :cond_0
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    aput-object v6, v2, v1

    const-string v0, "Ljava/lang/String;"

    const-string v1, "toLowerCase"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Ljava/lang/String;"

    const-string v1, "toLowerCase"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v6, "android"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    aput-object v6, v2, v1

    const-string v0, "Ljava/lang/String;"

    const-string v1, "contains"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v5 .. v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/String;"

    const-string v1, "contains"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lbolts/BoltsExecutors;"

    const-string v1, "isAndroidRuntime"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5
.end method

.method static scheduled()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 6

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lbolts/BoltsExecutors;"

    const-string v1, "scheduled"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v5, Lbolts/BoltsExecutors;->INSTANCE:Lbolts/BoltsExecutors;

    iget-object v5, v5, Lbolts/BoltsExecutors;->scheduled:Ljava/util/concurrent/ScheduledExecutorService;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lbolts/BoltsExecutors;"

    const-string v1, "scheduled"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5
.end method
