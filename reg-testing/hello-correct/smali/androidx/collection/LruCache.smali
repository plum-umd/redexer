.class public Landroidx/collection/LruCache;
.super Ljava/lang/Object;
.source "LruCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private createCount:I

.field private evictionCount:I

.field private hitCount:I

.field private final map:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private maxSize:I

.field private missCount:I

.field private putCount:I

.field private size:I


# direct methods
.method public constructor <init>(I)V
    .locals 3

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lez p1, :cond_0

    .line 55
    iput p1, p0, Landroidx/collection/LruCache;->maxSize:I

    .line 56
    new-instance p1, Ljava/util/LinkedHashMap;

    const/4 v0, 0x0

    const/high16 v1, 0x3f400000    # 0.75f

    const/4 v2, 0x1

    invoke-direct {p1, v0, v1, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object p1, p0, Landroidx/collection/LruCache;->map:Ljava/util/LinkedHashMap;

    return-void

    .line 53
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "maxSize <= 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)I"
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

    const-string v0, "Landroidx/collection/LruCache;"

    const-string v1, "safeSizeOf"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, Landroidx/collection/LruCache;->sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-ltz v5, :cond_0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/collection/LruCache;"

    const-string v1, "safeSizeOf"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5

    :cond_0
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Negative size: "

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const/4 v1, 0x5

    aput-object v7, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p1, "="

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const/4 v1, 0x5

    aput-object p2, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "toString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "toString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {v5, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/collection/LruCache;"

    const-string v1, "safeSizeOf"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v5
.end method


# virtual methods
.method protected create(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroidx/collection/LruCache;"

    const-string v1, "create"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/collection/LruCache;"

    const-string v1, "create"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p1
.end method

.method public final declared-synchronized createCount()I
    .locals 1

    monitor-enter p0

    .line 322
    :try_start_0
    iget v0, p0, Landroidx/collection/LruCache;->createCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZTK;TV;TV;)V"
        }
    .end annotation

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x6

    aput-object p2, v2, v1

    const/4 v1, 0x7

    aput-object p3, v2, v1

    const/16 v1, 0x8

    aput-object p4, v2, v1

    const-string v0, "Landroidx/collection/LruCache;"

    const-string v1, "entryRemoved"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/collection/LruCache;"

    const-string v1, "entryRemoved"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final evictAll()V
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/collection/LruCache;"

    const-string v1, "evictAll"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v5, -0x1

    invoke-virtual {p0, v5}, Landroidx/collection/LruCache;->trimToSize(I)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/collection/LruCache;"

    const-string v1, "evictAll"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final declared-synchronized evictionCount()I
    .locals 1

    monitor-enter p0

    .line 336
    :try_start_0
    iget v0, p0, Landroidx/collection/LruCache;->evictionCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 88
    monitor-enter p0

    .line 89
    :try_start_0
    iget-object v0, p0, Landroidx/collection/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 91
    iget p1, p0, Landroidx/collection/LruCache;->hitCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/collection/LruCache;->hitCount:I

    .line 92
    monitor-exit p0

    return-object v0

    .line 94
    :cond_0
    iget v0, p0, Landroidx/collection/LruCache;->missCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/collection/LruCache;->missCount:I

    .line 95
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 104
    invoke-virtual {p0, p1}, Landroidx/collection/LruCache;->create(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 109
    :cond_1
    monitor-enter p0

    .line 110
    :try_start_1
    iget v1, p0, Landroidx/collection/LruCache;->createCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/collection/LruCache;->createCount:I

    .line 111
    iget-object v1, p0, Landroidx/collection/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 115
    iget-object v2, p0, Landroidx/collection/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 117
    :cond_2
    iget v2, p0, Landroidx/collection/LruCache;->size:I

    invoke-direct {p0, p1, v0}, Landroidx/collection/LruCache;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Landroidx/collection/LruCache;->size:I

    .line 119
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_3

    const/4 v2, 0x0

    .line 122
    invoke-virtual {p0, v2, p1, v0, v1}, Landroidx/collection/LruCache;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    .line 125
    :cond_3
    iget p1, p0, Landroidx/collection/LruCache;->maxSize:I

    invoke-virtual {p0, p1}, Landroidx/collection/LruCache;->trimToSize(I)V

    return-object v0

    :catchall_0
    move-exception p1

    .line 119
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 95
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    .line 84
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "key == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final declared-synchronized hitCount()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroidx/collection/LruCache;->hitCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized maxSize()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroidx/collection/LruCache;->maxSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized missCount()I
    .locals 1

    monitor-enter p0

    .line 315
    :try_start_0
    iget v0, p0, Landroidx/collection/LruCache;->missCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 143
    monitor-enter p0

    .line 144
    :try_start_0
    iget v0, p0, Landroidx/collection/LruCache;->putCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/collection/LruCache;->putCount:I

    .line 145
    iget v0, p0, Landroidx/collection/LruCache;->size:I

    invoke-direct {p0, p1, p2}, Landroidx/collection/LruCache;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/collection/LruCache;->size:I

    .line 146
    iget-object v0, p0, Landroidx/collection/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 148
    iget v1, p0, Landroidx/collection/LruCache;->size:I

    invoke-direct {p0, p1, v0}, Landroidx/collection/LruCache;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Landroidx/collection/LruCache;->size:I

    .line 150
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 153
    invoke-virtual {p0, v1, p1, v0, p2}, Landroidx/collection/LruCache;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 156
    :cond_1
    iget p1, p0, Landroidx/collection/LruCache;->maxSize:I

    invoke-virtual {p0, p1}, Landroidx/collection/LruCache;->trimToSize(I)V

    return-object v0

    :catchall_0
    move-exception p1

    .line 150
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 139
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "key == null || value == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final declared-synchronized putCount()I
    .locals 1

    monitor-enter p0

    .line 329
    :try_start_0
    iget v0, p0, Landroidx/collection/LruCache;->putCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 205
    monitor-enter p0

    .line 206
    :try_start_0
    iget-object v0, p0, Landroidx/collection/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 208
    iget v1, p0, Landroidx/collection/LruCache;->size:I

    invoke-direct {p0, p1, v0}, Landroidx/collection/LruCache;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Landroidx/collection/LruCache;->size:I

    .line 210
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 213
    invoke-virtual {p0, v1, p1, v0, v2}, Landroidx/collection/LruCache;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-object v0

    :catchall_0
    move-exception p1

    .line 210
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 201
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "key == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public resize(I)V
    .locals 1

    if-lez p1, :cond_0

    .line 69
    monitor-enter p0

    .line 70
    :try_start_0
    iput p1, p0, Landroidx/collection/LruCache;->maxSize:I

    .line 71
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    invoke-virtual {p0, p1}, Landroidx/collection/LruCache;->trimToSize(I)V

    return-void

    :catchall_0
    move-exception p1

    .line 71
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 66
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "maxSize <= 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final declared-synchronized size()I
    .locals 1

    monitor-enter p0

    .line 290
    :try_start_0
    iget v0, p0, Landroidx/collection/LruCache;->size:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)I"
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

    const-string v0, "Landroidx/collection/LruCache;"

    const-string v1, "sizeOf"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/collection/LruCache;"

    const-string v1, "sizeOf"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p1
.end method

.method public final declared-synchronized snapshot()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    monitor-enter p0

    .line 344
    :try_start_0
    new-instance v0, Ljava/util/LinkedHashMap;

    iget-object v1, p0, Landroidx/collection/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized toString()Ljava/lang/String;
    .locals 6

    monitor-enter p0

    .line 348
    :try_start_0
    iget v0, p0, Landroidx/collection/LruCache;->hitCount:I

    iget v1, p0, Landroidx/collection/LruCache;->missCount:I

    add-int/2addr v0, v1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 349
    iget v2, p0, Landroidx/collection/LruCache;->hitCount:I

    mul-int/lit8 v2, v2, 0x64

    div-int v0, v2, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 350
    :goto_0
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "LruCache[maxSize=%d,hits=%d,misses=%d,hitRate=%d%%]"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Landroidx/collection/LruCache;->maxSize:I

    .line 351
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v1, 0x1

    iget v5, p0, Landroidx/collection/LruCache;->hitCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v1, 0x2

    iget v5, p0, Landroidx/collection/LruCache;->missCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v1, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    .line 350
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public trimToSize(I)V
    .locals 4

    .line 171
    :goto_0
    monitor-enter p0

    .line 172
    :try_start_0
    iget v0, p0, Landroidx/collection/LruCache;->size:I

    if-ltz v0, :cond_3

    iget-object v0, p0, Landroidx/collection/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/collection/LruCache;->size:I

    if-nez v0, :cond_3

    .line 177
    :cond_0
    iget v0, p0, Landroidx/collection/LruCache;->size:I

    if-le v0, p1, :cond_2

    iget-object v0, p0, Landroidx/collection/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 181
    :cond_1
    iget-object v0, p0, Landroidx/collection/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 182
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 183
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 184
    iget-object v2, p0, Landroidx/collection/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    iget v2, p0, Landroidx/collection/LruCache;->size:I

    invoke-direct {p0, v1, v0}, Landroidx/collection/LruCache;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Landroidx/collection/LruCache;->size:I

    .line 186
    iget v2, p0, Landroidx/collection/LruCache;->evictionCount:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Landroidx/collection/LruCache;->evictionCount:I

    .line 187
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    .line 189
    invoke-virtual {p0, v3, v1, v0, v2}, Landroidx/collection/LruCache;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 178
    :cond_2
    :goto_1
    :try_start_1
    monitor-exit p0

    return-void

    .line 173
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".sizeOf() is reporting inconsistent results!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 187
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method
