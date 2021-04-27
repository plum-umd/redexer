.class Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "AnimatedVectorDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnimatedVectorDrawableCompatState"
.end annotation


# instance fields
.field mAnimatorSet:Landroid/animation/AnimatorSet;

.field mAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field mChangingConfigurations:I

.field mTargetNameMap:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Landroid/animation/Animator;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mVectorDrawable:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;Landroid/graphics/drawable/Drawable$Callback;Landroid/content/res/Resources;)V
    .locals 2

    .line 589
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    if-eqz p2, :cond_3

    .line 591
    iget p1, p2, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mChangingConfigurations:I

    iput p1, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mChangingConfigurations:I

    .line 592
    iget-object p1, p2, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mVectorDrawable:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 593
    invoke-virtual {p1}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    if-eqz p4, :cond_0

    .line 595
    invoke-virtual {p1, p4}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    iput-object p1, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mVectorDrawable:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    goto/16 :goto_0

    .line 597
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    iput-object p1, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mVectorDrawable:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    .line 599
    :goto_0
    iget-object p1, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mVectorDrawable:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    invoke-virtual {p1}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    iput-object p1, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mVectorDrawable:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    .line 600
    iget-object p1, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mVectorDrawable:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    invoke-virtual {p1, p3}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 601
    iget-object p1, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mVectorDrawable:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    iget-object p3, p2, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mVectorDrawable:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    invoke-virtual {p3}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->getBounds()Landroid/graphics/Rect;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->setBounds(Landroid/graphics/Rect;)V

    .line 602
    iget-object p1, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mVectorDrawable:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    invoke-virtual {p1, v0}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->setAllowCaching(Z)V

    .line 604
    :cond_1
    iget-object p1, p2, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mAnimators:Ljava/util/ArrayList;

    if-eqz p1, :cond_3

    .line 605
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 606
    move-result p1

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p3, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mAnimators:Ljava/util/ArrayList;

    .line 607
    new-instance p3, Landroidx/collection/ArrayMap;

    invoke-direct {p3, p1}, Landroidx/collection/ArrayMap;-><init>(I)V

    iput-object p3, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mTargetNameMap:Landroidx/collection/ArrayMap;

    :goto_1
    if-ge v0, p1, :cond_2

    .line 609
    iget-object p3, p2, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/animation/Animator;

    .line 610
    invoke-virtual {p3}, Landroid/animation/Animator;->clone()Landroid/animation/Animator;

    .line 611
    move-result-object p4

    iget-object v1, p2, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mTargetNameMap:Landroidx/collection/ArrayMap;

    invoke-virtual {v1, p3}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 612
    iget-object v1, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mVectorDrawable:Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    invoke-virtual {v1, p3}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->getTargetByName(Ljava/lang/String;)Ljava/lang/Object;

    .line 613
    move-result-object v1

    invoke-virtual {p4, v1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 614
    iget-object v1, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 615
    iget-object v1, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mTargetNameMap:Landroidx/collection/ArrayMap;

    invoke-virtual {v1, p4, p3}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    .line 617
    goto/16 :goto_1

    :cond_2
    invoke-virtual {p0}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->setupAnimatorSet()V

    :cond_3
    return-void
.end method


# virtual methods
.method public getChangingConfigurations()I
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;"

    const-string v1, "getChangingConfigurations"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v5, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mChangingConfigurations:I

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;"

    const-string v1, "getChangingConfigurations"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 7

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;"

    const-string v1, "newDrawable"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "No constant state support for SDK < 24."

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;"

    const-string v1, "newDrawable"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v5
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 6

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;"

    const-string v1, "newDrawable"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v5, "No constant state support for SDK < 24."

    invoke-direct {p1, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;"

    const-string v1, "newDrawable"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
.end method

.method public setupAnimatorSet()V
    .locals 7

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;"

    const-string v1, "setupAnimatorSet"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-nez v5, :cond_0

    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v5, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mAnimatorSet:Landroid/animation/AnimatorSet;

    :cond_0
    iget-object v5, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v6, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;->mAnimators:Ljava/util/ArrayList;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    aput-object v6, v2, v1

    const-string v0, "Landroid/animation/AnimatorSet;"

    const-string v1, "playTogether"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/animation/AnimatorSet;"

    const-string v1, "playTogether"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$AnimatedVectorDrawableCompatState;"

    const-string v1, "setupAnimatorSet"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
