.class Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableDelegateState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "VectorDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VectorDrawableDelegateState"
.end annotation


# instance fields
.field private final mDelegateState:Landroid/graphics/drawable/Drawable$ConstantState;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable$ConstantState;)V
    .locals 0

    .line 966
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 967
    iput-object p1, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableDelegateState;->mDelegateState:Landroid/graphics/drawable/Drawable$ConstantState;

    return-void
.end method


# virtual methods
.method public canApplyTheme()Z
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableDelegateState;"

    const-string v1, "canApplyTheme"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableDelegateState;->mDelegateState:Landroid/graphics/drawable/Drawable$ConstantState;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Landroid/graphics/drawable/Drawable$ConstantState;"

    const-string v1, "canApplyTheme"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable$ConstantState;->canApplyTheme()Z

    move-result v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v5 .. v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/graphics/drawable/Drawable$ConstantState;"

    const-string v1, "canApplyTheme"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableDelegateState;"

    const-string v1, "canApplyTheme"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5
.end method

.method public getChangingConfigurations()I
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableDelegateState;"

    const-string v1, "getChangingConfigurations"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableDelegateState;->mDelegateState:Landroid/graphics/drawable/Drawable$ConstantState;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Landroid/graphics/drawable/Drawable$ConstantState;"

    const-string v1, "getChangingConfigurations"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable$ConstantState;->getChangingConfigurations()I

    move-result v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v5 .. v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/graphics/drawable/Drawable$ConstantState;"

    const-string v1, "getChangingConfigurations"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableDelegateState;"

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

    const-string v0, "Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableDelegateState;"

    const-string v1, "newDrawable"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v5, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    invoke-direct {v5}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;-><init>()V

    iget-object v6, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableDelegateState;->mDelegateState:Landroid/graphics/drawable/Drawable$ConstantState;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const-string v0, "Landroid/graphics/drawable/Drawable$ConstantState;"

    const-string v1, "newDrawable"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const-string v0, "Landroid/graphics/drawable/Drawable$ConstantState;"

    const-string v1, "newDrawable"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    check-cast v6, Landroid/graphics/drawable/VectorDrawable;

    iput-object v6, v5, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableDelegateState;"

    const-string v1, "newDrawable"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 7

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableDelegateState;"

    const-string v1, "newDrawable"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v5, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    invoke-direct {v5}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;-><init>()V

    iget-object v6, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableDelegateState;->mDelegateState:Landroid/graphics/drawable/Drawable$ConstantState;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroid/graphics/drawable/Drawable$ConstantState;"

    const-string v1, "newDrawable"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const-string v0, "Landroid/graphics/drawable/Drawable$ConstantState;"

    const-string v1, "newDrawable"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    check-cast p1, Landroid/graphics/drawable/VectorDrawable;

    iput-object p1, v5, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableDelegateState;"

    const-string v1, "newDrawable"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5
.end method

.method public newDrawable(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 7

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const/4 v1, 0x6

    aput-object p2, v2, v1

    const-string v0, "Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableDelegateState;"

    const-string v1, "newDrawable"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v5, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    invoke-direct {v5}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;-><init>()V

    iget-object v6, p0, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableDelegateState;->mDelegateState:Landroid/graphics/drawable/Drawable$ConstantState;

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const/4 v1, 0x6

    aput-object p2, v2, v1

    const-string v0, "Landroid/graphics/drawable/Drawable$ConstantState;"

    const-string v1, "newDrawable"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v6, p1, p2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const-string v0, "Landroid/graphics/drawable/Drawable$ConstantState;"

    const-string v1, "newDrawable"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    check-cast p1, Landroid/graphics/drawable/VectorDrawable;

    iput-object p1, v5, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableDelegateState;"

    const-string v1, "newDrawable"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5
.end method
