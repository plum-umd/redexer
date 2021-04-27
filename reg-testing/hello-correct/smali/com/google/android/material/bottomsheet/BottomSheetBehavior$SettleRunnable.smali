.class Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SettleRunnable;
.super Ljava/lang/Object;
.source "BottomSheetBehavior.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettleRunnable"
.end annotation


# instance fields
.field private final targetState:I

.field final synthetic this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

.field private final view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Landroid/view/View;I)V
    .locals 0

    .line 915
    iput-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SettleRunnable;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 916
    iput-object p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SettleRunnable;->view:Landroid/view/View;

    .line 917
    iput p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SettleRunnable;->targetState:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 922
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SettleRunnable;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-object v0, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SettleRunnable;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-object v0, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewDragHelper:Landroidx/customview/widget/ViewDragHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/customview/widget/ViewDragHelper;->continueSettling(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 923
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SettleRunnable;->view:Landroid/view/View;

    invoke-static {v0, p0}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 925
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SettleRunnable;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$SettleRunnable;->targetState:I

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setStateInternal(I)V

    :goto_0
    return-void
.end method
