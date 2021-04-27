.class final Landroidx/fragment/app/FragmentTransition$3;
.super Ljava/lang/Object;
.source "FragmentTransition.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/FragmentTransition;->configureSharedElementsReordered(Landroidx/fragment/app/FragmentTransitionImpl;Landroid/view/ViewGroup;Landroid/view/View;Landroidx/collection/ArrayMap;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$epicenter:Landroid/graphics/Rect;

.field final synthetic val$epicenterView:Landroid/view/View;

.field final synthetic val$impl:Landroidx/fragment/app/FragmentTransitionImpl;

.field final synthetic val$inFragment:Landroidx/fragment/app/Fragment;

.field final synthetic val$inIsPop:Z

.field final synthetic val$inSharedElements:Landroidx/collection/ArrayMap;

.field final synthetic val$outFragment:Landroidx/fragment/app/Fragment;


# direct methods
.method constructor <init>(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLandroidx/collection/ArrayMap;Landroid/view/View;Landroidx/fragment/app/FragmentTransitionImpl;Landroid/graphics/Rect;)V
    .locals 0

    .line 622
    iput-object p1, p0, Landroidx/fragment/app/FragmentTransition$3;->val$inFragment:Landroidx/fragment/app/Fragment;

    iput-object p2, p0, Landroidx/fragment/app/FragmentTransition$3;->val$outFragment:Landroidx/fragment/app/Fragment;

    iput-boolean p3, p0, Landroidx/fragment/app/FragmentTransition$3;->val$inIsPop:Z

    iput-object p4, p0, Landroidx/fragment/app/FragmentTransition$3;->val$inSharedElements:Landroidx/collection/ArrayMap;

    iput-object p5, p0, Landroidx/fragment/app/FragmentTransition$3;->val$epicenterView:Landroid/view/View;

    iput-object p6, p0, Landroidx/fragment/app/FragmentTransition$3;->val$impl:Landroidx/fragment/app/FragmentTransitionImpl;

    iput-object p7, p0, Landroidx/fragment/app/FragmentTransition$3;->val$epicenter:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/fragment/app/FragmentTransition$3;"

    const-string v1, "run"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/fragment/app/FragmentTransition$3;->val$inFragment:Landroidx/fragment/app/Fragment;

    iget-object v6, p0, Landroidx/fragment/app/FragmentTransition$3;->val$outFragment:Landroidx/fragment/app/Fragment;

    iget-boolean v7, p0, Landroidx/fragment/app/FragmentTransition$3;->val$inIsPop:Z

    iget-object v8, p0, Landroidx/fragment/app/FragmentTransition$3;->val$inSharedElements:Landroidx/collection/ArrayMap;

    const/4 v9, 0x0

    invoke-static {v5, v6, v7, v8, v9}, Landroidx/fragment/app/FragmentTransition;->callSharedElementStartEnd(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLandroidx/collection/ArrayMap;Z)V

    iget-object v5, p0, Landroidx/fragment/app/FragmentTransition$3;->val$epicenterView:Landroid/view/View;

    if-eqz v5, :cond_0

    iget-object v6, p0, Landroidx/fragment/app/FragmentTransition$3;->val$impl:Landroidx/fragment/app/FragmentTransitionImpl;

    iget-object v7, p0, Landroidx/fragment/app/FragmentTransition$3;->val$epicenter:Landroid/graphics/Rect;

    invoke-virtual {v6, v5, v7}, Landroidx/fragment/app/FragmentTransitionImpl;->getBoundsOnScreen(Landroid/view/View;Landroid/graphics/Rect;)V

    :cond_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/fragment/app/FragmentTransition$3;"

    const-string v1, "run"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
