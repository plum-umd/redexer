.class public final Lcom/google/android/gms/maps/internal/zzbr;
.super Lcom/google/android/gms/internal/maps/zza;

# interfaces
.implements Lcom/google/android/gms/maps/internal/IProjectionDelegate;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.gms.maps.internal.IProjectionDelegate"

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/maps/zza;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final fromScreenLocation(Lcom/google/android/gms/dynamic/IObjectWrapper;)Lcom/google/android/gms/maps/model/LatLng;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/maps/zza;->zza()Landroid/os/Parcel;

    move-result-object v0

    .line 4
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/maps/zzc;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 p1, 0x1

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/maps/zza;->zza(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    .line 6
    sget-object v0, Lcom/google/android/gms/maps/model/LatLng;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/maps/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/LatLng;

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object v0
.end method

.method public final getVisibleRegion()Lcom/google/android/gms/maps/model/VisibleRegion;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/internal/maps/zza;->zza()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x3

    .line 16
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/maps/zza;->zza(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    .line 17
    sget-object v1, Lcom/google/android/gms/maps/model/VisibleRegion;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/maps/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/maps/model/VisibleRegion;

    .line 18
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v1
.end method

.method public final toScreenLocation(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/dynamic/IObjectWrapper;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/maps/zza;->zza()Landroid/os/Parcel;

    move-result-object v0

    .line 10
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/maps/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 p1, 0x2

    .line 11
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/maps/zza;->zza(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object v0
.end method
