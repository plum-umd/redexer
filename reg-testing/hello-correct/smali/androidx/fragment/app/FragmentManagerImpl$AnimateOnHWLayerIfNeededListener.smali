.class Landroidx/fragment/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;
.super Landroidx/fragment/app/FragmentManagerImpl$AnimationListenerWrapper;
.source "FragmentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/FragmentManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnimateOnHWLayerIfNeededListener"
.end annotation


# instance fields
.field mView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/view/animation/Animation$AnimationListener;)V
    .locals 0

    .line 4004
    invoke-direct {p0, p2}, Landroidx/fragment/app/FragmentManagerImpl$AnimationListenerWrapper;-><init>(Landroid/view/animation/Animation$AnimationListener;)V

    .line 4005
    iput-object p1, p0, Landroidx/fragment/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;->mView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 8

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroidx/fragment/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;"

    const-string v1, "onAnimationEnd"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/fragment/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;->mView:Landroid/view/View;

    invoke-static {v5}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v5

    if-nez v5, :cond_1

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x18

    if-lt v5, v6, :cond_0

    goto :goto_0

    :cond_0
    iget-object v5, p0, Landroidx/fragment/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;->mView:Landroid/view/View;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v6 .. v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x6

    aput-object v7, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "setLayerType"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5, v6, v7}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/view/View;"

    const-string v1, "setLayerType"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v5, p0, Landroidx/fragment/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;->mView:Landroid/view/View;

    new-instance v6, Landroidx/fragment/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener$1;

    invoke-direct {v6, p0}, Landroidx/fragment/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener$1;-><init>(Landroidx/fragment/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;)V

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    aput-object v6, v2, v1

    const-string v0, "Landroid/view/View;"

    const-string v1, "post"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/view/View;"

    const-string v1, "post"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentManagerImpl$AnimationListenerWrapper;->onAnimationEnd(Landroid/view/animation/Animation;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/fragment/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;"

    const-string v1, "onAnimationEnd"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
