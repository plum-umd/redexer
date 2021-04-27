.class final Lcom/google/android/gms/dynamic/zag;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/dynamic/DeferredLifecycleHelper$zaa;


# instance fields
.field private final synthetic zarj:Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;


# direct methods
.method constructor <init>(Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/dynamic/zag;->zarj:Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getState()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public final zaa(Lcom/google/android/gms/dynamic/LifecycleDelegate;)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/dynamic/zag;->zarj:Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;->zab(Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;)Lcom/google/android/gms/dynamic/LifecycleDelegate;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/dynamic/LifecycleDelegate;->onResume()V

    return-void
.end method
