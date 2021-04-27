.class final Lcom/google/android/gms/dynamic/zad;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/dynamic/DeferredLifecycleHelper$zaa;


# instance fields
.field private final synthetic val$container:Landroid/view/ViewGroup;

.field private final synthetic zarj:Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;

.field private final synthetic zarl:Landroid/os/Bundle;

.field private final synthetic zarm:Landroid/widget/FrameLayout;

.field private final synthetic zarn:Landroid/view/LayoutInflater;


# direct methods
.method constructor <init>(Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;Landroid/widget/FrameLayout;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/dynamic/zad;->zarj:Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;

    iput-object p2, p0, Lcom/google/android/gms/dynamic/zad;->zarm:Landroid/widget/FrameLayout;

    iput-object p3, p0, Lcom/google/android/gms/dynamic/zad;->zarn:Landroid/view/LayoutInflater;

    iput-object p4, p0, Lcom/google/android/gms/dynamic/zad;->val$container:Landroid/view/ViewGroup;

    iput-object p5, p0, Lcom/google/android/gms/dynamic/zad;->zarl:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getState()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public final zaa(Lcom/google/android/gms/dynamic/LifecycleDelegate;)V
    .locals 4

    .line 3
    iget-object p1, p0, Lcom/google/android/gms/dynamic/zad;->zarm:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 4
    iget-object p1, p0, Lcom/google/android/gms/dynamic/zad;->zarm:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/google/android/gms/dynamic/zad;->zarj:Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;->zab(Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;)Lcom/google/android/gms/dynamic/LifecycleDelegate;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/dynamic/zad;->zarn:Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/google/android/gms/dynamic/zad;->val$container:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/google/android/gms/dynamic/zad;->zarl:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/dynamic/LifecycleDelegate;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method
