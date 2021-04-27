.class public Lcom/facebook/internal/instrument/threadcheck/ThreadCheckHandler;
.super Ljava/lang/Object;
.source "ThreadCheckHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/facebook/internal/instrument/threadcheck/ThreadCheckHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/internal/instrument/threadcheck/ThreadCheckHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static log(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const/4 v1, 0x6

    aput-object p2, v2, v1

    const/4 v1, 0x7

    aput-object p3, v2, v1

    const-string v0, "Lcom/facebook/internal/instrument/threadcheck/ThreadCheckHandler;"

    const-string v1, "log"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const-string v0, "Ljava/lang/Class;"

    const-string v1, "getName"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Ljava/lang/Class;"

    const-string v1, "getName"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x1

    aput-object p0, v6, p1

    const/4 p0, 0x2

    aput-object p2, v6, p0

    const/4 p0, 0x3

    aput-object p3, v6, p0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/os/Looper;"

    const-string v1, "myLooper"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroid/os/Looper;"

    const-string v1, "myLooper"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x4

    aput-object p0, v6, p1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/os/Looper;"

    const-string v1, "getMainLooper"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroid/os/Looper;"

    const-string v1, "getMainLooper"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x5

    aput-object p0, v6, p1

    const-string p0, "%s annotation violation detected in %s.%s%s. Current looper is %s and main looper is %s."

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    aput-object p0, v2, v1

    const/4 v1, 0x6

    aput-object v6, v2, v1

    const-string v0, "Ljava/lang/String;"

    const-string v1, "format"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v5, p0, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Ljava/lang/String;"

    const-string v1, "format"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    sget-object p2, Lcom/facebook/internal/instrument/threadcheck/ThreadCheckHandler;->TAG:Ljava/lang/String;

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p2, v2, v1

    const/4 v1, 0x5

    aput-object p0, v2, v1

    const/4 v1, 0x6

    aput-object p1, v2, v1

    const-string v0, "Landroid/util/Log;"

    const-string v1, "e"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p2, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/util/Log;"

    const-string v1, "e"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p0, Lcom/facebook/internal/instrument/InstrumentData;

    sget-object p2, Lcom/facebook/internal/instrument/InstrumentData$Type;->ThreadCheck:Lcom/facebook/internal/instrument/InstrumentData$Type;

    invoke-direct {p0, p1, p2}, Lcom/facebook/internal/instrument/InstrumentData;-><init>(Ljava/lang/Throwable;Lcom/facebook/internal/instrument/InstrumentData$Type;)V

    invoke-virtual {p0}, Lcom/facebook/internal/instrument/InstrumentData;->save()V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/internal/instrument/threadcheck/ThreadCheckHandler;"

    const-string v1, "log"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static uiThreadViolationDetected(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
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

    const-string v0, "Lcom/facebook/internal/instrument/threadcheck/ThreadCheckHandler;"

    const-string v1, "uiThreadViolationDetected"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v5, "@UiThread"

    invoke-static {v5, p0, p1, p2}, Lcom/facebook/internal/instrument/threadcheck/ThreadCheckHandler;->log(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/internal/instrument/threadcheck/ThreadCheckHandler;"

    const-string v1, "uiThreadViolationDetected"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static workerThreadViolationDetected(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
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

    const-string v0, "Lcom/facebook/internal/instrument/threadcheck/ThreadCheckHandler;"

    const-string v1, "workerThreadViolationDetected"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v5, "@WorkerThread"

    invoke-static {v5, p0, p1, p2}, Lcom/facebook/internal/instrument/threadcheck/ThreadCheckHandler;->log(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/internal/instrument/threadcheck/ThreadCheckHandler;"

    const-string v1, "workerThreadViolationDetected"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
