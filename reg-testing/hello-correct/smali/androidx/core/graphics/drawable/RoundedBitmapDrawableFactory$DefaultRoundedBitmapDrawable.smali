.class Landroidx/core/graphics/drawable/RoundedBitmapDrawableFactory$DefaultRoundedBitmapDrawable;
.super Landroidx/core/graphics/drawable/RoundedBitmapDrawable;
.source "RoundedBitmapDrawableFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/graphics/drawable/RoundedBitmapDrawableFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultRoundedBitmapDrawable"
.end annotation


# direct methods
.method constructor <init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method gravityCompatApply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 11

    const/16 v2, 0xa

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

    aput-object p4, v2, v1

    const/16 v1, 0x9

    aput-object p5, v2, v1

    const-string v0, "Landroidx/core/graphics/drawable/RoundedBitmapDrawableFactory$DefaultRoundedBitmapDrawable;"

    const-string v1, "gravityCompatApply"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v10, 0x0

    move v5, p1

    move v6, p2

    move v7, p3

    move-object v8, p4

    move-object/from16 v9, p5

    invoke-static/range {v5 .. v10}, Landroidx/core/view/GravityCompat;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/core/graphics/drawable/RoundedBitmapDrawableFactory$DefaultRoundedBitmapDrawable;"

    const-string v1, "gravityCompatApply"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public hasMipMap()Z
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/core/graphics/drawable/RoundedBitmapDrawableFactory$DefaultRoundedBitmapDrawable;"

    const-string v1, "hasMipMap"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawableFactory$DefaultRoundedBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawableFactory$DefaultRoundedBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v5}, Landroidx/core/graphics/BitmapCompat;->hasMipMap(Landroid/graphics/Bitmap;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/core/graphics/drawable/RoundedBitmapDrawableFactory$DefaultRoundedBitmapDrawable;"

    const-string v1, "hasMipMap"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5
.end method

.method public setMipMap(Z)V
    .locals 6

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/core/graphics/drawable/RoundedBitmapDrawableFactory$DefaultRoundedBitmapDrawable;"

    const-string v1, "setMipMap"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawableFactory$DefaultRoundedBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroidx/core/graphics/drawable/RoundedBitmapDrawableFactory$DefaultRoundedBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v5, p1}, Landroidx/core/graphics/BitmapCompat;->setHasMipMap(Landroid/graphics/Bitmap;Z)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/core/graphics/drawable/RoundedBitmapDrawable;"

    const-string v1, "invalidateSelf"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/core/graphics/drawable/RoundedBitmapDrawableFactory$DefaultRoundedBitmapDrawable;->invalidateSelf()V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/core/graphics/drawable/RoundedBitmapDrawable;"

    const-string v1, "invalidateSelf"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/core/graphics/drawable/RoundedBitmapDrawableFactory$DefaultRoundedBitmapDrawable;"

    const-string v1, "setMipMap"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
