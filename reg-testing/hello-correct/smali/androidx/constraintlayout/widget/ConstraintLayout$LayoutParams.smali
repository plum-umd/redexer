.class public Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "ConstraintLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/widget/ConstraintLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams$Table;
    }
.end annotation


# static fields
.field public static final BASELINE:I = 0x5

.field public static final BOTTOM:I = 0x4

.field public static final CHAIN_PACKED:I = 0x2

.field public static final CHAIN_SPREAD:I = 0x0

.field public static final CHAIN_SPREAD_INSIDE:I = 0x1

.field public static final END:I = 0x7

.field public static final HORIZONTAL:I = 0x0

.field public static final LEFT:I = 0x1

.field public static final MATCH_CONSTRAINT:I = 0x0

.field public static final MATCH_CONSTRAINT_PERCENT:I = 0x2

.field public static final MATCH_CONSTRAINT_SPREAD:I = 0x0

.field public static final MATCH_CONSTRAINT_WRAP:I = 0x1

.field public static final PARENT_ID:I = 0x0

.field public static final RIGHT:I = 0x2

.field public static final START:I = 0x6

.field public static final TOP:I = 0x3

.field public static final UNSET:I = -0x1

.field public static final VERTICAL:I = 0x1


# instance fields
.field public baselineToBaseline:I

.field public bottomToBottom:I

.field public bottomToTop:I

.field public circleAngle:F

.field public circleConstraint:I

.field public circleRadius:I

.field public constrainedHeight:Z

.field public constrainedWidth:Z

.field public dimensionRatio:Ljava/lang/String;

.field dimensionRatioSide:I

.field dimensionRatioValue:F

.field public editorAbsoluteX:I

.field public editorAbsoluteY:I

.field public endToEnd:I

.field public endToStart:I

.field public goneBottomMargin:I

.field public goneEndMargin:I

.field public goneLeftMargin:I

.field public goneRightMargin:I

.field public goneStartMargin:I

.field public goneTopMargin:I

.field public guideBegin:I

.field public guideEnd:I

.field public guidePercent:F

.field public helped:Z

.field public horizontalBias:F

.field public horizontalChainStyle:I

.field horizontalDimensionFixed:Z

.field public horizontalWeight:F

.field isGuideline:Z

.field isHelper:Z

.field isInPlaceholder:Z

.field public leftToLeft:I

.field public leftToRight:I

.field public matchConstraintDefaultHeight:I

.field public matchConstraintDefaultWidth:I

.field public matchConstraintMaxHeight:I

.field public matchConstraintMaxWidth:I

.field public matchConstraintMinHeight:I

.field public matchConstraintMinWidth:I

.field public matchConstraintPercentHeight:F

.field public matchConstraintPercentWidth:F

.field needsBaseline:Z

.field public orientation:I

.field resolveGoneLeftMargin:I

.field resolveGoneRightMargin:I

.field resolvedGuideBegin:I

.field resolvedGuideEnd:I

.field resolvedGuidePercent:F

.field resolvedHorizontalBias:F

.field resolvedLeftToLeft:I

.field resolvedLeftToRight:I

.field resolvedRightToLeft:I

.field resolvedRightToRight:I

.field public rightToLeft:I

.field public rightToRight:I

.field public startToEnd:I

.field public startToStart:I

.field public topToBottom:I

.field public topToTop:I

.field public verticalBias:F

.field public verticalChainStyle:I

.field verticalDimensionFixed:Z

.field public verticalWeight:F

.field widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;


# direct methods
.method public constructor <init>(II)V
    .locals 4

    .line 3040
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    const/4 p1, -0x1

    .line 2166
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guideBegin:I

    .line 2171
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guideEnd:I

    const/high16 p2, -0x40800000    # -1.0f

    .line 2176
    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guidePercent:F

    .line 2181
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    .line 2186
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToRight:I

    .line 2191
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToLeft:I

    .line 2196
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    .line 2201
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    .line 2206
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    .line 2211
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    .line 2216
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 2221
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    .line 2226
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleConstraint:I

    const/4 v0, 0x0

    .line 2231
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleRadius:I

    const/4 v1, 0x0

    .line 2236
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleAngle:F

    .line 2241
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToEnd:I

    .line 2246
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    .line 2251
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToStart:I

    .line 2256
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 2261
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneLeftMargin:I

    .line 2266
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneTopMargin:I

    .line 2271
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneRightMargin:I

    .line 2276
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneBottomMargin:I

    .line 2281
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneStartMargin:I

    .line 2286
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneEndMargin:I

    const/high16 v2, 0x3f000000    # 0.5f

    .line 2291
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalBias:F

    .line 2296
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalBias:F

    const/4 v3, 0x0

    .line 2301
    iput-object v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    .line 2306
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->dimensionRatioValue:F

    const/4 v1, 0x1

    .line 2311
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->dimensionRatioSide:I

    .line 2317
    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalWeight:F

    .line 2323
    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalWeight:F

    .line 2335
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalChainStyle:I

    .line 2347
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalChainStyle:I

    .line 2360
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    .line 2373
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    .line 2379
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMinWidth:I

    .line 2385
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMinHeight:I

    .line 2391
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I

    .line 2397
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I

    const/high16 p2, 0x3f800000    # 1.0f

    .line 2402
    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintPercentWidth:F

    .line 2407
    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintPercentHeight:F

    .line 2413
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    .line 2419
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    .line 2421
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->orientation:I

    .line 2430
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constrainedWidth:Z

    .line 2439
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constrainedHeight:Z

    .line 2442
    iput-boolean v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    .line 2443
    iput-boolean v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    .line 2445
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->needsBaseline:Z

    .line 2446
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->isGuideline:Z

    .line 2447
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->isHelper:Z

    .line 2448
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->isInPlaceholder:Z

    .line 2450
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedLeftToLeft:I

    .line 2451
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedLeftToRight:I

    .line 2452
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedRightToLeft:I

    .line 2453
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedRightToRight:I

    .line 2454
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolveGoneLeftMargin:I

    .line 2455
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolveGoneRightMargin:I

    .line 2456
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedHorizontalBias:F

    .line 2462
    new-instance p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-direct {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 2470
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->helped:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9

    .line 2649
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    .line 2166
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guideBegin:I

    .line 2171
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guideEnd:I

    const/high16 v1, -0x40800000    # -1.0f

    .line 2176
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guidePercent:F

    .line 2181
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    .line 2186
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToRight:I

    .line 2191
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToLeft:I

    .line 2196
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    .line 2201
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    .line 2206
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    .line 2211
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    .line 2216
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 2221
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    .line 2226
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleConstraint:I

    const/4 v2, 0x0

    .line 2231
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleRadius:I

    const/4 v3, 0x0

    .line 2236
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleAngle:F

    .line 2241
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToEnd:I

    .line 2246
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    .line 2251
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToStart:I

    .line 2256
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 2261
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneLeftMargin:I

    .line 2266
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneTopMargin:I

    .line 2271
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneRightMargin:I

    .line 2276
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneBottomMargin:I

    .line 2281
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneStartMargin:I

    .line 2286
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneEndMargin:I

    const/high16 v4, 0x3f000000    # 0.5f

    .line 2291
    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalBias:F

    .line 2296
    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalBias:F

    const/4 v5, 0x0

    .line 2301
    iput-object v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    .line 2306
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->dimensionRatioValue:F

    const/4 v5, 0x1

    .line 2311
    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->dimensionRatioSide:I

    .line 2317
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalWeight:F

    .line 2323
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalWeight:F

    .line 2335
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalChainStyle:I

    .line 2347
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalChainStyle:I

    .line 2360
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    .line 2373
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    .line 2379
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMinWidth:I

    .line 2385
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMinHeight:I

    .line 2391
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I

    .line 2397
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 2402
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintPercentWidth:F

    .line 2407
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintPercentHeight:F

    .line 2413
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    .line 2419
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    .line 2421
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->orientation:I

    .line 2430
    iput-boolean v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constrainedWidth:Z

    .line 2439
    iput-boolean v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constrainedHeight:Z

    .line 2442
    iput-boolean v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    .line 2443
    iput-boolean v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    .line 2445
    iput-boolean v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->needsBaseline:Z

    .line 2446
    iput-boolean v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->isGuideline:Z

    .line 2447
    iput-boolean v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->isHelper:Z

    .line 2448
    iput-boolean v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->isInPlaceholder:Z

    .line 2450
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedLeftToLeft:I

    .line 2451
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedLeftToRight:I

    .line 2452
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedRightToLeft:I

    .line 2453
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedRightToRight:I

    .line 2454
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolveGoneLeftMargin:I

    .line 2455
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolveGoneRightMargin:I

    .line 2456
    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedHorizontalBias:F

    .line 2462
    new-instance v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-direct {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 2470
    iput-boolean v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->helped:Z

    .line 2650
    sget-object v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 2651
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_6

    .line 2653
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v4

    .line 2654
    sget-object v6, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams$Table;->map:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    const-string v7, "ConstraintLayout"

    const/4 v8, -0x2

    packed-switch v6, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_3

    .line 2746
    :pswitch_1
    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    goto/16 :goto_3

    .line 2742
    :pswitch_2
    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    goto/16 :goto_3

    .line 2892
    :pswitch_3
    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalChainStyle:I

    goto/16 :goto_3

    .line 2888
    :pswitch_4
    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalChainStyle:I

    goto/16 :goto_3

    .line 2884
    :pswitch_5
    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalWeight:F

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalWeight:F

    goto/16 :goto_3

    .line 2880
    :pswitch_6
    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalWeight:F

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalWeight:F

    goto/16 :goto_3

    .line 2830
    :pswitch_7
    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    const/high16 v4, 0x7fc00000    # Float.NaN

    .line 2831
    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->dimensionRatioValue:F

    .line 2832
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->dimensionRatioSide:I

    .line 2833
    iget-object v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    if-eqz v4, :cond_5

    .line 2834
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    .line 2835
    iget-object v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    const/16 v7, 0x2c

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-lez v6, :cond_2

    add-int/lit8 v7, v4, -0x1

    if-ge v6, v7, :cond_2

    .line 2837
    iget-object v7, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    invoke-virtual {v7, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const-string v8, "W"

    .line 2838
    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2839
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->dimensionRatioSide:I

    goto/16 :goto_1

    :cond_0
    const-string v8, "H"

    .line 2840
    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2841
    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->dimensionRatioSide:I

    :cond_1
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    .line 2847
    :cond_2
    const/4 v6, 0x0

    :goto_2
    iget-object v7, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    const/16 v8, 0x3a

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-ltz v7, :cond_4

    add-int/lit8 v4, v4, -0x1

    .line 2849
    if-ge v7, v4, :cond_4

    iget-object v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 2850
    move-result-object v4

    iget-object v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 2851
    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_5

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    .line 2853
    if-lez v7, :cond_5

    :try_start_0
    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 2854
    move-result v4

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    cmpl-float v7, v4, v3

    if-lez v7, :cond_5

    cmpl-float v7, v6, v3

    .line 2856
    if-lez v7, :cond_5

    iget v7, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->dimensionRatioSide:I

    if-ne v7, v5, :cond_3

    .line 2857
    div-float/2addr v6, v4

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->dimensionRatioValue:F

    goto/16 :goto_3

    .line 2859
    :cond_3
    div-float/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->dimensionRatioValue:F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_4

    .line 2867
    goto/16 :goto_3

    :cond_4
    iget-object v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 2868
    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    .line 2870
    if-lez v6, :cond_5

    :try_start_1
    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->dimensionRatioValue:F
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_4

    .line 2968
    goto/16 :goto_3

    :pswitch_8
    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintPercentHeight:F

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintPercentHeight:F

    .line 2958
    goto/16 :goto_3

    :pswitch_9
    :try_start_2
    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_3

    .line 2960
    :catch_0
    nop

    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 2962
    if-ne v4, v8, :cond_5

    iput v8, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I

    .line 2947
    goto/16 :goto_3

    :pswitch_a
    :try_start_3
    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMinHeight:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMinHeight:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_3

    .line 2949
    :catch_1
    nop

    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMinHeight:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 2951
    if-ne v4, v8, :cond_5

    iput v8, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMinHeight:I

    .line 2942
    goto/16 :goto_3

    :pswitch_b
    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintPercentWidth:F

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintPercentWidth:F

    .line 2932
    goto/16 :goto_3

    :pswitch_c
    :try_start_4
    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_3

    .line 2934
    :catch_2
    nop

    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 2936
    if-ne v4, v8, :cond_5

    iput v8, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I

    .line 2921
    goto/16 :goto_3

    :pswitch_d
    :try_start_5
    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMinWidth:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMinWidth:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_3

    .line 2923
    :catch_3
    nop

    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMinWidth:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 2925
    if-ne v4, v8, :cond_5

    iput v8, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMinWidth:I

    .line 2912
    goto/16 :goto_3

    :pswitch_e
    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 2913
    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    if-ne v4, v5, :cond_5

    .line 2914
    const-string v4, "layout_constraintHeight_default=\"wrap\" is deprecated.\nUse layout_height=\"WRAP_CONTENT\" and layout_constrainedHeight=\"true\" instead."

    invoke-static {v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2904
    goto/16 :goto_3

    :pswitch_f
    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 2905
    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    if-ne v4, v5, :cond_5

    .line 2906
    const-string v4, "layout_constraintWidth_default=\"wrap\" is deprecated.\nUse layout_width=\"WRAP_CONTENT\" and layout_constrainedWidth=\"true\" instead."

    invoke-static {v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2826
    goto/16 :goto_3

    :pswitch_10
    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalBias:F

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalBias:F

    .line 2822
    goto/16 :goto_3

    :pswitch_11
    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalBias:F

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalBias:F

    .line 2900
    goto/16 :goto_3

    :pswitch_12
    iget-boolean v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constrainedHeight:Z

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constrainedHeight:Z

    .line 2896
    goto/16 :goto_3

    :pswitch_13
    iget-boolean v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constrainedWidth:Z

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constrainedWidth:Z

    .line 2818
    goto/16 :goto_3

    :pswitch_14
    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneEndMargin:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneEndMargin:I

    .line 2814
    goto/16 :goto_3

    :pswitch_15
    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneStartMargin:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneStartMargin:I

    .line 2810
    goto/16 :goto_3

    :pswitch_16
    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneBottomMargin:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneBottomMargin:I

    .line 2806
    goto/16 :goto_3

    :pswitch_17
    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneRightMargin:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneRightMargin:I

    .line 2802
    goto/16 :goto_3

    :pswitch_18
    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneTopMargin:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneTopMargin:I

    .line 2798
    goto/16 :goto_3

    :pswitch_19
    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneLeftMargin:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneLeftMargin:I

    .line 2791
    goto/16 :goto_3

    :pswitch_1a
    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 2792
    iput v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 2793
    if-ne v6, v0, :cond_5

    invoke-virtual {p1, v4, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 2784
    goto/16 :goto_3

    :pswitch_1b
    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToStart:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 2785
    iput v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToStart:I

    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToStart:I

    .line 2786
    if-ne v6, v0, :cond_5

    invoke-virtual {p1, v4, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToStart:I

    .line 2777
    goto/16 :goto_3

    :pswitch_1c
    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 2778
    iput v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    .line 2779
    if-ne v6, v0, :cond_5

    invoke-virtual {p1, v4, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    .line 2770
    goto/16 :goto_3

    :pswitch_1d
    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToEnd:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 2771
    iput v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToEnd:I

    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToEnd:I

    .line 2772
    if-ne v6, v0, :cond_5

    invoke-virtual {p1, v4, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToEnd:I

    .line 2717
    goto/16 :goto_3

    :pswitch_1e
    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 2718
    iput v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    .line 2719
    if-ne v6, v0, :cond_5

    invoke-virtual {p1, v4, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    .line 2710
    goto/16 :goto_3

    :pswitch_1f
    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 2711
    iput v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 2712
    if-ne v6, v0, :cond_5

    invoke-virtual {p1, v4, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 2703
    goto/16 :goto_3

    :pswitch_20
    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 2704
    iput v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    .line 2705
    if-ne v6, v0, :cond_5

    invoke-virtual {p1, v4, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    .line 2696
    goto/16 :goto_3

    :pswitch_21
    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 2697
    iput v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    .line 2698
    if-ne v6, v0, :cond_5

    invoke-virtual {p1, v4, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    .line 2689
    goto/16 :goto_3

    :pswitch_22
    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 2690
    iput v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    .line 2691
    if-ne v6, v0, :cond_5

    invoke-virtual {p1, v4, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    .line 2682
    goto/16 :goto_3

    :pswitch_23
    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 2683
    iput v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    .line 2684
    if-ne v6, v0, :cond_5

    invoke-virtual {p1, v4, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    .line 2675
    goto/16 :goto_3

    :pswitch_24
    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToLeft:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 2676
    iput v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToLeft:I

    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToLeft:I

    .line 2677
    if-ne v6, v0, :cond_5

    invoke-virtual {p1, v4, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToLeft:I

    .line 2668
    goto/16 :goto_3

    :pswitch_25
    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToRight:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 2669
    iput v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToRight:I

    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToRight:I

    .line 2670
    if-ne v6, v0, :cond_5

    invoke-virtual {p1, v4, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToRight:I

    .line 2661
    goto/16 :goto_3

    :pswitch_26
    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 2662
    move-result v6

    iput v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    .line 2663
    if-ne v6, v0, :cond_5

    invoke-virtual {p1, v4, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 2760
    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    goto/16 :goto_3

    :pswitch_27
    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guidePercent:F

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 2755
    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guidePercent:F

    goto/16 :goto_3

    :pswitch_28
    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guideEnd:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 2750
    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guideEnd:I

    goto/16 :goto_3

    :pswitch_29
    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guideBegin:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 2735
    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guideBegin:I

    goto/16 :goto_3

    :pswitch_2a
    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleAngle:F

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 2736
    move-result v4

    const/high16 v6, 0x43b40000    # 360.0f

    rem-float/2addr v4, v6

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleAngle:F

    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleAngle:F

    .line 2737
    cmpg-float v7, v4, v3

    if-gez v7, :cond_5

    .line 2731
    sub-float v4, v6, v4

    rem-float/2addr v4, v6

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleAngle:F

    goto/16 :goto_3

    :pswitch_2b
    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleRadius:I

    .line 2724
    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleRadius:I

    goto/16 :goto_3

    .line 2725
    :pswitch_2c
    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleConstraint:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 2726
    move-result v6

    iput v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleConstraint:I

    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleConstraint:I

    .line 2765
    if-ne v6, v0, :cond_5

    invoke-virtual {p1, v4, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleConstraint:I

    goto/16 :goto_3

    :pswitch_2d
    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->orientation:I

    .line 2993
    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 2994
    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->orientation:I

    :catch_4
    :cond_5
    :goto_3
    :pswitch_2e
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->validate()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_2e
        :pswitch_2e
        :pswitch_2e
        :pswitch_2e
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 5

    .line 3044
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, -0x1

    .line 2166
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guideBegin:I

    .line 2171
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guideEnd:I

    const/high16 v0, -0x40800000    # -1.0f

    .line 2176
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guidePercent:F

    .line 2181
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    .line 2186
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToRight:I

    .line 2191
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToLeft:I

    .line 2196
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    .line 2201
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    .line 2206
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    .line 2211
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    .line 2216
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 2221
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    .line 2226
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleConstraint:I

    const/4 v1, 0x0

    .line 2231
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleRadius:I

    const/4 v2, 0x0

    .line 2236
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleAngle:F

    .line 2241
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToEnd:I

    .line 2246
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    .line 2251
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToStart:I

    .line 2256
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 2261
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneLeftMargin:I

    .line 2266
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneTopMargin:I

    .line 2271
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneRightMargin:I

    .line 2276
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneBottomMargin:I

    .line 2281
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneStartMargin:I

    .line 2286
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneEndMargin:I

    const/high16 v3, 0x3f000000    # 0.5f

    .line 2291
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalBias:F

    .line 2296
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalBias:F

    const/4 v4, 0x0

    .line 2301
    iput-object v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    .line 2306
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->dimensionRatioValue:F

    const/4 v2, 0x1

    .line 2311
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->dimensionRatioSide:I

    .line 2317
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalWeight:F

    .line 2323
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalWeight:F

    .line 2335
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalChainStyle:I

    .line 2347
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalChainStyle:I

    .line 2360
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    .line 2373
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    .line 2379
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMinWidth:I

    .line 2385
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMinHeight:I

    .line 2391
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I

    .line 2397
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2402
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintPercentWidth:F

    .line 2407
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintPercentHeight:F

    .line 2413
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    .line 2419
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    .line 2421
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->orientation:I

    .line 2430
    iput-boolean v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constrainedWidth:Z

    .line 2439
    iput-boolean v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constrainedHeight:Z

    .line 2442
    iput-boolean v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    .line 2443
    iput-boolean v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    .line 2445
    iput-boolean v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->needsBaseline:Z

    .line 2446
    iput-boolean v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->isGuideline:Z

    .line 2447
    iput-boolean v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->isHelper:Z

    .line 2448
    iput-boolean v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->isInPlaceholder:Z

    .line 2450
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedLeftToLeft:I

    .line 2451
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedLeftToRight:I

    .line 2452
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedRightToLeft:I

    .line 2453
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedRightToRight:I

    .line 2454
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolveGoneLeftMargin:I

    .line 2455
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolveGoneRightMargin:I

    .line 2456
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedHorizontalBias:F

    .line 2462
    new-instance p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-direct {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 2470
    iput-boolean v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->helped:Z

    return-void
.end method

.method public constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V
    .locals 6

    .line 2478
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    const/4 v0, -0x1

    .line 2166
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guideBegin:I

    .line 2171
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guideEnd:I

    const/high16 v1, -0x40800000    # -1.0f

    .line 2176
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guidePercent:F

    .line 2181
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    .line 2186
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToRight:I

    .line 2191
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToLeft:I

    .line 2196
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    .line 2201
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    .line 2206
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    .line 2211
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    .line 2216
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 2221
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    .line 2226
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleConstraint:I

    const/4 v2, 0x0

    .line 2231
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleRadius:I

    const/4 v3, 0x0

    .line 2236
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleAngle:F

    .line 2241
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToEnd:I

    .line 2246
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    .line 2251
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToStart:I

    .line 2256
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 2261
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneLeftMargin:I

    .line 2266
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneTopMargin:I

    .line 2271
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneRightMargin:I

    .line 2276
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneBottomMargin:I

    .line 2281
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneStartMargin:I

    .line 2286
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneEndMargin:I

    const/high16 v4, 0x3f000000    # 0.5f

    .line 2291
    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalBias:F

    .line 2296
    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalBias:F

    const/4 v5, 0x0

    .line 2301
    iput-object v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    .line 2306
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->dimensionRatioValue:F

    const/4 v3, 0x1

    .line 2311
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->dimensionRatioSide:I

    .line 2317
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalWeight:F

    .line 2323
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalWeight:F

    .line 2335
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalChainStyle:I

    .line 2347
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalChainStyle:I

    .line 2360
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    .line 2373
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    .line 2379
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMinWidth:I

    .line 2385
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMinHeight:I

    .line 2391
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I

    .line 2397
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 2402
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintPercentWidth:F

    .line 2407
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintPercentHeight:F

    .line 2413
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    .line 2419
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    .line 2421
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->orientation:I

    .line 2430
    iput-boolean v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constrainedWidth:Z

    .line 2439
    iput-boolean v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constrainedHeight:Z

    .line 2442
    iput-boolean v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    .line 2443
    iput-boolean v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    .line 2445
    iput-boolean v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->needsBaseline:Z

    .line 2446
    iput-boolean v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->isGuideline:Z

    .line 2447
    iput-boolean v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->isHelper:Z

    .line 2448
    iput-boolean v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->isInPlaceholder:Z

    .line 2450
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedLeftToLeft:I

    .line 2451
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedLeftToRight:I

    .line 2452
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedRightToLeft:I

    .line 2453
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedRightToRight:I

    .line 2454
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolveGoneLeftMargin:I

    .line 2455
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolveGoneRightMargin:I

    .line 2456
    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedHorizontalBias:F

    .line 2462
    new-instance v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-direct {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 2470
    iput-boolean v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->helped:Z

    .line 2479
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guideBegin:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guideBegin:I

    .line 2480
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guideEnd:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guideEnd:I

    .line 2481
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guidePercent:F

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guidePercent:F

    .line 2482
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    .line 2483
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToRight:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToRight:I

    .line 2484
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToLeft:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToLeft:I

    .line 2485
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    .line 2486
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    .line 2487
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    .line 2488
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    .line 2489
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 2490
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    .line 2491
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleConstraint:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleConstraint:I

    .line 2492
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleRadius:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleRadius:I

    .line 2493
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleAngle:F

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleAngle:F

    .line 2494
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToEnd:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToEnd:I

    .line 2495
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    .line 2496
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToStart:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToStart:I

    .line 2497
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 2498
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneLeftMargin:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneLeftMargin:I

    .line 2499
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneTopMargin:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneTopMargin:I

    .line 2500
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneRightMargin:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneRightMargin:I

    .line 2501
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneBottomMargin:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneBottomMargin:I

    .line 2502
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneStartMargin:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneStartMargin:I

    .line 2503
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneEndMargin:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneEndMargin:I

    .line 2504
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalBias:F

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalBias:F

    .line 2505
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalBias:F

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalBias:F

    .line 2506
    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    .line 2507
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->dimensionRatioValue:F

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->dimensionRatioValue:F

    .line 2508
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->dimensionRatioSide:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->dimensionRatioSide:I

    .line 2509
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalWeight:F

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalWeight:F

    .line 2510
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalWeight:F

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalWeight:F

    .line 2511
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalChainStyle:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalChainStyle:I

    .line 2512
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalChainStyle:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalChainStyle:I

    .line 2513
    iget-boolean v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constrainedWidth:Z

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constrainedWidth:Z

    .line 2514
    iget-boolean v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constrainedHeight:Z

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constrainedHeight:Z

    .line 2515
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    .line 2516
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    .line 2517
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMinWidth:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMinWidth:I

    .line 2518
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I

    .line 2519
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMinHeight:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMinHeight:I

    .line 2520
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I

    .line 2521
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintPercentWidth:F

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintPercentWidth:F

    .line 2522
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintPercentHeight:F

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintPercentHeight:F

    .line 2523
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    .line 2524
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    .line 2525
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->orientation:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->orientation:I

    .line 2526
    iget-boolean v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    .line 2527
    iget-boolean v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    .line 2528
    iget-boolean v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->needsBaseline:Z

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->needsBaseline:Z

    .line 2529
    iget-boolean v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->isGuideline:Z

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->isGuideline:Z

    .line 2530
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedLeftToLeft:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedLeftToLeft:I

    .line 2531
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedLeftToRight:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedLeftToRight:I

    .line 2532
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedRightToLeft:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedRightToLeft:I

    .line 2533
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedRightToRight:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedRightToRight:I

    .line 2534
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolveGoneLeftMargin:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolveGoneLeftMargin:I

    .line 2535
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolveGoneRightMargin:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolveGoneRightMargin:I

    .line 2536
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedHorizontalBias:F

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedHorizontalBias:F

    .line 2537
    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;"

    const-string v1, "reset"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->reset()V

    :cond_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;"

    const-string v1, "reset"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public resolveLayoutDirection(I)V
    .locals 11

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;"

    const-string v1, "resolveLayoutDirection"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftMargin:I

    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightMargin:I

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/ViewGroup$MarginLayoutParams;"

    const-string v1, "resolveLayoutDirection"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->resolveLayoutDirection(I)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/view/ViewGroup$MarginLayoutParams;"

    const-string v1, "resolveLayoutDirection"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, -0x1

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedRightToLeft:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedRightToRight:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedLeftToLeft:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedLeftToRight:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolveGoneLeftMargin:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolveGoneRightMargin:I

    iget v7, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneLeftMargin:I

    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolveGoneLeftMargin:I

    iget v7, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneRightMargin:I

    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolveGoneRightMargin:I

    iget v7, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalBias:F

    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedHorizontalBias:F

    iget v7, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guideBegin:I

    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedGuideBegin:I

    iget v7, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guideEnd:I

    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedGuideEnd:I

    iget v7, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guidePercent:F

    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedGuidePercent:F

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroid/view/ViewGroup$MarginLayoutParams;"

    const-string v1, "getLayoutDirection"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->getLayoutDirection()I

    move-result v7

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v7 .. v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/ViewGroup$MarginLayoutParams;"

    const-string v1, "getLayoutDirection"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-ne v9, v7, :cond_0

    const/4 v7, 0x1

    goto/16 :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    if-eqz v7, :cond_a

    iget v7, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToEnd:I

    if-eq v7, p1, :cond_1

    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedRightToLeft:I

    :goto_1
    const/4 v8, 0x1

    goto/16 :goto_2

    :cond_1
    iget v7, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    if-eq v7, p1, :cond_2

    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedRightToRight:I

    goto/16 :goto_1

    :cond_2
    :goto_2
    iget v7, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToStart:I

    if-eq v7, p1, :cond_3

    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedLeftToRight:I

    const/4 v8, 0x1

    :cond_3
    iget v7, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    if-eq v7, p1, :cond_4

    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedLeftToLeft:I

    const/4 v8, 0x1

    :cond_4
    iget v7, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneStartMargin:I

    if-eq v7, p1, :cond_5

    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolveGoneRightMargin:I

    :cond_5
    iget v7, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneEndMargin:I

    if-eq v7, p1, :cond_6

    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolveGoneLeftMargin:I

    :cond_6
    const/high16 v7, 0x3f800000    # 1.0f

    if-eqz v8, :cond_7

    iget v8, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalBias:F

    sub-float v8, v7, v8

    iput v8, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedHorizontalBias:F

    :cond_7
    iget-boolean v8, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->isGuideline:Z

    if-eqz v8, :cond_10

    iget v8, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->orientation:I

    if-ne v8, v9, :cond_10

    iget v8, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guidePercent:F

    const/high16 v9, -0x40800000    # -1.0f

    cmpl-float v10, v8, v9

    if-eqz v10, :cond_8

    sub-float/2addr v7, v8

    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedGuidePercent:F

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedGuideBegin:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedGuideEnd:I

    goto/16 :goto_3

    :cond_8
    iget v7, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guideBegin:I

    if-eq v7, p1, :cond_9

    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedGuideEnd:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedGuideBegin:I

    iput v9, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedGuidePercent:F

    goto/16 :goto_3

    :cond_9
    iget v7, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guideEnd:I

    if-eq v7, p1, :cond_10

    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedGuideBegin:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedGuideEnd:I

    iput v9, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedGuidePercent:F

    goto/16 :goto_3

    :cond_a
    iget v7, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToEnd:I

    if-eq v7, p1, :cond_b

    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedLeftToRight:I

    :cond_b
    iget v7, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    if-eq v7, p1, :cond_c

    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedLeftToLeft:I

    :cond_c
    iget v7, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToStart:I

    if-eq v7, p1, :cond_d

    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedRightToLeft:I

    :cond_d
    iget v7, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    if-eq v7, p1, :cond_e

    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedRightToRight:I

    :cond_e
    iget v7, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneStartMargin:I

    if-eq v7, p1, :cond_f

    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolveGoneLeftMargin:I

    :cond_f
    iget v7, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneEndMargin:I

    if-eq v7, p1, :cond_10

    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolveGoneRightMargin:I

    :cond_10
    :goto_3
    iget v7, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToStart:I

    if-ne v7, p1, :cond_14

    iget v7, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    if-ne v7, p1, :cond_14

    iget v7, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    if-ne v7, p1, :cond_14

    iget v7, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToEnd:I

    if-ne v7, p1, :cond_14

    iget v7, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToLeft:I

    if-eq v7, p1, :cond_11

    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedRightToLeft:I

    iget v7, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightMargin:I

    if-gtz v7, :cond_12

    if-lez v6, :cond_12

    iput v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightMargin:I

    goto/16 :goto_4

    :cond_11
    iget v7, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    if-eq v7, p1, :cond_12

    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedRightToRight:I

    iget v7, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightMargin:I

    if-gtz v7, :cond_12

    if-lez v6, :cond_12

    iput v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightMargin:I

    :cond_12
    :goto_4
    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    if-eq v6, p1, :cond_13

    iput v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedLeftToLeft:I

    iget p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftMargin:I

    if-gtz p1, :cond_14

    if-lez v5, :cond_14

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftMargin:I

    goto/16 :goto_5

    :cond_13
    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToRight:I

    if-eq v6, p1, :cond_14

    iput v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedLeftToRight:I

    iget p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftMargin:I

    if-gtz p1, :cond_14

    if-lez v5, :cond_14

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftMargin:I

    :cond_14
    :goto_5
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;"

    const-string v1, "resolveLayoutDirection"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public validate()V
    .locals 10

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;"

    const-string v1, "validate"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v5, 0x0

    iput-boolean v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->isGuideline:Z

    const/4 v6, 0x1

    iput-boolean v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    iput-boolean v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    iget v7, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    const/4 v8, -0x2

    if-ne v7, v8, :cond_0

    iget-boolean v7, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constrainedWidth:Z

    if-eqz v7, :cond_0

    iput-boolean v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    iput v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    :cond_0
    iget v7, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->height:I

    if-ne v7, v8, :cond_1

    iget-boolean v7, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constrainedHeight:Z

    if-eqz v7, :cond_1

    iput-boolean v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    iput v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    :cond_1
    iget v7, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    const/4 v9, -0x1

    if-eqz v7, :cond_2

    iget v7, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    if-ne v7, v9, :cond_3

    :cond_2
    iput-boolean v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    iget v7, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    if-nez v7, :cond_3

    iget v7, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    if-ne v7, v6, :cond_3

    iput v8, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    iput-boolean v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constrainedWidth:Z

    :cond_3
    iget v7, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->height:I

    if-eqz v7, :cond_4

    iget v7, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->height:I

    if-ne v7, v9, :cond_5

    :cond_4
    iput-boolean v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->height:I

    if-nez v5, :cond_5

    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    if-ne v5, v6, :cond_5

    iput v8, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->height:I

    iput-boolean v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constrainedHeight:Z

    :cond_5
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guidePercent:F

    const/high16 v7, -0x40800000    # -1.0f

    cmpl-float v5, v5, v7

    if-nez v5, :cond_6

    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guideBegin:I

    if-ne v5, v9, :cond_6

    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guideEnd:I

    if-eq v5, v9, :cond_8

    :cond_6
    iput-boolean v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->isGuideline:Z

    iput-boolean v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    iput-boolean v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    iget-object v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    instance-of v5, v5, Landroidx/constraintlayout/solver/widgets/Guideline;

    if-nez v5, :cond_7

    new-instance v5, Landroidx/constraintlayout/solver/widgets/Guideline;

    invoke-direct {v5}, Landroidx/constraintlayout/solver/widgets/Guideline;-><init>()V

    iput-object v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    :cond_7
    iget-object v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    check-cast v5, Landroidx/constraintlayout/solver/widgets/Guideline;

    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->orientation:I

    invoke-virtual {v5, v6}, Landroidx/constraintlayout/solver/widgets/Guideline;->setOrientation(I)V

    :cond_8
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;"

    const-string v1, "validate"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
