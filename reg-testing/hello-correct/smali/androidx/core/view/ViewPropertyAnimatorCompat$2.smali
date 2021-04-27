.class Landroidx/core/view/ViewPropertyAnimatorCompat$2;
.super Ljava/lang/Object;
.source "ViewPropertyAnimatorCompat.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/view/ViewPropertyAnimatorCompat;->setUpdateListener(Landroidx/core/view/ViewPropertyAnimatorUpdateListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/core/view/ViewPropertyAnimatorCompat;

.field final synthetic val$listener:Landroidx/core/view/ViewPropertyAnimatorUpdateListener;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroidx/core/view/ViewPropertyAnimatorCompat;Landroidx/core/view/ViewPropertyAnimatorUpdateListener;Landroid/view/View;)V
    .locals 0

    .line 778
    iput-object p1, p0, Landroidx/core/view/ViewPropertyAnimatorCompat$2;->this$0:Landroidx/core/view/ViewPropertyAnimatorCompat;

    iput-object p2, p0, Landroidx/core/view/ViewPropertyAnimatorCompat$2;->val$listener:Landroidx/core/view/ViewPropertyAnimatorUpdateListener;

    iput-object p3, p0, Landroidx/core/view/ViewPropertyAnimatorCompat$2;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroidx/core/view/ViewPropertyAnimatorCompat$2;"

    const-string v1, "onAnimationUpdate"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/core/view/ViewPropertyAnimatorCompat$2;->val$listener:Landroidx/core/view/ViewPropertyAnimatorUpdateListener;

    iget-object v5, p0, Landroidx/core/view/ViewPropertyAnimatorCompat$2;->val$view:Landroid/view/View;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const/4 v1, 0x5

    aput-object v5, v2, v1

    const-string v0, "Ljava/lang/Object;"

    const-string v1, "onAnimationUpdate"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p1, v5}, Landroidx/core/view/ViewPropertyAnimatorUpdateListener;->onAnimationUpdate(Landroid/view/View;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/Object;"

    const-string v1, "onAnimationUpdate"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/core/view/ViewPropertyAnimatorCompat$2;"

    const-string v1, "onAnimationUpdate"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
