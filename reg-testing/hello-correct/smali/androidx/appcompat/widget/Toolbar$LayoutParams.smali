.class public Landroidx/appcompat/widget/Toolbar$LayoutParams;
.super Landroidx/appcompat/app/ActionBar$LayoutParams;
.source "Toolbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/Toolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# static fields
.field static final CUSTOM:I = 0x0

.field static final EXPANDED:I = 0x2

.field static final SYSTEM:I = 0x1


# instance fields
.field mViewType:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    const/4 v0, -0x2

    const/4 v1, -0x1

    .line 2230
    invoke-direct {p0, v0, v1, p1}, Landroidx/appcompat/widget/Toolbar$LayoutParams;-><init>(III)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 2220
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/app/ActionBar$LayoutParams;-><init>(II)V

    const/4 p1, 0x0

    .line 2213
    iput p1, p0, Landroidx/appcompat/widget/Toolbar$LayoutParams;->mViewType:I

    const p1, 0x800013

    .line 2221
    iput p1, p0, Landroidx/appcompat/widget/Toolbar$LayoutParams;->gravity:I

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 2225
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/app/ActionBar$LayoutParams;-><init>(II)V

    const/4 p1, 0x0

    .line 2213
    iput p1, p0, Landroidx/appcompat/widget/Toolbar$LayoutParams;->mViewType:I

    .line 2226
    iput p3, p0, Landroidx/appcompat/widget/Toolbar$LayoutParams;->gravity:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2216
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/app/ActionBar$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 2213
    iput p1, p0, Landroidx/appcompat/widget/Toolbar$LayoutParams;->mViewType:I

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 2251
    invoke-direct {p0, p1}, Landroidx/appcompat/app/ActionBar$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x0

    .line 2213
    iput p1, p0, Landroidx/appcompat/widget/Toolbar$LayoutParams;->mViewType:I

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1

    .line 2244
    invoke-direct {p0, p1}, Landroidx/appcompat/app/ActionBar$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    .line 2213
    iput v0, p0, Landroidx/appcompat/widget/Toolbar$LayoutParams;->mViewType:I

    .line 2247
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar$LayoutParams;->copyMarginsFromCompat(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/app/ActionBar$LayoutParams;)V
    .locals 0

    .line 2240
    invoke-direct {p0, p1}, Landroidx/appcompat/app/ActionBar$LayoutParams;-><init>(Landroidx/appcompat/app/ActionBar$LayoutParams;)V

    const/4 p1, 0x0

    .line 2213
    iput p1, p0, Landroidx/appcompat/widget/Toolbar$LayoutParams;->mViewType:I

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/widget/Toolbar$LayoutParams;)V
    .locals 1

    .line 2234
    invoke-direct {p0, p1}, Landroidx/appcompat/app/ActionBar$LayoutParams;-><init>(Landroidx/appcompat/app/ActionBar$LayoutParams;)V

    const/4 v0, 0x0

    .line 2213
    iput v0, p0, Landroidx/appcompat/widget/Toolbar$LayoutParams;->mViewType:I

    .line 2236
    iget p1, p1, Landroidx/appcompat/widget/Toolbar$LayoutParams;->mViewType:I

    iput p1, p0, Landroidx/appcompat/widget/Toolbar$LayoutParams;->mViewType:I

    return-void
.end method


# virtual methods
.method copyMarginsFromCompat(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 6

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroidx/appcompat/widget/Toolbar$LayoutParams;"

    const-string v1, "copyMarginsFromCompat"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v5, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v5, p0, Landroidx/appcompat/widget/Toolbar$LayoutParams;->leftMargin:I

    iget v5, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v5, p0, Landroidx/appcompat/widget/Toolbar$LayoutParams;->topMargin:I

    iget v5, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v5, p0, Landroidx/appcompat/widget/Toolbar$LayoutParams;->rightMargin:I

    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput p1, p0, Landroidx/appcompat/widget/Toolbar$LayoutParams;->bottomMargin:I

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/appcompat/widget/Toolbar$LayoutParams;"

    const-string v1, "copyMarginsFromCompat"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
