.class Landroidx/core/widget/AutoScrollHelper$ScrollAnimationRunnable;
.super Ljava/lang/Object;
.source "AutoScrollHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/widget/AutoScrollHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollAnimationRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/core/widget/AutoScrollHelper;


# direct methods
.method constructor <init>(Landroidx/core/widget/AutoScrollHelper;)V
    .locals 0

    .line 695
    iput-object p1, p0, Landroidx/core/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Landroidx/core/widget/AutoScrollHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/core/widget/AutoScrollHelper$ScrollAnimationRunnable;"

    const-string v1, "run"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/core/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Landroidx/core/widget/AutoScrollHelper;

    iget-boolean v5, v5, Landroidx/core/widget/AutoScrollHelper;->mAnimating:Z

    if-nez v5, :cond_0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/core/widget/AutoScrollHelper$ScrollAnimationRunnable;"

    const-string v1, "run"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v5, p0, Landroidx/core/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Landroidx/core/widget/AutoScrollHelper;

    iget-boolean v5, v5, Landroidx/core/widget/AutoScrollHelper;->mNeedsReset:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    iget-object v5, p0, Landroidx/core/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Landroidx/core/widget/AutoScrollHelper;

    iput-boolean v6, v5, Landroidx/core/widget/AutoScrollHelper;->mNeedsReset:Z

    iget-object v5, v5, Landroidx/core/widget/AutoScrollHelper;->mScroller:Landroidx/core/widget/AutoScrollHelper$ClampedScroller;

    invoke-virtual {v5}, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->start()V

    :cond_1
    iget-object v5, p0, Landroidx/core/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Landroidx/core/widget/AutoScrollHelper;

    iget-object v5, v5, Landroidx/core/widget/AutoScrollHelper;->mScroller:Landroidx/core/widget/AutoScrollHelper$ClampedScroller;

    invoke-virtual {v5}, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->isFinished()Z

    move-result v7

    if-nez v7, :cond_4

    iget-object v7, p0, Landroidx/core/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Landroidx/core/widget/AutoScrollHelper;

    invoke-virtual {v7}, Landroidx/core/widget/AutoScrollHelper;->shouldAnimate()Z

    move-result v7

    if-nez v7, :cond_2

    goto/16 :goto_0

    :cond_2
    iget-object v7, p0, Landroidx/core/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Landroidx/core/widget/AutoScrollHelper;

    iget-boolean v7, v7, Landroidx/core/widget/AutoScrollHelper;->mNeedsCancel:Z

    if-eqz v7, :cond_3

    iget-object v7, p0, Landroidx/core/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Landroidx/core/widget/AutoScrollHelper;

    iput-boolean v6, v7, Landroidx/core/widget/AutoScrollHelper;->mNeedsCancel:Z

    invoke-virtual {v7}, Landroidx/core/widget/AutoScrollHelper;->cancelTargetTouch()V

    :cond_3
    invoke-virtual {v5}, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->computeScrollDelta()V

    invoke-virtual {v5}, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->getDeltaX()I

    move-result v6

    invoke-virtual {v5}, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->getDeltaY()I

    move-result v5

    iget-object v7, p0, Landroidx/core/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Landroidx/core/widget/AutoScrollHelper;

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v7, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v6 .. v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x6

    invoke-static/range {v5 .. v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/Object;"

    const-string v1, "scrollTargetBy"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v7, v6, v5}, Landroidx/core/widget/AutoScrollHelper;->scrollTargetBy(II)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/Object;"

    const-string v1, "scrollTargetBy"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/core/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Landroidx/core/widget/AutoScrollHelper;

    iget-object v5, v5, Landroidx/core/widget/AutoScrollHelper;->mTarget:Landroid/view/View;

    invoke-static {v5, p0}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/core/widget/AutoScrollHelper$ScrollAnimationRunnable;"

    const-string v1, "run"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_4
    :goto_0
    iget-object v5, p0, Landroidx/core/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Landroidx/core/widget/AutoScrollHelper;

    iput-boolean v6, v5, Landroidx/core/widget/AutoScrollHelper;->mAnimating:Z

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/core/widget/AutoScrollHelper$ScrollAnimationRunnable;"

    const-string v1, "run"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
