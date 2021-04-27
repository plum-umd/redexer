.class final Landroidx/arch/core/executor/ArchTaskExecutor$2;
.super Ljava/lang/Object;
.source "ArchTaskExecutor.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/arch/core/executor/ArchTaskExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 6

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroidx/arch/core/executor/ArchTaskExecutor$2;"

    const-string v1, "execute"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Landroidx/arch/core/executor/ArchTaskExecutor;->getInstance()Landroidx/arch/core/executor/ArchTaskExecutor;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroidx/arch/core/executor/ArchTaskExecutor;->executeOnDiskIO(Ljava/lang/Runnable;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/arch/core/executor/ArchTaskExecutor$2;"

    const-string v1, "execute"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
