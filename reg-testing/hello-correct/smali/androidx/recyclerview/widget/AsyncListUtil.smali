.class public Landroidx/recyclerview/widget/AsyncListUtil;
.super Ljava/lang/Object;
.source "AsyncListUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/AsyncListUtil$ViewCallback;,
        Landroidx/recyclerview/widget/AsyncListUtil$DataCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "AsyncListUtil"


# instance fields
.field mAllowScrollHints:Z

.field private final mBackgroundCallback:Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback<",
            "TT;>;"
        }
    .end annotation
.end field

.field final mBackgroundProxy:Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback<",
            "TT;>;"
        }
    .end annotation
.end field

.field final mDataCallback:Landroidx/recyclerview/widget/AsyncListUtil$DataCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/widget/AsyncListUtil$DataCallback<",
            "TT;>;"
        }
    .end annotation
.end field

.field mDisplayedGeneration:I

.field mItemCount:I

.field private final mMainThreadCallback:Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback<",
            "TT;>;"
        }
    .end annotation
.end field

.field final mMainThreadProxy:Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback<",
            "TT;>;"
        }
    .end annotation
.end field

.field final mMissingPositions:Landroid/util/SparseIntArray;

.field final mPrevRange:[I

.field mRequestedGeneration:I

.field private mScrollHint:I

.field final mTClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field final mTileList:Landroidx/recyclerview/widget/TileList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/widget/TileList<",
            "TT;>;"
        }
    .end annotation
.end field

.field final mTileSize:I

.field final mTmpRange:[I

.field final mTmpRangeExtended:[I

.field final mViewCallback:Landroidx/recyclerview/widget/AsyncListUtil$ViewCallback;


# direct methods
.method public constructor <init>(Ljava/lang/Class;ILandroidx/recyclerview/widget/AsyncListUtil$DataCallback;Landroidx/recyclerview/widget/AsyncListUtil$ViewCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;I",
            "Landroidx/recyclerview/widget/AsyncListUtil$DataCallback<",
            "TT;>;",
            "Landroidx/recyclerview/widget/AsyncListUtil$ViewCallback;",
            ")V"
        }
    .end annotation

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 64
    iput-object v1, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mTmpRange:[I

    new-array v1, v0, [I

    .line 65
    iput-object v1, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mPrevRange:[I

    new-array v0, v0, [I

    .line 66
    iput-object v0, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mTmpRangeExtended:[I

    const/4 v0, 0x0

    .line 69
    iput v0, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mScrollHint:I

    .line 71
    iput v0, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mItemCount:I

    .line 73
    iput v0, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mDisplayedGeneration:I

    .line 74
    iget v0, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mDisplayedGeneration:I

    iput v0, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mRequestedGeneration:I

    .line 76
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mMissingPositions:Landroid/util/SparseIntArray;

    .line 211
    new-instance v0, Landroidx/recyclerview/widget/AsyncListUtil$1;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/AsyncListUtil$1;-><init>(Landroidx/recyclerview/widget/AsyncListUtil;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mMainThreadCallback:Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;

    .line 293
    new-instance v0, Landroidx/recyclerview/widget/AsyncListUtil$2;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/AsyncListUtil$2;-><init>(Landroidx/recyclerview/widget/AsyncListUtil;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mBackgroundCallback:Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;

    .line 92
    iput-object p1, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mTClass:Ljava/lang/Class;

    .line 93
    iput p2, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mTileSize:I

    .line 94
    iput-object p3, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mDataCallback:Landroidx/recyclerview/widget/AsyncListUtil$DataCallback;

    .line 95
    iput-object p4, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mViewCallback:Landroidx/recyclerview/widget/AsyncListUtil$ViewCallback;

    .line 97
    new-instance p1, Landroidx/recyclerview/widget/TileList;

    iget p2, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mTileSize:I

    invoke-direct {p1, p2}, Landroidx/recyclerview/widget/TileList;-><init>(I)V

    iput-object p1, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mTileList:Landroidx/recyclerview/widget/TileList;

    .line 99
    new-instance p1, Landroidx/recyclerview/widget/MessageThreadUtil;

    invoke-direct {p1}, Landroidx/recyclerview/widget/MessageThreadUtil;-><init>()V

    .line 100
    iget-object p2, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mMainThreadCallback:Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;

    invoke-interface {p1, p2}, Landroidx/recyclerview/widget/ThreadUtil;->getMainThreadProxy(Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;)Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;

    move-result-object p2

    iput-object p2, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mMainThreadProxy:Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;

    .line 101
    iget-object p2, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mBackgroundCallback:Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;

    invoke-interface {p1, p2}, Landroidx/recyclerview/widget/ThreadUtil;->getBackgroundProxy(Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;)Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;

    move-result-object p1

    iput-object p1, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mBackgroundProxy:Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;

    .line 103
    invoke-virtual {p0}, Landroidx/recyclerview/widget/AsyncListUtil;->refresh()V

    return-void
.end method

.method private isRefreshPending()Z
    .locals 7

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/recyclerview/widget/AsyncListUtil;"

    const-string v1, "isRefreshPending"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v5, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mRequestedGeneration:I

    iget v6, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mDisplayedGeneration:I

    if-eq v5, v6, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/recyclerview/widget/AsyncListUtil;"

    const-string v1, "isRefreshPending"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5
.end method


# virtual methods
.method public getItem(I)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
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

    const-string v0, "Landroidx/recyclerview/widget/AsyncListUtil;"

    const-string v1, "getItem"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-ltz p1, :cond_1

    iget v5, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mItemCount:I

    if-ge p1, v5, :cond_1

    iget-object v5, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mTileList:Landroidx/recyclerview/widget/TileList;

    invoke-virtual {v5, p1}, Landroidx/recyclerview/widget/TileList;->getItemAt(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_0

    invoke-direct {p0}, Landroidx/recyclerview/widget/AsyncListUtil;->isRefreshPending()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mMissingPositions:Landroid/util/SparseIntArray;

    const/4 v7, 0x0

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x6

    invoke-static/range {v7 .. v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/util/SparseIntArray;"

    const-string v1, "put"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v6, p1, v7}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/util/SparseIntArray;"

    const-string v1, "put"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/recyclerview/widget/AsyncListUtil;"

    const-string v1, "getItem"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5

    :cond_1
    new-instance v5, Ljava/lang/IndexOutOfBoundsException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p1, " is not within 0 and "

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

    iget p1, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mItemCount:I

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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

    invoke-direct {v5, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/recyclerview/widget/AsyncListUtil;"

    const-string v1, "getItem"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v5
.end method

.method public getItemCount()I
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/recyclerview/widget/AsyncListUtil;"

    const-string v1, "getItemCount"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v5, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mItemCount:I

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/recyclerview/widget/AsyncListUtil;"

    const-string v1, "getItemCount"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5
.end method

.method varargs log(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 7

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const/4 v1, 0x6

    aput-object p2, v2, v1

    const-string v0, "Landroidx/recyclerview/widget/AsyncListUtil;"

    const-string v1, "log"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[MAIN] "

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    aput-object v6, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const/4 v1, 0x5

    aput-object p2, v2, v1

    const-string v0, "Ljava/lang/String;"

    const-string v1, "format"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const-string v0, "Ljava/lang/String;"

    const-string v1, "format"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "toString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "toString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p2, "AsyncListUtil"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p2, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroid/util/Log;"

    const-string v1, "d"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/util/Log;"

    const-string v1, "d"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/recyclerview/widget/AsyncListUtil;"

    const-string v1, "log"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onRangeChanged()V
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/recyclerview/widget/AsyncListUtil;"

    const-string v1, "onRangeChanged"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Landroidx/recyclerview/widget/AsyncListUtil;->isRefreshPending()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/recyclerview/widget/AsyncListUtil;"

    const-string v1, "onRangeChanged"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/AsyncListUtil;->updateRange()V

    const/4 v5, 0x1

    iput-boolean v5, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mAllowScrollHints:Z

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/recyclerview/widget/AsyncListUtil;"

    const-string v1, "onRangeChanged"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public refresh()V
    .locals 7

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/recyclerview/widget/AsyncListUtil;"

    const-string v1, "refresh"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mMissingPositions:Landroid/util/SparseIntArray;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Landroid/util/SparseIntArray;"

    const-string v1, "clear"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5}, Landroid/util/SparseIntArray;->clear()V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/util/SparseIntArray;"

    const-string v1, "clear"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mBackgroundProxy:Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;

    iget v6, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mRequestedGeneration:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mRequestedGeneration:I

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v6 .. v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/Object;"

    const-string v1, "refresh"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v5, v6}, Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;->refresh(I)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/Object;"

    const-string v1, "refresh"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/recyclerview/widget/AsyncListUtil;"

    const-string v1, "refresh"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method updateRange()V
    .locals 15

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/recyclerview/widget/AsyncListUtil;"

    const-string v1, "updateRange"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mViewCallback:Landroidx/recyclerview/widget/AsyncListUtil$ViewCallback;

    iget-object v6, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mTmpRange:[I

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    aput-object v6, v2, v1

    const-string v0, "Ljava/lang/Object;"

    const-string v1, "getItemRangeInto"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/AsyncListUtil$ViewCallback;->getItemRangeInto([I)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/Object;"

    const-string v1, "getItemRangeInto"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mTmpRange:[I

    const/4 v6, 0x0

    aget v7, v5, v6

    const/4 v8, 0x1

    aget v9, v5, v8

    if-gt v7, v9, :cond_7

    aget v7, v5, v6

    if-gez v7, :cond_0

    goto/16 :goto_2

    :cond_0
    aget v7, v5, v8

    iget v9, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mItemCount:I

    if-lt v7, v9, :cond_1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/recyclerview/widget/AsyncListUtil;"

    const-string v1, "updateRange"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    iget-boolean v7, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mAllowScrollHints:Z

    if-nez v7, :cond_2

    iput v6, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mScrollHint:I

    goto/16 :goto_1

    :cond_2
    aget v7, v5, v6

    iget-object v9, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mPrevRange:[I

    aget v10, v9, v8

    if-gt v7, v10, :cond_5

    aget v7, v9, v6

    aget v10, v5, v8

    if-le v7, v10, :cond_3

    goto/16 :goto_0

    :cond_3
    aget v7, v5, v6

    aget v10, v9, v6

    if-ge v7, v10, :cond_4

    iput v8, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mScrollHint:I

    goto/16 :goto_1

    :cond_4
    aget v5, v5, v6

    aget v7, v9, v6

    if-le v5, v7, :cond_6

    const/4 v5, 0x2

    iput v5, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mScrollHint:I

    goto/16 :goto_1

    :cond_5
    :goto_0
    iput v6, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mScrollHint:I

    :cond_6
    :goto_1
    iget-object v5, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mPrevRange:[I

    iget-object v7, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mTmpRange:[I

    aget v9, v7, v6

    aput v9, v5, v6

    aget v9, v7, v8

    aput v9, v5, v8

    iget-object v5, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mViewCallback:Landroidx/recyclerview/widget/AsyncListUtil$ViewCallback;

    iget-object v9, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mTmpRangeExtended:[I

    iget v10, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mScrollHint:I

    invoke-virtual {v5, v7, v9, v10}, Landroidx/recyclerview/widget/AsyncListUtil$ViewCallback;->extendRangeInto([I[II)V

    iget-object v5, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mTmpRangeExtended:[I

    iget-object v7, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mTmpRange:[I

    aget v7, v7, v6

    aget v9, v5, v6

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v9 .. v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v6 .. v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/Math;"

    const-string v1, "max"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v9

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v9 .. v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/Math;"

    const-string v1, "max"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v7 .. v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v9 .. v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/Math;"

    const-string v1, "min"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v7, v9}, Ljava/lang/Math;->min(II)I

    move-result v7

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v7 .. v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/Math;"

    const-string v1, "min"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    aput v7, v5, v6

    iget-object v5, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mTmpRangeExtended:[I

    iget-object v7, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mTmpRange:[I

    aget v7, v7, v8

    aget v9, v5, v8

    iget v10, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mItemCount:I

    sub-int/2addr v10, v8

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v9 .. v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v10 .. v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/Math;"

    const-string v1, "min"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v9 .. v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/Math;"

    const-string v1, "min"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v7 .. v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v9 .. v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/Math;"

    const-string v1, "max"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v7

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v7 .. v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/Math;"

    const-string v1, "max"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    aput v7, v5, v8

    iget-object v9, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mBackgroundProxy:Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;

    iget-object v5, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mTmpRange:[I

    aget v10, v5, v6

    aget v11, v5, v8

    iget-object v5, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mTmpRangeExtended:[I

    aget v12, v5, v6

    aget v13, v5, v8

    iget v14, p0, Landroidx/recyclerview/widget/AsyncListUtil;->mScrollHint:I

    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v9, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v10 .. v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x6

    invoke-static/range {v11 .. v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x7

    invoke-static/range {v12 .. v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/16 v1, 0x8

    invoke-static/range {v13 .. v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/16 v1, 0x9

    invoke-static/range {v14 .. v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/Object;"

    const-string v1, "updateRange"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface/range {v9 .. v14}, Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;->updateRange(IIIII)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/Object;"

    const-string v1, "updateRange"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    :goto_2
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/recyclerview/widget/AsyncListUtil;"

    const-string v1, "updateRange"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
