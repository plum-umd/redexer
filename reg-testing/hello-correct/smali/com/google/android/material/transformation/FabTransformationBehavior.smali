.class public abstract Lcom/google/android/material/transformation/FabTransformationBehavior;
.super Lcom/google/android/material/transformation/ExpandableTransformationBehavior;
.source "FabTransformationBehavior.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;
    }
.end annotation


# instance fields
.field private final tmpArray:[I

.field private final tmpRect:Landroid/graphics/Rect;

.field private final tmpRectF1:Landroid/graphics/RectF;

.field private final tmpRectF2:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 79
    invoke-direct {p0}, Lcom/google/android/material/transformation/ExpandableTransformationBehavior;-><init>()V

    .line 74
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRect:Landroid/graphics/Rect;

    .line 75
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF1:Landroid/graphics/RectF;

    .line 76
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF2:Landroid/graphics/RectF;

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 77
    iput-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpArray:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 82
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/transformation/ExpandableTransformationBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRect:Landroid/graphics/Rect;

    .line 75
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF1:Landroid/graphics/RectF;

    .line 76
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF2:Landroid/graphics/RectF;

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 77
    iput-object p1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpArray:[I

    return-void
.end method

.method private calculateChildContentContainer(Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 1

    .line 633
    sget v0, Lcom/google/android/material/R$id;->mtrl_child_content_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 635
    invoke-direct {p0, v0}, Lcom/google/android/material/transformation/FabTransformationBehavior;->toViewGroupOrNull(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object p1

    return-object p1

    .line 639
    :cond_0
    instance-of v0, p1, Lcom/google/android/material/transformation/TransformationChildLayout;

    if-nez v0, :cond_2

    instance-of v0, p1, Lcom/google/android/material/transformation/TransformationChildCard;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 645
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/material/transformation/FabTransformationBehavior;->toViewGroupOrNull(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object p1

    return-object p1

    .line 640
    :cond_2
    :goto_0
    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 641
    invoke-direct {p0, p1}, Lcom/google/android/material/transformation/FabTransformationBehavior;->toViewGroupOrNull(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object p1

    return-object p1
.end method

.method private calculateChildVisibleBoundsAtEndOfExpansion(Landroid/view/View;Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;Lcom/google/android/material/animation/MotionTiming;Lcom/google/android/material/animation/MotionTiming;FFFFLandroid/graphics/RectF;)V
    .locals 0

    .line 592
    invoke-direct {p0, p2, p3, p5, p7}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateValueOfAnimationAtEndOfExpansion(Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;Lcom/google/android/material/animation/MotionTiming;FF)F

    move-result p3

    .line 594
    invoke-direct {p0, p2, p4, p6, p8}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateValueOfAnimationAtEndOfExpansion(Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;Lcom/google/android/material/animation/MotionTiming;FF)F

    move-result p2

    .line 597
    iget-object p4, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRect:Landroid/graphics/Rect;

    .line 598
    invoke-virtual {p1, p4}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 599
    iget-object p5, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF1:Landroid/graphics/RectF;

    .line 600
    invoke-virtual {p5, p4}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 603
    iget-object p4, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF2:Landroid/graphics/RectF;

    .line 604
    invoke-direct {p0, p1, p4}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateWindowBounds(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 605
    invoke-virtual {p4, p3, p2}, Landroid/graphics/RectF;->offset(FF)V

    .line 606
    invoke-virtual {p4, p5}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    .line 608
    invoke-virtual {p9, p4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    return-void
.end method

.method private calculateRevealCenterX(Landroid/view/View;Landroid/view/View;Lcom/google/android/material/animation/Positioning;)F
    .locals 2

    .line 556
    iget-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF1:Landroid/graphics/RectF;

    .line 557
    iget-object v1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF2:Landroid/graphics/RectF;

    .line 559
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateWindowBounds(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 560
    invoke-direct {p0, p2, v1}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateWindowBounds(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 562
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateTranslationX(Landroid/view/View;Landroid/view/View;Lcom/google/android/material/animation/Positioning;)F

    move-result p1

    neg-float p1, p1

    const/4 p2, 0x0

    .line 563
    invoke-virtual {v1, p1, p2}, Landroid/graphics/RectF;->offset(FF)V

    .line 565
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result p1

    iget p2, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr p1, p2

    return p1
.end method

.method private calculateRevealCenterY(Landroid/view/View;Landroid/view/View;Lcom/google/android/material/animation/Positioning;)F
    .locals 2

    .line 569
    iget-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF1:Landroid/graphics/RectF;

    .line 570
    iget-object v1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF2:Landroid/graphics/RectF;

    .line 572
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateWindowBounds(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 573
    invoke-direct {p0, p2, v1}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateWindowBounds(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 575
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateTranslationY(Landroid/view/View;Landroid/view/View;Lcom/google/android/material/animation/Positioning;)F

    move-result p1

    neg-float p1, p1

    const/4 p2, 0x0

    .line 576
    invoke-virtual {v1, p2, p1}, Landroid/graphics/RectF;->offset(FF)V

    .line 578
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result p1

    iget p2, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr p1, p2

    return p1
.end method

.method private calculateTranslationX(Landroid/view/View;Landroid/view/View;Lcom/google/android/material/animation/Positioning;)F
    .locals 2

    .line 492
    iget-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF1:Landroid/graphics/RectF;

    .line 493
    iget-object v1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF2:Landroid/graphics/RectF;

    .line 495
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateWindowBounds(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 496
    invoke-direct {p0, p2, v1}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateWindowBounds(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 499
    iget p1, p3, Lcom/google/android/material/animation/Positioning;->gravity:I

    and-int/lit8 p1, p1, 0x7

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    const/4 p2, 0x5

    if-eq p1, p2, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    .line 507
    :cond_0
    iget p1, v1, Landroid/graphics/RectF;->right:F

    iget p2, v0, Landroid/graphics/RectF;->right:F

    goto :goto_0

    .line 501
    :cond_1
    iget p1, v1, Landroid/graphics/RectF;->left:F

    iget p2, v0, Landroid/graphics/RectF;->left:F

    goto :goto_0

    .line 504
    :cond_2
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result p1

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result p2

    :goto_0
    sub-float/2addr p1, p2

    .line 512
    :goto_1
    iget p2, p3, Lcom/google/android/material/animation/Positioning;->xAdjustment:F

    add-float/2addr p1, p2

    return p1
.end method

.method private calculateTranslationY(Landroid/view/View;Landroid/view/View;Lcom/google/android/material/animation/Positioning;)F
    .locals 2

    .line 517
    iget-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF1:Landroid/graphics/RectF;

    .line 518
    iget-object v1, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF2:Landroid/graphics/RectF;

    .line 520
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateWindowBounds(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 521
    invoke-direct {p0, p2, v1}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateWindowBounds(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 524
    iget p1, p3, Lcom/google/android/material/animation/Positioning;->gravity:I

    and-int/lit8 p1, p1, 0x70

    const/16 p2, 0x10

    if-eq p1, p2, :cond_2

    const/16 p2, 0x30

    if-eq p1, p2, :cond_1

    const/16 p2, 0x50

    if-eq p1, p2, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    .line 532
    :cond_0
    iget p1, v1, Landroid/graphics/RectF;->bottom:F

    iget p2, v0, Landroid/graphics/RectF;->bottom:F

    goto :goto_0

    .line 526
    :cond_1
    iget p1, v1, Landroid/graphics/RectF;->top:F

    iget p2, v0, Landroid/graphics/RectF;->top:F

    goto :goto_0

    .line 529
    :cond_2
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result p1

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result p2

    :goto_0
    sub-float/2addr p1, p2

    .line 537
    :goto_1
    iget p2, p3, Lcom/google/android/material/animation/Positioning;->yAdjustment:F

    add-float/2addr p1, p2

    return p1
.end method

.method private calculateValueOfAnimationAtEndOfExpansion(Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;Lcom/google/android/material/animation/MotionTiming;FF)F
    .locals 8

    .line 613
    invoke-virtual {p2}, Lcom/google/android/material/animation/MotionTiming;->getDelay()J

    move-result-wide v0

    .line 614
    invoke-virtual {p2}, Lcom/google/android/material/animation/MotionTiming;->getDuration()J

    move-result-wide v2

    .line 617
    iget-object p1, p1, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Lcom/google/android/material/animation/MotionSpec;

    const-string v4, "expansion"

    invoke-virtual {p1, v4}, Lcom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lcom/google/android/material/animation/MotionTiming;

    move-result-object p1

    .line 618
    invoke-virtual {p1}, Lcom/google/android/material/animation/MotionTiming;->getDelay()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/google/android/material/animation/MotionTiming;->getDuration()J

    move-result-wide v6

    add-long/2addr v4, v6

    const-wide/16 v6, 0x11

    add-long/2addr v4, v6

    sub-long/2addr v4, v0

    long-to-float p1, v4

    long-to-float v0, v2

    div-float/2addr p1, v0

    .line 625
    invoke-virtual {p2}, Lcom/google/android/material/animation/MotionTiming;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object p2

    invoke-interface {p2, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p1

    .line 626
    invoke-static {p3, p4, p1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFF)F

    move-result p1

    return p1
.end method

.method private calculateWindowBounds(Landroid/view/View;Landroid/graphics/RectF;)V
    .locals 3

    .line 543
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 545
    iget-object v0, p0, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpArray:[I

    .line 546
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v1, 0x0

    .line 548
    aget v1, v0, v1

    int-to-float v1, v1

    const/4 v2, 0x1

    aget v0, v0, v2

    int-to-float v0, v0

    invoke-virtual {p2, v1, v0}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 552
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    neg-float v0, v0

    float-to-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p1

    neg-float p1, p1

    float-to-int p1, p1

    int-to-float p1, p1

    invoke-virtual {p2, v0, p1}, Landroid/graphics/RectF;->offset(FF)V

    return-void
.end method

.method private createChildrenFadeAnimation(Landroid/view/View;Landroid/view/View;ZZLcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "ZZ",
            "Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;",
            "Ljava/util/List<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;)V"
        }
    .end annotation

    .line 459
    instance-of p1, p2, Landroid/view/ViewGroup;

    if-nez p1, :cond_0

    return-void

    .line 462
    :cond_0
    instance-of p1, p2, Lcom/google/android/material/circularreveal/CircularRevealWidget;

    if-eqz p1, :cond_1

    sget p1, Lcom/google/android/material/circularreveal/CircularRevealHelper;->STRATEGY:I

    if-nez p1, :cond_1

    return-void

    .line 468
    :cond_1
    invoke-direct {p0, p2}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateChildContentContainer(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    const/4 p2, 0x0

    const/4 p7, 0x0

    const/4 v0, 0x1

    if-eqz p3, :cond_4

    if-nez p4, :cond_3

    .line 477
    sget-object p3, Lcom/google/android/material/animation/ChildrenAlphaProperty;->CHILDREN_ALPHA:Landroid/util/Property;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 479
    :cond_3
    sget-object p2, Lcom/google/android/material/animation/ChildrenAlphaProperty;->CHILDREN_ALPHA:Landroid/util/Property;

    new-array p3, v0, [F

    const/high16 p4, 0x3f800000    # 1.0f

    aput p4, p3, p7

    .line 480
    invoke-static {p1, p2, p3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    goto :goto_0

    .line 482
    :cond_4
    sget-object p3, Lcom/google/android/material/animation/ChildrenAlphaProperty;->CHILDREN_ALPHA:Landroid/util/Property;

    new-array p4, v0, [F

    aput p2, p4, p7

    .line 483
    invoke-static {p1, p3, p4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 486
    :goto_0
    iget-object p2, p5, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Lcom/google/android/material/animation/MotionSpec;

    const-string p3, "contentFade"

    invoke-virtual {p2, p3}, Lcom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lcom/google/android/material/animation/MotionTiming;

    move-result-object p2

    .line 487
    invoke-virtual {p2, p1}, Lcom/google/android/material/animation/MotionTiming;->apply(Landroid/animation/Animator;)V

    .line 488
    invoke-interface {p6, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private createColorAnimation(Landroid/view/View;Landroid/view/View;ZZLcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "ZZ",
            "Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;",
            "Ljava/util/List<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;)V"
        }
    .end annotation

    .line 419
    instance-of p7, p2, Lcom/google/android/material/circularreveal/CircularRevealWidget;

    if-nez p7, :cond_0

    return-void

    .line 422
    :cond_0
    check-cast p2, Lcom/google/android/material/circularreveal/CircularRevealWidget;

    .line 424
    invoke-direct {p0, p1}, Lcom/google/android/material/transformation/FabTransformationBehavior;->getBackgroundTint(Landroid/view/View;)I

    move-result p1

    const p7, 0xffffff

    and-int/2addr p7, p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_2

    if-nez p4, :cond_1

    .line 430
    invoke-interface {p2, p1}, Lcom/google/android/material/circularreveal/CircularRevealWidget;->setCircularRevealScrimColor(I)V

    .line 432
    :cond_1
    sget-object p1, Lcom/google/android/material/circularreveal/CircularRevealWidget$CircularRevealScrimColorProperty;->CIRCULAR_REVEAL_SCRIM_COLOR:Landroid/util/Property;

    new-array p3, v1, [I

    aput p7, p3, v0

    .line 433
    invoke-static {p2, p1, p3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    goto :goto_0

    .line 438
    :cond_2
    sget-object p3, Lcom/google/android/material/circularreveal/CircularRevealWidget$CircularRevealScrimColorProperty;->CIRCULAR_REVEAL_SCRIM_COLOR:Landroid/util/Property;

    new-array p4, v1, [I

    aput p1, p4, v0

    .line 439
    invoke-static {p2, p3, p4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 445
    :goto_0
    invoke-static {}, Lcom/google/android/material/animation/ArgbEvaluatorCompat;->getInstance()Lcom/google/android/material/animation/ArgbEvaluatorCompat;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 446
    iget-object p2, p5, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Lcom/google/android/material/animation/MotionSpec;

    const-string p3, "color"

    invoke-virtual {p2, p3}, Lcom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lcom/google/android/material/animation/MotionTiming;

    move-result-object p2

    .line 447
    invoke-virtual {p2, p1}, Lcom/google/android/material/animation/MotionTiming;->apply(Landroid/animation/Animator;)V

    .line 448
    invoke-interface {p6, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private createElevationAnimation(Landroid/view/View;Landroid/view/View;ZZLcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "ZZ",
            "Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;",
            "Ljava/util/List<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;)V"
        }
    .end annotation

    .line 187
    invoke-static {p2}, Landroidx/core/view/ViewCompat;->getElevation(Landroid/view/View;)F

    move-result p7

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getElevation(Landroid/view/View;)F

    move-result p1

    sub-float/2addr p7, p1

    const/4 p1, 0x0

    const/4 v0, 0x1

    if-eqz p3, :cond_1

    if-nez p4, :cond_0

    neg-float p3, p7

    .line 192
    invoke-virtual {p2, p3}, Landroid/view/View;->setTranslationZ(F)V

    .line 194
    :cond_0
    sget-object p3, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    new-array p4, v0, [F

    const/4 p7, 0x0

    aput p7, p4, p1

    invoke-static {p2, p3, p4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    goto :goto_0

    .line 196
    :cond_1
    sget-object p3, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    new-array p4, v0, [F

    neg-float p7, p7

    aput p7, p4, p1

    invoke-static {p2, p3, p4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 199
    :goto_0
    iget-object p2, p5, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Lcom/google/android/material/animation/MotionSpec;

    const-string p3, "elevation"

    invoke-virtual {p2, p3}, Lcom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lcom/google/android/material/animation/MotionTiming;

    move-result-object p2

    .line 200
    invoke-virtual {p2, p1}, Lcom/google/android/material/animation/MotionTiming;->apply(Landroid/animation/Animator;)V

    .line 201
    invoke-interface {p6, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private createExpansionAnimation(Landroid/view/View;Landroid/view/View;ZZLcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;FFLjava/util/List;Ljava/util/List;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "ZZ",
            "Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;",
            "FF",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;",
            "Ljava/util/List<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v12, p0

    move-object/from16 v0, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p5

    .line 334
    instance-of v1, v8, Lcom/google/android/material/circularreveal/CircularRevealWidget;

    if-nez v1, :cond_0

    return-void

    .line 337
    :cond_0
    move-object v13, v8

    check-cast v13, Lcom/google/android/material/circularreveal/CircularRevealWidget;

    .line 339
    iget-object v1, v9, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->positioning:Lcom/google/android/material/animation/Positioning;

    invoke-direct {v12, v0, v8, v1}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateRevealCenterX(Landroid/view/View;Landroid/view/View;Lcom/google/android/material/animation/Positioning;)F

    move-result v1

    .line 340
    iget-object v2, v9, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->positioning:Lcom/google/android/material/animation/Positioning;

    invoke-direct {v12, v0, v8, v2}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateRevealCenterY(Landroid/view/View;Landroid/view/View;Lcom/google/android/material/animation/Positioning;)F

    move-result v10

    .line 341
    check-cast v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iget-object v2, v12, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getContentRect(Landroid/graphics/Rect;)Z

    .line 342
    iget-object v0, v12, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float v11, v0, v2

    .line 345
    iget-object v0, v9, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Lcom/google/android/material/animation/MotionSpec;

    const-string v2, "expansion"

    invoke-virtual {v0, v2}, Lcom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lcom/google/android/material/animation/MotionTiming;

    move-result-object v14

    if-eqz p3, :cond_3

    if-nez p4, :cond_1

    .line 349
    new-instance v0, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    invoke-direct {v0, v1, v10, v11}, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;-><init>(FFF)V

    invoke-interface {v13, v0}, Lcom/google/android/material/circularreveal/CircularRevealWidget;->setRevealInfo(Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;)V

    :cond_1
    if-eqz p4, :cond_2

    .line 353
    invoke-interface {v13}, Lcom/google/android/material/circularreveal/CircularRevealWidget;->getRevealInfo()Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    move-result-object v0

    iget v0, v0, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->radius:F

    move v11, v0

    :cond_2
    const/4 v4, 0x0

    const/4 v5, 0x0

    move v2, v1

    move v3, v10

    move/from16 v6, p6

    move/from16 v7, p7

    .line 355
    invoke-static/range {v2 .. v7}, Lcom/google/android/material/math/MathUtils;->distanceToFurthestCorner(FFFFFF)F

    move-result v0

    .line 359
    invoke-static {v13, v1, v10, v0}, Lcom/google/android/material/circularreveal/CircularRevealCompat;->createCircularReveal(Lcom/google/android/material/circularreveal/CircularRevealWidget;FFF)Landroid/animation/Animator;

    move-result-object v9

    .line 361
    new-instance v0, Lcom/google/android/material/transformation/FabTransformationBehavior$4;

    invoke-direct {v0, v12, v13}, Lcom/google/android/material/transformation/FabTransformationBehavior$4;-><init>(Lcom/google/android/material/transformation/FabTransformationBehavior;Lcom/google/android/material/circularreveal/CircularRevealWidget;)V

    invoke-virtual {v9, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 375
    invoke-virtual {v14}, Lcom/google/android/material/animation/MotionTiming;->getDelay()J

    move-result-wide v2

    float-to-int v4, v1

    float-to-int v5, v10

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move v6, v11

    move-object/from16 v7, p8

    .line 373
    invoke-direct/range {v0 .. v7}, Lcom/google/android/material/transformation/FabTransformationBehavior;->createPreFillRadialExpansion(Landroid/view/View;JIIFLjava/util/List;)V

    goto :goto_0

    .line 382
    :cond_3
    invoke-interface {v13}, Lcom/google/android/material/circularreveal/CircularRevealWidget;->getRevealInfo()Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    move-result-object v0

    iget v6, v0, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->radius:F

    .line 385
    invoke-static {v13, v1, v10, v11}, Lcom/google/android/material/circularreveal/CircularRevealCompat;->createCircularReveal(Lcom/google/android/material/circularreveal/CircularRevealWidget;FFF)Landroid/animation/Animator;

    move-result-object v15

    .line 390
    invoke-virtual {v14}, Lcom/google/android/material/animation/MotionTiming;->getDelay()J

    move-result-wide v2

    float-to-int v7, v1

    float-to-int v10, v10

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move v4, v7

    move v5, v10

    move/from16 v16, v7

    move-object/from16 v7, p8

    .line 388
    invoke-direct/range {v0 .. v7}, Lcom/google/android/material/transformation/FabTransformationBehavior;->createPreFillRadialExpansion(Landroid/view/View;JIIFLjava/util/List;)V

    .line 397
    invoke-virtual {v14}, Lcom/google/android/material/animation/MotionTiming;->getDelay()J

    move-result-wide v2

    .line 398
    invoke-virtual {v14}, Lcom/google/android/material/animation/MotionTiming;->getDuration()J

    move-result-wide v4

    iget-object v0, v9, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Lcom/google/android/material/animation/MotionSpec;

    .line 399
    invoke-virtual {v0}, Lcom/google/android/material/animation/MotionSpec;->getTotalDuration()J

    move-result-wide v6

    move-object/from16 v0, p0

    move/from16 v8, v16

    move v9, v10

    move v10, v11

    move-object/from16 v11, p8

    .line 395
    invoke-direct/range {v0 .. v11}, Lcom/google/android/material/transformation/FabTransformationBehavior;->createPostFillRadialExpansion(Landroid/view/View;JJJIIFLjava/util/List;)V

    move-object v9, v15

    .line 406
    :goto_0
    invoke-virtual {v14, v9}, Lcom/google/android/material/animation/MotionTiming;->apply(Landroid/animation/Animator;)V

    move-object/from16 v0, p8

    .line 407
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 408
    invoke-static {v13}, Lcom/google/android/material/circularreveal/CircularRevealCompat;->createCircularRevealListener(Lcom/google/android/material/circularreveal/CircularRevealWidget;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v0

    move-object/from16 v1, p9

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private createIconFadeAnimation(Landroid/view/View;Landroid/view/View;ZZLcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "ZZ",
            "Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;",
            "Ljava/util/List<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;)V"
        }
    .end annotation

    .line 272
    instance-of v0, p2, Lcom/google/android/material/circularreveal/CircularRevealWidget;

    if-eqz v0, :cond_4

    instance-of v0, p1, Landroid/widget/ImageView;

    if-nez v0, :cond_0

    goto :goto_1

    .line 276
    :cond_0
    move-object v0, p2

    check-cast v0, Lcom/google/android/material/circularreveal/CircularRevealWidget;

    .line 277
    check-cast p1, Landroid/widget/ImageView;

    .line 278
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 283
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    const/16 v1, 0xff

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p3, :cond_3

    if-nez p4, :cond_2

    .line 289
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 291
    :cond_2
    sget-object p3, Lcom/google/android/material/animation/DrawableAlphaProperty;->DRAWABLE_ALPHA_COMPAT:Landroid/util/Property;

    new-array p4, v2, [I

    aput v3, p4, v3

    invoke-static {p1, p3, p4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object p3

    goto :goto_0

    .line 293
    :cond_3
    sget-object p3, Lcom/google/android/material/animation/DrawableAlphaProperty;->DRAWABLE_ALPHA_COMPAT:Landroid/util/Property;

    new-array p4, v2, [I

    aput v1, p4, v3

    invoke-static {p1, p3, p4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object p3

    .line 296
    :goto_0
    new-instance p4, Lcom/google/android/material/transformation/FabTransformationBehavior$2;

    invoke-direct {p4, p0, p2}, Lcom/google/android/material/transformation/FabTransformationBehavior$2;-><init>(Lcom/google/android/material/transformation/FabTransformationBehavior;Landroid/view/View;)V

    invoke-virtual {p3, p4}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 306
    iget-object p2, p5, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Lcom/google/android/material/animation/MotionSpec;

    const-string p4, "iconFade"

    invoke-virtual {p2, p4}, Lcom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lcom/google/android/material/animation/MotionTiming;

    move-result-object p2

    .line 307
    invoke-virtual {p2, p3}, Lcom/google/android/material/animation/MotionTiming;->apply(Landroid/animation/Animator;)V

    .line 308
    invoke-interface {p6, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 309
    new-instance p2, Lcom/google/android/material/transformation/FabTransformationBehavior$3;

    invoke-direct {p2, p0, v0, p1}, Lcom/google/android/material/transformation/FabTransformationBehavior$3;-><init>(Lcom/google/android/material/transformation/FabTransformationBehavior;Lcom/google/android/material/circularreveal/CircularRevealWidget;Landroid/graphics/drawable/Drawable;)V

    invoke-interface {p7, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_1
    return-void
.end method

.method private createPostFillRadialExpansion(Landroid/view/View;JJJIIFLjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "JJJIIF",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .line 695
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    add-long/2addr p2, p4

    cmp-long p4, p2, p6

    if-gez p4, :cond_0

    .line 699
    invoke-static {p1, p8, p9, p10, p10}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object p1

    .line 701
    invoke-virtual {p1, p2, p3}, Landroid/animation/Animator;->setStartDelay(J)V

    sub-long/2addr p6, p2

    .line 702
    invoke-virtual {p1, p6, p7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 703
    invoke-interface {p11, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private createPreFillRadialExpansion(Landroid/view/View;JIIFLjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "JIIF",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .line 673
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_0

    .line 677
    invoke-static {p1, p4, p5, p6, p6}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object p1

    .line 679
    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 680
    invoke-virtual {p1, p2, p3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 681
    invoke-interface {p7, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private createTranslationAnimation(Landroid/view/View;Landroid/view/View;ZZLcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;Ljava/util/List;Ljava/util/List;Landroid/graphics/RectF;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "ZZ",
            "Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;",
            "Ljava/util/List<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;",
            "Landroid/graphics/RectF;",
            ")V"
        }
    .end annotation

    move-object/from16 v10, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p5

    move-object/from16 v11, p6

    .line 213
    iget-object v3, v2, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->positioning:Lcom/google/android/material/animation/Positioning;

    invoke-direct {v10, v0, v1, v3}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateTranslationX(Landroid/view/View;Landroid/view/View;Lcom/google/android/material/animation/Positioning;)F

    move-result v3

    .line 214
    iget-object v4, v2, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->positioning:Lcom/google/android/material/animation/Positioning;

    invoke-direct {v10, v0, v1, v4}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateTranslationY(Landroid/view/View;Landroid/view/View;Lcom/google/android/material/animation/Positioning;)F

    move-result v0

    const/4 v4, 0x0

    cmpl-float v5, v3, v4

    if-eqz v5, :cond_4

    cmpl-float v5, v0, v4

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    cmpg-float v5, v0, v4

    if-ltz v5, :cond_2

    :cond_1
    if-nez p3, :cond_3

    cmpl-float v5, v0, v4

    if-lez v5, :cond_3

    .line 227
    :cond_2
    iget-object v5, v2, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Lcom/google/android/material/animation/MotionSpec;

    const-string v6, "translationXCurveUpwards"

    invoke-virtual {v5, v6}, Lcom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lcom/google/android/material/animation/MotionTiming;

    move-result-object v5

    .line 228
    iget-object v6, v2, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Lcom/google/android/material/animation/MotionSpec;

    const-string v7, "translationYCurveUpwards"

    invoke-virtual {v6, v7}, Lcom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lcom/google/android/material/animation/MotionTiming;

    move-result-object v6

    goto :goto_1

    .line 231
    :cond_3
    iget-object v5, v2, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Lcom/google/android/material/animation/MotionSpec;

    const-string v6, "translationXCurveDownwards"

    invoke-virtual {v5, v6}, Lcom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lcom/google/android/material/animation/MotionTiming;

    move-result-object v5

    .line 232
    iget-object v6, v2, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Lcom/google/android/material/animation/MotionSpec;

    const-string v7, "translationYCurveDownwards"

    invoke-virtual {v6, v7}, Lcom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lcom/google/android/material/animation/MotionTiming;

    move-result-object v6

    goto :goto_1

    .line 223
    :cond_4
    :goto_0
    iget-object v5, v2, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Lcom/google/android/material/animation/MotionSpec;

    const-string v6, "translationXLinear"

    invoke-virtual {v5, v6}, Lcom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lcom/google/android/material/animation/MotionTiming;

    move-result-object v5

    .line 224
    iget-object v6, v2, Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;->timings:Lcom/google/android/material/animation/MotionSpec;

    const-string v7, "translationYLinear"

    invoke-virtual {v6, v7}, Lcom/google/android/material/animation/MotionSpec;->getTiming(Ljava/lang/String;)Lcom/google/android/material/animation/MotionTiming;

    move-result-object v6

    :goto_1
    move-object v12, v5

    move-object v13, v6

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz p3, :cond_6

    if-nez p4, :cond_5

    neg-float v7, v3

    .line 237
    invoke-virtual {v1, v7}, Landroid/view/View;->setTranslationX(F)V

    neg-float v7, v0

    .line 238
    invoke-virtual {v1, v7}, Landroid/view/View;->setTranslationY(F)V

    .line 240
    :cond_5
    sget-object v7, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v8, v6, [F

    aput v4, v8, v5

    invoke-static {v1, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v14

    .line 241
    sget-object v7, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v6, v6, [F

    aput v4, v6, v5

    invoke-static {v1, v7, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v15

    neg-float v5, v3

    neg-float v6, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p5

    move-object v3, v12

    move-object v4, v13

    move-object/from16 v9, p8

    .line 243
    invoke-direct/range {v0 .. v9}, Lcom/google/android/material/transformation/FabTransformationBehavior;->calculateChildVisibleBoundsAtEndOfExpansion(Landroid/view/View;Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;Lcom/google/android/material/animation/MotionTiming;Lcom/google/android/material/animation/MotionTiming;FFFFLandroid/graphics/RectF;)V

    goto :goto_2

    .line 254
    :cond_6
    sget-object v2, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v4, v6, [F

    neg-float v3, v3

    aput v3, v4, v5

    invoke-static {v1, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v14

    .line 255
    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v3, v6, [F

    neg-float v0, v0

    aput v0, v3, v5

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v15

    .line 258
    :goto_2
    invoke-virtual {v12, v14}, Lcom/google/android/material/animation/MotionTiming;->apply(Landroid/animation/Animator;)V

    .line 259
    invoke-virtual {v13, v15}, Lcom/google/android/material/animation/MotionTiming;->apply(Landroid/animation/Animator;)V

    .line 260
    invoke-interface {v11, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    invoke-interface {v11, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private getBackgroundTint(Landroid/view/View;)I
    .locals 2

    .line 658
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getBackgroundTintList(Landroid/view/View;)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 660
    invoke-virtual {p1}, Landroid/view/View;->getDrawableState()[I

    move-result-object p1

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private toViewGroupOrNull(Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 1

    .line 650
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 651
    check-cast p1, Landroid/view/ViewGroup;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public layoutDependsOn(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .line 88
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_2

    .line 93
    instance-of p1, p3, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 94
    check-cast p3, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 95
    invoke-virtual {p3}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getExpandedComponentIdHint()I

    move-result p1

    if-eqz p1, :cond_0

    .line 96
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p2

    if-ne p1, p2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0

    .line 89
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This behavior cannot be attached to a GONE view. Set the view to INVISIBLE instead."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onAttachedToLayoutParams(Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;)V
    .locals 1

    .line 104
    iget v0, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->dodgeInsetEdges:I

    if-nez v0, :cond_0

    const/16 v0, 0x50

    .line 107
    iput v0, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->dodgeInsetEdges:I

    :cond_0
    return-void
.end method

.method protected onCreateExpandedStateChangeAnimation(Landroid/view/View;Landroid/view/View;ZZ)Landroid/animation/AnimatorSet;
    .locals 15

    move-object v10, p0

    move/from16 v11, p3

    .line 115
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, v11}, Lcom/google/android/material/transformation/FabTransformationBehavior;->onCreateMotionSpec(Landroid/content/Context;Z)Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;

    move-result-object v12

    .line 117
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 118
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 120
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object v5, v12

    move-object v6, v13

    move-object v7, v14

    .line 121
    invoke-direct/range {v0 .. v7}, Lcom/google/android/material/transformation/FabTransformationBehavior;->createElevationAnimation(Landroid/view/View;Landroid/view/View;ZZLcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;Ljava/util/List;Ljava/util/List;)V

    .line 125
    :cond_0
    iget-object v9, v10, Lcom/google/android/material/transformation/FabTransformationBehavior;->tmpRectF1:Landroid/graphics/RectF;

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object v5, v12

    move-object v6, v13

    move-object v7, v14

    move-object v8, v9

    .line 126
    invoke-direct/range {v0 .. v8}, Lcom/google/android/material/transformation/FabTransformationBehavior;->createTranslationAnimation(Landroid/view/View;Landroid/view/View;ZZLcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;Ljava/util/List;Ljava/util/List;Landroid/graphics/RectF;)V

    .line 128
    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v8

    .line 129
    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v9

    .line 131
    invoke-direct/range {v0 .. v7}, Lcom/google/android/material/transformation/FabTransformationBehavior;->createIconFadeAnimation(Landroid/view/View;Landroid/view/View;ZZLcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;Ljava/util/List;Ljava/util/List;)V

    move v6, v8

    move v7, v9

    move-object v8, v13

    move-object v9, v14

    .line 132
    invoke-direct/range {v0 .. v9}, Lcom/google/android/material/transformation/FabTransformationBehavior;->createExpansionAnimation(Landroid/view/View;Landroid/view/View;ZZLcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;FFLjava/util/List;Ljava/util/List;)V

    move-object v6, v13

    move-object v7, v14

    .line 142
    invoke-direct/range {v0 .. v7}, Lcom/google/android/material/transformation/FabTransformationBehavior;->createColorAnimation(Landroid/view/View;Landroid/view/View;ZZLcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;Ljava/util/List;Ljava/util/List;)V

    .line 143
    invoke-direct/range {v0 .. v7}, Lcom/google/android/material/transformation/FabTransformationBehavior;->createChildrenFadeAnimation(Landroid/view/View;Landroid/view/View;ZZLcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;Ljava/util/List;Ljava/util/List;)V

    .line 146
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 147
    invoke-static {v0, v13}, Lcom/google/android/material/animation/AnimatorSetCompat;->playTogether(Landroid/animation/AnimatorSet;Ljava/util/List;)V

    .line 148
    new-instance v1, Lcom/google/android/material/transformation/FabTransformationBehavior$1;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct {v1, p0, v11, v3, v2}, Lcom/google/android/material/transformation/FabTransformationBehavior$1;-><init>(Lcom/google/android/material/transformation/FabTransformationBehavior;ZLandroid/view/View;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const/4 v1, 0x0

    .line 170
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_1

    .line 171
    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method protected abstract onCreateMotionSpec(Landroid/content/Context;Z)Lcom/google/android/material/transformation/FabTransformationBehavior$FabTransformationSpec;
.end method
