.class Lcom/google/android/material/bottomappbar/BottomAppBar$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BottomAppBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/bottomappbar/BottomAppBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/bottomappbar/BottomAppBar;


# direct methods
.method constructor <init>(Lcom/google/android/material/bottomappbar/BottomAppBar;)V
    .locals 0

    .line 642
    iput-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$7;->this$0:Lcom/google/android/material/bottomappbar/BottomAppBar;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .line 645
    iget-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$7;->this$0:Lcom/google/android/material/bottomappbar/BottomAppBar;

    invoke-static {p1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->access$600(Lcom/google/android/material/bottomappbar/BottomAppBar;)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->access$700(Lcom/google/android/material/bottomappbar/BottomAppBar;Z)V

    .line 646
    iget-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$7;->this$0:Lcom/google/android/material/bottomappbar/BottomAppBar;

    invoke-static {p1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->access$800(Lcom/google/android/material/bottomappbar/BottomAppBar;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$7;->this$0:Lcom/google/android/material/bottomappbar/BottomAppBar;

    invoke-static {v1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->access$600(Lcom/google/android/material/bottomappbar/BottomAppBar;)Z

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->access$900(Lcom/google/android/material/bottomappbar/BottomAppBar;IZ)V

    return-void
.end method
