.class Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$2;
.super Ljava/lang/Object;
.source "CircularProgressDrawable.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->setupAnimators()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

.field final synthetic val$ring:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;


# direct methods
.method constructor <init>(Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;)V
    .locals 0

    .line 580
    iput-object p1, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$2;->this$0:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    iput-object p2, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$2;->val$ring:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 5

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$2;"

    const-string v1, "onAnimationCancel"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$2;"

    const-string v1, "onAnimationCancel"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$2;"

    const-string v1, "onAnimationEnd"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$2;"

    const-string v1, "onAnimationEnd"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 9

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$2;"

    const-string v1, "onAnimationRepeat"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$2;->this$0:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    iget-object v6, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$2;->val$ring:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x1

    invoke-virtual {v5, v7, v6, v8}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->applyTransformation(FLandroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;Z)V

    iget-object v5, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$2;->val$ring:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v5}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->storeOriginals()V

    iget-object v5, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$2;->val$ring:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v5}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->goToNextColor()V

    iget-object v5, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$2;->this$0:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    iget-boolean v5, v5, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mFinishing:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$2;->this$0:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mFinishing:Z

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const-string v0, "Landroid/animation/Animator;"

    const-string v1, "cancel"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/animation/Animator;"

    const-string v1, "cancel"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v7, 0x534

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v7 .. v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/animation/Animator;"

    const-string v1, "setDuration"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1, v7, v8}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/animation/Animator;"

    const-string v1, "setDuration"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const-string v0, "Landroid/animation/Animator;"

    const-string v1, "start"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/animation/Animator;"

    const-string v1, "start"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$2;->val$ring:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    invoke-virtual {p1, v6}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->setShowArrow(Z)V

    goto/16 :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$2;->this$0:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    iget v5, p1, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRotationCount:F

    add-float/2addr v5, v7

    iput v5, p1, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRotationCount:F

    :goto_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$2;"

    const-string v1, "onAnimationRepeat"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 6

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$2;"

    const-string v1, "onAnimationStart"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$2;->this$0:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    const/4 v5, 0x0

    iput v5, p1, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRotationCount:F

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/swiperefreshlayout/widget/CircularProgressDrawable$2;"

    const-string v1, "onAnimationStart"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
