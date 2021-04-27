.class Landroidx/recyclerview/widget/ItemTouchHelper$1;
.super Ljava/lang/Object;
.source "ItemTouchHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/ItemTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/recyclerview/widget/ItemTouchHelper;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/ItemTouchHelper;)V
    .locals 0

    iput-object p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper$1;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/recyclerview/widget/ItemTouchHelper$1;"

    const-string v1, "run"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/recyclerview/widget/ItemTouchHelper$1;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    iget-object v5, v5, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-eqz v5, :cond_1

    iget-object v5, p0, Landroidx/recyclerview/widget/ItemTouchHelper$1;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/ItemTouchHelper;->scrollIfNecessary()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Landroidx/recyclerview/widget/ItemTouchHelper$1;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    iget-object v5, v5, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroidx/recyclerview/widget/ItemTouchHelper$1;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    iget-object v6, v5, Landroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/ItemTouchHelper;->moveIfNecessary(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_0
    iget-object v5, p0, Landroidx/recyclerview/widget/ItemTouchHelper$1;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    iget-object v5, v5, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v6, p0, Landroidx/recyclerview/widget/ItemTouchHelper$1;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    iget-object v6, v6, Landroidx/recyclerview/widget/ItemTouchHelper;->mScrollRunnable:Ljava/lang/Runnable;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    aput-object v6, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "removeCallbacks"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "removeCallbacks"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/recyclerview/widget/ItemTouchHelper$1;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    iget-object v5, v5, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v5, p0}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    :cond_1
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/recyclerview/widget/ItemTouchHelper$1;"

    const-string v1, "run"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
