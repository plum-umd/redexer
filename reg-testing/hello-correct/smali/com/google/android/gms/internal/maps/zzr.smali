.class public abstract Lcom/google/android/gms/internal/maps/zzr;
.super Lcom/google/android/gms/internal/maps/zzb;

# interfaces
.implements Lcom/google/android/gms/internal/maps/zzq;


# direct methods
.method public static zzf(Landroid/os/IBinder;)Lcom/google/android/gms/internal/maps/zzq;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.gms.maps.model.internal.IIndoorLevelDelegate"

    .line 3
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 4
    instance-of v1, v0, Lcom/google/android/gms/internal/maps/zzq;

    if-eqz v1, :cond_1

    .line 5
    check-cast v0, Lcom/google/android/gms/internal/maps/zzq;

    return-object v0

    .line 6
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/maps/zzs;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/maps/zzs;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
