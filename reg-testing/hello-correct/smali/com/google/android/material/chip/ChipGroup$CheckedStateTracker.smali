.class Lcom/google/android/material/chip/ChipGroup$CheckedStateTracker;
.super Ljava/lang/Object;
.source "ChipGroup.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/chip/ChipGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckedStateTracker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/chip/ChipGroup;


# direct methods
.method private constructor <init>(Lcom/google/android/material/chip/ChipGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/chip/ChipGroup$CheckedStateTracker;->this$0:Lcom/google/android/material/chip/ChipGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/material/chip/ChipGroup;Lcom/google/android/material/chip/ChipGroup$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/material/chip/ChipGroup$CheckedStateTracker;-><init>(Lcom/google/android/material/chip/ChipGroup;)V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 399
    iget-object v0, p0, Lcom/google/android/material/chip/ChipGroup$CheckedStateTracker;->this$0:Lcom/google/android/material/chip/ChipGroup;

    invoke-static {v0}, Lcom/google/android/material/chip/ChipGroup;->access$300(Lcom/google/android/material/chip/ChipGroup;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 403
    :cond_0
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result p1

    const/4 v0, -0x1

    if-eqz p2, :cond_2

    .line 406
    iget-object p2, p0, Lcom/google/android/material/chip/ChipGroup$CheckedStateTracker;->this$0:Lcom/google/android/material/chip/ChipGroup;

    invoke-static {p2}, Lcom/google/android/material/chip/ChipGroup;->access$400(Lcom/google/android/material/chip/ChipGroup;)I

    move-result p2

    if-eq p2, v0, :cond_1

    iget-object p2, p0, Lcom/google/android/material/chip/ChipGroup$CheckedStateTracker;->this$0:Lcom/google/android/material/chip/ChipGroup;

    invoke-static {p2}, Lcom/google/android/material/chip/ChipGroup;->access$400(Lcom/google/android/material/chip/ChipGroup;)I

    move-result p2

    if-eq p2, p1, :cond_1

    iget-object p2, p0, Lcom/google/android/material/chip/ChipGroup$CheckedStateTracker;->this$0:Lcom/google/android/material/chip/ChipGroup;

    invoke-static {p2}, Lcom/google/android/material/chip/ChipGroup;->access$500(Lcom/google/android/material/chip/ChipGroup;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 407
    iget-object p2, p0, Lcom/google/android/material/chip/ChipGroup$CheckedStateTracker;->this$0:Lcom/google/android/material/chip/ChipGroup;

    invoke-static {p2}, Lcom/google/android/material/chip/ChipGroup;->access$400(Lcom/google/android/material/chip/ChipGroup;)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p2, v0, v1}, Lcom/google/android/material/chip/ChipGroup;->access$600(Lcom/google/android/material/chip/ChipGroup;IZ)V

    .line 409
    :cond_1
    iget-object p2, p0, Lcom/google/android/material/chip/ChipGroup$CheckedStateTracker;->this$0:Lcom/google/android/material/chip/ChipGroup;

    invoke-static {p2, p1}, Lcom/google/android/material/chip/ChipGroup;->access$700(Lcom/google/android/material/chip/ChipGroup;I)V

    goto :goto_0

    .line 411
    :cond_2
    iget-object p2, p0, Lcom/google/android/material/chip/ChipGroup$CheckedStateTracker;->this$0:Lcom/google/android/material/chip/ChipGroup;

    invoke-static {p2}, Lcom/google/android/material/chip/ChipGroup;->access$400(Lcom/google/android/material/chip/ChipGroup;)I

    move-result p2

    if-ne p2, p1, :cond_3

    .line 412
    iget-object p1, p0, Lcom/google/android/material/chip/ChipGroup$CheckedStateTracker;->this$0:Lcom/google/android/material/chip/ChipGroup;

    invoke-static {p1, v0}, Lcom/google/android/material/chip/ChipGroup;->access$700(Lcom/google/android/material/chip/ChipGroup;I)V

    :cond_3
    :goto_0
    return-void
.end method
