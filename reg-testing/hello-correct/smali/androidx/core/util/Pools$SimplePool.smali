.class public Landroidx/core/util/Pools$SimplePool;
.super Ljava/lang/Object;
.source "Pools.java"

# interfaces
.implements Landroidx/core/util/Pools$Pool;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/util/Pools;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimplePool"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/core/util/Pools$Pool<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final mPool:[Ljava/lang/Object;

.field private mPoolSize:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lez p1, :cond_0

    .line 98
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Landroidx/core/util/Pools$SimplePool;->mPool:[Ljava/lang/Object;

    return-void

    .line 96
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The max pool size must be > 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private isInPool(Ljava/lang/Object;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroidx/core/util/Pools$SimplePool;"

    const-string v1, "isInPool"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    iget v7, p0, Landroidx/core/util/Pools$SimplePool;->mPoolSize:I

    if-ge v6, v7, :cond_1

    iget-object v7, p0, Landroidx/core/util/Pools$SimplePool;->mPool:[Ljava/lang/Object;

    aget-object v7, v7, v6

    if-ne v7, p1, :cond_0

    const/4 p1, 0x1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/core/util/Pools$SimplePool;"

    const-string v1, "isInPool"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p1

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/core/util/Pools$SimplePool;"

    const-string v1, "isInPool"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5
.end method


# virtual methods
.method public acquire()Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/core/util/Pools$SimplePool;"

    const-string v1, "acquire"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v5, p0, Landroidx/core/util/Pools$SimplePool;->mPoolSize:I

    const/4 v6, 0x0

    if-lez v5, :cond_0

    add-int/lit8 v7, v5, -0x1

    iget-object v8, p0, Landroidx/core/util/Pools$SimplePool;->mPool:[Ljava/lang/Object;

    aget-object v9, v8, v7

    aput-object v6, v8, v7

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Landroidx/core/util/Pools$SimplePool;->mPoolSize:I

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/core/util/Pools$SimplePool;"

    const-string v1, "acquire"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v9

    :cond_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/core/util/Pools$SimplePool;"

    const-string v1, "acquire"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v6
.end method

.method public release(Ljava/lang/Object;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroidx/core/util/Pools$SimplePool;"

    const-string v1, "release"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Landroidx/core/util/Pools$SimplePool;->isInPool(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    iget v5, p0, Landroidx/core/util/Pools$SimplePool;->mPoolSize:I

    iget-object v6, p0, Landroidx/core/util/Pools$SimplePool;->mPool:[Ljava/lang/Object;

    array-length v7, v6

    if-ge v5, v7, :cond_0

    aput-object p1, v6, v5

    const/4 p1, 0x1

    add-int/2addr v5, p1

    iput v5, p0, Landroidx/core/util/Pools$SimplePool;->mPoolSize:I

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/core/util/Pools$SimplePool;"

    const-string v1, "release"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p1

    :cond_0
    const/4 p1, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/core/util/Pools$SimplePool;"

    const-string v1, "release"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v5, "Already in the pool!"

    invoke-direct {p1, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/core/util/Pools$SimplePool;"

    const-string v1, "release"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
.end method
