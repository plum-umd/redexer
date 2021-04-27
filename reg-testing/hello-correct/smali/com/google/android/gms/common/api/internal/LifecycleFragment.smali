.class public interface abstract Lcom/google/android/gms/common/api/internal/LifecycleFragment;
.super Ljava/lang/Object;


# virtual methods
.method public abstract addCallback(Ljava/lang/String;Lcom/google/android/gms/common/api/internal/LifecycleCallback;)V
.end method

.method public abstract getCallbackOrNull(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/common/api/internal/LifecycleCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/common/api/internal/LifecycleCallback;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation
.end method

.method public abstract getLifecycleActivity()Landroid/app/Activity;
.end method

.method public abstract isCreated()Z
.end method

.method public abstract isStarted()Z
.end method

.method public abstract startActivityForResult(Landroid/content/Intent;I)V
.end method
