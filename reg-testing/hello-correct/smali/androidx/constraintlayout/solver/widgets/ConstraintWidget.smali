.class public Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
.super Ljava/lang/Object;
.source "ConstraintWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;,
        Landroidx/constraintlayout/solver/widgets/ConstraintWidget$ContentAlignment;
    }
.end annotation


# static fields
.field protected static final ANCHOR_BASELINE:I = 0x4

.field protected static final ANCHOR_BOTTOM:I = 0x3

.field protected static final ANCHOR_LEFT:I = 0x0

.field protected static final ANCHOR_RIGHT:I = 0x1

.field protected static final ANCHOR_TOP:I = 0x2

.field private static final AUTOTAG_CENTER:Z = false

.field public static final CHAIN_PACKED:I = 0x2

.field public static final CHAIN_SPREAD:I = 0x0

.field public static final CHAIN_SPREAD_INSIDE:I = 0x1

.field public static DEFAULT_BIAS:F = 0.5f

.field static final DIMENSION_HORIZONTAL:I = 0x0

.field static final DIMENSION_VERTICAL:I = 0x1

.field protected static final DIRECT:I = 0x2

.field public static final GONE:I = 0x8

.field public static final HORIZONTAL:I = 0x0

.field public static final INVISIBLE:I = 0x4

.field public static final MATCH_CONSTRAINT_PERCENT:I = 0x2

.field public static final MATCH_CONSTRAINT_RATIO:I = 0x3

.field public static final MATCH_CONSTRAINT_RATIO_RESOLVED:I = 0x4

.field public static final MATCH_CONSTRAINT_SPREAD:I = 0x0

.field public static final MATCH_CONSTRAINT_WRAP:I = 0x1

.field protected static final SOLVER:I = 0x1

.field public static final UNKNOWN:I = -0x1

.field public static final VERTICAL:I = 0x1

.field public static final VISIBLE:I = 0x0

.field private static final WRAP:I = -0x2


# instance fields
.field protected mAnchors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;",
            ">;"
        }
    .end annotation
.end field

.field mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

.field mBaselineDistance:I

.field mBelongingGroup:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;

.field mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

.field mBottomHasCentered:Z

.field mCenter:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

.field mCenterX:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

.field mCenterY:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

.field private mCircleConstraintAngle:F

.field private mCompanionWidget:Ljava/lang/Object;

.field private mContainerItemSkip:I

.field private mDebugName:Ljava/lang/String;

.field protected mDimensionRatio:F

.field protected mDimensionRatioSide:I

.field mDistToBottom:I

.field mDistToLeft:I

.field mDistToRight:I

.field mDistToTop:I

.field private mDrawHeight:I

.field private mDrawWidth:I

.field private mDrawX:I

.field private mDrawY:I

.field mGroupsToSolver:Z

.field mHeight:I

.field mHorizontalBiasPercent:F

.field mHorizontalChainFixedPosition:Z

.field mHorizontalChainStyle:I

.field mHorizontalNextWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

.field public mHorizontalResolution:I

.field mHorizontalWrapVisited:Z

.field mIsHeightWrapContent:Z

.field mIsWidthWrapContent:Z

.field mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

.field mLeftHasCentered:Z

.field protected mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

.field protected mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

.field protected mListNextMatchConstraintsWidget:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

.field mMatchConstraintDefaultHeight:I

.field mMatchConstraintDefaultWidth:I

.field mMatchConstraintMaxHeight:I

.field mMatchConstraintMaxWidth:I

.field mMatchConstraintMinHeight:I

.field mMatchConstraintMinWidth:I

.field mMatchConstraintPercentHeight:F

.field mMatchConstraintPercentWidth:F

.field private mMaxDimension:[I

.field protected mMinHeight:I

.field protected mMinWidth:I

.field protected mNextChainWidget:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

.field protected mOffsetX:I

.field protected mOffsetY:I

.field mOptimizerMeasurable:Z

.field mOptimizerMeasured:Z

.field mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

.field mRelX:I

.field mRelY:I

.field mResolutionHeight:Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

.field mResolutionWidth:Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

.field mResolvedDimensionRatio:F

.field mResolvedDimensionRatioSide:I

.field mResolvedMatchConstraintDefault:[I

.field mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

.field mRightHasCentered:Z

.field mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

.field mTopHasCentered:Z

.field private mType:Ljava/lang/String;

.field mVerticalBiasPercent:F

.field mVerticalChainFixedPosition:Z

.field mVerticalChainStyle:I

.field mVerticalNextWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

.field public mVerticalResolution:I

.field mVerticalWrapVisited:Z

.field private mVisibility:I

.field mWeight:[F

.field mWidth:I

.field private mWrapHeight:I

.field private mWrapWidth:I

.field protected mX:I

.field protected mY:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    .line 407
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 68
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalResolution:I

    .line 69
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalResolution:I

    const/4 v1, 0x0

    .line 76
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 77
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 78
    iput-object v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    .line 80
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    .line 81
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    const/high16 v3, 0x3f800000    # 1.0f

    .line 82
    iput v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintPercentWidth:F

    .line 83
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    .line 84
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    .line 85
    iput v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintPercentHeight:F

    .line 89
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    .line 90
    iput v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    const/4 v3, 0x0

    .line 95
    iput-object v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBelongingGroup:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;

    new-array v4, v2, [I

    .line 97
    fill-array-data v4, :array_0

    iput-object v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMaxDimension:[I

    const/4 v4, 0x0

    .line 98
    iput v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCircleConstraintAngle:F

    .line 148
    new-instance v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v5, p0, v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 149
    new-instance v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v5, p0, v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 150
    new-instance v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v5, p0, v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 151
    new-instance v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v5, p0, v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 152
    new-instance v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BASELINE:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v5, p0, v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 153
    new-instance v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v5, p0, v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenterX:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 154
    new-instance v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v5, p0, v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenterY:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 155
    new-instance v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v5, p0, v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const/4 v5, 0x6

    new-array v5, v5, [Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 163
    iget-object v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aput-object v6, v5, v1

    iget-object v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    iget-object v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aput-object v6, v5, v2

    iget-object v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const/4 v8, 0x3

    aput-object v6, v5, v8

    iget-object v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const/4 v8, 0x4

    aput-object v6, v5, v8

    iget-object v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const/4 v8, 0x5

    aput-object v6, v5, v8

    iput-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 164
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    new-array v5, v2, [Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 169
    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aput-object v6, v5, v1

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aput-object v6, v5, v7

    iput-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 172
    iput-object v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 175
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    .line 176
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    .line 177
    iput v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 178
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatioSide:I

    .line 181
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mX:I

    .line 182
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mY:I

    .line 183
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRelX:I

    .line 184
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRelY:I

    .line 187
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDrawX:I

    .line 188
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDrawY:I

    .line 189
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDrawWidth:I

    .line 190
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDrawHeight:I

    .line 193
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mOffsetX:I

    .line 194
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mOffsetY:I

    .line 197
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    .line 210
    sget v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->DEFAULT_BIAS:F

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    .line 211
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    .line 219
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mContainerItemSkip:I

    .line 222
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVisibility:I

    .line 224
    iput-object v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDebugName:Ljava/lang/String;

    .line 225
    iput-object v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mType:Ljava/lang/String;

    .line 237
    iput-boolean v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mOptimizerMeasurable:Z

    .line 238
    iput-boolean v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mOptimizerMeasured:Z

    .line 239
    iput-boolean v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mGroupsToSolver:Z

    .line 242
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    .line 243
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    new-array v0, v2, [F

    .line 247
    fill-array-data v0, :array_1

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWeight:[F

    new-array v0, v2, [Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aput-object v3, v0, v1

    aput-object v3, v0, v7

    .line 249
    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListNextMatchConstraintsWidget:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    new-array v0, v2, [Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aput-object v3, v0, v1

    aput-object v3, v0, v7

    .line 250
    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 252
    iput-object v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalNextWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 253
    iput-object v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalNextWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 408
    invoke-direct {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->addAnchors()V

    return-void

    :array_0
    .array-data 4
        0x7fffffff
        0x7fffffff
    .end array-data

    :array_1
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
    .end array-data
.end method

.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x0

    .line 435
    invoke-direct {p0, v0, v0, p1, p2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;-><init>(IIII)V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 9

    .line 419
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 68
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalResolution:I

    .line 69
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalResolution:I

    const/4 v1, 0x0

    .line 76
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    .line 77
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 78
    iput-object v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    .line 80
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    .line 81
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    const/high16 v3, 0x3f800000    # 1.0f

    .line 82
    iput v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintPercentWidth:F

    .line 83
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    .line 84
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    .line 85
    iput v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintPercentHeight:F

    .line 89
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    .line 90
    iput v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    const/4 v3, 0x0

    .line 95
    iput-object v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBelongingGroup:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;

    new-array v4, v2, [I

    .line 97
    fill-array-data v4, :array_0

    iput-object v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMaxDimension:[I

    const/4 v4, 0x0

    .line 98
    iput v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCircleConstraintAngle:F

    .line 148
    new-instance v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v5, p0, v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 149
    new-instance v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v5, p0, v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 150
    new-instance v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v5, p0, v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 151
    new-instance v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v5, p0, v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 152
    new-instance v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BASELINE:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v5, p0, v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 153
    new-instance v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v5, p0, v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenterX:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 154
    new-instance v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v5, p0, v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenterY:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 155
    new-instance v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-direct {v5, p0, v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V

    iput-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const/4 v5, 0x6

    new-array v5, v5, [Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 163
    iget-object v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aput-object v6, v5, v1

    iget-object v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    iget-object v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aput-object v6, v5, v2

    iget-object v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const/4 v8, 0x3

    aput-object v6, v5, v8

    iget-object v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const/4 v8, 0x4

    aput-object v6, v5, v8

    iget-object v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const/4 v8, 0x5

    aput-object v6, v5, v8

    iput-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 164
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    new-array v5, v2, [Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 169
    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aput-object v6, v5, v1

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aput-object v6, v5, v7

    iput-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 172
    iput-object v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 175
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    .line 176
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    .line 177
    iput v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 178
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatioSide:I

    .line 181
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mX:I

    .line 182
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mY:I

    .line 183
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRelX:I

    .line 184
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRelY:I

    .line 187
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDrawX:I

    .line 188
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDrawY:I

    .line 189
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDrawWidth:I

    .line 190
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDrawHeight:I

    .line 193
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mOffsetX:I

    .line 194
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mOffsetY:I

    .line 197
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    .line 210
    sget v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->DEFAULT_BIAS:F

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    .line 211
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    .line 219
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mContainerItemSkip:I

    .line 222
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVisibility:I

    .line 224
    iput-object v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDebugName:Ljava/lang/String;

    .line 225
    iput-object v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mType:Ljava/lang/String;

    .line 237
    iput-boolean v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mOptimizerMeasurable:Z

    .line 238
    iput-boolean v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mOptimizerMeasured:Z

    .line 239
    iput-boolean v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mGroupsToSolver:Z

    .line 242
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    .line 243
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    new-array v0, v2, [F

    .line 247
    fill-array-data v0, :array_1

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWeight:[F

    new-array v0, v2, [Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aput-object v3, v0, v1

    aput-object v3, v0, v7

    .line 249
    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListNextMatchConstraintsWidget:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    new-array v0, v2, [Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aput-object v3, v0, v1

    aput-object v3, v0, v7

    .line 250
    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 252
    iput-object v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalNextWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 253
    iput-object v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalNextWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 420
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mX:I

    .line 421
    iput p2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mY:I

    .line 422
    iput p3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    .line 423
    iput p4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    .line 424
    invoke-direct {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->addAnchors()V

    .line 425
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->forceUpdateDrawPosition()V

    return-void

    nop

    :array_0
    .array-data 4
        0x7fffffff
        0x7fffffff
    .end array-data

    :array_1
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
    .end array-data
.end method

.method private addAnchors()V
    .locals 7

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "addAnchors"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    iget-object v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    aput-object v6, v2, v1

    const-string v0, "Ljava/util/ArrayList;"

    const-string v1, "add"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/util/ArrayList;"

    const-string v1, "add"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    iget-object v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    aput-object v6, v2, v1

    const-string v0, "Ljava/util/ArrayList;"

    const-string v1, "add"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/util/ArrayList;"

    const-string v1, "add"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    iget-object v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    aput-object v6, v2, v1

    const-string v0, "Ljava/util/ArrayList;"

    const-string v1, "add"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/util/ArrayList;"

    const-string v1, "add"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    iget-object v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    aput-object v6, v2, v1

    const-string v0, "Ljava/util/ArrayList;"

    const-string v1, "add"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/util/ArrayList;"

    const-string v1, "add"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    iget-object v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenterX:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    aput-object v6, v2, v1

    const-string v0, "Ljava/util/ArrayList;"

    const-string v1, "add"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/util/ArrayList;"

    const-string v1, "add"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    iget-object v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenterY:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    aput-object v6, v2, v1

    const-string v0, "Ljava/util/ArrayList;"

    const-string v1, "add"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/util/ArrayList;"

    const-string v1, "add"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    iget-object v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    aput-object v6, v2, v1

    const-string v0, "Ljava/util/ArrayList;"

    const-string v1, "add"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/util/ArrayList;"

    const-string v1, "add"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    iget-object v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    aput-object v6, v2, v1

    const-string v0, "Ljava/util/ArrayList;"

    const-string v1, "add"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/util/ArrayList;"

    const-string v1, "add"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "addAnchors"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private applyConstraints(Landroidx/constraintlayout/solver/LinearSystem;ZLandroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;ZLandroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;IIIIFZZIIIFZ)V
    .locals 30

    const/16 v2, 0x19

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const/4 v1, 0x6

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x7

    aput-object p3, v2, v1

    const/16 v1, 0x8

    aput-object p4, v2, v1

    const/16 v1, 0x9

    aput-object p5, v2, v1

    const/16 v1, 0xa

    invoke-static/range {p6 .. p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    const/16 v1, 0xb

    aput-object p7, v2, v1

    const/16 v1, 0xc

    aput-object p8, v2, v1

    const/16 v1, 0xd

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/16 v1, 0xe

    invoke-static/range {p10 .. p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/16 v1, 0xf

    invoke-static/range {p11 .. p11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/16 v1, 0x10

    invoke-static/range {p12 .. p12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/16 v1, 0x11

    invoke-static/range {p13 .. p13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v2, v1

    const/16 v1, 0x12

    invoke-static/range {p14 .. p14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    const/16 v1, 0x13

    invoke-static/range {p15 .. p15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    const/16 v1, 0x14

    invoke-static/range {p16 .. p16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/16 v1, 0x15

    invoke-static/range {p17 .. p17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/16 v1, 0x16

    invoke-static/range {p18 .. p18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/16 v1, 0x17

    invoke-static/range {p19 .. p19}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v2, v1

    const/16 v1, 0x18

    invoke-static/range {p20 .. p20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "applyConstraints"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v5, p0

    move-object/from16 v15, p1

    move-object/from16 v16, p3

    move-object/from16 v17, p4

    move-object/from16 v18, p7

    move-object/from16 v19, p8

    move/from16 v6, p11

    move/from16 v7, p12

    move-object/from16 v0, v15

    move-object/from16 v1, v18

    invoke-virtual/range {v0 .. v1}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v20

    move-object/from16 v0, v15

    move-object/from16 v1, v19

    invoke-virtual/range {v0 .. v1}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v14

    invoke-virtual/range {p7 .. p7}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v8

    invoke-virtual {v15, v8}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v13

    invoke-virtual/range {p8 .. p8}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v8

    invoke-virtual {v15, v8}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v12

    iget-boolean v8, v15, Landroidx/constraintlayout/solver/LinearSystem;->graphOptimizer:Z

    const/4 v11, 0x1

    const/4 v9, 0x6

    const/4 v10, 0x0

    if-eqz v8, :cond_2

    invoke-virtual/range {p7 .. p7}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v8

    iget v8, v8, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->state:I

    if-ne v8, v11, :cond_2

    invoke-virtual/range {p8 .. p8}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v8

    iget v8, v8, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->state:I

    if-ne v8, v11, :cond_2

    invoke-static {}, Landroidx/constraintlayout/solver/LinearSystem;->getMetrics()Landroidx/constraintlayout/solver/Metrics;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-static {}, Landroidx/constraintlayout/solver/LinearSystem;->getMetrics()Landroidx/constraintlayout/solver/Metrics;

    move-result-object v6

    iget-wide v7, v6, Landroidx/constraintlayout/solver/Metrics;->resolvedWidgets:J

    const-wide/16 v11, 0x1

    add-long/2addr v7, v11

    iput-wide v7, v6, Landroidx/constraintlayout/solver/Metrics;->resolvedWidgets:J

    :cond_0
    invoke-virtual/range {p7 .. p7}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v6

    invoke-virtual {v6, v15}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->addResolvedValue(Landroidx/constraintlayout/solver/LinearSystem;)V

    invoke-virtual/range {p8 .. p8}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v6

    invoke-virtual {v6, v15}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->addResolvedValue(Landroidx/constraintlayout/solver/LinearSystem;)V

    if-nez p15, :cond_1

    if-eqz p2, :cond_1

    move-object/from16 v0, v15

    move-object/from16 v1, v17

    move-object/from16 v2, v14

    move/from16 v3, v10

    move/from16 v4, v9

    invoke-virtual/range {v0 .. v4}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    :cond_1
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "applyConstraints"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_2
    invoke-static {}, Landroidx/constraintlayout/solver/LinearSystem;->getMetrics()Landroidx/constraintlayout/solver/Metrics;

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-static {}, Landroidx/constraintlayout/solver/LinearSystem;->getMetrics()Landroidx/constraintlayout/solver/Metrics;

    move-result-object v8

    iget-wide v9, v8, Landroidx/constraintlayout/solver/Metrics;->nonresolvedWidgets:J

    const-wide/16 v21, 0x1

    add-long v9, v9, v21

    iput-wide v9, v8, Landroidx/constraintlayout/solver/Metrics;->nonresolvedWidgets:J

    :cond_3
    invoke-virtual/range {p7 .. p7}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v21

    invoke-virtual/range {p8 .. p8}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v22

    iget-object v8, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v25

    if-eqz v21, :cond_4

    const/4 v8, 0x1

    goto/16 :goto_0

    :cond_4
    const/4 v8, 0x0

    :goto_0
    if-eqz v22, :cond_5

    add-int/lit8 v8, v8, 0x1

    :cond_5
    if-eqz v25, :cond_6

    add-int/lit8 v8, v8, 0x1

    :cond_6
    move v10, v8

    if-eqz p14, :cond_7

    const/4 v8, 0x3

    goto/16 :goto_1

    :cond_7
    move/from16 v8, p16

    :goto_1
    sget-object v26, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$1;->$SwitchMap$androidx$constraintlayout$solver$widgets$ConstraintWidget$DimensionBehaviour:[I

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p5, v2, v1

    const-string v0, "Ljava/lang/Enum;"

    const-string v1, "ordinal"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual/range {p5 .. p5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->ordinal()I

    move-result v27

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/Enum;"

    const-string v1, "ordinal"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    aget v9, v26, v27

    const/16 v19, 0x2

    const/16 v18, 0x4

    if-eq v9, v11, :cond_8

    move/from16 v1, v19

    if-eq v9, v1, :cond_8

    const/16 v19, 0x3

    move/from16 v1, v19

    if-eq v9, v1, :cond_8

    move/from16 v1, v18

    if-eq v9, v1, :cond_9

    :cond_8
    :goto_2
    const/4 v9, 0x0

    goto/16 :goto_3

    :cond_9
    move/from16 v1, v18

    if-ne v8, v1, :cond_a

    goto/16 :goto_2

    :cond_a
    const/4 v9, 0x1

    :goto_3
    iget v2, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVisibility:I

    move/from16 v19, v2

    const/16 v18, 0x8

    move/from16 v0, v19

    move/from16 v1, v18

    if-ne v0, v1, :cond_b

    const/4 v9, 0x0

    const/16 v18, 0x0

    goto/16 :goto_4

    :cond_b
    move/from16 v18, v9

    move/from16 v9, p10

    :goto_4
    if-eqz p20, :cond_d

    if-nez v21, :cond_c

    if-nez v22, :cond_c

    if-nez v25, :cond_c

    move/from16 v19, p9

    move-object/from16 v0, v15

    move-object/from16 v1, v20

    move/from16 v2, v19

    invoke-virtual/range {v0 .. v2}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;I)V

    goto/16 :goto_5

    :cond_c
    if-eqz v21, :cond_d

    if-nez v22, :cond_d

    invoke-virtual/range {p7 .. p7}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v19

    const/4 v11, 0x6

    move-object/from16 v0, v15

    move-object/from16 v1, v20

    move-object/from16 v2, v13

    move/from16 v3, v19

    move/from16 v4, v11

    invoke-virtual/range {v0 .. v4}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    goto/16 :goto_6

    :cond_d
    :goto_5
    const/4 v11, 0x6

    :goto_6
    if-nez v18, :cond_11

    if-eqz p6, :cond_10

    const/4 v11, 0x0

    const/16 v19, 0x3

    move-object/from16 v0, v15

    move-object/from16 v1, v14

    move-object/from16 v2, v20

    move/from16 v3, v11

    move/from16 v4, v19

    invoke-virtual/range {v0 .. v4}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    const/4 v9, 0x6

    if-lez v6, :cond_e

    move-object/from16 v0, v15

    move-object/from16 v1, v14

    move-object/from16 v2, v20

    move/from16 v3, v6

    move/from16 v4, v9

    invoke-virtual/range {v0 .. v4}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    :cond_e
    const v11, 0x7fffffff

    if-ge v7, v11, :cond_f

    move-object/from16 v0, v15

    move-object/from16 v1, v14

    move-object/from16 v2, v20

    move/from16 v3, v7

    move/from16 v4, v9

    invoke-virtual/range {v0 .. v4}, Landroidx/constraintlayout/solver/LinearSystem;->addLowerThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    :cond_f
    const/4 v11, 0x6

    goto/16 :goto_7

    :cond_10
    const/16 v19, 0x3

    move-object/from16 v0, v15

    move-object/from16 v1, v14

    move-object/from16 v2, v20

    move/from16 v3, v9

    move/from16 v4, v11

    invoke-virtual/range {v0 .. v4}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    :goto_7
    move/from16 v19, p18

    move/from16 p6, v8

    move v5, v10

    move-object/from16 v29, v12

    move-object/from16 v28, v13

    const/4 v6, 0x0

    const/4 v7, 0x2

    move/from16 v8, p17

    goto/16 :goto_e

    :cond_11
    const/16 v19, 0x3

    const/4 v7, -0x2

    move/from16 v19, p17

    move/from16 v0, v19

    if-ne v0, v7, :cond_12

    move/from16 v19, p18

    move v11, v9

    goto/16 :goto_8

    :cond_12
    move/from16 v11, v19

    move/from16 v19, p18

    :goto_8
    move/from16 v0, v19

    if-ne v0, v7, :cond_13

    move/from16 v19, v9

    :cond_13
    const/4 v7, 0x6

    if-lez v11, :cond_14

    move-object/from16 v0, v15

    move-object/from16 v1, v14

    move-object/from16 v2, v20

    move/from16 v3, v11

    move/from16 v4, v7

    invoke-virtual/range {v0 .. v4}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v9 .. v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v11 .. v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/Math;"

    const-string v1, "max"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v9, v11}, Ljava/lang/Math;->max(II)I

    move-result v9

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v9 .. v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/Math;"

    const-string v1, "max"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_14
    if-lez v19, :cond_15

    move-object/from16 v0, v15

    move-object/from16 v1, v14

    move-object/from16 v2, v20

    move/from16 v3, v19

    move/from16 v4, v7

    invoke-virtual/range {v0 .. v4}, Landroidx/constraintlayout/solver/LinearSystem;->addLowerThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v9 .. v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/Math;"

    const-string v1, "min"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move/from16 v0, v9

    move/from16 v1, v19

    invoke-static/range {v0 .. v1}, Ljava/lang/Math;->min(II)I

    move-result v9

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v9 .. v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/Math;"

    const-string v1, "min"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_15
    const/4 v7, 0x1

    if-ne v8, v7, :cond_18

    if-eqz p2, :cond_16

    const/4 v7, 0x6

    move-object/from16 v0, v15

    move-object/from16 v1, v14

    move-object/from16 v2, v20

    move/from16 v3, v9

    move/from16 v4, v7

    invoke-virtual/range {v0 .. v4}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    move/from16 p6, v8

    move v5, v10

    move-object/from16 v29, v12

    move-object/from16 v28, v13

    move/from16 p10, v18

    const/4 v6, 0x0

    move v13, v9

    move/from16 v18, v11

    goto/16 :goto_c

    :cond_16
    const/4 v7, 0x6

    if-eqz p15, :cond_17

    move/from16 p10, v18

    const/16 v18, 0x4

    move-object/from16 v0, v15

    move-object/from16 v1, v14

    move-object/from16 v2, v20

    move/from16 v3, v9

    move/from16 v4, v18

    invoke-virtual/range {v0 .. v4}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    goto/16 :goto_b

    :cond_17
    move/from16 p10, v18

    const/4 v7, 0x1

    const/16 v18, 0x4

    move-object/from16 v0, v15

    move-object/from16 v1, v14

    move-object/from16 v2, v20

    move/from16 v3, v9

    move/from16 v4, v7

    invoke-virtual/range {v0 .. v4}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    goto/16 :goto_b

    :cond_18
    move/from16 p10, v18

    const/4 v7, 0x2

    const/16 v18, 0x4

    if-ne v8, v7, :cond_1b

    invoke-virtual/range {p7 .. p7}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getType()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-result-object v7

    sget-object v18, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-object/from16 v1, v18

    if-eq v7, v1, :cond_1a

    invoke-virtual/range {p7 .. p7}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getType()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-result-object v7

    sget-object v18, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-object/from16 v1, v18

    if-ne v7, v1, :cond_19

    goto/16 :goto_9

    :cond_19
    iget-object v7, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    sget-object v18, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-object/from16 v0, v7

    move-object/from16 v1, v18

    invoke-virtual/range {v0 .. v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v7

    invoke-virtual {v15, v7}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v7

    iget-object v2, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v18, v2

    move-object/from16 p6, v7

    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-object/from16 v0, v18

    move-object/from16 v1, v7

    invoke-virtual/range {v0 .. v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v7

    invoke-virtual {v15, v7}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v7

    goto/16 :goto_a

    :cond_1a
    :goto_9
    iget-object v7, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    sget-object v18, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-object/from16 v0, v7

    move-object/from16 v1, v18

    invoke-virtual/range {v0 .. v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v7

    invoke-virtual {v15, v7}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v7

    iget-object v2, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-object/from16 v18, v2

    move-object/from16 p6, v7

    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-object/from16 v0, v18

    move-object/from16 v1, v7

    invoke-virtual/range {v0 .. v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v7

    invoke-virtual {v15, v7}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v7

    :goto_a
    move-object/from16 v27, p6

    move-object/from16 v18, v7

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/LinearSystem;->createRow()Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v7

    const/16 v23, 0x1

    const/16 v26, 0x6

    move v5, v8

    move-object v8, v14

    move/from16 p6, v5

    move-object/from16 v28, v13

    const/4 v5, 0x6

    move v13, v9

    move-object/from16 v9, v20

    move v5, v10

    const/4 v6, 0x0

    move-object/from16 v10, v18

    move/from16 v18, v11

    move-object/from16 v11, v27

    move-object/from16 v29, v12

    move/from16 v12, p19

    invoke-virtual/range {v7 .. v12}, Landroidx/constraintlayout/solver/ArrayRow;->createRowDimensionRatio(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;F)Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v7

    invoke-virtual {v15, v7}, Landroidx/constraintlayout/solver/LinearSystem;->addConstraint(Landroidx/constraintlayout/solver/ArrayRow;)V

    const/4 v10, 0x0

    goto/16 :goto_d

    :cond_1b
    :goto_b
    move/from16 p6, v8

    move v5, v10

    move/from16 v18, v11

    move-object/from16 v29, v12

    move-object/from16 v28, v13

    const/4 v6, 0x0

    move v13, v9

    :goto_c
    move/from16 v10, p10

    :goto_d
    const/4 v7, 0x2

    if-eqz v10, :cond_1d

    if-eq v5, v7, :cond_1d

    if-nez p14, :cond_1d

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v13 .. v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/Math;"

    const-string v1, "max"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move/from16 v0, v18

    move/from16 v1, v13

    invoke-static/range {v0 .. v1}, Ljava/lang/Math;->max(II)I

    move-result v8

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v8 .. v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/Math;"

    const-string v1, "max"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-lez v19, :cond_1c

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v8 .. v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/Math;"

    const-string v1, "min"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move/from16 v0, v19

    move/from16 v1, v8

    invoke-static/range {v0 .. v1}, Ljava/lang/Math;->min(II)I

    move-result v8

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v8 .. v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/Math;"

    const-string v1, "min"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1c
    const/4 v9, 0x6

    move-object/from16 v0, v15

    move-object/from16 v1, v14

    move-object/from16 v2, v20

    move/from16 v3, v8

    move/from16 v4, v9

    invoke-virtual/range {v0 .. v4}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    move/from16 v8, v18

    const/16 v18, 0x0

    goto/16 :goto_e

    :cond_1d
    move/from16 v8, v18

    move/from16 v18, v10

    :goto_e
    if-eqz p20, :cond_39

    if-eqz p15, :cond_1e

    goto/16 :goto_1c

    :cond_1e
    const/4 v5, 0x5

    if-nez v21, :cond_1f

    if-nez v22, :cond_1f

    if-nez v25, :cond_1f

    if-eqz p2, :cond_37

    move-object/from16 v0, v15

    move-object/from16 v1, v17

    move-object/from16 v2, v14

    move/from16 v3, v6

    move/from16 v4, v5

    invoke-virtual/range {v0 .. v4}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    goto/16 :goto_19

    :cond_1f
    if-eqz v21, :cond_20

    if-nez v22, :cond_20

    if-eqz p2, :cond_37

    move-object/from16 v0, v15

    move-object/from16 v1, v17

    move-object/from16 v2, v14

    move/from16 v3, v6

    move/from16 v4, v5

    invoke-virtual/range {v0 .. v4}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    goto/16 :goto_19

    :cond_20
    if-nez v21, :cond_21

    if-eqz v22, :cond_21

    invoke-virtual/range {p8 .. p8}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v7

    neg-int v7, v7

    move-object/from16 v13, v29

    const/4 v8, 0x6

    invoke-virtual {v15, v14, v13, v7, v8}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    if-eqz p2, :cond_37

    move-object/from16 v0, v15

    move-object/from16 v1, v20

    move-object/from16 v2, v16

    move/from16 v3, v6

    move/from16 v4, v5

    invoke-virtual/range {v0 .. v4}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    goto/16 :goto_19

    :cond_21
    move-object/from16 v13, v29

    if-eqz v21, :cond_37

    if-eqz v22, :cond_37

    if-eqz v18, :cond_2b

    const/4 v12, 0x0

    if-eqz p2, :cond_22

    if-nez p11, :cond_22

    const/4 v6, 0x6

    move-object/from16 v0, v15

    move-object/from16 v1, v14

    move-object/from16 v2, v20

    move/from16 v3, v12

    move/from16 v4, v6

    invoke-virtual/range {v0 .. v4}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    :cond_22
    if-nez p6, :cond_27

    if-gtz v19, :cond_24

    if-lez v8, :cond_23

    goto/16 :goto_f

    :cond_23
    const/4 v6, 0x6

    const/4 v11, 0x0

    goto/16 :goto_10

    :cond_24
    :goto_f
    const/4 v6, 0x4

    const/4 v11, 0x1

    :goto_10
    invoke-virtual/range {p7 .. p7}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v7

    move-object/from16 v10, v28

    move-object/from16 v0, v15

    move-object/from16 v1, v20

    move-object/from16 v2, v10

    move/from16 v3, v7

    move/from16 v4, v6

    invoke-virtual/range {v0 .. v4}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    invoke-virtual/range {p8 .. p8}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v7

    neg-int v7, v7

    invoke-virtual {v15, v14, v13, v7, v6}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    if-gtz v19, :cond_26

    if-lez v8, :cond_25

    goto/16 :goto_11

    :cond_25
    const/4 v6, 0x0

    goto/16 :goto_12

    :cond_26
    :goto_11
    const/4 v6, 0x1

    :goto_12
    move/from16 v21, v11

    const/4 v11, 0x1

    const/16 v19, 0x5

    goto/16 :goto_13

    :cond_27
    move/from16 v9, p6

    move-object/from16 v10, v28

    const/4 v11, 0x1

    if-ne v9, v11, :cond_28

    const/4 v6, 0x1

    const/16 v19, 0x6

    const/16 v21, 0x1

    :goto_13
    move-object/from16 v9, p0

    goto/16 :goto_16

    :cond_28
    const/4 v6, 0x3

    if-ne v9, v6, :cond_2a

    move-object/from16 v9, p0

    if-nez p14, :cond_29

    iget v6, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_29

    if-gtz v19, :cond_29

    const/4 v6, 0x6

    goto/16 :goto_14

    :cond_29
    const/4 v6, 0x4

    :goto_14
    invoke-virtual/range {p7 .. p7}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v7

    move-object/from16 v0, v15

    move-object/from16 v1, v20

    move-object/from16 v2, v10

    move/from16 v3, v7

    move/from16 v4, v6

    invoke-virtual/range {v0 .. v4}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    invoke-virtual/range {p8 .. p8}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v7

    neg-int v7, v7

    invoke-virtual {v15, v14, v13, v7, v6}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    const/4 v6, 0x1

    const/16 v19, 0x5

    const/16 v21, 0x1

    goto/16 :goto_16

    :cond_2a
    move-object/from16 v9, p0

    const/4 v6, 0x0

    goto/16 :goto_15

    :cond_2b
    move-object/from16 v10, v28

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object/from16 v9, p0

    const/4 v6, 0x1

    :goto_15
    const/16 v19, 0x5

    const/16 v21, 0x0

    :goto_16
    if-eqz v6, :cond_2d

    invoke-virtual/range {p7 .. p7}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v22

    invoke-virtual/range {p8 .. p8}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v23

    move-object/from16 v6, p1

    move-object/from16 v7, v20

    move-object v8, v10

    move/from16 v9, v22

    move-object/from16 v22, v10

    move/from16 v10, p13

    const/16 v24, 0x1

    move-object v11, v13

    const/4 v5, 0x0

    move-object v12, v14

    move-object/from16 v17, v13

    move-object/from16 v5, v22

    move/from16 v13, v23

    move-object/from16 v16, v14

    move/from16 v14, v19

    invoke-virtual/range {v6 .. v14}, Landroidx/constraintlayout/solver/LinearSystem;->addCentering(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;IFLandroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    move-object/from16 v6, p7

    iget-object v7, v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    instance-of v7, v7, Landroidx/constraintlayout/solver/widgets/Barrier;

    move-object/from16 v8, p8

    iget-object v9, v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    instance-of v9, v9, Landroidx/constraintlayout/solver/widgets/Barrier;

    if-eqz v7, :cond_2c

    if-nez v9, :cond_2c

    move/from16 v24, p2

    const/4 v7, 0x1

    const/4 v9, 0x5

    const/4 v10, 0x6

    goto/16 :goto_18

    :cond_2c
    if-nez v7, :cond_2e

    if-eqz v9, :cond_2e

    move/from16 v7, p2

    const/4 v9, 0x6

    goto/16 :goto_17

    :cond_2d
    move-object/from16 v6, p7

    move-object/from16 v8, p8

    move-object v5, v10

    move-object/from16 v17, v13

    move-object/from16 v16, v14

    :cond_2e
    move/from16 v7, p2

    move/from16 v24, v7

    const/4 v9, 0x5

    :goto_17
    const/4 v10, 0x5

    :goto_18
    if-eqz v21, :cond_2f

    const/4 v9, 0x6

    const/4 v10, 0x6

    :cond_2f
    if-nez v18, :cond_30

    if-nez v24, :cond_31

    :cond_30
    if-eqz v21, :cond_32

    :cond_31
    invoke-virtual/range {p7 .. p7}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v6

    move-object/from16 v0, v15

    move-object/from16 v1, v20

    move-object/from16 v2, v5

    move/from16 v3, v6

    move/from16 v4, v9

    invoke-virtual/range {v0 .. v4}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    :cond_32
    if-nez v18, :cond_33

    if-nez v7, :cond_34

    :cond_33
    if-eqz v21, :cond_35

    :cond_34
    invoke-virtual/range {p8 .. p8}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v5

    neg-int v5, v5

    move-object/from16 v0, v15

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move/from16 v3, v5

    move/from16 v4, v10

    invoke-virtual/range {v0 .. v4}, Landroidx/constraintlayout/solver/LinearSystem;->addLowerThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    :cond_35
    if-eqz p2, :cond_36

    move-object/from16 v5, p3

    move-object/from16 v6, v16

    const/4 v7, 0x6

    const/4 v8, 0x0

    move-object/from16 v0, v15

    move-object/from16 v1, v20

    move-object/from16 v2, v5

    move/from16 v3, v8

    move/from16 v4, v7

    invoke-virtual/range {v0 .. v4}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    goto/16 :goto_1b

    :cond_36
    move-object/from16 v6, v16

    goto/16 :goto_1a

    :cond_37
    :goto_19
    move-object v6, v14

    :goto_1a
    const/4 v7, 0x6

    const/4 v8, 0x0

    :goto_1b
    if-eqz p2, :cond_38

    move-object/from16 v9, p4

    invoke-virtual {v15, v9, v6, v8, v7}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    :cond_38
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "applyConstraints"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_39
    :goto_1c
    move v10, v5

    move-object v6, v14

    move-object/from16 v5, v16

    move-object/from16 v9, v17

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v11, 0x2

    if-ge v10, v11, :cond_3a

    if-eqz p2, :cond_3a

    move-object/from16 v0, v15

    move-object/from16 v1, v20

    move-object/from16 v2, v5

    move/from16 v3, v8

    move/from16 v4, v7

    invoke-virtual/range {v0 .. v4}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    invoke-virtual {v15, v9, v6, v8, v7}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    :cond_3a
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "applyConstraints"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private isChainHead(I)Z
    .locals 9

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "isChainHead"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    mul-int/lit8 p1, p1, 0x2

    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v5, v5, p1

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const/4 v6, 0x1

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v5, v5, p1

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v7, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v8, v7, p1

    if-eq v5, v8, :cond_0

    add-int/2addr p1, v6

    aget-object v5, v7, p1

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v5, v5, p1

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v7, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object p1, v7, p1

    if-ne v5, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "isChainHead"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v6
.end method


# virtual methods
.method public addToSolver(Landroidx/constraintlayout/solver/LinearSystem;)V
    .locals 43

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "addToSolver"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v20, p0

    move-object/from16 v19, p1

    move-object/from16 v0, v20

    iget-object v5, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v0, v19

    move-object/from16 v1, v5

    invoke-virtual/range {v0 .. v1}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v26

    move-object/from16 v0, v20

    iget-object v5, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v0, v19

    move-object/from16 v1, v5

    invoke-virtual/range {v0 .. v1}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v15

    move-object/from16 v0, v20

    iget-object v5, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v0, v19

    move-object/from16 v1, v5

    invoke-virtual/range {v0 .. v1}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v11

    move-object/from16 v0, v20

    iget-object v5, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v0, v19

    move-object/from16 v1, v5

    invoke-virtual/range {v0 .. v1}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v9

    move-object/from16 v0, v20

    iget-object v5, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v0, v19

    move-object/from16 v1, v5

    invoke-virtual/range {v0 .. v1}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v8

    move-object/from16 v0, v20

    iget-object v5, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    const/16 v6, 0x8

    const/4 v7, 0x1

    const/16 v18, 0x0

    if-eqz v5, :cond_6

    if-eqz v5, :cond_0

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v5, v5, v18

    sget-object v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v10, :cond_0

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    move-object/from16 v0, v20

    iget-object v10, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eqz v10, :cond_1

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v10, v10, v7

    sget-object v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v10, v12, :cond_1

    const/4 v10, 0x1

    goto/16 :goto_1

    :cond_1
    const/4 v10, 0x0

    :goto_1
    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-direct/range {v0 .. v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isChainHead(I)Z

    move-result v12

    if-eqz v12, :cond_2

    move-object/from16 v0, v20

    iget-object v12, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    check-cast v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v0, v12

    move-object/from16 v1, v20

    move/from16 v2, v18

    invoke-virtual/range {v0 .. v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->addChain(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)V

    const/4 v12, 0x1

    goto/16 :goto_2

    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isInHorizontalChain()Z

    move-result v12

    :goto_2
    move-object/from16 v0, v20

    move/from16 v1, v7

    invoke-direct/range {v0 .. v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isChainHead(I)Z

    move-result v13

    if-eqz v13, :cond_3

    move-object/from16 v0, v20

    iget-object v13, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    check-cast v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    move-object/from16 v0, v13

    move-object/from16 v1, v20

    move/from16 v2, v7

    invoke-virtual/range {v0 .. v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->addChain(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)V

    const/4 v13, 0x1

    goto/16 :goto_3

    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isInVerticalChain()Z

    move-result v13

    :goto_3
    if-eqz v5, :cond_4

    move-object/from16 v0, v20

    iget v14, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVisibility:I

    if-eq v14, v6, :cond_4

    move-object/from16 v0, v20

    iget-object v14, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v14, v14, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v14, :cond_4

    move-object/from16 v0, v20

    iget-object v14, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v14, v14, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v14, :cond_4

    move-object/from16 v0, v20

    iget-object v14, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v14, v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v0, v19

    move-object/from16 v1, v14

    invoke-virtual/range {v0 .. v1}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v14

    move-object/from16 v0, v19

    move-object/from16 v1, v14

    move-object/from16 v2, v15

    move/from16 v3, v18

    move/from16 v4, v7

    invoke-virtual/range {v0 .. v4}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    :cond_4
    if-eqz v10, :cond_5

    move-object/from16 v0, v20

    iget v14, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVisibility:I

    if-eq v14, v6, :cond_5

    move-object/from16 v0, v20

    iget-object v14, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v14, v14, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v14, :cond_5

    move-object/from16 v0, v20

    iget-object v14, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v14, v14, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v14, :cond_5

    move-object/from16 v0, v20

    iget-object v14, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v14, :cond_5

    move-object/from16 v0, v20

    iget-object v14, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iget-object v14, v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v0, v19

    move-object/from16 v1, v14

    invoke-virtual/range {v0 .. v1}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v14

    move-object/from16 v0, v19

    move-object/from16 v1, v14

    move-object/from16 v2, v9

    move/from16 v3, v18

    move/from16 v4, v7

    invoke-virtual/range {v0 .. v4}, Landroidx/constraintlayout/solver/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V

    :cond_5
    move/from16 v17, v10

    move/from16 v21, v12

    move/from16 v27, v13

    goto/16 :goto_4

    :cond_6
    const/4 v5, 0x0

    const/16 v17, 0x0

    const/16 v21, 0x0

    const/16 v27, 0x0

    :goto_4
    move-object/from16 v0, v20

    iget v10, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    move-object/from16 v0, v20

    iget v12, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinWidth:I

    if-ge v10, v12, :cond_7

    move v10, v12

    :cond_7
    move-object/from16 v0, v20

    iget v12, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    move-object/from16 v0, v20

    iget v13, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinHeight:I

    if-ge v12, v13, :cond_8

    move v12, v13

    :cond_8
    move-object/from16 v0, v20

    iget-object v13, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v13, v13, v18

    sget-object v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v13, v14, :cond_9

    const/4 v13, 0x1

    goto/16 :goto_5

    :cond_9
    const/4 v13, 0x0

    :goto_5
    move-object/from16 v0, v20

    iget-object v14, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v14, v14, v7

    sget-object v16, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v1, v16

    if-eq v14, v1, :cond_a

    const/4 v14, 0x1

    goto/16 :goto_6

    :cond_a
    const/4 v14, 0x0

    :goto_6
    move-object/from16 v0, v20

    iget v2, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatioSide:I

    move/from16 v16, v2

    move-object/from16 v0, v20

    move/from16 v2, v16

    iput v2, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    move-object/from16 v0, v20

    iget v2, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    move/from16 v16, v2

    move-object/from16 v0, v20

    move/from16 v2, v16

    iput v2, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    move-object/from16 v0, v20

    iget v7, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    move-object/from16 v0, v20

    iget v2, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    move/from16 v18, v2

    const/16 v23, 0x0

    const/16 v24, 0x4

    cmpl-float v16, v16, v23

    if-lez v16, :cond_13

    move-object/from16 v0, v20

    iget v2, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVisibility:I

    move/from16 v16, v2

    const/16 v6, 0x8

    move/from16 v0, v16

    if-eq v0, v6, :cond_13

    move-object/from16 v0, v20

    iget-object v6, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/16 v16, 0x0

    aget-object v6, v6, v16

    sget-object v16, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v28, v8

    const/4 v8, 0x3

    move-object/from16 v1, v16

    if-ne v6, v1, :cond_b

    if-nez v7, :cond_b

    const/4 v7, 0x3

    :cond_b
    move-object/from16 v0, v20

    iget-object v6, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/16 v16, 0x1

    aget-object v6, v6, v16

    sget-object v16, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v1, v16

    if-ne v6, v1, :cond_c

    if-nez v18, :cond_c

    const/16 v18, 0x3

    :cond_c
    move-object/from16 v0, v20

    iget-object v6, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/16 v16, 0x0

    aget-object v6, v6, v16

    sget-object v16, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v1, v16

    if-ne v6, v1, :cond_d

    move-object/from16 v0, v20

    iget-object v6, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/16 v16, 0x1

    aget-object v6, v6, v16

    sget-object v16, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object/from16 v1, v16

    if-ne v6, v1, :cond_d

    if-ne v7, v8, :cond_d

    move/from16 v0, v18

    if-ne v0, v8, :cond_d

    move-object/from16 v0, v20

    move/from16 v1, v5

    move/from16 v2, v17

    move/from16 v3, v13

    move/from16 v4, v14

    invoke-virtual/range {v0 .. v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setupDimensionRatio(ZZZZ)V

    goto/16 :goto_7

    :cond_d
    move-object/from16 v0, v20

    iget-object v6, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v13, 0x0

    aget-object v6, v6, v13

    sget-object v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v6, v14, :cond_f

    if-ne v7, v8, :cond_f

    move-object/from16 v0, v20

    iput v13, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    move-object/from16 v0, v20

    iget v6, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    move-object/from16 v0, v20

    iget v8, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    int-to-float v8, v8

    mul-float v6, v6, v8

    float-to-int v6, v6

    move-object/from16 v0, v20

    iget-object v8, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v13, 0x1

    aget-object v8, v8, v13

    sget-object v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move/from16 v33, v6

    if-eq v8, v10, :cond_e

    move/from16 v34, v12

    move/from16 v31, v18

    const/16 v30, 0x4

    goto/16 :goto_9

    :cond_e
    move/from16 v30, v7

    goto/16 :goto_8

    :cond_f
    const/4 v13, 0x1

    move-object/from16 v0, v20

    iget-object v6, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v6, v6, v13

    sget-object v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v6, v14, :cond_11

    move/from16 v0, v18

    if-ne v0, v8, :cond_11

    move-object/from16 v0, v20

    iput v13, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    move-object/from16 v0, v20

    iget v6, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatioSide:I

    const/4 v8, -0x1

    if-ne v6, v8, :cond_10

    const/high16 v6, 0x3f800000    # 1.0f

    move-object/from16 v0, v20

    iget v8, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    div-float/2addr v6, v8

    move-object/from16 v0, v20

    iput v6, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    :cond_10
    move-object/from16 v0, v20

    iget v6, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    move-object/from16 v0, v20

    iget v8, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    int-to-float v8, v8

    mul-float v6, v6, v8

    float-to-int v6, v6

    move-object/from16 v0, v20

    iget-object v8, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v12, 0x0

    aget-object v8, v8, v12

    sget-object v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move/from16 v34, v6

    move/from16 v30, v7

    move/from16 v33, v10

    if-eq v8, v12, :cond_12

    const/16 v31, 0x4

    goto/16 :goto_9

    :cond_11
    :goto_7
    move/from16 v30, v7

    move/from16 v33, v10

    :goto_8
    move/from16 v34, v12

    :cond_12
    move/from16 v31, v18

    const/16 v32, 0x1

    goto/16 :goto_a

    :cond_13
    move-object/from16 v28, v8

    move/from16 v30, v7

    move/from16 v33, v10

    move/from16 v34, v12

    move/from16 v31, v18

    :goto_9
    const/16 v32, 0x0

    :goto_a
    move-object/from16 v0, v20

    iget-object v6, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    const/4 v7, 0x0

    aput v30, v6, v7

    const/4 v7, 0x1

    aput v31, v6, v7

    if-eqz v32, :cond_15

    move-object/from16 v0, v20

    iget v6, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    const/4 v7, -0x1

    if-eqz v6, :cond_14

    if-ne v6, v7, :cond_16

    :cond_14
    const/16 v29, 0x1

    goto/16 :goto_b

    :cond_15
    const/4 v7, -0x1

    :cond_16
    const/16 v29, 0x0

    :goto_b
    move-object/from16 v0, v20

    iget-object v6, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v8, 0x0

    aget-object v6, v6, v8

    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v6, v8, :cond_17

    move-object/from16 v0, v20

    instance-of v6, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    if-eqz v6, :cond_17

    const/16 v35, 0x1

    goto/16 :goto_c

    :cond_17
    const/16 v35, 0x0

    :goto_c
    move-object/from16 v0, v20

    iget-object v6, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v6

    const/4 v8, 0x1

    xor-int/lit8 v36, v6, 0x1

    move-object/from16 v0, v20

    iget v6, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalResolution:I

    const/16 v18, 0x2

    const/16 v37, 0x0

    move/from16 v1, v18

    if-eq v6, v1, :cond_1a

    move-object/from16 v0, v20

    iget-object v6, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eqz v6, :cond_18

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v0, v19

    move-object/from16 v1, v6

    invoke-virtual/range {v0 .. v1}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v6

    move-object/from16 v25, v6

    goto/16 :goto_d

    :cond_18
    move-object/from16 v25, v37

    :goto_d
    move-object/from16 v0, v20

    iget-object v6, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eqz v6, :cond_19

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v0, v19

    move-object/from16 v1, v6

    invoke-virtual/range {v0 .. v1}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v6

    move-object/from16 v38, v6

    goto/16 :goto_e

    :cond_19
    move-object/from16 v38, v37

    :goto_e
    move-object/from16 v0, v20

    iget-object v6, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/16 v22, 0x0

    aget-object v10, v6, v22

    move-object/from16 v0, v20

    iget-object v12, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v0, v20

    iget-object v13, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v0, v20

    iget v14, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mX:I

    move-object/from16 v0, v20

    iget v2, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinWidth:I

    move/from16 v16, v2

    move-object/from16 v0, v20

    iget-object v6, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMaxDimension:[I

    aget v6, v6, v22

    move/from16 v39, v17

    move/from16 v17, v6

    move-object/from16 v0, v20

    iget v6, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    move/from16 v18, v6

    move-object/from16 v0, v20

    iget v6, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    move/from16 v22, v6

    move-object/from16 v0, v20

    iget v6, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    move/from16 v23, v6

    move-object/from16 v0, v20

    iget v6, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintPercentWidth:F

    move/from16 v24, v6

    move/from16 v40, v5

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    const/4 v8, -0x1

    move/from16 v7, v40

    move-object/from16 v41, v28

    move-object/from16 v8, v38

    move-object/from16 v28, v9

    move-object/from16 v9, v25

    move-object/from16 v42, v11

    move/from16 v11, v35

    move-object/from16 v35, v15

    move/from16 v15, v33

    move/from16 v19, v29

    move/from16 v20, v21

    move/from16 v21, v30

    move/from16 v25, v36

    invoke-direct/range {v5 .. v25}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->applyConstraints(Landroidx/constraintlayout/solver/LinearSystem;ZLandroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;ZLandroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;IIIIFZZIIIFZ)V

    goto/16 :goto_f

    :cond_1a
    move-object/from16 v42, v11

    move-object/from16 v35, v15

    move/from16 v39, v17

    move-object/from16 v41, v28

    move-object/from16 v28, v9

    :goto_f
    move-object/from16 v20, p0

    move-object/from16 v0, v20

    iget v5, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalResolution:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1b

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "addToSolver"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1b
    move-object/from16 v0, v20

    iget-object v5, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/16 v19, 0x1

    aget-object v5, v5, v19

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v6, :cond_1c

    move-object/from16 v0, v20

    instance-of v5, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    if-eqz v5, :cond_1c

    const/4 v11, 0x1

    goto/16 :goto_10

    :cond_1c
    const/4 v11, 0x0

    :goto_10
    if-eqz v32, :cond_1e

    move-object/from16 v0, v20

    iget v5, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    move/from16 v1, v19

    if-eq v5, v1, :cond_1d

    const/4 v6, -0x1

    if-ne v5, v6, :cond_1e

    :cond_1d
    const/16 v21, 0x1

    goto/16 :goto_11

    :cond_1e
    const/16 v21, 0x0

    :goto_11
    move-object/from16 v0, v20

    iget v5, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    if-lez v5, :cond_20

    move-object/from16 v0, v20

    iget-object v5, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v5

    iget v5, v5, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->state:I

    move/from16 v1, v19

    if-ne v5, v1, :cond_1f

    move-object/from16 v0, v20

    iget-object v5, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v5

    move-object/from16 v15, p1

    invoke-virtual {v5, v15}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->addResolvedValue(Landroidx/constraintlayout/solver/LinearSystem;)V

    goto/16 :goto_12

    :cond_1f
    move-object/from16 v15, p1

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getBaselineDistance()I

    move-result v5

    const/4 v6, 0x6

    move-object/from16 v7, v41

    move-object/from16 v9, v42

    invoke-virtual {v15, v7, v9, v5, v6}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    move-object/from16 v0, v20

    iget-object v5, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v5, :cond_21

    move-object/from16 v0, v20

    iget-object v5, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v15, v5}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v5

    const/4 v8, 0x0

    invoke-virtual {v15, v7, v5, v8, v6}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;

    const/16 v25, 0x0

    goto/16 :goto_13

    :cond_20
    move-object/from16 v15, p1

    :goto_12
    move-object/from16 v9, v42

    :cond_21
    move/from16 v25, v36

    :goto_13
    move-object/from16 v0, v20

    iget-object v5, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eqz v5, :cond_22

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v15, v5}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v5

    move-object/from16 v29, v5

    goto/16 :goto_14

    :cond_22
    move-object/from16 v29, v37

    :goto_14
    move-object/from16 v0, v20

    iget-object v5, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eqz v5, :cond_23

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v15, v5}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v5

    move-object v8, v5

    goto/16 :goto_15

    :cond_23
    move-object/from16 v8, v37

    :goto_15
    move-object/from16 v0, v20

    iget-object v5, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v10, v5, v19

    move-object/from16 v0, v20

    iget-object v12, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v0, v20

    iget-object v13, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v0, v20

    iget v14, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mY:I

    move-object/from16 v0, v20

    iget v2, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinHeight:I

    move/from16 v16, v2

    move-object/from16 v0, v20

    iget-object v5, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMaxDimension:[I

    aget v17, v5, v19

    move-object/from16 v0, v20

    iget v2, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    move/from16 v18, v2

    move-object/from16 v0, v20

    iget v5, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    move/from16 v22, v5

    move-object/from16 v0, v20

    iget v5, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    move/from16 v23, v5

    move-object/from16 v0, v20

    iget v5, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintPercentHeight:F

    move/from16 v24, v5

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move/from16 v7, v39

    move-object/from16 v30, v9

    move-object/from16 v9, v29

    move/from16 v15, v34

    move/from16 v19, v21

    move/from16 v20, v27

    move/from16 v21, v31

    invoke-direct/range {v5 .. v25}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->applyConstraints(Landroidx/constraintlayout/solver/LinearSystem;ZLandroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;ZLandroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;IIIIFZZIIIFZ)V

    if-eqz v32, :cond_25

    const/4 v11, 0x6

    move-object/from16 v12, p0

    iget v5, v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_24

    iget v10, v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    move-object/from16 v5, p1

    move-object/from16 v6, v28

    move-object/from16 v7, v30

    move-object/from16 v8, v35

    move-object/from16 v9, v26

    invoke-virtual/range {v5 .. v11}, Landroidx/constraintlayout/solver/LinearSystem;->addRatio(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;FI)V

    goto/16 :goto_16

    :cond_24
    iget v10, v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    const/4 v11, 0x6

    move-object/from16 v5, p1

    move-object/from16 v6, v35

    move-object/from16 v7, v26

    move-object/from16 v8, v28

    move-object/from16 v9, v30

    invoke-virtual/range {v5 .. v11}, Landroidx/constraintlayout/solver/LinearSystem;->addRatio(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;FI)V

    goto/16 :goto_16

    :cond_25
    move-object/from16 v12, p0

    :goto_16
    iget-object v5, v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_26

    iget-object v5, v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getOwner()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v5

    iget v6, v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCircleConstraintAngle:F

    const/high16 v7, 0x42b40000    # 90.0f

    add-float/2addr v6, v7

    float-to-double v6, v6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v6 .. v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/Math;"

    const-string v1, "toRadians"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v6 .. v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/Math;"

    const-string v1, "toRadians"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    double-to-float v6, v6

    iget-object v7, v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v7

    move-object/from16 v8, p1

    invoke-virtual {v8, v12, v5, v6, v7}, Landroidx/constraintlayout/solver/LinearSystem;->addCenterPoint(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;FI)V

    :cond_26
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "addToSolver"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public allowedInBarrier()Z
    .locals 7

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "allowedInBarrier"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVisibility:I

    const/16 v6, 0x8

    if-eq v5, v6, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "allowedInBarrier"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5
.end method

.method public analyze(I)V
    .locals 5

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "analyze"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1, p0}, Landroidx/constraintlayout/solver/widgets/Optimizer;->analyze(ILandroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "analyze"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)V
    .locals 11

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const/4 v1, 0x6

    aput-object p2, v2, v1

    const/4 v1, 0x7

    aput-object p3, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "connect"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;->STRONG:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;

    const/4 v9, 0x0

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    invoke-virtual/range {v5 .. v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;ILandroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "connect"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;I)V
    .locals 11

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const/4 v1, 0x6

    aput-object p2, v2, v1

    const/4 v1, 0x7

    aput-object p3, v2, v1

    const/16 v1, 0x8

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "connect"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;->STRONG:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    move v9, p4

    invoke-virtual/range {v5 .. v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;ILandroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "connect"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;ILandroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;)V
    .locals 12

    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const/4 v1, 0x6

    aput-object p2, v2, v1

    const/4 v1, 0x7

    aput-object p3, v2, v1

    const/16 v1, 0x8

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/16 v1, 0x9

    aput-object p5, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "connect"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v11, 0x0

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    move/from16 v9, p4

    move-object/from16 v10, p5

    invoke-virtual/range {v5 .. v11}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;ILandroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;I)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "connect"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;ILandroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;I)V
    .locals 20

    const/16 v2, 0xb

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const/4 v1, 0x6

    aput-object p2, v2, v1

    const/4 v1, 0x7

    aput-object p3, v2, v1

    const/16 v1, 0x8

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/16 v1, 0x9

    aput-object p5, v2, v1

    const/16 v1, 0xa

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "connect"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v13, p0

    move-object/from16 v5, p1

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    move/from16 v16, p6

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    const/16 v17, 0x0

    if-ne v5, v6, :cond_c

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne v15, v5, :cond_8

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-object/from16 v0, p0

    move-object/from16 v1, v5

    invoke-virtual/range {v0 .. v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v5

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-object/from16 v0, p0

    move-object/from16 v1, v6

    invoke-virtual/range {v0 .. v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v6

    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-object/from16 v0, p0

    move-object/from16 v1, v7

    invoke-virtual/range {v0 .. v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v15

    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-object/from16 v0, p0

    move-object/from16 v1, v7

    invoke-virtual/range {v0 .. v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v18

    const/16 v19, 0x1

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_2
    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    sget-object v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    const/4 v10, 0x0

    move-object/from16 v6, p0

    move-object/from16 v8, p2

    move-object/from16 v11, p5

    move/from16 v12, p6

    invoke-virtual/range {v6 .. v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;ILandroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;I)V

    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    sget-object v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual/range {v6 .. v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;ILandroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;I)V

    const/4 v5, 0x1

    :goto_0
    if-eqz v15, :cond_3

    invoke-virtual {v15}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v6

    if-nez v6, :cond_4

    :cond_3
    if-eqz v18, :cond_5

    move-object/from16 v0, v18

    invoke-virtual/range {v0 .. v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_4
    const/16 v19, 0x0

    goto/16 :goto_1

    :cond_5
    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    sget-object v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    const/4 v10, 0x0

    move-object/from16 v6, p0

    move-object/from16 v8, p2

    move-object/from16 v11, p5

    move/from16 v12, p6

    invoke-virtual/range {v6 .. v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;ILandroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;I)V

    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    sget-object v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual/range {v6 .. v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;ILandroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;I)V

    :goto_1
    if-eqz v5, :cond_6

    if-eqz v19, :cond_6

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-object/from16 v0, p0

    move-object/from16 v1, v5

    invoke-virtual/range {v0 .. v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v5

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v14, v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v6

    move-object/from16 v0, v5

    move-object/from16 v1, v6

    move/from16 v2, v17

    move/from16 v3, v16

    invoke-virtual/range {v0 .. v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;II)Z

    goto/16 :goto_7

    :cond_6
    if-eqz v5, :cond_7

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-object/from16 v0, p0

    move-object/from16 v1, v5

    invoke-virtual/range {v0 .. v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v5

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v14, v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v6

    move-object/from16 v0, v5

    move-object/from16 v1, v6

    move/from16 v2, v17

    move/from16 v3, v16

    invoke-virtual/range {v0 .. v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;II)Z

    goto/16 :goto_7

    :cond_7
    if-eqz v19, :cond_1d

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-object/from16 v0, p0

    move-object/from16 v1, v5

    invoke-virtual/range {v0 .. v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v5

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v14, v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v6

    move-object/from16 v0, v5

    move-object/from16 v1, v6

    move/from16 v2, v17

    move/from16 v3, v16

    invoke-virtual/range {v0 .. v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;II)Z

    goto/16 :goto_7

    :cond_8
    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-eq v15, v5, :cond_b

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne v15, v5, :cond_9

    goto/16 :goto_2

    :cond_9
    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-eq v15, v5, :cond_a

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne v15, v5, :cond_1d

    :cond_a
    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    const/4 v10, 0x0

    move-object/from16 v6, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v11, p5

    move/from16 v12, p6

    invoke-virtual/range {v6 .. v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;ILandroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;I)V

    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual/range {v6 .. v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;ILandroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;I)V

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-object/from16 v0, p0

    move-object/from16 v1, v5

    invoke-virtual/range {v0 .. v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v5

    invoke-virtual/range {p2 .. p3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v6

    move-object/from16 v0, v5

    move-object/from16 v1, v6

    move/from16 v2, v17

    move/from16 v3, v16

    invoke-virtual/range {v0 .. v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;II)Z

    goto/16 :goto_7

    :cond_b
    :goto_2
    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    const/4 v10, 0x0

    move-object/from16 v6, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v11, p5

    move/from16 v12, p6

    invoke-virtual/range {v6 .. v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;ILandroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;I)V

    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-object/from16 v6, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v11, p5

    move/from16 v12, p6

    :try_start_0
    invoke-virtual/range {v6 .. v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;ILandroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-object/from16 v0, p0

    move-object/from16 v1, v5

    invoke-virtual/range {v0 .. v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v5

    invoke-virtual/range {p2 .. p3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v6

    move-object/from16 v0, v5

    move-object/from16 v1, v6

    move/from16 v2, v17

    move/from16 v3, v16

    invoke-virtual/range {v0 .. v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;II)Z

    goto/16 :goto_7

    :cond_c
    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne v5, v6, :cond_e

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-eq v15, v6, :cond_d

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne v15, v6, :cond_e

    :cond_d
    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-object/from16 v0, p0

    move-object/from16 v1, v5

    invoke-virtual/range {v0 .. v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v5

    invoke-virtual/range {p2 .. p3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v6

    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-object/from16 v0, p0

    move-object/from16 v1, v7

    invoke-virtual/range {v0 .. v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v7

    move-object/from16 v0, v5

    move-object/from16 v1, v6

    move/from16 v2, v17

    move/from16 v3, v16

    invoke-virtual/range {v0 .. v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;II)Z

    move-object/from16 v0, v7

    move-object/from16 v1, v6

    move/from16 v2, v17

    move/from16 v3, v16

    invoke-virtual/range {v0 .. v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;II)Z

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-object/from16 v0, p0

    move-object/from16 v1, v5

    invoke-virtual/range {v0 .. v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v5

    move-object/from16 v0, v5

    move-object/from16 v1, v6

    move/from16 v2, v17

    move/from16 v3, v16

    invoke-virtual/range {v0 .. v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;II)Z

    goto/16 :goto_7

    :cond_e
    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne v5, v6, :cond_10

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-eq v15, v6, :cond_f

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne v15, v6, :cond_10

    :cond_f
    invoke-virtual/range {p2 .. p3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v5

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-object/from16 v0, p0

    move-object/from16 v1, v6

    invoke-virtual/range {v0 .. v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v6

    move-object/from16 v0, v6

    move-object/from16 v1, v5

    move/from16 v2, v17

    move/from16 v3, v16

    invoke-virtual/range {v0 .. v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;II)Z

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-object/from16 v0, p0

    move-object/from16 v1, v6

    invoke-virtual/range {v0 .. v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v6

    move-object/from16 v0, v6

    move-object/from16 v1, v5

    move/from16 v2, v17

    move/from16 v3, v16

    invoke-virtual/range {v0 .. v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;II)Z

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-object/from16 v0, p0

    move-object/from16 v1, v6

    invoke-virtual/range {v0 .. v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v6

    move-object/from16 v0, v6

    move-object/from16 v1, v5

    move/from16 v2, v17

    move/from16 v3, v16

    invoke-virtual/range {v0 .. v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;II)Z

    goto/16 :goto_7

    :cond_10
    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne v5, v6, :cond_11

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne v15, v6, :cond_11

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-object/from16 v0, p0

    move-object/from16 v1, v5

    invoke-virtual/range {v0 .. v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v5

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v14, v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v6

    move-object/from16 v0, v5

    move-object/from16 v1, v6

    move/from16 v2, v17

    move/from16 v3, v16

    invoke-virtual/range {v0 .. v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;II)Z

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-object/from16 v0, p0

    move-object/from16 v1, v5

    invoke-virtual/range {v0 .. v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v5

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v14, v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v6

    move-object/from16 v0, v5

    move-object/from16 v1, v6

    move/from16 v2, v17

    move/from16 v3, v16

    invoke-virtual/range {v0 .. v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;II)Z

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-object/from16 v0, p0

    move-object/from16 v1, v5

    invoke-virtual/range {v0 .. v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v5

    invoke-virtual/range {p2 .. p3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v6

    move-object/from16 v0, v5

    move-object/from16 v1, v6

    move/from16 v2, v17

    move/from16 v3, v16

    invoke-virtual/range {v0 .. v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;II)Z

    goto/16 :goto_7

    :cond_11
    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne v5, v6, :cond_12

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne v15, v6, :cond_12

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-object/from16 v0, p0

    move-object/from16 v1, v5

    invoke-virtual/range {v0 .. v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v5

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v14, v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v6

    move-object/from16 v0, v5

    move-object/from16 v1, v6

    move/from16 v2, v17

    move/from16 v3, v16

    invoke-virtual/range {v0 .. v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;II)Z

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-object/from16 v0, p0

    move-object/from16 v1, v5

    invoke-virtual/range {v0 .. v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v5

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v14, v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v6

    move-object/from16 v0, v5

    move-object/from16 v1, v6

    move/from16 v2, v17

    move/from16 v3, v16

    invoke-virtual/range {v0 .. v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;II)Z

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-object/from16 v0, p0

    move-object/from16 v1, v5

    invoke-virtual/range {v0 .. v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v5

    invoke-virtual/range {p2 .. p3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v6

    move-object/from16 v0, v5

    move-object/from16 v1, v6

    move/from16 v2, v17

    move/from16 v3, v16

    invoke-virtual/range {v0 .. v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;II)Z

    goto/16 :goto_7

    :cond_12
    invoke-virtual/range {p0 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v6

    invoke-virtual/range {p2 .. p3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isValidConnection(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;)Z

    move-result v8

    if-eqz v8, :cond_1d

    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BASELINE:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne v5, v8, :cond_15

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-object/from16 v0, p0

    move-object/from16 v1, v5

    invoke-virtual/range {v0 .. v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v5

    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-object/from16 v0, p0

    move-object/from16 v1, v8

    invoke-virtual/range {v0 .. v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v8

    if-eqz v5, :cond_13

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    :cond_13
    if-eqz v8, :cond_14

    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    :cond_14
    :goto_3
    move-object/from16 v5, p5

    goto/16 :goto_6

    :cond_15
    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-eq v5, v8, :cond_19

    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne v5, v8, :cond_16

    goto/16 :goto_4

    :cond_16
    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-eq v5, v8, :cond_17

    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    if-ne v5, v8, :cond_1c

    :cond_17
    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-object/from16 v0, p0

    move-object/from16 v1, v8

    invoke-virtual/range {v0 .. v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v9

    if-eq v9, v7, :cond_18

    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    :cond_18
    invoke-virtual/range {p0 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getOpposite()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v5

    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-object/from16 v0, p0

    move-object/from16 v1, v8

    invoke-virtual/range {v0 .. v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v9

    if-eqz v9, :cond_1c

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    goto/16 :goto_5

    :cond_19
    :goto_4
    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BASELINE:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-object/from16 v0, p0

    move-object/from16 v1, v8

    invoke-virtual/range {v0 .. v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v8

    if-eqz v8, :cond_1a

    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    :cond_1a
    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-object/from16 v0, p0

    move-object/from16 v1, v8

    invoke-virtual/range {v0 .. v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v9

    if-eq v9, v7, :cond_1b

    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    :cond_1b
    invoke-virtual/range {p0 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getOpposite()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v5

    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-object/from16 v0, p0

    move-object/from16 v1, v8

    invoke-virtual/range {v0 .. v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v9

    if-eqz v9, :cond_1c

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    :cond_1c
    :goto_5
    move/from16 v17, p4

    goto/16 :goto_3

    :goto_6
    move-object/from16 v0, v6

    move-object/from16 v1, v7

    move/from16 v2, v17

    move-object/from16 v3, v5

    move/from16 v4, v16

    invoke-virtual/range {v0 .. v4}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;ILandroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;I)Z

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getOwner()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v5

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getOwner()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connectedTo(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    :cond_1d
    :goto_7
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "connect"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v5

    move-object v6, v5

    goto/16 :goto_9

    :goto_8
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "connect"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v6

    :goto_9
    goto/16 :goto_8
.end method

.method public connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V
    .locals 11

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const/4 v1, 0x6

    aput-object p2, v2, v1

    const/4 v1, 0x7

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "connect"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;->STRONG:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;

    const/4 v10, 0x0

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move v8, p3

    invoke-virtual/range {v5 .. v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;ILandroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;I)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "connect"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;II)V
    .locals 11

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const/4 v1, 0x6

    aput-object p2, v2, v1

    const/4 v1, 0x7

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/16 v1, 0x8

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "connect"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;->STRONG:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move v8, p3

    move v10, p4

    invoke-virtual/range {v5 .. v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;ILandroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;I)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "connect"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;ILandroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;I)V
    .locals 13

    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const/4 v1, 0x6

    aput-object p2, v2, v1

    const/4 v1, 0x7

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/16 v1, 0x8

    aput-object p4, v2, v1

    const/16 v1, 0x9

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "connect"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getOwner()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v5

    if-ne v5, p0, :cond_0

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getType()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-result-object v7

    invoke-virtual {p2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getOwner()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v8

    invoke-virtual {p2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getType()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    move-result-object v9

    move-object v6, p0

    move/from16 v10, p3

    move-object/from16 v11, p4

    move/from16 v12, p5

    invoke-virtual/range {v6 .. v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;ILandroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;I)V

    :cond_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "connect"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public connectCircularConstraint(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;FI)V
    .locals 11

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const/4 v1, 0x6

    invoke-static/range {p2 .. p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x7

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "connectCircularConstraint"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    const/4 v10, 0x0

    move-object v5, p0

    move-object v7, p1

    move v9, p3

    invoke-virtual/range {v5 .. v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->immediateConnect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;II)V

    iput p2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCircleConstraintAngle:F

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "connectCircularConstraint"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public connectedTo(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V
    .locals 5

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "connectedTo"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "connectedTo"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public createObjectVariables(Landroidx/constraintlayout/solver/LinearSystem;)V
    .locals 6

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "createObjectVariables"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v5}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v5}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v5}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v5}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    iget v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    if-lez v5, :cond_0

    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v5}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    :cond_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "createObjectVariables"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public disconnectUnlockedWidget(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V
    .locals 11

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "disconnectUnlockedWidget"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchors()Ljava/util/ArrayList;

    move-result-object v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Ljava/util/ArrayList;"

    const-string v1, "size"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v6 .. v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/util/ArrayList;"

    const-string v1, "size"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_1

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v7 .. v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/util/ArrayList;"

    const-string v1, "get"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v8, v2, v1

    const-string v0, "Ljava/util/ArrayList;"

    const-string v1, "get"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    check-cast v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getOwner()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v9

    if-ne v9, p1, :cond_0

    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getConnectionCreator()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_0

    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_1
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "disconnectUnlockedWidget"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public disconnectWidget(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V
    .locals 10

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "disconnectWidget"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchors()Ljava/util/ArrayList;

    move-result-object v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Ljava/util/ArrayList;"

    const-string v1, "size"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v6 .. v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/util/ArrayList;"

    const-string v1, "size"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_1

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v7 .. v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/util/ArrayList;"

    const-string v1, "get"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v8, v2, v1

    const-string v0, "Ljava/util/ArrayList;"

    const-string v1, "get"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    check-cast v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getOwner()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v9

    if-ne v9, p1, :cond_0

    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_1
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "disconnectWidget"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public forceUpdateDrawPosition()V
    .locals 9

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "forceUpdateDrawPosition"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mX:I

    iget v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mY:I

    iget v7, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    add-int/2addr v7, v5

    iget v8, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    add-int/2addr v8, v6

    iput v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDrawX:I

    iput v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDrawY:I

    sub-int/2addr v7, v5

    iput v7, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDrawWidth:I

    sub-int/2addr v8, v6

    iput v8, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDrawHeight:I

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "forceUpdateDrawPosition"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .locals 7

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "getAnchor"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$1;->$SwitchMap$androidx$constraintlayout$solver$widgets$ConstraintAnchor$Type:[I

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const-string v0, "Ljava/lang/Enum;"

    const-string v1, "ordinal"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v6 .. v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/Enum;"

    const-string v1, "ordinal"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    new-instance v5, Ljava/lang/AssertionError;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const-string v0, "Ljava/lang/Enum;"

    const-string v1, "name"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->name()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const-string v0, "Ljava/lang/Enum;"

    const-string v1, "name"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {v5, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "getAnchor"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v5

    :pswitch_0
    const/4 p1, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "getAnchor"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p1

    :pswitch_1
    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenterY:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "getAnchor"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p1

    :pswitch_2
    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenterX:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "getAnchor"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p1

    :pswitch_3
    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "getAnchor"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p1

    :pswitch_4
    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "getAnchor"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p1

    :pswitch_5
    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "getAnchor"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p1

    :pswitch_6
    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "getAnchor"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p1

    :pswitch_7
    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "getAnchor"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p1

    :pswitch_8
    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "getAnchor"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getAnchors()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "getAnchors"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "getAnchors"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5
.end method

.method public getBaselineDistance()I
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "getBaselineDistance"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "getBaselineDistance"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5
.end method

.method public getBiasPercent(I)F
    .locals 6

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "getBiasPercent"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_0

    iget p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "getBiasPercent"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p1

    :cond_0
    const/4 v5, 0x1

    if-ne p1, v5, :cond_1

    iget p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "getBiasPercent"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p1

    :cond_1
    const/high16 p1, -0x40800000    # -1.0f

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "getBiasPercent"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p1
.end method

.method public getBottom()I
    .locals 7

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "getBottom"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getY()I

    move-result v5

    iget v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    add-int/2addr v5, v6

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "getBottom"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5
.end method

.method public getCompanionWidget()Ljava/lang/Object;
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "getCompanionWidget"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCompanionWidget:Ljava/lang/Object;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "getCompanionWidget"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5
.end method

.method public getContainerItemSkip()I
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "getContainerItemSkip"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mContainerItemSkip:I

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "getContainerItemSkip"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5
.end method

.method public getDebugName()Ljava/lang/String;
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "getDebugName"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDebugName:Ljava/lang/String;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "getDebugName"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5
.end method

.method public getDimensionBehaviour(I)Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    .locals 6

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "getDimensionBehaviour"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object p1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "getDimensionBehaviour"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p1

    :cond_0
    const/4 v5, 0x1

    if-ne p1, v5, :cond_1

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object p1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "getDimensionBehaviour"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p1

    :cond_1
    const/4 p1, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "getDimensionBehaviour"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p1
.end method

.method public getDimensionRatio()F
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "getDimensionRatio"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "getDimensionRatio"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5
.end method

.method public getDimensionRatioSide()I
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "getDimensionRatioSide"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatioSide:I

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "getDimensionRatioSide"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5
.end method

.method public getDrawBottom()I
    .locals 7

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "getDrawBottom"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getDrawY()I

    move-result v5

    iget v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDrawHeight:I

    add-int/2addr v5, v6

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "getDrawBottom"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5
.end method

.method public getDrawHeight()I
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "getDrawHeight"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDrawHeight:I

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "getDrawHeight"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5
.end method

.method public getDrawRight()I
    .locals 7

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "getDrawRight"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getDrawX()I

    move-result v5

    iget v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDrawWidth:I

    add-int/2addr v5, v6

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "getDrawRight"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5
.end method

.method public getDrawWidth()I
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "getDrawWidth"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDrawWidth:I

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "getDrawWidth"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5
.end method

.method public getDrawX()I
    .locals 7

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "getDrawX"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDrawX:I

    iget v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mOffsetX:I

    add-int/2addr v5, v6

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "getDrawX"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5
.end method

.method public getDrawY()I
    .locals 7

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "getDrawY"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDrawY:I

    iget v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mOffsetY:I

    add-int/2addr v5, v6

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "getDrawY"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5
.end method

.method public getHeight()I
    .locals 7

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "getHeight"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVisibility:I

    const/16 v6, 0x8

    if-ne v5, v6, :cond_0

    const/4 v5, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "getHeight"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5

    :cond_0
    iget v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "getHeight"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5
.end method

.method public getHorizontalBiasPercent()F
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "getHorizontalBiasPercent"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "getHorizontalBiasPercent"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5
.end method

.method public getHorizontalChainControlWidget()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .locals 10

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "getHorizontalChainControlWidget"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isInHorizontalChain()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_5

    move-object v7, p0

    move-object v5, v6

    :goto_0
    if-nez v5, :cond_6

    if-eqz v7, :cond_6

    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v7, v8}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v8

    if-nez v8, :cond_0

    move-object v8, v6

    goto :goto_1

    :cond_0
    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v8

    :goto_1
    if-nez v8, :cond_1

    move-object v8, v6

    goto :goto_2

    :cond_1
    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getOwner()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v8

    :goto_2
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v9

    if-ne v8, v9, :cond_2

    move-object v5, v7

    goto :goto_4

    :cond_2
    if-nez v8, :cond_3

    move-object v9, v6

    goto :goto_3

    :cond_3
    sget-object v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v8, v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v9

    :goto_3
    if-eqz v9, :cond_4

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getOwner()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v9

    if-eq v9, v7, :cond_4

    move-object v5, v7

    goto :goto_0

    :cond_4
    move-object v7, v8

    goto :goto_0

    :cond_5
    move-object v5, v6

    :cond_6
    :goto_4
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "getHorizontalChainControlWidget"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5
.end method

.method public getHorizontalChainStyle()I
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "getHorizontalChainStyle"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "getHorizontalChainStyle"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5
.end method

.method public getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    .locals 7

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "getHorizontalDimensionBehaviour"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "getHorizontalDimensionBehaviour"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5
.end method

.method public getInternalDrawBottom()I
    .locals 7

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "getInternalDrawBottom"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDrawY:I

    iget v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDrawHeight:I

    add-int/2addr v5, v6

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "getInternalDrawBottom"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5
.end method

.method public getInternalDrawRight()I
    .locals 7

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "getInternalDrawRight"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDrawX:I

    iget v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDrawWidth:I

    add-int/2addr v5, v6

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "getInternalDrawRight"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5
.end method

.method getInternalDrawX()I
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "getInternalDrawX"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDrawX:I

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "getInternalDrawX"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5
.end method

.method getInternalDrawY()I
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "getInternalDrawY"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDrawY:I

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "getInternalDrawY"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5
.end method

.method public getLeft()I
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "getLeft"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getX()I

    move-result v5

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "getLeft"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5
.end method

.method public getLength(I)I
    .locals 6

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "getLength"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result p1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "getLength"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p1

    :cond_0
    const/4 v5, 0x1

    if-ne p1, v5, :cond_1

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result p1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "getLength"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p1

    :cond_1
    const/4 p1, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "getLength"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p1
.end method

.method public getMaxHeight()I
    .locals 7

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "getMaxHeight"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMaxDimension:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "getMaxHeight"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5
.end method

.method public getMaxWidth()I
    .locals 7

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "getMaxWidth"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMaxDimension:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "getMaxWidth"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5
.end method

.method public getMinHeight()I
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "getMinHeight"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinHeight:I

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "getMinHeight"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5
.end method

.method public getMinWidth()I
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "getMinWidth"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinWidth:I

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "getMinWidth"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5
.end method

.method public getOptimizerWrapHeight()I
    .locals 9

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "getOptimizerWrapHeight"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    iget-object v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v6, v8, :cond_2

    iget v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-ne v6, v7, :cond_0

    iget v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v6 .. v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v5 .. v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/Math;"

    const-string v1, "max"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v5 .. v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/Math;"

    const-string v1, "max"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    if-lez v5, :cond_1

    iput v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    iget v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    if-lez v6, :cond_2

    if-ge v6, v5, :cond_2

    move v5, v6

    :cond_2
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "getOptimizerWrapHeight"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5
.end method

.method public getOptimizerWrapWidth()I
    .locals 9

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "getOptimizerWrapWidth"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    iget-object v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v6, v8, :cond_2

    iget v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    const/4 v8, 0x1

    if-ne v6, v8, :cond_0

    iget v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v6 .. v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v5 .. v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/Math;"

    const-string v1, "max"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v5 .. v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/Math;"

    const-string v1, "max"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    if-lez v5, :cond_1

    iput v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    iget v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    if-lez v6, :cond_2

    if-ge v6, v5, :cond_2

    move v5, v6

    :cond_2
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "getOptimizerWrapWidth"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5
.end method

.method public getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "getParent"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "getParent"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5
.end method

.method getRelativePositioning(I)I
    .locals 6

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "getRelativePositioning"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_0

    iget p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRelX:I

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "getRelativePositioning"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p1

    :cond_0
    const/4 v5, 0x1

    if-ne p1, v5, :cond_1

    iget p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRelY:I

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "getRelativePositioning"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p1

    :cond_1
    const/4 p1, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "getRelativePositioning"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p1
.end method

.method public getResolutionHeight()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "getResolutionHeight"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolutionHeight:Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    if-nez v5, :cond_0

    new-instance v5, Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    invoke-direct {v5}, Landroidx/constraintlayout/solver/widgets/ResolutionDimension;-><init>()V

    iput-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolutionHeight:Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    :cond_0
    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolutionHeight:Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "getResolutionHeight"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5
.end method

.method public getResolutionWidth()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "getResolutionWidth"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolutionWidth:Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    if-nez v5, :cond_0

    new-instance v5, Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    invoke-direct {v5}, Landroidx/constraintlayout/solver/widgets/ResolutionDimension;-><init>()V

    iput-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolutionWidth:Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    :cond_0
    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolutionWidth:Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "getResolutionWidth"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5
.end method

.method public getRight()I
    .locals 7

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "getRight"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getX()I

    move-result v5

    iget v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    add-int/2addr v5, v6

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "getRight"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5
.end method

.method public getRootWidgetContainer()Landroidx/constraintlayout/solver/widgets/WidgetContainer;
    .locals 7

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "getRootWidgetContainer"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v5, p0

    :goto_0
    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v5

    goto :goto_0

    :cond_0
    instance-of v6, v5, Landroidx/constraintlayout/solver/widgets/WidgetContainer;

    if-eqz v6, :cond_1

    check-cast v5, Landroidx/constraintlayout/solver/widgets/WidgetContainer;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "getRootWidgetContainer"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5

    :cond_1
    const/4 v5, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "getRootWidgetContainer"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5
.end method

.method protected getRootX()I
    .locals 7

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "getRootX"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mX:I

    iget v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mOffsetX:I

    add-int/2addr v5, v6

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "getRootX"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5
.end method

.method protected getRootY()I
    .locals 7

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "getRootY"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mY:I

    iget v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mOffsetY:I

    add-int/2addr v5, v6

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "getRootY"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5
.end method

.method public getTop()I
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "getTop"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getY()I

    move-result v5

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "getTop"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5
.end method

.method public getType()Ljava/lang/String;
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "getType"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mType:Ljava/lang/String;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "getType"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5
.end method

.method public getVerticalBiasPercent()F
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "getVerticalBiasPercent"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "getVerticalBiasPercent"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5
.end method

.method public getVerticalChainControlWidget()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .locals 10

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "getVerticalChainControlWidget"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isInVerticalChain()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_5

    move-object v7, p0

    move-object v5, v6

    :goto_0
    if-nez v5, :cond_6

    if-eqz v7, :cond_6

    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v7, v8}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v8

    if-nez v8, :cond_0

    move-object v8, v6

    goto :goto_1

    :cond_0
    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v8

    :goto_1
    if-nez v8, :cond_1

    move-object v8, v6

    goto :goto_2

    :cond_1
    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getOwner()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v8

    :goto_2
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v9

    if-ne v8, v9, :cond_2

    move-object v5, v7

    goto :goto_4

    :cond_2
    if-nez v8, :cond_3

    move-object v9, v6

    goto :goto_3

    :cond_3
    sget-object v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v8, v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v9

    :goto_3
    if-eqz v9, :cond_4

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getOwner()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v9

    if-eq v9, v7, :cond_4

    move-object v5, v7

    goto :goto_0

    :cond_4
    move-object v7, v8

    goto :goto_0

    :cond_5
    move-object v5, v6

    :cond_6
    :goto_4
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "getVerticalChainControlWidget"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5
.end method

.method public getVerticalChainStyle()I
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "getVerticalChainStyle"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "getVerticalChainStyle"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5
.end method

.method public getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    .locals 7

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "getVerticalDimensionBehaviour"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "getVerticalDimensionBehaviour"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5
.end method

.method public getVisibility()I
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "getVisibility"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVisibility:I

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "getVisibility"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5
.end method

.method public getWidth()I
    .locals 7

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "getWidth"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVisibility:I

    const/16 v6, 0x8

    if-ne v5, v6, :cond_0

    const/4 v5, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "getWidth"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5

    :cond_0
    iget v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "getWidth"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5
.end method

.method public getWrapHeight()I
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "getWrapHeight"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWrapHeight:I

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "getWrapHeight"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5
.end method

.method public getWrapWidth()I
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "getWrapWidth"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWrapWidth:I

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "getWrapWidth"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5
.end method

.method public getX()I
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "getX"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mX:I

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "getX"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5
.end method

.method public getY()I
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "getY"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mY:I

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "getY"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5
.end method

.method public hasAncestor(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)Z
    .locals 9

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "hasAncestor"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v5

    const/4 v6, 0x1

    if-ne v5, p1, :cond_0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "hasAncestor"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v6

    :cond_0
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v7

    const/4 v8, 0x0

    if-ne v5, v7, :cond_1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "hasAncestor"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v8

    :cond_1
    :goto_0
    if-eqz v5, :cond_4

    if-ne v5, p1, :cond_2

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "hasAncestor"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v6

    :cond_2
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v7

    if-ne v5, v7, :cond_3

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "hasAncestor"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v6

    :cond_3
    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v5

    goto :goto_0

    :cond_4
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "hasAncestor"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v8
.end method

.method public hasBaseline()Z
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "hasBaseline"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    if-lez v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "hasBaseline"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5
.end method

.method public immediateConnect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;II)V
    .locals 12

    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const/4 v1, 0x6

    aput-object p2, v2, v1

    const/4 v1, 0x7

    aput-object p3, v2, v1

    const/16 v1, 0x8

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/16 v1, 0x9

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "immediateConnect"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v5

    invoke-virtual {p2, p3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v6

    sget-object v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;->STRONG:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;

    const/4 v10, 0x0

    const/4 v11, 0x1

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-virtual/range {v5 .. v11}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;IILandroidx/constraintlayout/solver/widgets/ConstraintAnchor$Strength;IZ)Z

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "immediateConnect"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public isFullyResolved()Z
    .locals 7

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "isFullyResolved"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v5

    iget v5, v5, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->state:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v5

    iget v5, v5, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->state:I

    if-ne v5, v6, :cond_0

    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v5

    iget v5, v5, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->state:I

    if-ne v5, v6, :cond_0

    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v5

    iget v5, v5, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->state:I

    if-ne v5, v6, :cond_0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "isFullyResolved"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v6

    :cond_0
    const/4 v5, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "isFullyResolved"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5
.end method

.method public isHeightWrapContent()Z
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "isHeightWrapContent"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mIsHeightWrapContent:Z

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "isHeightWrapContent"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5
.end method

.method public isInHorizontalChain()Z
    .locals 7

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "isInHorizontalChain"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eq v5, v6, :cond_1

    :cond_0
    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v5, :cond_2

    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-ne v5, v6, :cond_2

    :cond_1
    const/4 v5, 0x1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "isInHorizontalChain"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5

    :cond_2
    const/4 v5, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "isInHorizontalChain"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5
.end method

.method public isInVerticalChain()Z
    .locals 7

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "isInVerticalChain"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eq v5, v6, :cond_1

    :cond_0
    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v5, :cond_2

    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-ne v5, v6, :cond_2

    :cond_1
    const/4 v5, 0x1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "isInVerticalChain"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5

    :cond_2
    const/4 v5, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "isInVerticalChain"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5
.end method

.method public isInsideConstraintLayout()Z
    .locals 8

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "isInsideConstraintLayout"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v5

    const/4 v6, 0x0

    if-nez v5, :cond_0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "isInsideConstraintLayout"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v6

    :cond_0
    :goto_0
    if-eqz v5, :cond_2

    instance-of v7, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    if-eqz v7, :cond_1

    const/4 v5, 0x1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "isInsideConstraintLayout"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5

    :cond_1
    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v5

    goto :goto_0

    :cond_2
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "isInsideConstraintLayout"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v6
.end method

.method public isRoot()Z
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "isRoot"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-nez v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "isRoot"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5
.end method

.method public isRootContainer()Z
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "isRootContainer"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    instance-of v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    if-eqz v5, :cond_1

    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eqz v5, :cond_0

    instance-of v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    if-nez v5, :cond_1

    :cond_0
    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "isRootContainer"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5
.end method

.method public isSpreadHeight()Z
    .locals 8

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "isSpreadHeight"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    const/4 v6, 0x1

    if-nez v5, :cond_0

    iget v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    const/4 v7, 0x0

    cmpl-float v5, v5, v7

    if-nez v5, :cond_0

    iget v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    if-nez v5, :cond_0

    iget v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    if-nez v5, :cond_0

    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v5, v5, v6

    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v7, :cond_0

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "isSpreadHeight"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v6
.end method

.method public isSpreadWidth()Z
    .locals 8

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "isSpreadWidth"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    const/4 v6, 0x0

    if-nez v5, :cond_0

    iget v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    const/4 v7, 0x0

    cmpl-float v5, v5, v7

    if-nez v5, :cond_0

    iget v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    if-nez v5, :cond_0

    iget v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    if-nez v5, :cond_0

    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v5, v5, v6

    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v7, :cond_0

    const/4 v6, 0x1

    :cond_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "isSpreadWidth"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v6
.end method

.method public isWidthWrapContent()Z
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "isWidthWrapContent"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mIsWidthWrapContent:Z

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "isWidthWrapContent"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5
.end method

.method public reset()V
    .locals 11

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "reset"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenterX:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenterY:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    const/4 v5, 0x0

    iput-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    const/4 v6, 0x0

    iput v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCircleConstraintAngle:F

    const/4 v7, 0x0

    iput v7, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    iput v7, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    iput v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    const/4 v6, -0x1

    iput v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatioSide:I

    iput v7, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mX:I

    iput v7, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mY:I

    iput v7, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDrawX:I

    iput v7, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDrawY:I

    iput v7, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDrawWidth:I

    iput v7, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDrawHeight:I

    iput v7, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mOffsetX:I

    iput v7, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mOffsetY:I

    iput v7, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    iput v7, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinWidth:I

    iput v7, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinHeight:I

    iput v7, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWrapWidth:I

    iput v7, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWrapHeight:I

    sget v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->DEFAULT_BIAS:F

    iput v8, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    iput v8, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    iget-object v8, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aput-object v9, v8, v7

    iget-object v8, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v10, 0x1

    aput-object v9, v8, v10

    iput-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCompanionWidget:Ljava/lang/Object;

    iput v7, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mContainerItemSkip:I

    iput v7, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVisibility:I

    iput-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mType:Ljava/lang/String;

    iput-boolean v7, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalWrapVisited:Z

    iput-boolean v7, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalWrapVisited:Z

    iput v7, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    iput v7, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    iput-boolean v7, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalChainFixedPosition:Z

    iput-boolean v7, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalChainFixedPosition:Z

    iget-object v8, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWeight:[F

    const/high16 v9, -0x40800000    # -1.0f

    aput v9, v8, v7

    aput v9, v8, v10

    iput v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalResolution:I

    iput v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalResolution:I

    iget-object v8, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMaxDimension:[I

    const v9, 0x7fffffff

    aput v9, v8, v7

    aput v9, v8, v10

    iput v7, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    iput v7, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    const/high16 v8, 0x3f800000    # 1.0f

    iput v8, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintPercentWidth:F

    iput v8, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintPercentHeight:F

    iput v9, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    iput v9, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    iput v7, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    iput v7, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    iput v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    iput v8, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    iget-object v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolutionWidth:Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ResolutionDimension;->reset()V

    :cond_0
    iget-object v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolutionHeight:Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ResolutionDimension;->reset()V

    :cond_1
    iput-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBelongingGroup:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetGroup;

    iput-boolean v7, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mOptimizerMeasurable:Z

    iput-boolean v7, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mOptimizerMeasured:Z

    iput-boolean v7, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mGroupsToSolver:Z

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "reset"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public resetAllConstraints()V
    .locals 7

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "resetAllConstraints"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->resetAnchors()V

    sget v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->DEFAULT_BIAS:F

    invoke-virtual {p0, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setVerticalBiasPercent(F)V

    sget v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->DEFAULT_BIAS:F

    invoke-virtual {p0, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHorizontalBiasPercent(F)V

    instance-of v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    if-eqz v5, :cond_0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "resetAllConstraints"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v5

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v6, :cond_2

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWrapWidth()I

    move-result v6

    if-ne v5, v6, :cond_1

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p0, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getMinWidth()I

    move-result v6

    if-le v5, v6, :cond_2

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p0, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v5

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v6, :cond_4

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWrapHeight()I

    move-result v6

    if-ne v5, v6, :cond_3

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p0, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    goto/16 :goto_1

    :cond_3
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getMinHeight()I

    move-result v6

    if-le v5, v6, :cond_4

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p0, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    :cond_4
    :goto_1
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "resetAllConstraints"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public resetAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;)V
    .locals 13

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "resetAnchor"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v5

    instance-of v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->handlesInternalConstraints()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "resetAnchor"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v5

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v6

    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v7

    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v8}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v8

    sget-object v9, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v9

    sget-object v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_X:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v10

    sget-object v11, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->CENTER_Y:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {p0, v11}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v11

    const/high16 v12, 0x3f000000    # 0.5f

    if-ne p1, v9, :cond_3

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v9

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v10

    if-ne v9, v10, :cond_1

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    :cond_1
    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v5

    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v6

    if-ne v5, v6, :cond_2

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    :cond_2
    iput v12, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    iput v12, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    goto/16 :goto_1

    :cond_3
    if-ne p1, v10, :cond_5

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getOwner()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v7

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getOwner()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v8

    if-ne v7, v8, :cond_4

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    :cond_4
    iput v12, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    goto/16 :goto_1

    :cond_5
    if-ne p1, v11, :cond_7

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getOwner()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v5

    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getOwner()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v6

    if-ne v5, v6, :cond_6

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    :cond_6
    iput v12, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    goto/16 :goto_1

    :cond_7
    if-eq p1, v5, :cond_a

    if-ne p1, v6, :cond_8

    goto/16 :goto_0

    :cond_8
    if-eq p1, v7, :cond_9

    if-ne p1, v8, :cond_b

    :cond_9
    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v5

    invoke-virtual {v8}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v6

    if-ne v5, v6, :cond_b

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    goto/16 :goto_1

    :cond_a
    :goto_0
    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v5

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getTarget()Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v6

    if-ne v5, v6, :cond_b

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    :cond_b
    :goto_1
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "resetAnchor"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public resetAnchors()V
    .locals 8

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "resetAnchors"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v5

    if-eqz v5, :cond_0

    instance-of v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->handlesInternalConstraints()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "resetAnchors"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 v5, 0x0

    iget-object v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const-string v0, "Ljava/util/ArrayList;"

    const-string v1, "size"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v6 .. v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/util/ArrayList;"

    const-string v1, "size"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    if-ge v5, v6, :cond_1

    iget-object v7, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v7, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v5 .. v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/util/ArrayList;"

    const-string v1, "get"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v7, v2, v1

    const-string v0, "Ljava/util/ArrayList;"

    const-string v1, "get"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    check-cast v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_1
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "resetAnchors"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public resetAnchors(I)V
    .locals 9

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "resetAnchors"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v5

    if-eqz v5, :cond_0

    instance-of v5, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->handlesInternalConstraints()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "resetAnchors"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 v5, 0x0

    iget-object v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const-string v0, "Ljava/util/ArrayList;"

    const-string v1, "size"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v6 .. v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/util/ArrayList;"

    const-string v1, "size"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    if-ge v5, v6, :cond_3

    iget-object v7, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mAnchors:Ljava/util/ArrayList;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v7, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v5 .. v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/util/ArrayList;"

    const-string v1, "get"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v7, v2, v1

    const-string v0, "Ljava/util/ArrayList;"

    const-string v1, "get"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    check-cast v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getConnectionCreator()I

    move-result v8

    if-ne p1, v8, :cond_2

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isVerticalAnchor()Z

    move-result v8

    if-eqz v8, :cond_1

    sget v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->DEFAULT_BIAS:F

    invoke-virtual {p0, v8}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setVerticalBiasPercent(F)V

    goto/16 :goto_1

    :cond_1
    sget v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->DEFAULT_BIAS:F

    invoke-virtual {p0, v8}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHorizontalBiasPercent(F)V

    :goto_1
    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_3
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "resetAnchors"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public resetResolutionNodes()V
    .locals 7

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "resetResolutionNodes"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x6

    if-ge v5, v6, :cond_0

    iget-object v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v6, v6, v5

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->reset()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "resetResolutionNodes"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public resetSolverVariables(Landroidx/constraintlayout/solver/Cache;)V
    .locals 6

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "resetSolverVariables"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v5, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->resetSolverVariable(Landroidx/constraintlayout/solver/Cache;)V

    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v5, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->resetSolverVariable(Landroidx/constraintlayout/solver/Cache;)V

    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v5, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->resetSolverVariable(Landroidx/constraintlayout/solver/Cache;)V

    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v5, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->resetSolverVariable(Landroidx/constraintlayout/solver/Cache;)V

    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v5, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->resetSolverVariable(Landroidx/constraintlayout/solver/Cache;)V

    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenter:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v5, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->resetSolverVariable(Landroidx/constraintlayout/solver/Cache;)V

    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenterX:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v5, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->resetSolverVariable(Landroidx/constraintlayout/solver/Cache;)V

    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCenterY:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v5, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->resetSolverVariable(Landroidx/constraintlayout/solver/Cache;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "resetSolverVariables"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public resolve()V
    .locals 5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "resolve"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "resolve"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setBaselineDistance(I)V
    .locals 5

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "setBaselineDistance"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "setBaselineDistance"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setCompanionWidget(Ljava/lang/Object;)V
    .locals 5

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "setCompanionWidget"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mCompanionWidget:Ljava/lang/Object;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "setCompanionWidget"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setContainerItemSkip(I)V
    .locals 5

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "setContainerItemSkip"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-ltz p1, :cond_0

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mContainerItemSkip:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mContainerItemSkip:I

    :goto_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "setContainerItemSkip"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setDebugName(Ljava/lang/String;)V
    .locals 5

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "setDebugName"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDebugName:Ljava/lang/String;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "setDebugName"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setDebugSolverName(Landroidx/constraintlayout/solver/LinearSystem;Ljava/lang/String;)V
    .locals 11

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const/4 v1, 0x6

    aput-object p2, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "setDebugSolverName"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDebugName:Ljava/lang/String;

    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v5}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v5

    iget-object v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v6}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v6

    iget-object v7, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v7}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v7

    iget-object v8, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v8}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v9, v2, v1

    const/4 v1, 0x5

    aput-object p2, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v10, ".left"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v9, v2, v1

    const/4 v1, 0x5

    aput-object v10, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v9, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "toString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v9, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "toString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5, v9}, Landroidx/constraintlayout/solver/SolverVariable;->setName(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    aput-object p2, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v9, ".top"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    aput-object v9, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "toString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "toString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v6, v5}, Landroidx/constraintlayout/solver/SolverVariable;->setName(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    aput-object p2, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v6, ".right"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    aput-object v6, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "toString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "toString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v7, v5}, Landroidx/constraintlayout/solver/SolverVariable;->setName(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    aput-object p2, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v6, ".bottom"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    aput-object v6, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "toString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "toString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v8, v5}, Landroidx/constraintlayout/solver/SolverVariable;->setName(Ljava/lang/String;)V

    iget v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    if-lez v5, :cond_0

    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v5}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object p1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    aput-object p2, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p2, ".baseline"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    aput-object p2, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "toString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p2, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "toString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/solver/SolverVariable;->setName(Ljava/lang/String;)V

    :cond_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "setDebugSolverName"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setDimension(II)V
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

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "setDimension"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    iget p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    iget v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinWidth:I

    if-ge p1, v5, :cond_0

    iput v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    :cond_0
    iput p2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    iget p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    iget p2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinHeight:I

    if-ge p1, p2, :cond_1

    iput p2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    :cond_1
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "setDimension"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setDimensionRatio(FI)V
    .locals 5

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x6

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "setDimensionRatio"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    iput p2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatioSide:I

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "setDimensionRatio"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setDimensionRatio(Ljava/lang/String;)V
    .locals 13

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "setDimensionRatio"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v5, 0x0

    if-eqz p1, :cond_8

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const-string v0, "Ljava/lang/String;"

    const-string v1, "length"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v6 .. v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/String;"

    const-string v1, "length"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v6, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v6, -0x1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const-string v0, "Ljava/lang/String;"

    const-string v1, "length"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v7 .. v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/String;"

    const-string v1, "length"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v8, 0x2c

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v8 .. v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/String;"

    const-string v1, "indexOf"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v8 .. v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/String;"

    const-string v1, "indexOf"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-lez v8, :cond_3

    add-int/lit8 v11, v7, -0x1

    if-ge v8, v11, :cond_3

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v9 .. v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x6

    invoke-static/range {v8 .. v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/String;"

    const-string v1, "substring"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v11, v2, v1

    const-string v0, "Ljava/lang/String;"

    const-string v1, "substring"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v12, "W"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v11, v2, v1

    const/4 v1, 0x5

    aput-object v12, v2, v1

    const-string v0, "Ljava/lang/String;"

    const-string v1, "equalsIgnoreCase"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v12 .. v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/String;"

    const-string v1, "equalsIgnoreCase"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v12, :cond_1

    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_1
    const-string v9, "H"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v11, v2, v1

    const/4 v1, 0x5

    aput-object v9, v2, v1

    const-string v0, "Ljava/lang/String;"

    const-string v1, "equalsIgnoreCase"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v11, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v9 .. v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/String;"

    const-string v1, "equalsIgnoreCase"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v9, :cond_2

    const/4 v6, 0x1

    :cond_2
    :goto_0
    add-int/lit8 v9, v8, 0x1

    :cond_3
    const/16 v8, 0x3a

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v8 .. v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/String;"

    const-string v1, "indexOf"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v8 .. v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/String;"

    const-string v1, "indexOf"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-ltz v8, :cond_5

    sub-int/2addr v7, v10

    if-ge v8, v7, :cond_5

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v9 .. v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x6

    invoke-static/range {v8 .. v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/String;"

    const-string v1, "substring"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v7, v2, v1

    const-string v0, "Ljava/lang/String;"

    const-string v1, "substring"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/2addr v8, v10

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v8 .. v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/String;"

    const-string v1, "substring"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const-string v0, "Ljava/lang/String;"

    const-string v1, "substring"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v7, v2, v1

    const-string v0, "Ljava/lang/String;"

    const-string v1, "length"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v8 .. v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/String;"

    const-string v1, "length"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-lez v8, :cond_6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const-string v0, "Ljava/lang/String;"

    const-string v1, "length"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v8 .. v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/String;"

    const-string v1, "length"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-lez v8, :cond_6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v7, v2, v1

    const-string v0, "Ljava/lang/Float;"

    const-string v1, "parseFloat"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v7 .. v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/Float;"

    const-string v1, "parseFloat"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const-string v0, "Ljava/lang/Float;"

    const-string v1, "parseFloat"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_1
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {p1 .. p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/Float;"

    const-string v1, "parseFloat"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_2
    cmpl-float v8, v7, v5

    if-lez v8, :cond_6

    cmpl-float v8, p1, v5

    if-lez v8, :cond_6

    if-ne v6, v10, :cond_4

    div-float/2addr p1, v7
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {p1 .. p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/Math;"

    const-string v1, "abs"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_3
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {p1 .. p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/Math;"

    const-string v1, "abs"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_4
    goto/16 :goto_1

    :cond_4
    div-float/2addr v7, p1
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v7 .. v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/Math;"

    const-string v1, "abs"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_5
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result p1
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {p1 .. p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/Math;"

    const-string v1, "abs"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_5
    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v9 .. v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/String;"

    const-string v1, "substring"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const-string v0, "Ljava/lang/String;"

    const-string v1, "substring"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const-string v0, "Ljava/lang/String;"

    const-string v1, "length"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v7 .. v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/String;"

    const-string v1, "length"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-lez v7, :cond_6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const-string v0, "Ljava/lang/Float;"

    const-string v1, "parseFloat"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_6
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {p1 .. p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/Float;"

    const-string v1, "parseFloat"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :catch_0
    :cond_6
    const/4 p1, 0x0

    :goto_1
    cmpl-float v5, p1, v5

    if-lez v5, :cond_7

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    iput v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatioSide:I

    :cond_7
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "setDimensionRatio"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_8
    :goto_2
    iput v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "setDimensionRatio"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setDrawHeight(I)V
    .locals 5

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "setDrawHeight"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDrawHeight:I

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "setDrawHeight"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setDrawOrigin(II)V
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

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "setDrawOrigin"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mOffsetX:I

    sub-int/2addr p1, v5

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDrawX:I

    iget p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mOffsetY:I

    sub-int/2addr p2, p1

    iput p2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDrawY:I

    iget p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDrawX:I

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mX:I

    iget p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDrawY:I

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mY:I

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "setDrawOrigin"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setDrawWidth(I)V
    .locals 5

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "setDrawWidth"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDrawWidth:I

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "setDrawWidth"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setDrawX(I)V
    .locals 6

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "setDrawX"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mOffsetX:I

    sub-int/2addr p1, v5

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDrawX:I

    iget p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDrawX:I

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mX:I

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "setDrawX"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setDrawY(I)V
    .locals 6

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "setDrawY"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mOffsetY:I

    sub-int/2addr p1, v5

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDrawY:I

    iget p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDrawY:I

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mY:I

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "setDrawY"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setFrame(III)V
    .locals 6

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x6

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x7

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "setFrame"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v5, 0x1

    if-nez p3, :cond_0

    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHorizontalDimension(II)V

    goto :goto_0

    :cond_0
    if-ne p3, v5, :cond_1

    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setVerticalDimension(II)V

    :cond_1
    :goto_0
    iput-boolean v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mOptimizerMeasured:Z

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "setFrame"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setFrame(IIII)V
    .locals 6

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x6

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x7

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/16 v1, 0x8

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "setFrame"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sub-int/2addr p3, p1

    sub-int/2addr p4, p2

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mX:I

    iput p2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mY:I

    iget p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVisibility:I

    const/4 p2, 0x0

    const/16 v5, 0x8

    if-ne p1, v5, :cond_0

    iput p2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    iput p2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "setFrame"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object p1, p1, p2

    sget-object p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne p1, p2, :cond_1

    iget p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    if-ge p3, p1, :cond_1

    goto/16 :goto_0

    :cond_1
    move p1, p3

    :goto_0
    iget-object p2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 p3, 0x1

    aget-object p2, p2, p3

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne p2, v5, :cond_2

    iget p2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    if-ge p4, p2, :cond_2

    goto/16 :goto_1

    :cond_2
    move p2, p4

    :goto_1
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    iput p2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    iget p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    iget p2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinHeight:I

    if-ge p1, p2, :cond_3

    iput p2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    :cond_3
    iget p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    iget p2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinWidth:I

    if-ge p1, p2, :cond_4

    iput p2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    :cond_4
    iput-boolean p3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mOptimizerMeasured:Z

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "setFrame"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setGoneMargin(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;I)V
    .locals 6

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const/4 v1, 0x6

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "setGoneMargin"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$1;->$SwitchMap$androidx$constraintlayout$solver$widgets$ConstraintAnchor$Type:[I

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const-string v0, "Ljava/lang/Enum;"

    const-string v1, "ordinal"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result p1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/Enum;"

    const-string v1, "ordinal"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    aget p1, v5, p1

    const/4 v5, 0x1

    if-eq p1, v5, :cond_3

    const/4 v5, 0x2

    if-eq p1, v5, :cond_2

    const/4 v5, 0x3

    if-eq p1, v5, :cond_1

    const/4 v5, 0x4

    if-eq p1, v5, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iput p2, p1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mGoneMargin:I

    goto :goto_0

    :cond_1
    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iput p2, p1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mGoneMargin:I

    goto :goto_0

    :cond_2
    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iput p2, p1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mGoneMargin:I

    goto :goto_0

    :cond_3
    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iput p2, p1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mGoneMargin:I

    :goto_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "setGoneMargin"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setHeight(I)V
    .locals 6

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "setHeight"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    iget p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    iget v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinHeight:I

    if-ge p1, v5, :cond_0

    iput v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    :cond_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "setHeight"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setHeightWrapContent(Z)V
    .locals 5

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "setHeightWrapContent"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mIsHeightWrapContent:Z

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "setHeightWrapContent"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setHorizontalBiasPercent(F)V
    .locals 5

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "setHorizontalBiasPercent"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "setHorizontalBiasPercent"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setHorizontalChainStyle(I)V
    .locals 5

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "setHorizontalChainStyle"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "setHorizontalChainStyle"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setHorizontalDimension(II)V
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

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "setHorizontalDimension"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mX:I

    sub-int/2addr p2, p1

    iput p2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    iget p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    iget p2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinWidth:I

    if-ge p1, p2, :cond_0

    iput p2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    :cond_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "setHorizontalDimension"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setHorizontalDimensionBehaviour(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V
    .locals 7

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "setHorizontalDimensionBehaviour"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne p1, v5, :cond_0

    iget p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWrapWidth:I

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setWidth(I)V

    :cond_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "setHorizontalDimensionBehaviour"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setHorizontalMatchStyle(IIIF)V
    .locals 5

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x6

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x7

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/16 v1, 0x8

    invoke-static/range {p4 .. p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "setHorizontalMatchStyle"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    iput p2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    iput p3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    iput p4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintPercentWidth:F

    const/high16 p1, 0x3f800000    # 1.0f

    cmpg-float p1, p4, p1

    if-gez p1, :cond_0

    iget p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-nez p1, :cond_0

    const/4 p1, 0x2

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    :cond_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "setHorizontalMatchStyle"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setHorizontalWeight(F)V
    .locals 7

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "setHorizontalWeight"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWeight:[F

    const/4 v6, 0x0

    aput p1, v5, v6

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "setHorizontalWeight"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setLength(II)V
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

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "setLength"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setWidth(I)V

    goto :goto_0

    :cond_0
    const/4 v5, 0x1

    if-ne p2, v5, :cond_1

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHeight(I)V

    :cond_1
    :goto_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "setLength"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setMaxHeight(I)V
    .locals 7

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "setMaxHeight"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMaxDimension:[I

    const/4 v6, 0x1

    aput p1, v5, v6

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "setMaxHeight"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setMaxWidth(I)V
    .locals 7

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "setMaxWidth"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMaxDimension:[I

    const/4 v6, 0x0

    aput p1, v5, v6

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "setMaxWidth"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setMinHeight(I)V
    .locals 5

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "setMinHeight"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-gez p1, :cond_0

    const/4 p1, 0x0

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinHeight:I

    goto :goto_0

    :cond_0
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinHeight:I

    :goto_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "setMinHeight"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setMinWidth(I)V
    .locals 5

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "setMinWidth"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-gez p1, :cond_0

    const/4 p1, 0x0

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinWidth:I

    goto :goto_0

    :cond_0
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinWidth:I

    :goto_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "setMinWidth"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setOffset(II)V
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

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "setOffset"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mOffsetX:I

    iput p2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mOffsetY:I

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "setOffset"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setOrigin(II)V
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

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "setOrigin"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mX:I

    iput p2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mY:I

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "setOrigin"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setParent(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V
    .locals 5

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "setParent"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "setParent"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method setRelativePositioning(II)V
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

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "setRelativePositioning"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p2, :cond_0

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRelX:I

    goto :goto_0

    :cond_0
    const/4 v5, 0x1

    if-ne p2, v5, :cond_1

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRelY:I

    :cond_1
    :goto_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "setRelativePositioning"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 5

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "setType"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mType:Ljava/lang/String;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "setType"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setVerticalBiasPercent(F)V
    .locals 5

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "setVerticalBiasPercent"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "setVerticalBiasPercent"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setVerticalChainStyle(I)V
    .locals 5

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "setVerticalChainStyle"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "setVerticalChainStyle"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setVerticalDimension(II)V
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

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "setVerticalDimension"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mY:I

    sub-int/2addr p2, p1

    iput p2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    iget p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    iget p2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinHeight:I

    if-ge p1, p2, :cond_0

    iput p2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    :cond_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "setVerticalDimension"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setVerticalDimensionBehaviour(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V
    .locals 7

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "setVerticalDimensionBehaviour"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v6, 0x1

    aput-object p1, v5, v6

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne p1, v5, :cond_0

    iget p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWrapHeight:I

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHeight(I)V

    :cond_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "setVerticalDimensionBehaviour"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setVerticalMatchStyle(IIIF)V
    .locals 5

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x6

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x7

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/16 v1, 0x8

    invoke-static/range {p4 .. p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "setVerticalMatchStyle"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    iput p2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    iput p3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    iput p4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintPercentHeight:F

    const/high16 p1, 0x3f800000    # 1.0f

    cmpg-float p1, p4, p1

    if-gez p1, :cond_0

    iget p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-nez p1, :cond_0

    const/4 p1, 0x2

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    :cond_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "setVerticalMatchStyle"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setVerticalWeight(F)V
    .locals 7

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "setVerticalWeight"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWeight:[F

    const/4 v6, 0x1

    aput p1, v5, v6

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "setVerticalWeight"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 5

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "setVisibility"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVisibility:I

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "setVisibility"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setWidth(I)V
    .locals 6

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "setWidth"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    iget p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    iget v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMinWidth:I

    if-ge p1, v5, :cond_0

    iput v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    :cond_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "setWidth"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setWidthWrapContent(Z)V
    .locals 5

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "setWidthWrapContent"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mIsWidthWrapContent:Z

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "setWidthWrapContent"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setWrapHeight(I)V
    .locals 5

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "setWrapHeight"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWrapHeight:I

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "setWrapHeight"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setWrapWidth(I)V
    .locals 5

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "setWrapWidth"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWrapWidth:I

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "setWrapWidth"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setX(I)V
    .locals 5

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "setX"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mX:I

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "setX"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setY(I)V
    .locals 5

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "setY"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mY:I

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "setY"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setupDimensionRatio(ZZZZ)V
    .locals 10

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x6

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x7

    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    const/16 v1, 0x8

    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "setupDimensionRatio"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x1

    if-ne v5, v8, :cond_1

    if-eqz p3, :cond_0

    if-nez p4, :cond_0

    iput v7, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    goto/16 :goto_0

    :cond_0
    if-nez p3, :cond_1

    if-eqz p4, :cond_1

    iput v9, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    iget p3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatioSide:I

    if-ne p3, v8, :cond_1

    iget p3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    div-float p3, v6, p3

    iput p3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    :cond_1
    :goto_0
    iget p3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    if-nez p3, :cond_3

    iget-object p3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result p3

    if-eqz p3, :cond_2

    iget-object p3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result p3

    if-nez p3, :cond_3

    :cond_2
    iput v9, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    goto/16 :goto_1

    :cond_3
    iget p3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    if-ne p3, v9, :cond_5

    iget-object p3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result p3

    if-eqz p3, :cond_4

    iget-object p3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result p3

    if-nez p3, :cond_5

    :cond_4
    iput v7, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    :cond_5
    :goto_1
    iget p3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    if-ne p3, v8, :cond_8

    iget-object p3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result p3

    if-eqz p3, :cond_6

    iget-object p3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result p3

    if-eqz p3, :cond_6

    iget-object p3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result p3

    if-eqz p3, :cond_6

    iget-object p3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result p3

    if-nez p3, :cond_8

    :cond_6
    iget-object p3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result p3

    if-eqz p3, :cond_7

    iget-object p3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result p3

    if-eqz p3, :cond_7

    iput v7, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    goto/16 :goto_2

    :cond_7
    iget-object p3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result p3

    if-eqz p3, :cond_8

    iget-object p3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->isConnected()Z

    move-result p3

    if-eqz p3, :cond_8

    iget p3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    div-float p3, v6, p3

    iput p3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    iput v9, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    :cond_8
    :goto_2
    iget p3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    if-ne p3, v8, :cond_a

    if-eqz p1, :cond_9

    if-nez p2, :cond_9

    iput v7, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    goto/16 :goto_3

    :cond_9
    if-nez p1, :cond_a

    if-eqz p2, :cond_a

    iget p3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    div-float p3, v6, p3

    iput p3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    iput v9, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    :cond_a
    :goto_3
    iget p3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    if-ne p3, v8, :cond_c

    iget p3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    if-lez p3, :cond_b

    iget p3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    if-nez p3, :cond_b

    iput v7, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    goto/16 :goto_4

    :cond_b
    iget p3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    if-nez p3, :cond_c

    iget p3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    if-lez p3, :cond_c

    iget p3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    div-float p3, v6, p3

    iput p3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    iput v9, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    :cond_c
    :goto_4
    iget p3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    if-ne p3, v8, :cond_d

    if-eqz p1, :cond_d

    if-eqz p2, :cond_d

    iget p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    div-float/2addr v6, p1

    iput v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatio:F

    iput v9, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedDimensionRatioSide:I

    :cond_d
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "setupDimensionRatio"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "toString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mType:Ljava/lang/String;

    const-string v7, " "

    const-string v8, ""

    if-eqz v6, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "type: "

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const/4 v1, 0x5

    aput-object v9, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v9, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mType:Ljava/lang/String;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const/4 v1, 0x5

    aput-object v9, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const/4 v1, 0x5

    aput-object v7, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "toString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "toString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_0
    move-object v6, v8

    :goto_0
    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    aput-object v6, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDebugName:Ljava/lang/String;

    if-eqz v6, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "id: "

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const/4 v1, 0x5

    aput-object v8, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v8, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDebugName:Ljava/lang/String;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const/4 v1, 0x5

    aput-object v8, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const/4 v1, 0x5

    aput-object v7, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "toString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v8, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "toString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    aput-object v8, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v6, "("

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    aput-object v6, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mX:I

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v6 .. v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v6, ", "

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    aput-object v6, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mY:I

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v6 .. v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v6, ") - ("

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    aput-object v6, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v6 .. v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v6, " x "

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    aput-object v6, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v7, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v7 .. v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v7, ") wrap: ("

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    aput-object v7, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v7, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWrapWidth:I

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v7 .. v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    aput-object v6, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWrapHeight:I

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v6 .. v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v6, ")"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    aput-object v6, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "append"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "toString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Ljava/lang/StringBuilder;"

    const-string v1, "toString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "toString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5
.end method

.method public updateDrawPosition()V
    .locals 9

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "updateDrawPosition"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mX:I

    iget v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mY:I

    iget v7, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWidth:I

    add-int/2addr v7, v5

    iget v8, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHeight:I

    add-int/2addr v8, v6

    iput v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDrawX:I

    iput v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDrawY:I

    sub-int/2addr v7, v5

    iput v7, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDrawWidth:I

    sub-int/2addr v8, v6

    iput v8, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDrawHeight:I

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "updateDrawPosition"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public updateFromSolver(Landroidx/constraintlayout/solver/LinearSystem;)V
    .locals 11

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "updateFromSolver"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v5}, Landroidx/constraintlayout/solver/LinearSystem;->getObjectVariableValue(Ljava/lang/Object;)I

    move-result v5

    iget-object v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v6}, Landroidx/constraintlayout/solver/LinearSystem;->getObjectVariableValue(Ljava/lang/Object;)I

    move-result v6

    iget-object v7, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v7}, Landroidx/constraintlayout/solver/LinearSystem;->getObjectVariableValue(Ljava/lang/Object;)I

    move-result v7

    iget-object v8, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v8}, Landroidx/constraintlayout/solver/LinearSystem;->getObjectVariableValue(Ljava/lang/Object;)I

    move-result p1

    sub-int v8, v7, v5

    sub-int v9, p1, v6

    const/4 v10, 0x0

    if-ltz v8, :cond_0

    if-ltz v9, :cond_0

    const/high16 v8, -0x80000000

    if-eq v5, v8, :cond_0

    const v9, 0x7fffffff

    if-eq v5, v9, :cond_0

    if-eq v6, v8, :cond_0

    if-eq v6, v9, :cond_0

    if-eq v7, v8, :cond_0

    if-eq v7, v9, :cond_0

    if-eq p1, v8, :cond_0

    if-ne p1, v9, :cond_1

    :cond_0
    const/4 p1, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :cond_1
    invoke-virtual {p0, v5, v6, v7, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setFrame(IIII)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "updateFromSolver"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public updateResolutionNodes()V
    .locals 7

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "updateResolutionNodes"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x6

    if-ge v5, v6, :cond_0

    iget-object v6, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v6, v6, v5

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->update()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;"

    const-string v1, "updateResolutionNodes"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
