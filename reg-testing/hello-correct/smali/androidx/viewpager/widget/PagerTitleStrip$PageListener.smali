.class Landroidx/viewpager/widget/PagerTitleStrip$PageListener;
.super Landroid/database/DataSetObserver;
.source "PagerTitleStrip.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;
.implements Landroidx/viewpager/widget/ViewPager$OnAdapterChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/viewpager/widget/PagerTitleStrip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PageListener"
.end annotation


# instance fields
.field private mScrollState:I

.field final synthetic this$0:Landroidx/viewpager/widget/PagerTitleStrip;


# direct methods
.method constructor <init>(Landroidx/viewpager/widget/PagerTitleStrip;)V
    .locals 0

    .line 475
    iput-object p1, p0, Landroidx/viewpager/widget/PagerTitleStrip$PageListener;->this$0:Landroidx/viewpager/widget/PagerTitleStrip;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdapterChanged(Landroidx/viewpager/widget/ViewPager;Landroidx/viewpager/widget/PagerAdapter;Landroidx/viewpager/widget/PagerAdapter;)V
    .locals 5

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

    const-string v0, "Landroidx/viewpager/widget/PagerTitleStrip$PageListener;"

    const-string v1, "onAdapterChanged"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/viewpager/widget/PagerTitleStrip$PageListener;->this$0:Landroidx/viewpager/widget/PagerTitleStrip;

    invoke-virtual {p1, p2, p3}, Landroidx/viewpager/widget/PagerTitleStrip;->updateAdapter(Landroidx/viewpager/widget/PagerAdapter;Landroidx/viewpager/widget/PagerAdapter;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/viewpager/widget/PagerTitleStrip$PageListener;"

    const-string v1, "onAdapterChanged"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onChanged()V
    .locals 9

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/viewpager/widget/PagerTitleStrip$PageListener;"

    const-string v1, "onChanged"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/viewpager/widget/PagerTitleStrip$PageListener;->this$0:Landroidx/viewpager/widget/PagerTitleStrip;

    iget-object v6, v5, Landroidx/viewpager/widget/PagerTitleStrip;->mPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v6}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v6

    iget-object v7, p0, Landroidx/viewpager/widget/PagerTitleStrip$PageListener;->this$0:Landroidx/viewpager/widget/PagerTitleStrip;

    iget-object v7, v7, Landroidx/viewpager/widget/PagerTitleStrip;->mPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v7}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroidx/viewpager/widget/PagerTitleStrip;->updateText(ILandroidx/viewpager/widget/PagerAdapter;)V

    iget-object v5, p0, Landroidx/viewpager/widget/PagerTitleStrip$PageListener;->this$0:Landroidx/viewpager/widget/PagerTitleStrip;

    iget v5, v5, Landroidx/viewpager/widget/PagerTitleStrip;->mLastKnownPositionOffset:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_0

    iget-object v5, p0, Landroidx/viewpager/widget/PagerTitleStrip$PageListener;->this$0:Landroidx/viewpager/widget/PagerTitleStrip;

    iget v6, v5, Landroidx/viewpager/widget/PagerTitleStrip;->mLastKnownPositionOffset:F

    :cond_0
    iget-object v5, p0, Landroidx/viewpager/widget/PagerTitleStrip$PageListener;->this$0:Landroidx/viewpager/widget/PagerTitleStrip;

    iget-object v7, v5, Landroidx/viewpager/widget/PagerTitleStrip;->mPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v7}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v7

    const/4 v8, 0x1

    invoke-virtual {v5, v7, v6, v8}, Landroidx/viewpager/widget/PagerTitleStrip;->updateTextPositions(IFZ)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/viewpager/widget/PagerTitleStrip$PageListener;"

    const-string v1, "onChanged"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 5

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/viewpager/widget/PagerTitleStrip$PageListener;"

    const-string v1, "onPageScrollStateChanged"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput p1, p0, Landroidx/viewpager/widget/PagerTitleStrip$PageListener;->mScrollState:I

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/viewpager/widget/PagerTitleStrip$PageListener;"

    const-string v1, "onPageScrollStateChanged"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onPageScrolled(IFI)V
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

    invoke-static/range {p2 .. p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x7

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/viewpager/widget/PagerTitleStrip$PageListener;"

    const-string v1, "onPageScrolled"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/high16 p3, 0x3f000000    # 0.5f

    cmpl-float p3, p2, p3

    if-lez p3, :cond_0

    add-int/lit8 p1, p1, 0x1

    :cond_0
    iget-object p3, p0, Landroidx/viewpager/widget/PagerTitleStrip$PageListener;->this$0:Landroidx/viewpager/widget/PagerTitleStrip;

    const/4 v5, 0x0

    invoke-virtual {p3, p1, p2, v5}, Landroidx/viewpager/widget/PagerTitleStrip;->updateTextPositions(IFZ)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/viewpager/widget/PagerTitleStrip$PageListener;"

    const-string v1, "onPageScrolled"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onPageSelected(I)V
    .locals 8

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/viewpager/widget/PagerTitleStrip$PageListener;"

    const-string v1, "onPageSelected"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget p1, p0, Landroidx/viewpager/widget/PagerTitleStrip$PageListener;->mScrollState:I

    if-nez p1, :cond_1

    iget-object p1, p0, Landroidx/viewpager/widget/PagerTitleStrip$PageListener;->this$0:Landroidx/viewpager/widget/PagerTitleStrip;

    iget-object v5, p1, Landroidx/viewpager/widget/PagerTitleStrip;->mPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v5}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v5

    iget-object v6, p0, Landroidx/viewpager/widget/PagerTitleStrip$PageListener;->this$0:Landroidx/viewpager/widget/PagerTitleStrip;

    iget-object v6, v6, Landroidx/viewpager/widget/PagerTitleStrip;->mPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v6}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Landroidx/viewpager/widget/PagerTitleStrip;->updateText(ILandroidx/viewpager/widget/PagerAdapter;)V

    iget-object p1, p0, Landroidx/viewpager/widget/PagerTitleStrip$PageListener;->this$0:Landroidx/viewpager/widget/PagerTitleStrip;

    iget p1, p1, Landroidx/viewpager/widget/PagerTitleStrip;->mLastKnownPositionOffset:F

    const/4 v5, 0x0

    cmpl-float p1, p1, v5

    if-ltz p1, :cond_0

    iget-object p1, p0, Landroidx/viewpager/widget/PagerTitleStrip$PageListener;->this$0:Landroidx/viewpager/widget/PagerTitleStrip;

    iget v5, p1, Landroidx/viewpager/widget/PagerTitleStrip;->mLastKnownPositionOffset:F

    :cond_0
    iget-object p1, p0, Landroidx/viewpager/widget/PagerTitleStrip$PageListener;->this$0:Landroidx/viewpager/widget/PagerTitleStrip;

    iget-object v6, p1, Landroidx/viewpager/widget/PagerTitleStrip;->mPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v6}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v6

    const/4 v7, 0x1

    invoke-virtual {p1, v6, v5, v7}, Landroidx/viewpager/widget/PagerTitleStrip;->updateTextPositions(IFZ)V

    :cond_1
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/viewpager/widget/PagerTitleStrip$PageListener;"

    const-string v1, "onPageSelected"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
