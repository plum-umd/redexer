.class Landroidx/transition/GhostViewApi14$1;
.super Ljava/lang/Object;
.source "GhostViewApi14.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/transition/GhostViewApi14;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/transition/GhostViewApi14;


# direct methods
.method constructor <init>(Landroidx/transition/GhostViewApi14;)V
    .locals 0

    iput-object p1, p0, Landroidx/transition/GhostViewApi14$1;->this$0:Landroidx/transition/GhostViewApi14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 7

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/transition/GhostViewApi14$1;"

    const-string v1, "onPreDraw"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/transition/GhostViewApi14$1;->this$0:Landroidx/transition/GhostViewApi14;

    iget-object v6, v5, Landroidx/transition/GhostViewApi14;->mView:Landroid/view/View;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "getMatrix"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v6}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "getMatrix"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object v6, v5, Landroidx/transition/GhostViewApi14;->mCurrentMatrix:Landroid/graphics/Matrix;

    iget-object v5, p0, Landroidx/transition/GhostViewApi14$1;->this$0:Landroidx/transition/GhostViewApi14;

    invoke-static {v5}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    iget-object v5, p0, Landroidx/transition/GhostViewApi14$1;->this$0:Landroidx/transition/GhostViewApi14;

    iget-object v5, v5, Landroidx/transition/GhostViewApi14;->mStartParent:Landroid/view/ViewGroup;

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroidx/transition/GhostViewApi14$1;->this$0:Landroidx/transition/GhostViewApi14;

    iget-object v5, v5, Landroidx/transition/GhostViewApi14;->mStartView:Landroid/view/View;

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroidx/transition/GhostViewApi14$1;->this$0:Landroidx/transition/GhostViewApi14;

    iget-object v5, v5, Landroidx/transition/GhostViewApi14;->mStartParent:Landroid/view/ViewGroup;

    iget-object v6, p0, Landroidx/transition/GhostViewApi14$1;->this$0:Landroidx/transition/GhostViewApi14;

    iget-object v6, v6, Landroidx/transition/GhostViewApi14;->mStartView:Landroid/view/View;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    aput-object v6, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "endViewTransition"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "endViewTransition"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/transition/GhostViewApi14$1;->this$0:Landroidx/transition/GhostViewApi14;

    iget-object v5, v5, Landroidx/transition/GhostViewApi14;->mStartParent:Landroid/view/ViewGroup;

    invoke-static {v5}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    iget-object v5, p0, Landroidx/transition/GhostViewApi14$1;->this$0:Landroidx/transition/GhostViewApi14;

    const/4 v6, 0x0

    iput-object v6, v5, Landroidx/transition/GhostViewApi14;->mStartParent:Landroid/view/ViewGroup;

    iput-object v6, v5, Landroidx/transition/GhostViewApi14;->mStartView:Landroid/view/View;

    :cond_0
    const/4 v5, 0x1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/transition/GhostViewApi14$1;"

    const-string v1, "onPreDraw"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5
.end method
