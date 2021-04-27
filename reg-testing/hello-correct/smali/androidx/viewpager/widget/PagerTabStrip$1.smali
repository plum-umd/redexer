.class Landroidx/viewpager/widget/PagerTabStrip$1;
.super Ljava/lang/Object;
.source "PagerTabStrip.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/viewpager/widget/PagerTabStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/viewpager/widget/PagerTabStrip;


# direct methods
.method constructor <init>(Landroidx/viewpager/widget/PagerTabStrip;)V
    .locals 0

    iput-object p1, p0, Landroidx/viewpager/widget/PagerTabStrip$1;->this$0:Landroidx/viewpager/widget/PagerTabStrip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroidx/viewpager/widget/PagerTabStrip$1;"

    const-string v1, "onClick"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/viewpager/widget/PagerTabStrip$1;->this$0:Landroidx/viewpager/widget/PagerTabStrip;

    iget-object p1, p1, Landroidx/viewpager/widget/PagerTabStrip;->mPager:Landroidx/viewpager/widget/ViewPager;

    iget-object v5, p0, Landroidx/viewpager/widget/PagerTabStrip$1;->this$0:Landroidx/viewpager/widget/PagerTabStrip;

    iget-object v5, v5, Landroidx/viewpager/widget/PagerTabStrip;->mPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v5}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p1, v5}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/viewpager/widget/PagerTabStrip$1;"

    const-string v1, "onClick"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
