.class final Landroidx/fragment/app/FragmentTransition$4;
.super Ljava/lang/Object;
.source "FragmentTransition.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/FragmentTransition;->configureSharedElementsOrdered(Landroidx/fragment/app/FragmentTransitionImpl;Landroid/view/ViewGroup;Landroid/view/View;Landroidx/collection/ArrayMap;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$enterTransition:Ljava/lang/Object;

.field final synthetic val$finalSharedElementTransition:Ljava/lang/Object;

.field final synthetic val$fragments:Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;

.field final synthetic val$impl:Landroidx/fragment/app/FragmentTransitionImpl;

.field final synthetic val$inEpicenter:Landroid/graphics/Rect;

.field final synthetic val$inFragment:Landroidx/fragment/app/Fragment;

.field final synthetic val$inIsPop:Z

.field final synthetic val$nameOverrides:Landroidx/collection/ArrayMap;

.field final synthetic val$nonExistentView:Landroid/view/View;

.field final synthetic val$outFragment:Landroidx/fragment/app/Fragment;

.field final synthetic val$sharedElementsIn:Ljava/util/ArrayList;

.field final synthetic val$sharedElementsOut:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Landroidx/fragment/app/FragmentTransitionImpl;Landroidx/collection/ArrayMap;Ljava/lang/Object;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Landroid/view/View;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLjava/util/ArrayList;Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 0

    .line 734
    iput-object p1, p0, Landroidx/fragment/app/FragmentTransition$4;->val$impl:Landroidx/fragment/app/FragmentTransitionImpl;

    iput-object p2, p0, Landroidx/fragment/app/FragmentTransition$4;->val$nameOverrides:Landroidx/collection/ArrayMap;

    iput-object p3, p0, Landroidx/fragment/app/FragmentTransition$4;->val$finalSharedElementTransition:Ljava/lang/Object;

    iput-object p4, p0, Landroidx/fragment/app/FragmentTransition$4;->val$fragments:Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;

    iput-object p5, p0, Landroidx/fragment/app/FragmentTransition$4;->val$sharedElementsIn:Ljava/util/ArrayList;

    iput-object p6, p0, Landroidx/fragment/app/FragmentTransition$4;->val$nonExistentView:Landroid/view/View;

    iput-object p7, p0, Landroidx/fragment/app/FragmentTransition$4;->val$inFragment:Landroidx/fragment/app/Fragment;

    iput-object p8, p0, Landroidx/fragment/app/FragmentTransition$4;->val$outFragment:Landroidx/fragment/app/Fragment;

    iput-boolean p9, p0, Landroidx/fragment/app/FragmentTransition$4;->val$inIsPop:Z

    iput-object p10, p0, Landroidx/fragment/app/FragmentTransition$4;->val$sharedElementsOut:Ljava/util/ArrayList;

    iput-object p11, p0, Landroidx/fragment/app/FragmentTransition$4;->val$enterTransition:Ljava/lang/Object;

    iput-object p12, p0, Landroidx/fragment/app/FragmentTransition$4;->val$inEpicenter:Landroid/graphics/Rect;

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

    const-string v0, "Landroidx/fragment/app/FragmentTransition$4;"

    const-string v1, "run"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/fragment/app/FragmentTransition$4;->val$impl:Landroidx/fragment/app/FragmentTransitionImpl;

    iget-object v6, p0, Landroidx/fragment/app/FragmentTransition$4;->val$nameOverrides:Landroidx/collection/ArrayMap;

    iget-object v7, p0, Landroidx/fragment/app/FragmentTransition$4;->val$finalSharedElementTransition:Ljava/lang/Object;

    iget-object v8, p0, Landroidx/fragment/app/FragmentTransition$4;->val$fragments:Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;

    invoke-static {v5, v6, v7, v8}, Landroidx/fragment/app/FragmentTransition;->captureInSharedElements(Landroidx/fragment/app/FragmentTransitionImpl;Landroidx/collection/ArrayMap;Ljava/lang/Object;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;)Landroidx/collection/ArrayMap;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v6, p0, Landroidx/fragment/app/FragmentTransition$4;->val$sharedElementsIn:Ljava/util/ArrayList;

    invoke-virtual {v5}, Landroidx/collection/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v7

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const/4 v1, 0x5

    aput-object v7, v2, v1

    const-string v0, "Ljava/util/ArrayList;"

    const-string v1, "addAll"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/util/ArrayList;"

    const-string v1, "addAll"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v6, p0, Landroidx/fragment/app/FragmentTransition$4;->val$sharedElementsIn:Ljava/util/ArrayList;

    iget-object v7, p0, Landroidx/fragment/app/FragmentTransition$4;->val$nonExistentView:Landroid/view/View;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const/4 v1, 0x5

    aput-object v7, v2, v1

    const-string v0, "Ljava/util/ArrayList;"

    const-string v1, "add"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/util/ArrayList;"

    const-string v1, "add"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v6, p0, Landroidx/fragment/app/FragmentTransition$4;->val$inFragment:Landroidx/fragment/app/Fragment;

    iget-object v7, p0, Landroidx/fragment/app/FragmentTransition$4;->val$outFragment:Landroidx/fragment/app/Fragment;

    iget-boolean v8, p0, Landroidx/fragment/app/FragmentTransition$4;->val$inIsPop:Z

    const/4 v9, 0x0

    invoke-static {v6, v7, v8, v5, v9}, Landroidx/fragment/app/FragmentTransition;->callSharedElementStartEnd(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLandroidx/collection/ArrayMap;Z)V

    iget-object v6, p0, Landroidx/fragment/app/FragmentTransition$4;->val$finalSharedElementTransition:Ljava/lang/Object;

    if-eqz v6, :cond_1

    iget-object v7, p0, Landroidx/fragment/app/FragmentTransition$4;->val$impl:Landroidx/fragment/app/FragmentTransitionImpl;

    iget-object v8, p0, Landroidx/fragment/app/FragmentTransition$4;->val$sharedElementsOut:Ljava/util/ArrayList;

    iget-object v9, p0, Landroidx/fragment/app/FragmentTransition$4;->val$sharedElementsIn:Ljava/util/ArrayList;

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v7, v2, v1

    const/4 v1, 0x5

    aput-object v6, v2, v1

    const/4 v1, 0x6

    aput-object v8, v2, v1

    const/4 v1, 0x7

    aput-object v9, v2, v1

    const-string v0, "Ljava/lang/Object;"

    const-string v1, "swapSharedElementTargets"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v7, v6, v8, v9}, Landroidx/fragment/app/FragmentTransitionImpl;->swapSharedElementTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/Object;"

    const-string v1, "swapSharedElementTargets"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v6, p0, Landroidx/fragment/app/FragmentTransition$4;->val$fragments:Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;

    iget-object v7, p0, Landroidx/fragment/app/FragmentTransition$4;->val$enterTransition:Ljava/lang/Object;

    iget-boolean v8, p0, Landroidx/fragment/app/FragmentTransition$4;->val$inIsPop:Z

    invoke-static {v5, v6, v7, v8}, Landroidx/fragment/app/FragmentTransition;->getInEpicenterView(Landroidx/collection/ArrayMap;Landroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Ljava/lang/Object;Z)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v6, p0, Landroidx/fragment/app/FragmentTransition$4;->val$impl:Landroidx/fragment/app/FragmentTransitionImpl;

    iget-object v7, p0, Landroidx/fragment/app/FragmentTransition$4;->val$inEpicenter:Landroid/graphics/Rect;

    invoke-virtual {v6, v5, v7}, Landroidx/fragment/app/FragmentTransitionImpl;->getBoundsOnScreen(Landroid/view/View;Landroid/graphics/Rect;)V

    :cond_1
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/fragment/app/FragmentTransition$4;"

    const-string v1, "run"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
