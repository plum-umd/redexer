.class final Lcom/google/android/gms/maps/zzs;
.super Lcom/google/android/gms/maps/internal/zzbc;


# instance fields
.field private final synthetic zzaa:Lcom/google/android/gms/maps/GoogleMap$OnPoiClickListener;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/GoogleMap$OnPoiClickListener;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/maps/zzs;->zzaa:Lcom/google/android/gms/maps/GoogleMap$OnPoiClickListener;

    invoke-direct {p0}, Lcom/google/android/gms/maps/internal/zzbc;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/maps/model/PointOfInterest;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/maps/zzs;->zzaa:Lcom/google/android/gms/maps/GoogleMap$OnPoiClickListener;

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/GoogleMap$OnPoiClickListener;->onPoiClick(Lcom/google/android/gms/maps/model/PointOfInterest;)V

    return-void
.end method
