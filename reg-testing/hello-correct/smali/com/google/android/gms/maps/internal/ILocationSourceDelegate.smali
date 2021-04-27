.class public interface abstract Lcom/google/android/gms/maps/internal/ILocationSourceDelegate;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/maps/internal/ILocationSourceDelegate$zza;
    }
.end annotation


# virtual methods
.method public abstract activate(Lcom/google/android/gms/maps/internal/zzah;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract deactivate()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
