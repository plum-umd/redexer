.class Landroidx/fragment/app/FragmentManagerImpl$2$1;
.super Ljava/lang/Object;
.source "FragmentManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/FragmentManagerImpl$2;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroidx/fragment/app/FragmentManagerImpl$2;


# direct methods
.method constructor <init>(Landroidx/fragment/app/FragmentManagerImpl$2;)V
    .locals 0

    .line 1647
    iput-object p1, p0, Landroidx/fragment/app/FragmentManagerImpl$2$1;->this$1:Landroidx/fragment/app/FragmentManagerImpl$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/fragment/app/FragmentManagerImpl$2$1;"

    const-string v1, "run"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/fragment/app/FragmentManagerImpl$2$1;->this$1:Landroidx/fragment/app/FragmentManagerImpl$2;

    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl$2;->val$fragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getAnimatingAway()Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroidx/fragment/app/FragmentManagerImpl$2$1;->this$1:Landroidx/fragment/app/FragmentManagerImpl$2;

    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl$2;->val$fragment:Landroidx/fragment/app/Fragment;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroidx/fragment/app/Fragment;->setAnimatingAway(Landroid/view/View;)V

    iget-object v5, p0, Landroidx/fragment/app/FragmentManagerImpl$2$1;->this$1:Landroidx/fragment/app/FragmentManagerImpl$2;

    iget-object v6, v5, Landroidx/fragment/app/FragmentManagerImpl$2;->this$0:Landroidx/fragment/app/FragmentManagerImpl;

    iget-object v5, p0, Landroidx/fragment/app/FragmentManagerImpl$2$1;->this$1:Landroidx/fragment/app/FragmentManagerImpl$2;

    iget-object v7, v5, Landroidx/fragment/app/FragmentManagerImpl$2;->val$fragment:Landroidx/fragment/app/Fragment;

    iget-object v5, p0, Landroidx/fragment/app/FragmentManagerImpl$2$1;->this$1:Landroidx/fragment/app/FragmentManagerImpl$2;

    iget-object v5, v5, Landroidx/fragment/app/FragmentManagerImpl$2;->val$fragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getStateAfterAnimating()I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Landroidx/fragment/app/FragmentManagerImpl;->moveToState(Landroidx/fragment/app/Fragment;IIIZ)V

    :cond_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/fragment/app/FragmentManagerImpl$2$1;"

    const-string v1, "run"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
