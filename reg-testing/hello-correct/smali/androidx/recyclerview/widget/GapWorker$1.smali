.class final Landroidx/recyclerview/widget/GapWorker$1;
.super Ljava/lang/Object;
.source "GapWorker.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/GapWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroidx/recyclerview/widget/GapWorker$Task;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroidx/recyclerview/widget/GapWorker$Task;Landroidx/recyclerview/widget/GapWorker$Task;)I
    .locals 10

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const/4 v1, 0x6

    aput-object p2, v2, v1

    const-string v0, "Landroidx/recyclerview/widget/GapWorker$1;"

    const-string v1, "compare"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p1, Landroidx/recyclerview/widget/GapWorker$Task;->view:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    iget-object v8, p2, Landroidx/recyclerview/widget/GapWorker$Task;->view:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v8, :cond_1

    const/4 v8, 0x1

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    :goto_1
    const/4 v9, -0x1

    if-eq v5, v8, :cond_3

    iget-object p1, p1, Landroidx/recyclerview/widget/GapWorker$Task;->view:Landroidx/recyclerview/widget/RecyclerView;

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v7, -0x1

    :goto_2
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/recyclerview/widget/GapWorker$1;"

    const-string v1, "compare"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v7

    :cond_3
    iget-boolean v5, p1, Landroidx/recyclerview/widget/GapWorker$Task;->immediate:Z

    iget-boolean v8, p2, Landroidx/recyclerview/widget/GapWorker$Task;->immediate:Z

    if-eq v5, v8, :cond_5

    iget-boolean p1, p1, Landroidx/recyclerview/widget/GapWorker$Task;->immediate:Z

    if-eqz p1, :cond_4

    const/4 v7, -0x1

    :cond_4
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/recyclerview/widget/GapWorker$1;"

    const-string v1, "compare"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v7

    :cond_5
    iget v5, p2, Landroidx/recyclerview/widget/GapWorker$Task;->viewVelocity:I

    iget v7, p1, Landroidx/recyclerview/widget/GapWorker$Task;->viewVelocity:I

    sub-int/2addr v5, v7

    if-eqz v5, :cond_6

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/recyclerview/widget/GapWorker$1;"

    const-string v1, "compare"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5

    :cond_6
    iget p1, p1, Landroidx/recyclerview/widget/GapWorker$Task;->distanceToItem:I

    iget p2, p2, Landroidx/recyclerview/widget/GapWorker$Task;->distanceToItem:I

    sub-int/2addr p1, p2

    if-eqz p1, :cond_7

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/recyclerview/widget/GapWorker$1;"

    const-string v1, "compare"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p1

    :cond_7
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/recyclerview/widget/GapWorker$1;"

    const-string v1, "compare"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v6
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 5

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const/4 v1, 0x6

    aput-object p2, v2, v1

    const-string v0, "Landroidx/recyclerview/widget/GapWorker$1;"

    const-string v1, "compare"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    check-cast p1, Landroidx/recyclerview/widget/GapWorker$Task;

    check-cast p2, Landroidx/recyclerview/widget/GapWorker$Task;

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/GapWorker$1;->compare(Landroidx/recyclerview/widget/GapWorker$Task;Landroidx/recyclerview/widget/GapWorker$Task;)I

    move-result p1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/recyclerview/widget/GapWorker$1;"

    const-string v1, "compare"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p1
.end method
