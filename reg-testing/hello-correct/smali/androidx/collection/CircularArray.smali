.class public final Landroidx/collection/CircularArray;
.super Ljava/lang/Object;
.source "CircularArray.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mCapacityBitmask:I

.field private mElements:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

.field private mHead:I

.field private mTail:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x8

    .line 49
    invoke-direct {p0, v0}, Landroidx/collection/CircularArray;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-lt p1, v0, :cond_2

    const/high16 v1, 0x40000000    # 2.0f

    if-gt p1, v1, :cond_1

    .line 69
    invoke-static {p1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v1

    if-eq v1, v0, :cond_0

    add-int/lit8 p1, p1, -0x1

    .line 70
    invoke-static {p1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p1

    shl-int/2addr p1, v0

    :cond_0
    add-int/lit8 v0, p1, -0x1

    .line 75
    iput v0, p0, Landroidx/collection/CircularArray;->mCapacityBitmask:I

    .line 76
    new-array p1, p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    iput-object p1, p0, Landroidx/collection/CircularArray;->mElements:[Ljava/lang/Object;

    return-void

    .line 63
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "capacity must be <= 2^30"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 60
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "capacity must be >= 1"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private doubleCapacity()V
    .locals 12

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/collection/CircularArray;"

    const-string v1, "doubleCapacity"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/collection/CircularArray;->mElements:[Ljava/lang/Object;

    array-length v6, v5

    iget v7, p0, Landroidx/collection/CircularArray;->mHead:I

    sub-int v8, v6, v7

    shl-int/lit8 v9, v6, 0x1

    if-ltz v9, :cond_0

    new-array v10, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v7 .. v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x6

    aput-object v10, v2, v1

    const/4 v1, 0x7

    invoke-static/range {v11 .. v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/16 v1, 0x8

    invoke-static/range {v8 .. v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/System;"

    const-string v1, "arraycopy"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v5, v7, v10, v11, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/System;"

    const-string v1, "arraycopy"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/collection/CircularArray;->mElements:[Ljava/lang/Object;

    iget v7, p0, Landroidx/collection/CircularArray;->mHead:I

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v11 .. v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x6

    aput-object v10, v2, v1

    const/4 v1, 0x7

    invoke-static/range {v8 .. v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/16 v1, 0x8

    invoke-static/range {v7 .. v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/System;"

    const-string v1, "arraycopy"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v5, v11, v10, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/System;"

    const-string v1, "arraycopy"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    check-cast v10, [Ljava/lang/Object;

    iput-object v10, p0, Landroidx/collection/CircularArray;->mElements:[Ljava/lang/Object;

    iput v11, p0, Landroidx/collection/CircularArray;->mHead:I

    iput v6, p0, Landroidx/collection/CircularArray;->mTail:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Landroidx/collection/CircularArray;->mCapacityBitmask:I

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/collection/CircularArray;"

    const-string v1, "doubleCapacity"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Max array capacity exceeded"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/collection/CircularArray;"

    const-string v1, "doubleCapacity"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v5
.end method


# virtual methods
.method public addFirst(Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroidx/collection/CircularArray;"

    const-string v1, "addFirst"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v5, p0, Landroidx/collection/CircularArray;->mHead:I

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Landroidx/collection/CircularArray;->mCapacityBitmask:I

    and-int/2addr v5, v6

    iput v5, p0, Landroidx/collection/CircularArray;->mHead:I

    iget-object v5, p0, Landroidx/collection/CircularArray;->mElements:[Ljava/lang/Object;

    iget v6, p0, Landroidx/collection/CircularArray;->mHead:I

    aput-object p1, v5, v6

    iget p1, p0, Landroidx/collection/CircularArray;->mTail:I

    if-ne v6, p1, :cond_0

    invoke-direct {p0}, Landroidx/collection/CircularArray;->doubleCapacity()V

    :cond_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/collection/CircularArray;"

    const-string v1, "addFirst"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public addLast(Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroidx/collection/CircularArray;"

    const-string v1, "addLast"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/collection/CircularArray;->mElements:[Ljava/lang/Object;

    iget v6, p0, Landroidx/collection/CircularArray;->mTail:I

    aput-object p1, v5, v6

    add-int/lit8 v6, v6, 0x1

    iget p1, p0, Landroidx/collection/CircularArray;->mCapacityBitmask:I

    and-int/2addr p1, v6

    iput p1, p0, Landroidx/collection/CircularArray;->mTail:I

    iget p1, p0, Landroidx/collection/CircularArray;->mTail:I

    iget v5, p0, Landroidx/collection/CircularArray;->mHead:I

    if-ne p1, v5, :cond_0

    invoke-direct {p0}, Landroidx/collection/CircularArray;->doubleCapacity()V

    :cond_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/collection/CircularArray;"

    const-string v1, "addLast"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public clear()V
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/collection/CircularArray;"

    const-string v1, "clear"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/collection/CircularArray;->size()I

    move-result v5

    invoke-virtual {p0, v5}, Landroidx/collection/CircularArray;->removeFromStart(I)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/collection/CircularArray;"

    const-string v1, "clear"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/collection/CircularArray;"

    const-string v1, "get"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Landroidx/collection/CircularArray;->size()I

    move-result v5

    if-ge p1, v5, :cond_0

    iget-object v5, p0, Landroidx/collection/CircularArray;->mElements:[Ljava/lang/Object;

    iget v6, p0, Landroidx/collection/CircularArray;->mHead:I

    add-int/2addr v6, p1

    iget p1, p0, Landroidx/collection/CircularArray;->mCapacityBitmask:I

    and-int/2addr p1, v6

    aget-object p1, v5, p1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/collection/CircularArray;"

    const-string v1, "get"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/collection/CircularArray;"

    const-string v1, "get"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
.end method

.method public getFirst()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/collection/CircularArray;"

    const-string v1, "getFirst"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v5, p0, Landroidx/collection/CircularArray;->mHead:I

    iget v6, p0, Landroidx/collection/CircularArray;->mTail:I

    if-eq v5, v6, :cond_0

    iget-object v6, p0, Landroidx/collection/CircularArray;->mElements:[Ljava/lang/Object;

    aget-object v5, v6, v5

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/collection/CircularArray;"

    const-string v1, "getFirst"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5

    :cond_0
    new-instance v5, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v5}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/collection/CircularArray;"

    const-string v1, "getFirst"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v5
.end method

.method public getLast()Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/collection/CircularArray;"

    const-string v1, "getLast"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v5, p0, Landroidx/collection/CircularArray;->mHead:I

    iget v6, p0, Landroidx/collection/CircularArray;->mTail:I

    if-eq v5, v6, :cond_0

    iget-object v5, p0, Landroidx/collection/CircularArray;->mElements:[Ljava/lang/Object;

    add-int/lit8 v6, v6, -0x1

    iget v7, p0, Landroidx/collection/CircularArray;->mCapacityBitmask:I

    and-int/2addr v6, v7

    aget-object v5, v5, v6

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/collection/CircularArray;"

    const-string v1, "getLast"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5

    :cond_0
    new-instance v5, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v5}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/collection/CircularArray;"

    const-string v1, "getLast"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v5
.end method

.method public isEmpty()Z
    .locals 7

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/collection/CircularArray;"

    const-string v1, "isEmpty"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v5, p0, Landroidx/collection/CircularArray;->mHead:I

    iget v6, p0, Landroidx/collection/CircularArray;->mTail:I

    if-ne v5, v6, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/collection/CircularArray;"

    const-string v1, "isEmpty"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5
.end method

.method public popFirst()Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/collection/CircularArray;"

    const-string v1, "popFirst"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v5, p0, Landroidx/collection/CircularArray;->mHead:I

    iget v6, p0, Landroidx/collection/CircularArray;->mTail:I

    if-eq v5, v6, :cond_0

    iget-object v6, p0, Landroidx/collection/CircularArray;->mElements:[Ljava/lang/Object;

    aget-object v7, v6, v5

    const/4 v8, 0x0

    aput-object v8, v6, v5

    add-int/lit8 v5, v5, 0x1

    iget v6, p0, Landroidx/collection/CircularArray;->mCapacityBitmask:I

    and-int/2addr v5, v6

    iput v5, p0, Landroidx/collection/CircularArray;->mHead:I

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/collection/CircularArray;"

    const-string v1, "popFirst"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v7

    :cond_0
    new-instance v5, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v5}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/collection/CircularArray;"

    const-string v1, "popFirst"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v5
.end method

.method public popLast()Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/collection/CircularArray;"

    const-string v1, "popLast"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v5, p0, Landroidx/collection/CircularArray;->mHead:I

    iget v6, p0, Landroidx/collection/CircularArray;->mTail:I

    if-eq v5, v6, :cond_0

    add-int/lit8 v6, v6, -0x1

    iget v5, p0, Landroidx/collection/CircularArray;->mCapacityBitmask:I

    and-int/2addr v5, v6

    iget-object v6, p0, Landroidx/collection/CircularArray;->mElements:[Ljava/lang/Object;

    aget-object v7, v6, v5

    const/4 v8, 0x0

    aput-object v8, v6, v5

    iput v5, p0, Landroidx/collection/CircularArray;->mTail:I

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/collection/CircularArray;"

    const-string v1, "popLast"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v7

    :cond_0
    new-instance v5, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v5}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/collection/CircularArray;"

    const-string v1, "popLast"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v5
.end method

.method public removeFromEnd(I)V
    .locals 9

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/collection/CircularArray;"

    const-string v1, "removeFromEnd"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-gtz p1, :cond_0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/collection/CircularArray;"

    const-string v1, "removeFromEnd"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/collection/CircularArray;->size()I

    move-result v5

    if-gt p1, v5, :cond_5

    const/4 v5, 0x0

    iget v6, p0, Landroidx/collection/CircularArray;->mTail:I

    if-ge p1, v6, :cond_1

    sub-int v5, v6, p1

    :cond_1
    move v6, v5

    :goto_0
    iget v7, p0, Landroidx/collection/CircularArray;->mTail:I

    const/4 v8, 0x0

    if-ge v6, v7, :cond_2

    iget-object v7, p0, Landroidx/collection/CircularArray;->mElements:[Ljava/lang/Object;

    aput-object v8, v7, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    sub-int v5, v7, v5

    sub-int/2addr p1, v5

    sub-int/2addr v7, v5

    iput v7, p0, Landroidx/collection/CircularArray;->mTail:I

    if-lez p1, :cond_4

    iget-object v5, p0, Landroidx/collection/CircularArray;->mElements:[Ljava/lang/Object;

    array-length v5, v5

    iput v5, p0, Landroidx/collection/CircularArray;->mTail:I

    iget v5, p0, Landroidx/collection/CircularArray;->mTail:I

    sub-int/2addr v5, p1

    move p1, v5

    :goto_1
    iget v6, p0, Landroidx/collection/CircularArray;->mTail:I

    if-ge p1, v6, :cond_3

    iget-object v6, p0, Landroidx/collection/CircularArray;->mElements:[Ljava/lang/Object;

    aput-object v8, v6, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_3
    iput v5, p0, Landroidx/collection/CircularArray;->mTail:I

    :cond_4
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/collection/CircularArray;"

    const-string v1, "removeFromEnd"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_5
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    goto :goto_3

    :goto_2
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/collection/CircularArray;"

    const-string v1, "removeFromEnd"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :goto_3
    goto :goto_2
.end method

.method public removeFromStart(I)V
    .locals 9

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/collection/CircularArray;"

    const-string v1, "removeFromStart"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-gtz p1, :cond_0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/collection/CircularArray;"

    const-string v1, "removeFromStart"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/collection/CircularArray;->size()I

    move-result v5

    if-gt p1, v5, :cond_5

    iget-object v5, p0, Landroidx/collection/CircularArray;->mElements:[Ljava/lang/Object;

    array-length v5, v5

    iget v6, p0, Landroidx/collection/CircularArray;->mHead:I

    sub-int v7, v5, v6

    if-ge p1, v7, :cond_1

    add-int v5, v6, p1

    :cond_1
    iget v6, p0, Landroidx/collection/CircularArray;->mHead:I

    :goto_0
    const/4 v7, 0x0

    if-ge v6, v5, :cond_2

    iget-object v8, p0, Landroidx/collection/CircularArray;->mElements:[Ljava/lang/Object;

    aput-object v7, v8, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    iget v6, p0, Landroidx/collection/CircularArray;->mHead:I

    sub-int/2addr v5, v6

    sub-int/2addr p1, v5

    add-int/2addr v6, v5

    iget v5, p0, Landroidx/collection/CircularArray;->mCapacityBitmask:I

    and-int/2addr v5, v6

    iput v5, p0, Landroidx/collection/CircularArray;->mHead:I

    if-lez p1, :cond_4

    const/4 v5, 0x0

    :goto_1
    if-ge v5, p1, :cond_3

    iget-object v6, p0, Landroidx/collection/CircularArray;->mElements:[Ljava/lang/Object;

    aput-object v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    iput p1, p0, Landroidx/collection/CircularArray;->mHead:I

    :cond_4
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/collection/CircularArray;"

    const-string v1, "removeFromStart"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_5
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    goto :goto_3

    :goto_2
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/collection/CircularArray;"

    const-string v1, "removeFromStart"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :goto_3
    goto :goto_2
.end method

.method public size()I
    .locals 7

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/collection/CircularArray;"

    const-string v1, "size"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v5, p0, Landroidx/collection/CircularArray;->mTail:I

    iget v6, p0, Landroidx/collection/CircularArray;->mHead:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroidx/collection/CircularArray;->mCapacityBitmask:I

    and-int/2addr v5, v6

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/collection/CircularArray;"

    const-string v1, "size"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5
.end method
