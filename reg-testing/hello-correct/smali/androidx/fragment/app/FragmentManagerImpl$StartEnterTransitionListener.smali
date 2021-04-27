.class Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;
.super Ljava/lang/Object;
.source "FragmentManager.java"

# interfaces
.implements Landroidx/fragment/app/Fragment$OnStartEnterTransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/FragmentManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StartEnterTransitionListener"
.end annotation


# instance fields
.field final mIsBack:Z

.field private mNumPostponed:I

.field final mRecord:Landroidx/fragment/app/BackStackRecord;


# direct methods
.method constructor <init>(Landroidx/fragment/app/BackStackRecord;Z)V
    .locals 0

    .line 3873
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3874
    iput-boolean p2, p0, Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;->mIsBack:Z

    .line 3875
    iput-object p1, p0, Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;->mRecord:Landroidx/fragment/app/BackStackRecord;

    return-void
.end method


# virtual methods
.method public cancelTransaction()V
    .locals 9

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;"

    const-string v1, "cancelTransaction"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;->mRecord:Landroidx/fragment/app/BackStackRecord;

    iget-object v5, v5, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManagerImpl;

    iget-object v6, p0, Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;->mRecord:Landroidx/fragment/app/BackStackRecord;

    iget-boolean v7, p0, Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;->mIsBack:Z

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8, v8}, Landroidx/fragment/app/FragmentManagerImpl;->completeExecute(Landroidx/fragment/app/BackStackRecord;ZZZ)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;"

    const-string v1, "cancelTransaction"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public completeTransaction()V
    .locals 12

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;"

    const-string v1, "completeTransaction"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v5, p0, Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;->mNumPostponed:I

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-lez v5, :cond_0

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    iget-object v8, p0, Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;->mRecord:Landroidx/fragment/app/BackStackRecord;

    iget-object v8, v8, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManagerImpl;

    iget-object v9, v8, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v9, v2, v1

    const-string v0, "Ljava/util/ArrayList;"

    const-string v1, "size"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v9 .. v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/util/ArrayList;"

    const-string v1, "size"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    if-ge v6, v9, :cond_2

    iget-object v10, v8, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v10, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v6 .. v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/util/ArrayList;"

    const-string v1, "get"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v10, v2, v1

    const-string v0, "Ljava/util/ArrayList;"

    const-string v1, "get"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    check-cast v10, Landroidx/fragment/app/Fragment;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroidx/fragment/app/Fragment;->setOnStartEnterTransitionListener(Landroidx/fragment/app/Fragment$OnStartEnterTransitionListener;)V

    if-eqz v5, :cond_1

    invoke-virtual {v10}, Landroidx/fragment/app/Fragment;->isPostponed()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-virtual {v10}, Landroidx/fragment/app/Fragment;->startPostponedEnterTransition()V

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    :cond_2
    iget-object v6, p0, Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;->mRecord:Landroidx/fragment/app/BackStackRecord;

    iget-object v6, v6, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManagerImpl;

    iget-object v8, p0, Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;->mRecord:Landroidx/fragment/app/BackStackRecord;

    iget-boolean v9, p0, Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;->mIsBack:Z

    xor-int/2addr v5, v7

    invoke-virtual {v6, v8, v9, v5, v7}, Landroidx/fragment/app/FragmentManagerImpl;->completeExecute(Landroidx/fragment/app/BackStackRecord;ZZZ)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;"

    const-string v1, "completeTransaction"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public isReady()Z
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;"

    const-string v1, "isReady"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v5, p0, Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;->mNumPostponed:I

    if-nez v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;"

    const-string v1, "isReady"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5
.end method

.method public onStartEnterTransition()V
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;"

    const-string v1, "onStartEnterTransition"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v5, p0, Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;->mNumPostponed:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;->mNumPostponed:I

    iget v5, p0, Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;->mNumPostponed:I

    if-eqz v5, :cond_0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;"

    const-string v1, "onStartEnterTransition"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v5, p0, Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;->mRecord:Landroidx/fragment/app/BackStackRecord;

    iget-object v5, v5, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v5}, Landroidx/fragment/app/FragmentManagerImpl;->scheduleCommit()V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;"

    const-string v1, "onStartEnterTransition"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public startListening()V
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;"

    const-string v1, "startListening"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v5, p0, Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;->mNumPostponed:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;->mNumPostponed:I

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;"

    const-string v1, "startListening"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
