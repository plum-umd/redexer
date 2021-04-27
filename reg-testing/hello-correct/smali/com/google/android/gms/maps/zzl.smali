.class final Lcom/google/android/gms/maps/zzl;
.super Lcom/google/android/gms/maps/internal/ILocationSourceDelegate$zza;


# instance fields
.field private final synthetic zzt:Lcom/google/android/gms/maps/LocationSource;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/LocationSource;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/maps/zzl;->zzt:Lcom/google/android/gms/maps/LocationSource;

    invoke-direct {p0}, Lcom/google/android/gms/maps/internal/ILocationSourceDelegate$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public final activate(Lcom/google/android/gms/maps/internal/zzah;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/maps/zzl;->zzt:Lcom/google/android/gms/maps/LocationSource;

    new-instance v1, Lcom/google/android/gms/maps/zzm;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/maps/zzm;-><init>(Lcom/google/android/gms/maps/zzl;Lcom/google/android/gms/maps/internal/zzah;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/LocationSource;->activate(Lcom/google/android/gms/maps/LocationSource$OnLocationChangedListener;)V

    return-void
.end method

.method public final deactivate()V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/maps/zzl;->zzt:Lcom/google/android/gms/maps/LocationSource;

    invoke-interface {v0}, Lcom/google/android/gms/maps/LocationSource;->deactivate()V

    return-void
.end method
