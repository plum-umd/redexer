.class final Lcom/google/android/gms/maps/zzj;
.super Lcom/google/android/gms/maps/internal/zzba;


# instance fields
.field private final synthetic zzr:Lcom/google/android/gms/maps/GoogleMap$OnMyLocationClickListener;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/GoogleMap$OnMyLocationClickListener;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/maps/zzj;->zzr:Lcom/google/android/gms/maps/GoogleMap$OnMyLocationClickListener;

    invoke-direct {p0}, Lcom/google/android/gms/maps/internal/zzba;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMyLocationClick(Landroid/location/Location;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/maps/zzj;->zzr:Lcom/google/android/gms/maps/GoogleMap$OnMyLocationClickListener;

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/GoogleMap$OnMyLocationClickListener;->onMyLocationClick(Landroid/location/Location;)V

    return-void
.end method
