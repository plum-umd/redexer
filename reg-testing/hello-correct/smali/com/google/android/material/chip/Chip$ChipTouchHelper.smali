.class Lcom/google/android/material/chip/Chip$ChipTouchHelper;
.super Landroidx/customview/widget/ExploreByTouchHelper;
.source "Chip.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/chip/Chip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChipTouchHelper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/chip/Chip;


# direct methods
.method constructor <init>(Lcom/google/android/material/chip/Chip;Lcom/google/android/material/chip/Chip;)V
    .locals 0

    .line 957
    iput-object p1, p0, Lcom/google/android/material/chip/Chip$ChipTouchHelper;->this$0:Lcom/google/android/material/chip/Chip;

    .line 958
    invoke-direct {p0, p2}, Landroidx/customview/widget/ExploreByTouchHelper;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected getVirtualViewAt(FF)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip$ChipTouchHelper;->this$0:Lcom/google/android/material/chip/Chip;

    invoke-static {v0}, Lcom/google/android/material/chip/Chip;->access$100(Lcom/google/android/material/chip/Chip;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/Chip$ChipTouchHelper;->this$0:Lcom/google/android/material/chip/Chip;

    invoke-static {v0}, Lcom/google/android/material/chip/Chip;->access$200(Lcom/google/android/material/chip/Chip;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method protected getVisibleVirtualViews(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 970
    iget-object v0, p0, Lcom/google/android/material/chip/Chip$ChipTouchHelper;->this$0:Lcom/google/android/material/chip/Chip;

    invoke-static {v0}, Lcom/google/android/material/chip/Chip;->access$100(Lcom/google/android/material/chip/Chip;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 971
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method protected onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .locals 0

    const/16 p3, 0x10

    if-ne p2, p3, :cond_0

    if-nez p1, :cond_0

    .line 1019
    iget-object p1, p0, Lcom/google/android/material/chip/Chip$ChipTouchHelper;->this$0:Lcom/google/android/material/chip/Chip;

    invoke-virtual {p1}, Lcom/google/android/material/chip/Chip;->performCloseIconClick()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected onPopulateNodeForHost(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 3

    .line 1002
    iget-object v0, p0, Lcom/google/android/material/chip/Chip$ChipTouchHelper;->this$0:Lcom/google/android/material/chip/Chip;

    invoke-static {v0}, Lcom/google/android/material/chip/Chip;->access$000(Lcom/google/android/material/chip/Chip;)Lcom/google/android/material/chip/ChipDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/Chip$ChipTouchHelper;->this$0:Lcom/google/android/material/chip/Chip;

    invoke-static {v0}, Lcom/google/android/material/chip/Chip;->access$000(Lcom/google/android/material/chip/Chip;)Lcom/google/android/material/chip/ChipDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipDrawable;->isCheckable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCheckable(Z)V

    .line 1003
    const-class v0, Lcom/google/android/material/chip/Chip;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 1004
    iget-object v0, p0, Lcom/google/android/material/chip/Chip$ChipTouchHelper;->this$0:Lcom/google/android/material/chip/Chip;

    invoke-virtual {v0}, Lcom/google/android/material/chip/Chip;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1005
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_1

    .line 1006
    invoke-virtual {p1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1010
    :cond_1
    invoke-virtual {p1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method protected onPopulateNodeForVirtualView(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 6

    .line 978
    iget-object p1, p0, Lcom/google/android/material/chip/Chip$ChipTouchHelper;->this$0:Lcom/google/android/material/chip/Chip;

    invoke-static {p1}, Lcom/google/android/material/chip/Chip;->access$100(Lcom/google/android/material/chip/Chip;)Z

    move-result p1

    const-string v0, ""

    if-eqz p1, :cond_2

    .line 979
    iget-object p1, p0, Lcom/google/android/material/chip/Chip$ChipTouchHelper;->this$0:Lcom/google/android/material/chip/Chip;

    invoke-virtual {p1}, Lcom/google/android/material/chip/Chip;->getCloseIconContentDescription()Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 981
    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 983
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/chip/Chip$ChipTouchHelper;->this$0:Lcom/google/android/material/chip/Chip;

    invoke-virtual {p1}, Lcom/google/android/material/chip/Chip;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    .line 984
    iget-object v1, p0, Lcom/google/android/material/chip/Chip$ChipTouchHelper;->this$0:Lcom/google/android/material/chip/Chip;

    .line 985
    invoke-virtual {v1}, Lcom/google/android/material/chip/Chip;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/google/android/material/R$string;->mtrl_chip_close_icon_content_description:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 988
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_0
    aput-object p1, v3, v4

    .line 986
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 989
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 984
    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 991
    :goto_1
    iget-object p1, p0, Lcom/google/android/material/chip/Chip$ChipTouchHelper;->this$0:Lcom/google/android/material/chip/Chip;

    invoke-static {p1}, Lcom/google/android/material/chip/Chip;->access$300(Lcom/google/android/material/chip/Chip;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 992
    sget-object p1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_CLICK:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    .line 993
    iget-object p1, p0, Lcom/google/android/material/chip/Chip$ChipTouchHelper;->this$0:Lcom/google/android/material/chip/Chip;

    invoke-virtual {p1}, Lcom/google/android/material/chip/Chip;->isEnabled()Z

    move-result p1

    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setEnabled(Z)V

    goto :goto_2

    .line 995
    :cond_2
    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 996
    invoke-static {}, Lcom/google/android/material/chip/Chip;->access$400()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    :goto_2
    return-void
.end method
