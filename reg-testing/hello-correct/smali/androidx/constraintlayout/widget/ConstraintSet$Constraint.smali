.class Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
.super Ljava/lang/Object;
.source "ConstraintSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/widget/ConstraintSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Constraint"
.end annotation


# static fields
.field static final UNSET:I = -0x1


# instance fields
.field public alpha:F

.field public applyElevation:Z

.field public baselineToBaseline:I

.field public bottomMargin:I

.field public bottomToBottom:I

.field public bottomToTop:I

.field public circleAngle:F

.field public circleConstraint:I

.field public circleRadius:I

.field public constrainedHeight:Z

.field public constrainedWidth:Z

.field public dimensionRatio:Ljava/lang/String;

.field public editorAbsoluteX:I

.field public editorAbsoluteY:I

.field public elevation:F

.field public endMargin:I

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

.field public heightDefault:I

.field public heightMax:I

.field public heightMin:I

.field public heightPercent:F

.field public horizontalBias:F

.field public horizontalChainStyle:I

.field public horizontalWeight:F

.field public leftMargin:I

.field public leftToLeft:I

.field public leftToRight:I

.field public mBarrierAllowsGoneWidgets:Z

.field public mBarrierDirection:I

.field public mHeight:I

.field public mHelperType:I

.field mIsGuideline:Z

.field public mReferenceIdString:Ljava/lang/String;

.field public mReferenceIds:[I

.field mViewId:I

.field public mWidth:I

.field public orientation:I

.field public rightMargin:I

.field public rightToLeft:I

.field public rightToRight:I

.field public rotation:F

.field public rotationX:F

.field public rotationY:F

.field public scaleX:F

.field public scaleY:F

.field public startMargin:I

.field public startToEnd:I

.field public startToStart:I

.field public topMargin:I

.field public topToBottom:I

.field public topToTop:I

.field public transformPivotX:F

.field public transformPivotY:F

.field public translationX:F

.field public translationY:F

.field public translationZ:F

.field public verticalBias:F

.field public verticalChainStyle:I

.field public verticalWeight:F

.field public visibility:I

.field public widthDefault:I

.field public widthMax:I

.field public widthMin:I

.field public widthPercent:F


# direct methods
.method private constructor <init>()V
    .locals 5

    .line 358
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 359
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mIsGuideline:Z

    const/4 v1, -0x1

    .line 364
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->guideBegin:I

    .line 365
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->guideEnd:I

    const/high16 v2, -0x40800000    # -1.0f

    .line 366
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->guidePercent:F

    .line 368
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->leftToLeft:I

    .line 369
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->leftToRight:I

    .line 370
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rightToLeft:I

    .line 371
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rightToRight:I

    .line 372
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->topToTop:I

    .line 373
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->topToBottom:I

    .line 374
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->bottomToTop:I

    .line 375
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->bottomToBottom:I

    .line 376
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->baselineToBaseline:I

    .line 378
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->startToEnd:I

    .line 379
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->startToStart:I

    .line 380
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->endToStart:I

    .line 381
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->endToEnd:I

    const/high16 v2, 0x3f000000    # 0.5f

    .line 383
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->horizontalBias:F

    .line 384
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->verticalBias:F

    const/4 v2, 0x0

    .line 385
    iput-object v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->dimensionRatio:Ljava/lang/String;

    .line 387
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->circleConstraint:I

    .line 388
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->circleRadius:I

    const/4 v2, 0x0

    .line 389
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->circleAngle:F

    .line 391
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->editorAbsoluteX:I

    .line 392
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->editorAbsoluteY:I

    .line 394
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->orientation:I

    .line 395
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->leftMargin:I

    .line 396
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rightMargin:I

    .line 397
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->topMargin:I

    .line 398
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->bottomMargin:I

    .line 399
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->endMargin:I

    .line 400
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->startMargin:I

    .line 401
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->visibility:I

    .line 402
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->goneLeftMargin:I

    .line 403
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->goneTopMargin:I

    .line 404
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->goneRightMargin:I

    .line 405
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->goneBottomMargin:I

    .line 406
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->goneEndMargin:I

    .line 407
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->goneStartMargin:I

    .line 408
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->verticalWeight:F

    .line 409
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->horizontalWeight:F

    .line 410
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->horizontalChainStyle:I

    .line 411
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->verticalChainStyle:I

    const/high16 v3, 0x3f800000    # 1.0f

    .line 412
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->alpha:F

    .line 413
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->applyElevation:Z

    .line 414
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->elevation:F

    .line 415
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rotation:F

    .line 416
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rotationX:F

    .line 417
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rotationY:F

    .line 418
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->scaleX:F

    .line 419
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->scaleY:F

    const/high16 v4, 0x7fc00000    # Float.NaN

    .line 420
    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transformPivotX:F

    .line 421
    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transformPivotY:F

    .line 422
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->translationX:F

    .line 423
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->translationY:F

    .line 424
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->translationZ:F

    .line 425
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->constrainedWidth:Z

    .line 426
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->constrainedHeight:Z

    .line 427
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->widthDefault:I

    .line 428
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->heightDefault:I

    .line 429
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->widthMax:I

    .line 430
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->heightMax:I

    .line 431
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->widthMin:I

    .line 432
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->heightMin:I

    .line 433
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->widthPercent:F

    .line 434
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->heightPercent:F

    .line 435
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mBarrierAllowsGoneWidgets:Z

    .line 436
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mBarrierDirection:I

    .line 437
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mHelperType:I

    return-void
.end method

.method synthetic constructor <init>(Landroidx/constraintlayout/widget/ConstraintSet$1;)V
    .locals 0

    invoke-direct {p0}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;-><init>()V

    return-void
.end method

.method static synthetic access$100(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;ILandroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V
    .locals 5

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x6

    aput-object p2, v2, v1

    const-string v0, "Landroidx/constraintlayout/widget/ConstraintSet$Constraint;"

    const-string v1, "access$100"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->fillFrom(ILandroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/widget/ConstraintSet$Constraint;"

    const-string v1, "access$100"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;Landroidx/constraintlayout/widget/ConstraintHelper;ILandroidx/constraintlayout/widget/Constraints$LayoutParams;)V
    .locals 5

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const/4 v1, 0x6

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x7

    aput-object p3, v2, v1

    const-string v0, "Landroidx/constraintlayout/widget/ConstraintSet$Constraint;"

    const-string v1, "access$200"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->fillFromConstraints(Landroidx/constraintlayout/widget/ConstraintHelper;ILandroidx/constraintlayout/widget/Constraints$LayoutParams;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/widget/ConstraintSet$Constraint;"

    const-string v1, "access$200"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$300(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;ILandroidx/constraintlayout/widget/Constraints$LayoutParams;)V
    .locals 5

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x6

    aput-object p2, v2, v1

    const-string v0, "Landroidx/constraintlayout/widget/ConstraintSet$Constraint;"

    const-string v1, "access$300"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->fillFromConstraints(ILandroidx/constraintlayout/widget/Constraints$LayoutParams;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/widget/ConstraintSet$Constraint;"

    const-string v1, "access$300"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private fillFrom(ILandroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V
    .locals 6

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x6

    aput-object p2, v2, v1

    const-string v0, "Landroidx/constraintlayout/widget/ConstraintSet$Constraint;"

    const-string v1, "fillFrom"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mViewId:I

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->leftToLeft:I

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToRight:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->leftToRight:I

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToLeft:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rightToLeft:I

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rightToRight:I

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->topToTop:I

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->topToBottom:I

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->bottomToTop:I

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->bottomToBottom:I

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->baselineToBaseline:I

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToEnd:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->startToEnd:I

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->startToStart:I

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToStart:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->endToStart:I

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->endToEnd:I

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalBias:F

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->horizontalBias:F

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalBias:F

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->verticalBias:F

    iget-object p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->dimensionRatio:Ljava/lang/String;

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleConstraint:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->circleConstraint:I

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleRadius:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->circleRadius:I

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleAngle:F

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->circleAngle:F

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->editorAbsoluteX:I

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->editorAbsoluteY:I

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->orientation:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->orientation:I

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guidePercent:F

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->guidePercent:F

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guideBegin:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->guideBegin:I

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guideEnd:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->guideEnd:I

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mWidth:I

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->height:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mHeight:I

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftMargin:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->leftMargin:I

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightMargin:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rightMargin:I

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topMargin:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->topMargin:I

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomMargin:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->bottomMargin:I

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalWeight:F

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->verticalWeight:F

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalWeight:F

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->horizontalWeight:F

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalChainStyle:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->verticalChainStyle:I

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalChainStyle:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->horizontalChainStyle:I

    iget-boolean p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constrainedWidth:Z

    iput-boolean p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->constrainedWidth:Z

    iget-boolean p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constrainedHeight:Z

    iput-boolean p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->constrainedHeight:Z

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->widthDefault:I

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->heightDefault:I

    iget-boolean p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constrainedWidth:Z

    iput-boolean p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->constrainedWidth:Z

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->widthMax:I

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->heightMax:I

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMinWidth:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->widthMin:I

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMinHeight:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->heightMin:I

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintPercentWidth:F

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->widthPercent:F

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintPercentHeight:F

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->heightPercent:F

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x11

    if-lt p1, v5, :cond_0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p2, v2, v1

    const-string v0, "Landroid/view/ViewGroup$MarginLayoutParams;"

    const-string v1, "getMarginEnd"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->getMarginEnd()I

    move-result p1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/ViewGroup$MarginLayoutParams;"

    const-string v1, "getMarginEnd"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->endMargin:I

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p2, v2, v1

    const-string v0, "Landroid/view/ViewGroup$MarginLayoutParams;"

    const-string v1, "getMarginStart"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->getMarginStart()I

    move-result p1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/ViewGroup$MarginLayoutParams;"

    const-string v1, "getMarginStart"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->startMargin:I

    :cond_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/widget/ConstraintSet$Constraint;"

    const-string v1, "fillFrom"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private fillFromConstraints(ILandroidx/constraintlayout/widget/Constraints$LayoutParams;)V
    .locals 5

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x6

    aput-object p2, v2, v1

    const-string v0, "Landroidx/constraintlayout/widget/ConstraintSet$Constraint;"

    const-string v1, "fillFromConstraints"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->fillFrom(ILandroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V

    iget p1, p2, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->alpha:F

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->alpha:F

    iget p1, p2, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->rotation:F

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rotation:F

    iget p1, p2, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->rotationX:F

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rotationX:F

    iget p1, p2, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->rotationY:F

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rotationY:F

    iget p1, p2, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->scaleX:F

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->scaleX:F

    iget p1, p2, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->scaleY:F

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->scaleY:F

    iget p1, p2, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->transformPivotX:F

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transformPivotX:F

    iget p1, p2, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->transformPivotY:F

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transformPivotY:F

    iget p1, p2, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->translationX:F

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->translationX:F

    iget p1, p2, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->translationY:F

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->translationY:F

    iget p1, p2, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->translationZ:F

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->translationZ:F

    iget p1, p2, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->elevation:F

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->elevation:F

    iget-boolean p1, p2, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->applyElevation:Z

    iput-boolean p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->applyElevation:Z

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/widget/ConstraintSet$Constraint;"

    const-string v1, "fillFromConstraints"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private fillFromConstraints(Landroidx/constraintlayout/widget/ConstraintHelper;ILandroidx/constraintlayout/widget/Constraints$LayoutParams;)V
    .locals 5

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const/4 v1, 0x6

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x7

    aput-object p3, v2, v1

    const-string v0, "Landroidx/constraintlayout/widget/ConstraintSet$Constraint;"

    const-string v1, "fillFromConstraints"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, p2, p3}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->fillFromConstraints(ILandroidx/constraintlayout/widget/Constraints$LayoutParams;)V

    instance-of p2, p1, Landroidx/constraintlayout/widget/Barrier;

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mHelperType:I

    check-cast p1, Landroidx/constraintlayout/widget/Barrier;

    invoke-virtual {p1}, Landroidx/constraintlayout/widget/Barrier;->getType()I

    move-result p2

    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mBarrierDirection:I

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const-string v0, "Landroidx/constraintlayout/widget/ConstraintHelper;"

    const-string v1, "getReferencedIds"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroidx/constraintlayout/widget/Barrier;->getReferencedIds()[I

    move-result-object p1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const-string v0, "Landroidx/constraintlayout/widget/ConstraintHelper;"

    const-string v1, "getReferencedIds"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mReferenceIds:[I

    :cond_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/widget/ConstraintSet$Constraint;"

    const-string v1, "fillFromConstraints"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public applyTo(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V
    .locals 7

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroidx/constraintlayout/widget/ConstraintSet$Constraint;"

    const-string v1, "applyTo"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->leftToLeft:I

    iput v5, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->leftToRight:I

    iput v5, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToRight:I

    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rightToLeft:I

    iput v5, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToLeft:I

    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rightToRight:I

    iput v5, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->topToTop:I

    iput v5, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->topToBottom:I

    iput v5, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->bottomToTop:I

    iput v5, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->bottomToBottom:I

    iput v5, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->baselineToBaseline:I

    iput v5, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->startToEnd:I

    iput v5, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToEnd:I

    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->startToStart:I

    iput v5, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->endToStart:I

    iput v5, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToStart:I

    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->endToEnd:I

    iput v5, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->leftMargin:I

    iput v5, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftMargin:I

    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rightMargin:I

    iput v5, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightMargin:I

    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->topMargin:I

    iput v5, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topMargin:I

    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->bottomMargin:I

    iput v5, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomMargin:I

    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->goneStartMargin:I

    iput v5, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneStartMargin:I

    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->goneEndMargin:I

    iput v5, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneEndMargin:I

    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->horizontalBias:F

    iput v5, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalBias:F

    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->verticalBias:F

    iput v5, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalBias:F

    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->circleConstraint:I

    iput v5, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleConstraint:I

    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->circleRadius:I

    iput v5, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleRadius:I

    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->circleAngle:F

    iput v5, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleAngle:F

    iget-object v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->dimensionRatio:Ljava/lang/String;

    iput-object v5, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->editorAbsoluteX:I

    iput v5, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->editorAbsoluteY:I

    iput v5, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->verticalWeight:F

    iput v5, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalWeight:F

    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->horizontalWeight:F

    iput v5, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalWeight:F

    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->verticalChainStyle:I

    iput v5, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalChainStyle:I

    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->horizontalChainStyle:I

    iput v5, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalChainStyle:I

    iget-boolean v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->constrainedWidth:Z

    iput-boolean v5, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constrainedWidth:Z

    iget-boolean v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->constrainedHeight:Z

    iput-boolean v5, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constrainedHeight:Z

    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->widthDefault:I

    iput v5, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->heightDefault:I

    iput v5, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->widthMax:I

    iput v5, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I

    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->heightMax:I

    iput v5, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I

    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->widthMin:I

    iput v5, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMinWidth:I

    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->heightMin:I

    iput v5, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMinHeight:I

    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->widthPercent:F

    iput v5, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintPercentWidth:F

    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->heightPercent:F

    iput v5, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintPercentHeight:F

    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->orientation:I

    iput v5, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->orientation:I

    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->guidePercent:F

    iput v5, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guidePercent:F

    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->guideBegin:I

    iput v5, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guideBegin:I

    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->guideEnd:I

    iput v5, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guideEnd:I

    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mWidth:I

    iput v5, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mHeight:I

    iput v5, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->height:I

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x11

    if-lt v5, v6, :cond_0

    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->startMargin:I

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v5 .. v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/ViewGroup$MarginLayoutParams;"

    const-string v1, "setMarginStart"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1, v5}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->setMarginStart(I)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/view/ViewGroup$MarginLayoutParams;"

    const-string v1, "setMarginStart"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->endMargin:I

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v5 .. v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/ViewGroup$MarginLayoutParams;"

    const-string v1, "setMarginEnd"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1, v5}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->setMarginEnd(I)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/view/ViewGroup$MarginLayoutParams;"

    const-string v1, "setMarginEnd"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->validate()V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/widget/ConstraintSet$Constraint;"

    const-string v1, "applyTo"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public clone()Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    .locals 8

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/constraintlayout/widget/ConstraintSet$Constraint;"

    const-string v1, "clone"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    invoke-direct {v5}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;-><init>()V

    iget-boolean v6, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mIsGuideline:Z

    iput-boolean v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mIsGuideline:Z

    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mWidth:I

    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mWidth:I

    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mHeight:I

    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mHeight:I

    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->guideBegin:I

    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->guideBegin:I

    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->guideEnd:I

    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->guideEnd:I

    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->guidePercent:F

    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->guidePercent:F

    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->leftToLeft:I

    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->leftToLeft:I

    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->leftToRight:I

    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->leftToRight:I

    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rightToLeft:I

    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rightToLeft:I

    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rightToRight:I

    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rightToRight:I

    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->topToTop:I

    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->topToTop:I

    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->topToBottom:I

    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->topToBottom:I

    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->bottomToTop:I

    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->bottomToTop:I

    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->bottomToBottom:I

    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->bottomToBottom:I

    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->baselineToBaseline:I

    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->baselineToBaseline:I

    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->startToEnd:I

    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->startToEnd:I

    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->startToStart:I

    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->startToStart:I

    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->endToStart:I

    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->endToStart:I

    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->endToEnd:I

    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->endToEnd:I

    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->horizontalBias:F

    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->horizontalBias:F

    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->verticalBias:F

    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->verticalBias:F

    iget-object v6, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->dimensionRatio:Ljava/lang/String;

    iput-object v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->dimensionRatio:Ljava/lang/String;

    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->editorAbsoluteX:I

    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->editorAbsoluteX:I

    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->editorAbsoluteY:I

    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->editorAbsoluteY:I

    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->horizontalBias:F

    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->horizontalBias:F

    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->horizontalBias:F

    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->horizontalBias:F

    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->horizontalBias:F

    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->horizontalBias:F

    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->horizontalBias:F

    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->horizontalBias:F

    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->horizontalBias:F

    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->horizontalBias:F

    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->orientation:I

    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->orientation:I

    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->leftMargin:I

    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->leftMargin:I

    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rightMargin:I

    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rightMargin:I

    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->topMargin:I

    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->topMargin:I

    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->bottomMargin:I

    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->bottomMargin:I

    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->endMargin:I

    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->endMargin:I

    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->startMargin:I

    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->startMargin:I

    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->visibility:I

    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->visibility:I

    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->goneLeftMargin:I

    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->goneLeftMargin:I

    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->goneTopMargin:I

    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->goneTopMargin:I

    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->goneRightMargin:I

    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->goneRightMargin:I

    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->goneBottomMargin:I

    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->goneBottomMargin:I

    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->goneEndMargin:I

    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->goneEndMargin:I

    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->goneStartMargin:I

    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->goneStartMargin:I

    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->verticalWeight:F

    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->verticalWeight:F

    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->horizontalWeight:F

    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->horizontalWeight:F

    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->horizontalChainStyle:I

    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->horizontalChainStyle:I

    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->verticalChainStyle:I

    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->verticalChainStyle:I

    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->alpha:F

    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->alpha:F

    iget-boolean v6, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->applyElevation:Z

    iput-boolean v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->applyElevation:Z

    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->elevation:F

    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->elevation:F

    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rotation:F

    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rotation:F

    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rotationX:F

    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rotationX:F

    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rotationY:F

    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->rotationY:F

    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->scaleX:F

    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->scaleX:F

    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->scaleY:F

    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->scaleY:F

    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transformPivotX:F

    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transformPivotX:F

    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transformPivotY:F

    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transformPivotY:F

    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->translationX:F

    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->translationX:F

    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->translationY:F

    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->translationY:F

    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->translationZ:F

    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->translationZ:F

    iget-boolean v6, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->constrainedWidth:Z

    iput-boolean v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->constrainedWidth:Z

    iget-boolean v6, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->constrainedHeight:Z

    iput-boolean v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->constrainedHeight:Z

    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->widthDefault:I

    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->widthDefault:I

    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->heightDefault:I

    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->heightDefault:I

    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->widthMax:I

    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->widthMax:I

    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->heightMax:I

    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->heightMax:I

    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->widthMin:I

    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->widthMin:I

    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->heightMin:I

    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->heightMin:I

    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->widthPercent:F

    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->widthPercent:F

    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->heightPercent:F

    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->heightPercent:F

    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mBarrierDirection:I

    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mBarrierDirection:I

    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mHelperType:I

    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mHelperType:I

    iget-object v6, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mReferenceIds:[I

    if-eqz v6, :cond_0

    array-length v7, v6

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v7 .. v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/util/Arrays;"

    const-string v1, "copyOf"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v6, v7}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const-string v0, "Ljava/util/Arrays;"

    const-string v1, "copyOf"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mReferenceIds:[I

    :cond_0
    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->circleConstraint:I

    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->circleConstraint:I

    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->circleRadius:I

    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->circleRadius:I

    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->circleAngle:F

    iput v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->circleAngle:F

    iget-boolean v6, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mBarrierAllowsGoneWidgets:Z

    iput-boolean v6, v5, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mBarrierAllowsGoneWidgets:Z

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/widget/ConstraintSet$Constraint;"

    const-string v1, "clone"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/constraintlayout/widget/ConstraintSet$Constraint;"

    const-string v1, "clone"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->clone()Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v5

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/widget/ConstraintSet$Constraint;"

    const-string v1, "clone"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5
.end method
