.class public Landroidx/appcompat/widget/AppCompatImageHelper;
.super Ljava/lang/Object;
.source "AppCompatImageHelper.java"


# instance fields
.field private mImageTint:Landroidx/appcompat/widget/TintInfo;

.field private mInternalImageTint:Landroidx/appcompat/widget/TintInfo;

.field private mTmpInfo:Landroidx/appcompat/widget/TintInfo;

.field private final mView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    return-void
.end method

.method private applyFrameworkTintUsingColorFilter(Landroid/graphics/drawable/Drawable;)Z
    .locals 8

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroidx/appcompat/widget/AppCompatImageHelper;"

    const-string v1, "applyFrameworkTintUsingColorFilter"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/appcompat/widget/AppCompatImageHelper;->mTmpInfo:Landroidx/appcompat/widget/TintInfo;

    if-nez v5, :cond_0

    new-instance v5, Landroidx/appcompat/widget/TintInfo;

    invoke-direct {v5}, Landroidx/appcompat/widget/TintInfo;-><init>()V

    iput-object v5, p0, Landroidx/appcompat/widget/AppCompatImageHelper;->mTmpInfo:Landroidx/appcompat/widget/TintInfo;

    :cond_0
    iget-object v5, p0, Landroidx/appcompat/widget/AppCompatImageHelper;->mTmpInfo:Landroidx/appcompat/widget/TintInfo;

    invoke-virtual {v5}, Landroidx/appcompat/widget/TintInfo;->clear()V

    iget-object v6, p0, Landroidx/appcompat/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    invoke-static {v6}, Landroidx/core/widget/ImageViewCompat;->getImageTintList(Landroid/widget/ImageView;)Landroid/content/res/ColorStateList;

    move-result-object v6

    const/4 v7, 0x1

    if-eqz v6, :cond_1

    iput-boolean v7, v5, Landroidx/appcompat/widget/TintInfo;->mHasTintList:Z

    iput-object v6, v5, Landroidx/appcompat/widget/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    :cond_1
    iget-object v6, p0, Landroidx/appcompat/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    invoke-static {v6}, Landroidx/core/widget/ImageViewCompat;->getImageTintMode(Landroid/widget/ImageView;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v6

    if-eqz v6, :cond_2

    iput-boolean v7, v5, Landroidx/appcompat/widget/TintInfo;->mHasTintMode:Z

    iput-object v6, v5, Landroidx/appcompat/widget/TintInfo;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    :cond_2
    iget-boolean v6, v5, Landroidx/appcompat/widget/TintInfo;->mHasTintList:Z

    if-nez v6, :cond_4

    iget-boolean v6, v5, Landroidx/appcompat/widget/TintInfo;->mHasTintMode:Z

    if-eqz v6, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/appcompat/widget/AppCompatImageHelper;"

    const-string v1, "applyFrameworkTintUsingColorFilter"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p1

    :cond_4
    :goto_0
    iget-object v6, p0, Landroidx/appcompat/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const-string v0, "Landroid/widget/ImageView;"

    const-string v1, "getDrawableState"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v6}, Landroid/widget/ImageView;->getDrawableState()[I

    move-result-object v6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const-string v0, "Landroid/widget/ImageView;"

    const-string v1, "getDrawableState"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1, v5, v6}, Landroidx/appcompat/widget/AppCompatDrawableManager;->tintDrawable(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;[I)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/appcompat/widget/AppCompatImageHelper;"

    const-string v1, "applyFrameworkTintUsingColorFilter"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v7
.end method

.method private shouldApplyFrameworkTintUsingColorFilter()Z
    .locals 9

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/appcompat/widget/AppCompatImageHelper;"

    const-string v1, "shouldApplyFrameworkTintUsingColorFilter"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/16 v8, 0x15

    if-le v5, v8, :cond_1

    iget-object v5, p0, Landroidx/appcompat/widget/AppCompatImageHelper;->mInternalImageTint:Landroidx/appcompat/widget/TintInfo;

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/appcompat/widget/AppCompatImageHelper;"

    const-string v1, "shouldApplyFrameworkTintUsingColorFilter"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v6

    :cond_1
    if-ne v5, v8, :cond_2

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/appcompat/widget/AppCompatImageHelper;"

    const-string v1, "shouldApplyFrameworkTintUsingColorFilter"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v6

    :cond_2
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/appcompat/widget/AppCompatImageHelper;"

    const-string v1, "shouldApplyFrameworkTintUsingColorFilter"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v7
.end method


# virtual methods
.method applySupportImageTint()V
    .locals 8

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/appcompat/widget/AppCompatImageHelper;"

    const-string v1, "applySupportImageTint"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/appcompat/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Landroid/widget/ImageView;"

    const-string v1, "getDrawable"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Landroid/widget/ImageView;"

    const-string v1, "getDrawable"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v5, :cond_0

    invoke-static {v5}, Landroidx/appcompat/widget/DrawableUtils;->fixDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    if-eqz v5, :cond_3

    invoke-direct {p0}, Landroidx/appcompat/widget/AppCompatImageHelper;->shouldApplyFrameworkTintUsingColorFilter()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-direct {p0, v5}, Landroidx/appcompat/widget/AppCompatImageHelper;->applyFrameworkTintUsingColorFilter(Landroid/graphics/drawable/Drawable;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/appcompat/widget/AppCompatImageHelper;"

    const-string v1, "applySupportImageTint"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    iget-object v6, p0, Landroidx/appcompat/widget/AppCompatImageHelper;->mImageTint:Landroidx/appcompat/widget/TintInfo;

    if-eqz v6, :cond_2

    iget-object v7, p0, Landroidx/appcompat/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v7, v2, v1

    const-string v0, "Landroid/widget/ImageView;"

    const-string v1, "getDrawableState"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v7}, Landroid/widget/ImageView;->getDrawableState()[I

    move-result-object v7

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v7, v2, v1

    const-string v0, "Landroid/widget/ImageView;"

    const-string v1, "getDrawableState"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v5, v6, v7}, Landroidx/appcompat/widget/AppCompatDrawableManager;->tintDrawable(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;[I)V

    goto/16 :goto_0

    :cond_2
    iget-object v6, p0, Landroidx/appcompat/widget/AppCompatImageHelper;->mInternalImageTint:Landroidx/appcompat/widget/TintInfo;

    if-eqz v6, :cond_3

    iget-object v7, p0, Landroidx/appcompat/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v7, v2, v1

    const-string v0, "Landroid/widget/ImageView;"

    const-string v1, "getDrawableState"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v7}, Landroid/widget/ImageView;->getDrawableState()[I

    move-result-object v7

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v7, v2, v1

    const-string v0, "Landroid/widget/ImageView;"

    const-string v1, "getDrawableState"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v5, v6, v7}, Landroidx/appcompat/widget/AppCompatDrawableManager;->tintDrawable(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;[I)V

    :cond_3
    :goto_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/appcompat/widget/AppCompatImageHelper;"

    const-string v1, "applySupportImageTint"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method getSupportImageTintList()Landroid/content/res/ColorStateList;
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/appcompat/widget/AppCompatImageHelper;"

    const-string v1, "getSupportImageTintList"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/appcompat/widget/AppCompatImageHelper;->mImageTint:Landroidx/appcompat/widget/TintInfo;

    if-eqz v5, :cond_0

    iget-object v5, v5, Landroidx/appcompat/widget/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/appcompat/widget/AppCompatImageHelper;"

    const-string v1, "getSupportImageTintList"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5
.end method

.method getSupportImageTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/appcompat/widget/AppCompatImageHelper;"

    const-string v1, "getSupportImageTintMode"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/appcompat/widget/AppCompatImageHelper;->mImageTint:Landroidx/appcompat/widget/TintInfo;

    if-eqz v5, :cond_0

    iget-object v5, v5, Landroidx/appcompat/widget/TintInfo;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/appcompat/widget/AppCompatImageHelper;"

    const-string v1, "getSupportImageTintMode"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5
.end method

.method hasOverlappingRendering()Z
    .locals 8

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/appcompat/widget/AppCompatImageHelper;"

    const-string v1, "hasOverlappingRendering"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/appcompat/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Landroid/widget/ImageView;"

    const-string v1, "getBackground"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Landroid/widget/ImageView;"

    const-string v1, "getBackground"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-lt v6, v7, :cond_0

    instance-of v5, v5, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/appcompat/widget/AppCompatImageHelper;"

    const-string v1, "hasOverlappingRendering"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5

    :cond_0
    const/4 v5, 0x1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/appcompat/widget/AppCompatImageHelper;"

    const-string v1, "hasOverlappingRendering"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5
.end method

.method public loadFromAttributes(Landroid/util/AttributeSet;I)V
    .locals 8

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

    const-string v0, "Landroidx/appcompat/widget/AppCompatImageHelper;"

    const-string v1, "loadFromAttributes"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/appcompat/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Landroid/widget/ImageView;"

    const-string v1, "getContext"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Landroid/widget/ImageView;"

    const-string v1, "getContext"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v6, Landroidx/appcompat/R$styleable;->AppCompatImageView:[I

    const/4 v7, 0x0

    invoke-static {v5, p1, v6, p2, v7}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object p1

    :try_start_0
    iget-object p2, p0, Landroidx/appcompat/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p2, v2, v1

    const-string v0, "Landroid/widget/ImageView;"

    const-string v1, "getDrawable"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_1
    invoke-virtual {p2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p2, v2, v1

    const-string v0, "Landroid/widget/ImageView;"

    const-string v1, "getDrawable"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_2
    const/4 v5, -0x1

    if-nez p2, :cond_0

    sget v6, Landroidx/appcompat/R$styleable;->AppCompatImageView_srcCompat:I

    invoke-virtual {p1, v6, v5}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v6

    if-eq v6, v5, :cond_0

    iget-object p2, p0, Landroidx/appcompat/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p2, v2, v1

    const-string v0, "Landroid/widget/ImageView;"

    const-string v1, "getContext"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_3
    invoke-virtual {p2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p2, v2, v1

    const-string v0, "Landroid/widget/ImageView;"

    const-string v1, "getContext"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_4
    invoke-static {p2, v6}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object v6, p0, Landroidx/appcompat/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const/4 v1, 0x5

    aput-object p2, v2, v1

    const-string v0, "Landroid/widget/ImageView;"

    const-string v1, "setImageDrawable"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_5
    invoke-virtual {v6, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/widget/ImageView;"

    const-string v1, "setImageDrawable"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    if-eqz p2, :cond_1

    :try_start_6
    invoke-static {p2}, Landroidx/appcompat/widget/DrawableUtils;->fixDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    sget p2, Landroidx/appcompat/R$styleable;->AppCompatImageView_tint:I

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Landroidx/appcompat/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    sget v6, Landroidx/appcompat/R$styleable;->AppCompatImageView_tint:I

    invoke-virtual {p1, v6}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-static {p2, v6}, Landroidx/core/widget/ImageViewCompat;->setImageTintList(Landroid/widget/ImageView;Landroid/content/res/ColorStateList;)V

    :cond_2
    sget p2, Landroidx/appcompat/R$styleable;->AppCompatImageView_tintMode:I

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Landroidx/appcompat/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    sget v6, Landroidx/appcompat/R$styleable;->AppCompatImageView_tintMode:I

    invoke-virtual {p1, v6, v5}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroidx/appcompat/widget/DrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v5

    invoke-static {p2, v5}, Landroidx/core/widget/ImageViewCompat;->setImageTintMode(Landroid/widget/ImageView;Landroid/graphics/PorterDuff$Mode;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_3
    invoke-virtual {p1}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/appcompat/widget/AppCompatImageHelper;"

    const-string v1, "loadFromAttributes"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/appcompat/widget/AppCompatImageHelper;"

    const-string v1, "loadFromAttributes"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw p2
.end method

.method public setImageResource(I)V
    .locals 6

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/appcompat/widget/AppCompatImageHelper;"

    const-string v1, "setImageResource"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_1

    iget-object v5, p0, Landroidx/appcompat/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Landroid/widget/ImageView;"

    const-string v1, "getContext"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Landroid/widget/ImageView;"

    const-string v1, "getContext"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v5, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Landroidx/appcompat/widget/DrawableUtils;->fixDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v5, p0, Landroidx/appcompat/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroid/widget/ImageView;"

    const-string v1, "setImageDrawable"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/widget/ImageView;"

    const-string v1, "setImageDrawable"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_1
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    const/4 v5, 0x0

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const/4 v1, 0x5

    aput-object v5, v2, v1

    const-string v0, "Landroid/widget/ImageView;"

    const-string v1, "setImageDrawable"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/widget/ImageView;"

    const-string v1, "setImageDrawable"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatImageHelper;->applySupportImageTint()V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/appcompat/widget/AppCompatImageHelper;"

    const-string v1, "setImageResource"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method setInternalImageTint(Landroid/content/res/ColorStateList;)V
    .locals 6

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroidx/appcompat/widget/AppCompatImageHelper;"

    const-string v1, "setInternalImageTint"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_1

    iget-object v5, p0, Landroidx/appcompat/widget/AppCompatImageHelper;->mInternalImageTint:Landroidx/appcompat/widget/TintInfo;

    if-nez v5, :cond_0

    new-instance v5, Landroidx/appcompat/widget/TintInfo;

    invoke-direct {v5}, Landroidx/appcompat/widget/TintInfo;-><init>()V

    iput-object v5, p0, Landroidx/appcompat/widget/AppCompatImageHelper;->mInternalImageTint:Landroidx/appcompat/widget/TintInfo;

    :cond_0
    iget-object v5, p0, Landroidx/appcompat/widget/AppCompatImageHelper;->mInternalImageTint:Landroidx/appcompat/widget/TintInfo;

    iput-object p1, v5, Landroidx/appcompat/widget/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    iput-boolean p1, v5, Landroidx/appcompat/widget/TintInfo;->mHasTintList:Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatImageHelper;->mInternalImageTint:Landroidx/appcompat/widget/TintInfo;

    :goto_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatImageHelper;->applySupportImageTint()V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/appcompat/widget/AppCompatImageHelper;"

    const-string v1, "setInternalImageTint"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method setSupportImageTintList(Landroid/content/res/ColorStateList;)V
    .locals 6

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroidx/appcompat/widget/AppCompatImageHelper;"

    const-string v1, "setSupportImageTintList"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/appcompat/widget/AppCompatImageHelper;->mImageTint:Landroidx/appcompat/widget/TintInfo;

    if-nez v5, :cond_0

    new-instance v5, Landroidx/appcompat/widget/TintInfo;

    invoke-direct {v5}, Landroidx/appcompat/widget/TintInfo;-><init>()V

    iput-object v5, p0, Landroidx/appcompat/widget/AppCompatImageHelper;->mImageTint:Landroidx/appcompat/widget/TintInfo;

    :cond_0
    iget-object v5, p0, Landroidx/appcompat/widget/AppCompatImageHelper;->mImageTint:Landroidx/appcompat/widget/TintInfo;

    iput-object p1, v5, Landroidx/appcompat/widget/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    iput-boolean p1, v5, Landroidx/appcompat/widget/TintInfo;->mHasTintList:Z

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatImageHelper;->applySupportImageTint()V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/appcompat/widget/AppCompatImageHelper;"

    const-string v1, "setSupportImageTintList"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method setSupportImageTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 6

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroidx/appcompat/widget/AppCompatImageHelper;"

    const-string v1, "setSupportImageTintMode"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/appcompat/widget/AppCompatImageHelper;->mImageTint:Landroidx/appcompat/widget/TintInfo;

    if-nez v5, :cond_0

    new-instance v5, Landroidx/appcompat/widget/TintInfo;

    invoke-direct {v5}, Landroidx/appcompat/widget/TintInfo;-><init>()V

    iput-object v5, p0, Landroidx/appcompat/widget/AppCompatImageHelper;->mImageTint:Landroidx/appcompat/widget/TintInfo;

    :cond_0
    iget-object v5, p0, Landroidx/appcompat/widget/AppCompatImageHelper;->mImageTint:Landroidx/appcompat/widget/TintInfo;

    iput-object p1, v5, Landroidx/appcompat/widget/TintInfo;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    const/4 p1, 0x1

    iput-boolean p1, v5, Landroidx/appcompat/widget/TintInfo;->mHasTintMode:Z

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatImageHelper;->applySupportImageTint()V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/appcompat/widget/AppCompatImageHelper;"

    const-string v1, "setSupportImageTintMode"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
