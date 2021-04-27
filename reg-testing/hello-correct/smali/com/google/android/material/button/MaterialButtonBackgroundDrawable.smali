.class Lcom/google/android/material/button/MaterialButtonBackgroundDrawable;
.super Landroid/graphics/drawable/RippleDrawable;
.source "MaterialButtonBackgroundDrawable.java"


# direct methods
.method constructor <init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/InsetDrawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 2

    const/4 v0, 0x0

    .line 65
    invoke-virtual {p0, v0}, Lcom/google/android/material/button/MaterialButtonBackgroundDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 66
    invoke-virtual {p0, v0}, Lcom/google/android/material/button/MaterialButtonBackgroundDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/InsetDrawable;

    .line 67
    invoke-virtual {v1}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    .line 68
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 69
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_0
    return-void
.end method
