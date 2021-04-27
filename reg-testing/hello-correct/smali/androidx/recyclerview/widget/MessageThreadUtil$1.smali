.class Landroidx/recyclerview/widget/MessageThreadUtil$1;
.super Ljava/lang/Object;
.source "MessageThreadUtil.java"

# interfaces
.implements Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/recyclerview/widget/MessageThreadUtil;->getMainThreadProxy(Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;)Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final ADD_TILE:I = 0x2

.field static final REMOVE_TILE:I = 0x3

.field static final UPDATE_ITEM_COUNT:I = 0x1


# instance fields
.field private final mMainThreadHandler:Landroid/os/Handler;

.field private mMainThreadRunnable:Ljava/lang/Runnable;

.field final mQueue:Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;

.field final synthetic this$0:Landroidx/recyclerview/widget/MessageThreadUtil;

.field final synthetic val$callback:Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/MessageThreadUtil;Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;)V
    .locals 0

    .line 31
    iput-object p1, p0, Landroidx/recyclerview/widget/MessageThreadUtil$1;->this$0:Landroidx/recyclerview/widget/MessageThreadUtil;

    iput-object p2, p0, Landroidx/recyclerview/widget/MessageThreadUtil$1;->val$callback:Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance p1, Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;

    invoke-direct {p1}, Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/MessageThreadUtil$1;->mQueue:Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;

    .line 33
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Landroidx/recyclerview/widget/MessageThreadUtil$1;->mMainThreadHandler:Landroid/os/Handler;

    .line 59
    new-instance p1, Landroidx/recyclerview/widget/MessageThreadUtil$1$1;

    invoke-direct {p1, p0}, Landroidx/recyclerview/widget/MessageThreadUtil$1$1;-><init>(Landroidx/recyclerview/widget/MessageThreadUtil$1;)V

    iput-object p1, p0, Landroidx/recyclerview/widget/MessageThreadUtil$1;->mMainThreadRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private sendMessage(Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;)V
    .locals 6

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroidx/recyclerview/widget/MessageThreadUtil$1;"

    const-string v1, "sendMessage"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/recyclerview/widget/MessageThreadUtil$1;->mQueue:Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;

    invoke-virtual {v5, p1}, Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;->sendMessage(Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;)V

    iget-object p1, p0, Landroidx/recyclerview/widget/MessageThreadUtil$1;->mMainThreadHandler:Landroid/os/Handler;

    iget-object v5, p0, Landroidx/recyclerview/widget/MessageThreadUtil$1;->mMainThreadRunnable:Ljava/lang/Runnable;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const/4 v1, 0x5

    aput-object v5, v2, v1

    const-string v0, "Landroid/os/Handler;"

    const-string v1, "post"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/os/Handler;"

    const-string v1, "post"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/recyclerview/widget/MessageThreadUtil$1;"

    const-string v1, "sendMessage"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public addTile(ILandroidx/recyclerview/widget/TileList$Tile;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/recyclerview/widget/TileList$Tile<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x6

    aput-object p2, v2, v1

    const-string v0, "Landroidx/recyclerview/widget/MessageThreadUtil$1;"

    const-string v1, "addTile"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v5, 0x2

    invoke-static {v5, p1, p2}, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->obtainMessage(IILjava/lang/Object;)Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/MessageThreadUtil$1;->sendMessage(Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/recyclerview/widget/MessageThreadUtil$1;"

    const-string v1, "addTile"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public removeTile(II)V
    .locals 6

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x6

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/recyclerview/widget/MessageThreadUtil$1;"

    const-string v1, "removeTile"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v5, 0x3

    invoke-static {v5, p1, p2}, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->obtainMessage(III)Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/MessageThreadUtil$1;->sendMessage(Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/recyclerview/widget/MessageThreadUtil$1;"

    const-string v1, "removeTile"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public updateItemCount(II)V
    .locals 6

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x6

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/recyclerview/widget/MessageThreadUtil$1;"

    const-string v1, "updateItemCount"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v5, 0x1

    invoke-static {v5, p1, p2}, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->obtainMessage(III)Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/MessageThreadUtil$1;->sendMessage(Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/recyclerview/widget/MessageThreadUtil$1;"

    const-string v1, "updateItemCount"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
