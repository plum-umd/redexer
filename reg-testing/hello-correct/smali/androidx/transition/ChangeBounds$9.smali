.class Landroidx/transition/ChangeBounds$9;
.super Landroidx/transition/TransitionListenerAdapter;
.source "ChangeBounds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/transition/ChangeBounds;->createAnimator(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mCanceled:Z

.field final synthetic this$0:Landroidx/transition/ChangeBounds;

.field final synthetic val$parent:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Landroidx/transition/ChangeBounds;Landroid/view/ViewGroup;)V
    .locals 0

    .line 391
    iput-object p1, p0, Landroidx/transition/ChangeBounds$9;->this$0:Landroidx/transition/ChangeBounds;

    iput-object p2, p0, Landroidx/transition/ChangeBounds$9;->val$parent:Landroid/view/ViewGroup;

    invoke-direct {p0}, Landroidx/transition/TransitionListenerAdapter;-><init>()V

    const/4 p1, 0x0

    .line 392
    iput-boolean p1, p0, Landroidx/transition/ChangeBounds$9;->mCanceled:Z

    return-void
.end method


# virtual methods
.method public onTransitionCancel(Landroidx/transition/Transition;)V
    .locals 6

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroidx/transition/ChangeBounds$9;"

    const-string v1, "onTransitionCancel"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/transition/ChangeBounds$9;->val$parent:Landroid/view/ViewGroup;

    const/4 v5, 0x0

    invoke-static {p1, v5}, Landroidx/transition/ViewGroupUtils;->suppressLayout(Landroid/view/ViewGroup;Z)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/transition/ChangeBounds$9;->mCanceled:Z

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/transition/ChangeBounds$9;"

    const-string v1, "onTransitionCancel"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onTransitionEnd(Landroidx/transition/Transition;)V
    .locals 7

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroidx/transition/ChangeBounds$9;"

    const-string v1, "onTransitionEnd"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v5, p0, Landroidx/transition/ChangeBounds$9;->mCanceled:Z

    if-nez v5, :cond_0

    iget-object v5, p0, Landroidx/transition/ChangeBounds$9;->val$parent:Landroid/view/ViewGroup;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroidx/transition/ViewGroupUtils;->suppressLayout(Landroid/view/ViewGroup;Z)V

    :cond_0
    invoke-virtual {p1, p0}, Landroidx/transition/Transition;->removeListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/transition/ChangeBounds$9;"

    const-string v1, "onTransitionEnd"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onTransitionPause(Landroidx/transition/Transition;)V
    .locals 6

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroidx/transition/ChangeBounds$9;"

    const-string v1, "onTransitionPause"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/transition/ChangeBounds$9;->val$parent:Landroid/view/ViewGroup;

    const/4 v5, 0x0

    invoke-static {p1, v5}, Landroidx/transition/ViewGroupUtils;->suppressLayout(Landroid/view/ViewGroup;Z)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/transition/ChangeBounds$9;"

    const-string v1, "onTransitionPause"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onTransitionResume(Landroidx/transition/Transition;)V
    .locals 6

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroidx/transition/ChangeBounds$9;"

    const-string v1, "onTransitionResume"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/transition/ChangeBounds$9;->val$parent:Landroid/view/ViewGroup;

    const/4 v5, 0x1

    invoke-static {p1, v5}, Landroidx/transition/ViewGroupUtils;->suppressLayout(Landroid/view/ViewGroup;Z)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/transition/ChangeBounds$9;"

    const-string v1, "onTransitionResume"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
