.class public Lcom/google/android/material/chip/ChipGroup;
.super Lcom/google/android/material/internal/FlowLayout;
.source "ChipGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/chip/ChipGroup$PassThroughHierarchyChangeListener;,
        Lcom/google/android/material/chip/ChipGroup$CheckedStateTracker;,
        Lcom/google/android/material/chip/ChipGroup$LayoutParams;,
        Lcom/google/android/material/chip/ChipGroup$OnCheckedChangeListener;
    }
.end annotation


# instance fields
.field private checkedId:I

.field private final checkedStateTracker:Lcom/google/android/material/chip/ChipGroup$CheckedStateTracker;

.field private chipSpacingHorizontal:I

.field private chipSpacingVertical:I

.field private onCheckedChangeListener:Lcom/google/android/material/chip/ChipGroup$OnCheckedChangeListener;

.field private passThroughListener:Lcom/google/android/material/chip/ChipGroup$PassThroughHierarchyChangeListener;

.field private protectFromCheckedChange:Z

.field private singleSelection:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/chip/ChipGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 106
    sget v0, Lcom/google/android/material/R$attr;->chipGroupStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/chip/ChipGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    .line 110
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/internal/FlowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 94
    new-instance v0, Lcom/google/android/material/chip/ChipGroup$CheckedStateTracker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/material/chip/ChipGroup$CheckedStateTracker;-><init>(Lcom/google/android/material/chip/ChipGroup;Lcom/google/android/material/chip/ChipGroup$1;)V

    iput-object v0, p0, Lcom/google/android/material/chip/ChipGroup;->checkedStateTracker:Lcom/google/android/material/chip/ChipGroup$CheckedStateTracker;

    .line 95
    new-instance v0, Lcom/google/android/material/chip/ChipGroup$PassThroughHierarchyChangeListener;

    invoke-direct {v0, p0, v1}, Lcom/google/android/material/chip/ChipGroup$PassThroughHierarchyChangeListener;-><init>(Lcom/google/android/material/chip/ChipGroup;Lcom/google/android/material/chip/ChipGroup$1;)V

    iput-object v0, p0, Lcom/google/android/material/chip/ChipGroup;->passThroughListener:Lcom/google/android/material/chip/ChipGroup$PassThroughHierarchyChangeListener;

    const/4 v0, -0x1

    .line 98
    iput v0, p0, Lcom/google/android/material/chip/ChipGroup;->checkedId:I

    const/4 v1, 0x0

    .line 99
    iput-boolean v1, p0, Lcom/google/android/material/chip/ChipGroup;->protectFromCheckedChange:Z

    .line 112
    sget-object v4, Lcom/google/android/material/R$styleable;->ChipGroup:[I

    sget v6, Lcom/google/android/material/R$style;->Widget_MaterialComponents_ChipGroup:I

    new-array v7, v1, [I

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    .line 113
    invoke-static/range {v2 .. v7}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 120
    sget p2, Lcom/google/android/material/R$styleable;->ChipGroup_chipSpacing:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    .line 121
    sget p3, Lcom/google/android/material/R$styleable;->ChipGroup_chipSpacingHorizontal:I

    .line 122
    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p3

    .line 121
    invoke-virtual {p0, p3}, Lcom/google/android/material/chip/ChipGroup;->setChipSpacingHorizontal(I)V

    .line 123
    sget p3, Lcom/google/android/material/R$styleable;->ChipGroup_chipSpacingVertical:I

    .line 124
    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    .line 123
    invoke-virtual {p0, p2}, Lcom/google/android/material/chip/ChipGroup;->setChipSpacingVertical(I)V

    .line 125
    sget p2, Lcom/google/android/material/R$styleable;->ChipGroup_singleLine:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/google/android/material/chip/ChipGroup;->setSingleLine(Z)V

    .line 126
    sget p2, Lcom/google/android/material/R$styleable;->ChipGroup_singleSelection:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/google/android/material/chip/ChipGroup;->setSingleSelection(Z)V

    .line 127
    sget p2, Lcom/google/android/material/R$styleable;->ChipGroup_checkedChip:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    if-eq p2, v0, :cond_0

    .line 129
    iput p2, p0, Lcom/google/android/material/chip/ChipGroup;->checkedId:I

    .line 132
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 133
    iget-object p1, p0, Lcom/google/android/material/chip/ChipGroup;->passThroughListener:Lcom/google/android/material/chip/ChipGroup$PassThroughHierarchyChangeListener;

    invoke-super {p0, p1}, Lcom/google/android/material/internal/FlowLayout;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/material/chip/ChipGroup;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/material/chip/ChipGroup;->protectFromCheckedChange:Z

    return p0
.end method

.method static synthetic access$400(Lcom/google/android/material/chip/ChipGroup;)I
    .locals 0

    iget p0, p0, Lcom/google/android/material/chip/ChipGroup;->checkedId:I

    return p0
.end method

.method static synthetic access$500(Lcom/google/android/material/chip/ChipGroup;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/material/chip/ChipGroup;->singleSelection:Z

    return p0
.end method

.method static synthetic access$600(Lcom/google/android/material/chip/ChipGroup;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/chip/ChipGroup;->setCheckedStateForView(IZ)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/android/material/chip/ChipGroup;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/material/chip/ChipGroup;->setCheckedId(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/android/material/chip/ChipGroup;)Lcom/google/android/material/chip/ChipGroup$CheckedStateTracker;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/chip/ChipGroup;->checkedStateTracker:Lcom/google/android/material/chip/ChipGroup$CheckedStateTracker;

    return-object p0
.end method

.method private setCheckedId(I)V
    .locals 2

    .line 296
    iput p1, p0, Lcom/google/android/material/chip/ChipGroup;->checkedId:I

    .line 298
    iget-object v0, p0, Lcom/google/android/material/chip/ChipGroup;->onCheckedChangeListener:Lcom/google/android/material/chip/ChipGroup$OnCheckedChangeListener;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/google/android/material/chip/ChipGroup;->singleSelection:Z

    if-eqz v1, :cond_0

    .line 299
    invoke-interface {v0, p0, p1}, Lcom/google/android/material/chip/ChipGroup$OnCheckedChangeListener;->onCheckedChanged(Lcom/google/android/material/chip/ChipGroup;I)V

    :cond_0
    return-void
.end method

.method private setCheckedStateForView(IZ)V
    .locals 1

    .line 304
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 305
    instance-of v0, p1, Lcom/google/android/material/chip/Chip;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 306
    iput-boolean v0, p0, Lcom/google/android/material/chip/ChipGroup;->protectFromCheckedChange:Z

    .line 307
    check-cast p1, Lcom/google/android/material/chip/Chip;

    invoke-virtual {p1, p2}, Lcom/google/android/material/chip/Chip;->setChecked(Z)V

    const/4 p1, 0x0

    .line 308
    iput-boolean p1, p0, Lcom/google/android/material/chip/ChipGroup;->protectFromCheckedChange:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3

    .line 175
    instance-of v0, p1, Lcom/google/android/material/chip/Chip;

    if-eqz v0, :cond_1

    .line 176
    move-object v0, p1

    check-cast v0, Lcom/google/android/material/chip/Chip;

    .line 177
    invoke-virtual {v0}, Lcom/google/android/material/chip/Chip;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 178
    iget v1, p0, Lcom/google/android/material/chip/ChipGroup;->checkedId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-boolean v2, p0, Lcom/google/android/material/chip/ChipGroup;->singleSelection:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 179
    invoke-direct {p0, v1, v2}, Lcom/google/android/material/chip/ChipGroup;->setCheckedStateForView(IZ)V

    .line 181
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/material/chip/Chip;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/material/chip/ChipGroup;->setCheckedId(I)V

    .line 185
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/material/internal/FlowLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public check(I)V
    .locals 3

    .line 236
    iget v0, p0, Lcom/google/android/material/chip/ChipGroup;->checkedId:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 240
    iget-boolean v2, p0, Lcom/google/android/material/chip/ChipGroup;->singleSelection:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    .line 241
    invoke-direct {p0, v0, v2}, Lcom/google/android/material/chip/ChipGroup;->setCheckedStateForView(IZ)V

    :cond_1
    if-eq p1, v1, :cond_2

    const/4 v0, 0x1

    .line 245
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/chip/ChipGroup;->setCheckedStateForView(IZ)V

    .line 248
    :cond_2
    invoke-direct {p0, p1}, Lcom/google/android/material/chip/ChipGroup;->setCheckedId(I)V

    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/google/android/material/internal/FlowLayout;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of p1, p1, Lcom/google/android/material/chip/ChipGroup$LayoutParams;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public clearCheck()V
    .locals 4

    const/4 v0, 0x1

    .line 273
    iput-boolean v0, p0, Lcom/google/android/material/chip/ChipGroup;->protectFromCheckedChange:Z

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 274
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 275
    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/ChipGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 276
    instance-of v3, v2, Lcom/google/android/material/chip/Chip;

    if-eqz v3, :cond_0

    .line 277
    check-cast v2, Lcom/google/android/material/chip/Chip;

    invoke-virtual {v2, v0}, Lcom/google/android/material/chip/Chip;->setChecked(Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 280
    :cond_1
    iput-boolean v0, p0, Lcom/google/android/material/chip/ChipGroup;->protectFromCheckedChange:Z

    const/4 v0, -0x1

    .line 282
    invoke-direct {p0, v0}, Lcom/google/android/material/chip/ChipGroup;->setCheckedId(I)V

    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    new-instance v0, Lcom/google/android/material/chip/ChipGroup$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Lcom/google/android/material/chip/ChipGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    new-instance v0, Lcom/google/android/material/chip/ChipGroup$LayoutParams;

    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/material/chip/ChipGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    new-instance v0, Lcom/google/android/material/chip/ChipGroup$LayoutParams;

    invoke-direct {v0, p1}, Lcom/google/android/material/chip/ChipGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getCheckedChipId()I
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipGroup;->singleSelection:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/material/chip/ChipGroup;->checkedId:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getChipSpacingHorizontal()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/chip/ChipGroup;->chipSpacingHorizontal:I

    return v0
.end method

.method public getChipSpacingVertical()I
    .locals 1

    iget v0, p0, Lcom/google/android/material/chip/ChipGroup;->chipSpacingVertical:I

    return v0
.end method

.method public isSingleSelection()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipGroup;->singleSelection:Z

    return v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 164
    invoke-super {p0}, Lcom/google/android/material/internal/FlowLayout;->onFinishInflate()V

    .line 167
    iget v0, p0, Lcom/google/android/material/chip/ChipGroup;->checkedId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    .line 168
    invoke-direct {p0, v0, v1}, Lcom/google/android/material/chip/ChipGroup;->setCheckedStateForView(IZ)V

    .line 169
    iget v0, p0, Lcom/google/android/material/chip/ChipGroup;->checkedId:I

    invoke-direct {p0, v0}, Lcom/google/android/material/chip/ChipGroup;->setCheckedId(I)V

    :cond_0
    return-void
.end method

.method public setChipSpacing(I)V
    .locals 0

    .line 314
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipGroup;->setChipSpacingHorizontal(I)V

    .line 315
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipGroup;->setChipSpacingVertical(I)V

    return-void
.end method

.method public setChipSpacingHorizontal(I)V
    .locals 1

    .line 331
    iget v0, p0, Lcom/google/android/material/chip/ChipGroup;->chipSpacingHorizontal:I

    if-eq v0, p1, :cond_0

    .line 332
    iput p1, p0, Lcom/google/android/material/chip/ChipGroup;->chipSpacingHorizontal:I

    .line 333
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipGroup;->setItemSpacing(I)V

    .line 334
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipGroup;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setChipSpacingHorizontalResource(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipGroup;->setChipSpacingHorizontal(I)V

    return-void
.end method

.method public setChipSpacingResource(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipGroup;->setChipSpacing(I)V

    return-void
.end method

.method public setChipSpacingVertical(I)V
    .locals 1

    .line 351
    iget v0, p0, Lcom/google/android/material/chip/ChipGroup;->chipSpacingVertical:I

    if-eq v0, p1, :cond_0

    .line 352
    iput p1, p0, Lcom/google/android/material/chip/ChipGroup;->chipSpacingVertical:I

    .line 353
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipGroup;->setLineSpacing(I)V

    .line 354
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipGroup;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setChipSpacingVerticalResource(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipGroup;->setChipSpacingVertical(I)V

    return-void
.end method

.method public setDividerDrawableHorizontal(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Changing divider drawables have no effect. ChipGroup do not use divider drawables as spacing."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDividerDrawableVertical(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Changing divider drawables have no effect. ChipGroup do not use divider drawables as spacing."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setFlexWrap(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Changing flex wrap not allowed. ChipGroup exposes a singleLine attribute instead."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setOnCheckedChangeListener(Lcom/google/android/material/chip/ChipGroup$OnCheckedChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/chip/ChipGroup;->onCheckedChangeListener:Lcom/google/android/material/chip/ChipGroup$OnCheckedChangeListener;

    return-void
.end method

.method public setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/ChipGroup;->passThroughListener:Lcom/google/android/material/chip/ChipGroup$PassThroughHierarchyChangeListener;

    invoke-static {v0, p1}, Lcom/google/android/material/chip/ChipGroup$PassThroughHierarchyChangeListener;->access$202(Lcom/google/android/material/chip/ChipGroup$PassThroughHierarchyChangeListener;Landroid/view/ViewGroup$OnHierarchyChangeListener;)Landroid/view/ViewGroup$OnHierarchyChangeListener;

    return-void
.end method

.method public setShowDividerHorizontal(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Changing divider modes has no effect. ChipGroup do not use divider drawables as spacing."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setShowDividerVertical(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Changing divider modes has no effect. ChipGroup do not use divider drawables as spacing."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSingleLine(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipGroup;->setSingleLine(Z)V

    return-void
.end method

.method public setSingleSelection(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipGroup;->setSingleSelection(Z)V

    return-void
.end method

.method public setSingleSelection(Z)V
    .locals 1

    .line 379
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipGroup;->singleSelection:Z

    if-eq v0, p1, :cond_0

    .line 380
    iput-boolean p1, p0, Lcom/google/android/material/chip/ChipGroup;->singleSelection:Z

    .line 382
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipGroup;->clearCheck()V

    :cond_0
    return-void
.end method
