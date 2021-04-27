.class public Landroidx/viewpager/widget/PagerTabStrip;
.super Landroidx/viewpager/widget/PagerTitleStrip;
.source "PagerTabStrip.java"


# static fields
.field private static final FULL_UNDERLINE_HEIGHT:I = 0x1

.field private static final INDICATOR_HEIGHT:I = 0x3

.field private static final MIN_PADDING_BOTTOM:I = 0x6

.field private static final MIN_STRIP_HEIGHT:I = 0x20

.field private static final MIN_TEXT_SPACING:I = 0x40

.field private static final TAB_PADDING:I = 0x10

.field private static final TAB_SPACING:I = 0x20

.field private static final TAG:Ljava/lang/String; = "PagerTabStrip"


# instance fields
.field private mDrawFullUnderline:Z

.field private mDrawFullUnderlineSet:Z

.field private mFullUnderlineHeight:I

.field private mIgnoreTap:Z

.field private mIndicatorColor:I

.field private mIndicatorHeight:I

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field private mMinPaddingBottom:I

.field private mMinStripHeight:I

.field private mMinTextSpacing:I

.field private mTabAlpha:I

.field private mTabPadding:I

.field private final mTabPaint:Landroid/graphics/Paint;

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTouchSlop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 83
    invoke-direct {p0, p1, v0}, Landroidx/viewpager/widget/PagerTabStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 87
    invoke-direct {p0, p1, p2}, Landroidx/viewpager/widget/PagerTitleStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Landroidx/viewpager/widget/PagerTabStrip;->mTabPaint:Landroid/graphics/Paint;

    .line 69
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Landroidx/viewpager/widget/PagerTabStrip;->mTempRect:Landroid/graphics/Rect;

    const/16 p2, 0xff

    .line 71
    iput p2, p0, Landroidx/viewpager/widget/PagerTabStrip;->mTabAlpha:I

    const/4 p2, 0x0

    .line 73
    iput-boolean p2, p0, Landroidx/viewpager/widget/PagerTabStrip;->mDrawFullUnderline:Z

    .line 74
    iput-boolean p2, p0, Landroidx/viewpager/widget/PagerTabStrip;->mDrawFullUnderlineSet:Z

    .line 89
    iget v0, p0, Landroidx/viewpager/widget/PagerTabStrip;->mTextColor:I

    iput v0, p0, Landroidx/viewpager/widget/PagerTabStrip;->mIndicatorColor:I

    .line 90
    iget-object v0, p0, Landroidx/viewpager/widget/PagerTabStrip;->mTabPaint:Landroid/graphics/Paint;

    iget v1, p0, Landroidx/viewpager/widget/PagerTabStrip;->mIndicatorColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x40400000    # 3.0f

    mul-float v1, v1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 95
    iput v1, p0, Landroidx/viewpager/widget/PagerTabStrip;->mIndicatorHeight:I

    const/high16 v1, 0x40c00000    # 6.0f

    mul-float v1, v1, v0

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 96
    iput v1, p0, Landroidx/viewpager/widget/PagerTabStrip;->mMinPaddingBottom:I

    const/high16 v1, 0x42800000    # 64.0f

    mul-float v1, v1, v0

    float-to-int v1, v1

    .line 97
    iput v1, p0, Landroidx/viewpager/widget/PagerTabStrip;->mMinTextSpacing:I

    const/high16 v1, 0x41800000    # 16.0f

    mul-float v1, v1, v0

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 98
    iput v1, p0, Landroidx/viewpager/widget/PagerTabStrip;->mTabPadding:I

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float v1, v1, v0

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 99
    iput v1, p0, Landroidx/viewpager/widget/PagerTabStrip;->mFullUnderlineHeight:I

    const/high16 v1, 0x42000000    # 32.0f

    mul-float v0, v0, v1

    add-float/2addr v0, v2

    float-to-int v0, v0

    .line 100
    iput v0, p0, Landroidx/viewpager/widget/PagerTabStrip;->mMinStripHeight:I

    .line 101
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Landroidx/viewpager/widget/PagerTabStrip;->mTouchSlop:I

    .line 104
    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerTabStrip;->getPaddingLeft()I

    move-result p1

    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerTabStrip;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerTabStrip;->getPaddingRight()I

    move-result v1

    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerTabStrip;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p0, p1, v0, v1, v2}, Landroidx/viewpager/widget/PagerTabStrip;->setPadding(IIII)V

    .line 105
    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerTabStrip;->getTextSpacing()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/PagerTabStrip;->setTextSpacing(I)V

    .line 107
    invoke-virtual {p0, p2}, Landroidx/viewpager/widget/PagerTabStrip;->setWillNotDraw(Z)V

    .line 109
    iget-object p1, p0, Landroidx/viewpager/widget/PagerTabStrip;->mPrevText:Landroid/widget/TextView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 110
    iget-object p1, p0, Landroidx/viewpager/widget/PagerTabStrip;->mPrevText:Landroid/widget/TextView;

    new-instance v0, Landroidx/viewpager/widget/PagerTabStrip$1;

    invoke-direct {v0, p0}, Landroidx/viewpager/widget/PagerTabStrip$1;-><init>(Landroidx/viewpager/widget/PagerTabStrip;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iget-object p1, p0, Landroidx/viewpager/widget/PagerTabStrip;->mNextText:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 118
    iget-object p1, p0, Landroidx/viewpager/widget/PagerTabStrip;->mNextText:Landroid/widget/TextView;

    new-instance v0, Landroidx/viewpager/widget/PagerTabStrip$2;

    invoke-direct {v0, p0}, Landroidx/viewpager/widget/PagerTabStrip$2;-><init>(Landroidx/viewpager/widget/PagerTabStrip;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerTabStrip;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_0

    .line 126
    iput-boolean p2, p0, Landroidx/viewpager/widget/PagerTabStrip;->mDrawFullUnderline:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public getDrawFullUnderline()Z
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/viewpager/widget/PagerTabStrip;"

    const-string v1, "getDrawFullUnderline"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v5, p0, Landroidx/viewpager/widget/PagerTabStrip;->mDrawFullUnderline:Z

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/viewpager/widget/PagerTabStrip;"

    const-string v1, "getDrawFullUnderline"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5
.end method

.method getMinHeight()I
    .locals 7

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/viewpager/widget/PagerTabStrip;"

    const-string v1, "getMinHeight"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0}, Landroidx/viewpager/widget/PagerTitleStrip;->getMinHeight()I

    move-result v5

    iget v6, p0, Landroidx/viewpager/widget/PagerTabStrip;->mMinStripHeight:I

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v5 .. v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v6 .. v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/Math;"

    const-string v1, "max"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

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

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/viewpager/widget/PagerTabStrip;"

    const-string v1, "getMinHeight"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5
.end method

.method public getTabIndicatorColor()I
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/viewpager/widget/PagerTabStrip;"

    const-string v1, "getTabIndicatorColor"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v5, p0, Landroidx/viewpager/widget/PagerTabStrip;->mIndicatorColor:I

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/viewpager/widget/PagerTabStrip;"

    const-string v1, "getTabIndicatorColor"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 19

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroidx/viewpager/widget/PagerTabStrip;"

    const-string v1, "onDraw"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "onDraw"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-super/range {v0 .. v1}, Landroidx/viewpager/widget/PagerTitleStrip;->onDraw(Landroid/graphics/Canvas;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "onDraw"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/viewpager/widget/PagerTitleStrip;"

    const-string v1, "getHeight"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v0}, Landroidx/viewpager/widget/PagerTabStrip;->getHeight()I

    move-result v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v5 .. v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/viewpager/widget/PagerTitleStrip;"

    const-string v1, "getHeight"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Landroidx/viewpager/widget/PagerTabStrip;->mCurrText:Landroid/widget/TextView;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const-string v0, "Landroid/widget/TextView;"

    const-string v1, "getLeft"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v6}, Landroid/widget/TextView;->getLeft()I

    move-result v6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v6 .. v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/widget/TextView;"

    const-string v1, "getLeft"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget v7, v0, Landroidx/viewpager/widget/PagerTabStrip;->mTabPadding:I

    sub-int/2addr v6, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Landroidx/viewpager/widget/PagerTabStrip;->mCurrText:Landroid/widget/TextView;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v7, v2, v1

    const-string v0, "Landroid/widget/TextView;"

    const-string v1, "getRight"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v7}, Landroid/widget/TextView;->getRight()I

    move-result v7

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v7 .. v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/widget/TextView;"

    const-string v1, "getRight"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget v8, v0, Landroidx/viewpager/widget/PagerTabStrip;->mTabPadding:I

    add-int/2addr v7, v8

    move-object/from16 v0, p0

    iget v8, v0, Landroidx/viewpager/widget/PagerTabStrip;->mIndicatorHeight:I

    sub-int v8, v5, v8

    move-object/from16 v0, p0

    iget-object v9, v0, Landroidx/viewpager/widget/PagerTabStrip;->mTabPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v10, v0, Landroidx/viewpager/widget/PagerTabStrip;->mTabAlpha:I

    shl-int/lit8 v10, v10, 0x18

    move-object/from16 v0, p0

    iget v11, v0, Landroidx/viewpager/widget/PagerTabStrip;->mIndicatorColor:I

    const v12, 0xffffff

    and-int/2addr v11, v12

    or-int/2addr v10, v11

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v9, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v10 .. v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/graphics/Paint;"

    const-string v1, "setColor"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/graphics/Paint;"

    const-string v1, "setColor"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    int-to-float v14, v6

    int-to-float v15, v8

    int-to-float v2, v7

    move/from16 v16, v2

    int-to-float v10, v5

    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/viewpager/widget/PagerTabStrip;->mTabPaint:Landroid/graphics/Paint;

    move-object/from16 v18, v2

    move-object/from16 v13, p1

    move/from16 v17, v10

    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v13, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v14 .. v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x6

    invoke-static/range {v15 .. v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x7

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v2, v1

    const/16 v1, 0x8

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v2, v1

    const/16 v1, 0x9

    aput-object v18, v2, v1

    const-string v0, "Landroid/graphics/Canvas;"

    const-string v1, "drawRect"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual/range {v13 .. v18}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/graphics/Canvas;"

    const-string v1, "drawRect"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-boolean v6, v0, Landroidx/viewpager/widget/PagerTabStrip;->mDrawFullUnderline:Z

    if-eqz v6, :cond_0

    move-object/from16 v0, p0

    iget-object v6, v0, Landroidx/viewpager/widget/PagerTabStrip;->mTabPaint:Landroid/graphics/Paint;

    const/high16 v7, -0x1000000

    move-object/from16 v0, p0

    iget v8, v0, Landroidx/viewpager/widget/PagerTabStrip;->mIndicatorColor:I

    and-int/2addr v8, v12

    or-int/2addr v7, v8

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v7 .. v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/graphics/Paint;"

    const-string v1, "setColor"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/graphics/Paint;"

    const-string v1, "setColor"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/viewpager/widget/PagerTitleStrip;"

    const-string v1, "getPaddingLeft"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v0}, Landroidx/viewpager/widget/PagerTabStrip;->getPaddingLeft()I

    move-result v6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v6 .. v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/viewpager/widget/PagerTitleStrip;"

    const-string v1, "getPaddingLeft"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    int-to-float v7, v6

    move-object/from16 v0, p0

    iget v6, v0, Landroidx/viewpager/widget/PagerTabStrip;->mFullUnderlineHeight:I

    sub-int/2addr v5, v6

    int-to-float v8, v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/viewpager/widget/PagerTitleStrip;"

    const-string v1, "getWidth"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v0}, Landroidx/viewpager/widget/PagerTabStrip;->getWidth()I

    move-result v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v5 .. v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/viewpager/widget/PagerTitleStrip;"

    const-string v1, "getWidth"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/viewpager/widget/PagerTitleStrip;"

    const-string v1, "getPaddingRight"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v0}, Landroidx/viewpager/widget/PagerTabStrip;->getPaddingRight()I

    move-result v6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v6 .. v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/viewpager/widget/PagerTitleStrip;"

    const-string v1, "getPaddingRight"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sub-int/2addr v5, v6

    int-to-float v9, v5

    move-object/from16 v0, p0

    iget-object v11, v0, Landroidx/viewpager/widget/PagerTabStrip;->mTabPaint:Landroid/graphics/Paint;

    move-object/from16 v6, p1

    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v7 .. v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x6

    invoke-static/range {v8 .. v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x7

    invoke-static/range {v9 .. v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v2, v1

    const/16 v1, 0x8

    invoke-static/range {v10 .. v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v2, v1

    const/16 v1, 0x9

    aput-object v11, v2, v1

    const-string v0, "Landroid/graphics/Canvas;"

    const-string v1, "drawRect"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/graphics/Canvas;"

    const-string v1, "drawRect"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/viewpager/widget/PagerTabStrip;"

    const-string v1, "onDraw"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroidx/viewpager/widget/PagerTabStrip;"

    const-string v1, "onTouchEvent"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const-string v0, "Landroid/view/MotionEvent;"

    const-string v1, "getAction"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v5 .. v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/MotionEvent;"

    const-string v1, "getAction"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    iget-boolean v7, p0, Landroidx/viewpager/widget/PagerTabStrip;->mIgnoreTap:Z

    if-eqz v7, :cond_0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/viewpager/widget/PagerTabStrip;"

    const-string v1, "onTouchEvent"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v6

    :cond_0
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const-string v0, "Landroid/view/MotionEvent;"

    const-string v1, "getX"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v7 .. v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/MotionEvent;"

    const-string v1, "getX"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const-string v0, "Landroid/view/MotionEvent;"

    const-string v1, "getY"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {p1 .. p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/MotionEvent;"

    const-string v1, "getY"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v8, 0x1

    if-eqz v5, :cond_5

    if-eq v5, v8, :cond_3

    const/4 v6, 0x2

    if-eq v5, v6, :cond_1

    goto/16 :goto_0

    :cond_1
    iget v5, p0, Landroidx/viewpager/widget/PagerTabStrip;->mInitialMotionX:F

    sub-float/2addr v7, v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v7 .. v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/Math;"

    const-string v1, "abs"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v5 .. v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/Math;"

    const-string v1, "abs"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v6, p0, Landroidx/viewpager/widget/PagerTabStrip;->mTouchSlop:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-gtz v5, :cond_2

    iget v5, p0, Landroidx/viewpager/widget/PagerTabStrip;->mInitialMotionY:F

    sub-float/2addr p1, v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {p1 .. p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/Math;"

    const-string v1, "abs"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {p1 .. p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/Math;"

    const-string v1, "abs"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v5, p0, Landroidx/viewpager/widget/PagerTabStrip;->mTouchSlop:I

    int-to-float v5, v5

    cmpl-float p1, p1, v5

    if-lez p1, :cond_6

    :cond_2
    iput-boolean v8, p0, Landroidx/viewpager/widget/PagerTabStrip;->mIgnoreTap:Z

    goto/16 :goto_0

    :cond_3
    iget-object p1, p0, Landroidx/viewpager/widget/PagerTabStrip;->mCurrText:Landroid/widget/TextView;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const-string v0, "Landroid/widget/TextView;"

    const-string v1, "getLeft"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/widget/TextView;->getLeft()I

    move-result p1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/widget/TextView;"

    const-string v1, "getLeft"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v5, p0, Landroidx/viewpager/widget/PagerTabStrip;->mTabPadding:I

    sub-int/2addr p1, v5

    int-to-float p1, p1

    cmpg-float p1, v7, p1

    if-gez p1, :cond_4

    iget-object p1, p0, Landroidx/viewpager/widget/PagerTabStrip;->mPager:Landroidx/viewpager/widget/ViewPager;

    iget-object v5, p0, Landroidx/viewpager/widget/PagerTabStrip;->mPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v5}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v5

    sub-int/2addr v5, v8

    invoke-virtual {p1, v5}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    goto/16 :goto_0

    :cond_4
    iget-object p1, p0, Landroidx/viewpager/widget/PagerTabStrip;->mCurrText:Landroid/widget/TextView;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const-string v0, "Landroid/widget/TextView;"

    const-string v1, "getRight"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/widget/TextView;->getRight()I

    move-result p1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/widget/TextView;"

    const-string v1, "getRight"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v5, p0, Landroidx/viewpager/widget/PagerTabStrip;->mTabPadding:I

    add-int/2addr p1, v5

    int-to-float p1, p1

    cmpl-float p1, v7, p1

    if-lez p1, :cond_6

    iget-object p1, p0, Landroidx/viewpager/widget/PagerTabStrip;->mPager:Landroidx/viewpager/widget/ViewPager;

    iget-object v5, p0, Landroidx/viewpager/widget/PagerTabStrip;->mPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v5}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v5

    add-int/2addr v5, v8

    invoke-virtual {p1, v5}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    goto/16 :goto_0

    :cond_5
    iput v7, p0, Landroidx/viewpager/widget/PagerTabStrip;->mInitialMotionX:F

    iput p1, p0, Landroidx/viewpager/widget/PagerTabStrip;->mInitialMotionY:F

    iput-boolean v6, p0, Landroidx/viewpager/widget/PagerTabStrip;->mIgnoreTap:Z

    :cond_6
    :goto_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/viewpager/widget/PagerTabStrip;"

    const-string v1, "onTouchEvent"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v8
.end method

.method public setBackgroundColor(I)V
    .locals 6

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/viewpager/widget/PagerTabStrip;"

    const-string v1, "setBackgroundColor"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "setBackgroundColor"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0, p1}, Landroidx/viewpager/widget/PagerTitleStrip;->setBackgroundColor(I)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "setBackgroundColor"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v5, p0, Landroidx/viewpager/widget/PagerTabStrip;->mDrawFullUnderlineSet:Z

    if-nez v5, :cond_1

    const/high16 v5, -0x1000000

    and-int/2addr p1, v5

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Landroidx/viewpager/widget/PagerTabStrip;->mDrawFullUnderline:Z

    :cond_1
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/viewpager/widget/PagerTabStrip;"

    const-string v1, "setBackgroundColor"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 6

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroidx/viewpager/widget/PagerTabStrip;"

    const-string v1, "setBackgroundDrawable"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "setBackgroundDrawable"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0, p1}, Landroidx/viewpager/widget/PagerTitleStrip;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "setBackgroundDrawable"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v5, p0, Landroidx/viewpager/widget/PagerTabStrip;->mDrawFullUnderlineSet:Z

    if-nez v5, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Landroidx/viewpager/widget/PagerTabStrip;->mDrawFullUnderline:Z

    :cond_1
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/viewpager/widget/PagerTabStrip;"

    const-string v1, "setBackgroundDrawable"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 6

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/viewpager/widget/PagerTabStrip;"

    const-string v1, "setBackgroundResource"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "setBackgroundResource"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0, p1}, Landroidx/viewpager/widget/PagerTitleStrip;->setBackgroundResource(I)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "setBackgroundResource"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v5, p0, Landroidx/viewpager/widget/PagerTabStrip;->mDrawFullUnderlineSet:Z

    if-nez v5, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Landroidx/viewpager/widget/PagerTabStrip;->mDrawFullUnderline:Z

    :cond_1
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/viewpager/widget/PagerTabStrip;"

    const-string v1, "setBackgroundResource"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setDrawFullUnderline(Z)V
    .locals 5

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/viewpager/widget/PagerTabStrip;"

    const-string v1, "setDrawFullUnderline"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean p1, p0, Landroidx/viewpager/widget/PagerTabStrip;->mDrawFullUnderline:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/viewpager/widget/PagerTabStrip;->mDrawFullUnderlineSet:Z

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/viewpager/widget/PagerTitleStrip;"

    const-string v1, "invalidate"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerTabStrip;->invalidate()V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/viewpager/widget/PagerTitleStrip;"

    const-string v1, "invalidate"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/viewpager/widget/PagerTabStrip;"

    const-string v1, "setDrawFullUnderline"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setPadding(IIII)V
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

    const-string v0, "Landroidx/viewpager/widget/PagerTabStrip;"

    const-string v1, "setPadding"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v5, p0, Landroidx/viewpager/widget/PagerTabStrip;->mMinPaddingBottom:I

    if-ge p4, v5, :cond_0

    move p4, v5

    :cond_0
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

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "setPadding"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0, p1, p2, p3, p4}, Landroidx/viewpager/widget/PagerTitleStrip;->setPadding(IIII)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/view/ViewGroup;"

    const-string v1, "setPadding"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/viewpager/widget/PagerTabStrip;"

    const-string v1, "setPadding"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setTabIndicatorColor(I)V
    .locals 6

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/viewpager/widget/PagerTabStrip;"

    const-string v1, "setTabIndicatorColor"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput p1, p0, Landroidx/viewpager/widget/PagerTabStrip;->mIndicatorColor:I

    iget-object p1, p0, Landroidx/viewpager/widget/PagerTabStrip;->mTabPaint:Landroid/graphics/Paint;

    iget v5, p0, Landroidx/viewpager/widget/PagerTabStrip;->mIndicatorColor:I

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v5 .. v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/graphics/Paint;"

    const-string v1, "setColor"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1, v5}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/graphics/Paint;"

    const-string v1, "setColor"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/viewpager/widget/PagerTitleStrip;"

    const-string v1, "invalidate"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerTabStrip;->invalidate()V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/viewpager/widget/PagerTitleStrip;"

    const-string v1, "invalidate"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/viewpager/widget/PagerTabStrip;"

    const-string v1, "setTabIndicatorColor"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setTabIndicatorColorResource(I)V
    .locals 6

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/viewpager/widget/PagerTabStrip;"

    const-string v1, "setTabIndicatorColorResource"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/viewpager/widget/PagerTitleStrip;"

    const-string v1, "getContext"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerTabStrip;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Landroidx/viewpager/widget/PagerTitleStrip;"

    const-string v1, "getContext"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v5, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/PagerTabStrip;->setTabIndicatorColor(I)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/viewpager/widget/PagerTabStrip;"

    const-string v1, "setTabIndicatorColorResource"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setTextSpacing(I)V
    .locals 6

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/viewpager/widget/PagerTabStrip;"

    const-string v1, "setTextSpacing"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v5, p0, Landroidx/viewpager/widget/PagerTabStrip;->mMinTextSpacing:I

    if-ge p1, v5, :cond_0

    move p1, v5

    :cond_0
    invoke-super {p0, p1}, Landroidx/viewpager/widget/PagerTitleStrip;->setTextSpacing(I)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/viewpager/widget/PagerTabStrip;"

    const-string v1, "setTextSpacing"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method updateTextPositions(IFZ)V
    .locals 10

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x6

    invoke-static/range {p2 .. p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x7

    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/viewpager/widget/PagerTabStrip;"

    const-string v1, "updateTextPositions"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/viewpager/widget/PagerTabStrip;->mTempRect:Landroid/graphics/Rect;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/viewpager/widget/PagerTitleStrip;"

    const-string v1, "getHeight"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerTabStrip;->getHeight()I

    move-result v6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v6 .. v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/viewpager/widget/PagerTitleStrip;"

    const-string v1, "getHeight"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v7, p0, Landroidx/viewpager/widget/PagerTabStrip;->mCurrText:Landroid/widget/TextView;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v7, v2, v1

    const-string v0, "Landroid/widget/TextView;"

    const-string v1, "getLeft"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v7}, Landroid/widget/TextView;->getLeft()I

    move-result v7

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v7 .. v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/widget/TextView;"

    const-string v1, "getLeft"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v8, p0, Landroidx/viewpager/widget/PagerTabStrip;->mTabPadding:I

    sub-int/2addr v7, v8

    iget-object v8, p0, Landroidx/viewpager/widget/PagerTabStrip;->mCurrText:Landroid/widget/TextView;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v8, v2, v1

    const-string v0, "Landroid/widget/TextView;"

    const-string v1, "getRight"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v8}, Landroid/widget/TextView;->getRight()I

    move-result v8

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v8 .. v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/widget/TextView;"

    const-string v1, "getRight"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v9, p0, Landroidx/viewpager/widget/PagerTabStrip;->mTabPadding:I

    add-int/2addr v8, v9

    iget v9, p0, Landroidx/viewpager/widget/PagerTabStrip;->mIndicatorHeight:I

    sub-int v9, v6, v9

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v7 .. v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x6

    invoke-static/range {v9 .. v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x7

    invoke-static/range {v8 .. v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/16 v1, 0x8

    invoke-static/range {v6 .. v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/graphics/Rect;"

    const-string v1, "set"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5, v7, v9, v8, v6}, Landroid/graphics/Rect;->set(IIII)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/graphics/Rect;"

    const-string v1, "set"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0, p1, p2, p3}, Landroidx/viewpager/widget/PagerTitleStrip;->updateTextPositions(IFZ)V

    const/high16 p1, 0x3f000000    # 0.5f

    sub-float/2addr p2, p1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {p2 .. p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/Math;"

    const-string v1, "abs"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {p1 .. p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/Math;"

    const-string v1, "abs"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/high16 p2, 0x40000000    # 2.0f

    mul-float p1, p1, p2

    const/high16 p2, 0x437f0000    # 255.0f

    mul-float p1, p1, p2

    float-to-int p1, p1

    iput p1, p0, Landroidx/viewpager/widget/PagerTabStrip;->mTabAlpha:I

    iget-object p1, p0, Landroidx/viewpager/widget/PagerTabStrip;->mCurrText:Landroid/widget/TextView;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const-string v0, "Landroid/widget/TextView;"

    const-string v1, "getLeft"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/widget/TextView;->getLeft()I

    move-result p1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/widget/TextView;"

    const-string v1, "getLeft"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget p2, p0, Landroidx/viewpager/widget/PagerTabStrip;->mTabPadding:I

    sub-int/2addr p1, p2

    iget-object p2, p0, Landroidx/viewpager/widget/PagerTabStrip;->mCurrText:Landroid/widget/TextView;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p2, v2, v1

    const-string v0, "Landroid/widget/TextView;"

    const-string v1, "getRight"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/widget/TextView;->getRight()I

    move-result p2

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/widget/TextView;"

    const-string v1, "getRight"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget p3, p0, Landroidx/viewpager/widget/PagerTabStrip;->mTabPadding:I

    add-int/2addr p2, p3

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x6

    invoke-static/range {v9 .. v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x7

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/16 v1, 0x8

    invoke-static/range {v6 .. v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/graphics/Rect;"

    const-string v1, "union"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5, p1, v9, p2, v6}, Landroid/graphics/Rect;->union(IIII)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/graphics/Rect;"

    const-string v1, "union"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object v5, v2, v1

    const-string v0, "Landroidx/viewpager/widget/PagerTitleStrip;"

    const-string v1, "invalidate"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v5}, Landroidx/viewpager/widget/PagerTabStrip;->invalidate(Landroid/graphics/Rect;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/viewpager/widget/PagerTitleStrip;"

    const-string v1, "invalidate"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/viewpager/widget/PagerTabStrip;"

    const-string v1, "updateTextPositions"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
