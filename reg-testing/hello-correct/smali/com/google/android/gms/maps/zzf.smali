.class final Lcom/google/android/gms/maps/zzf;
.super Lcom/google/android/gms/maps/internal/zzae;


# instance fields
.field private final synthetic zzn:Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowCloseListener;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowCloseListener;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/maps/zzf;->zzn:Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowCloseListener;

    invoke-direct {p0}, Lcom/google/android/gms/maps/internal/zzae;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzg(Lcom/google/android/gms/internal/maps/zzt;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/maps/zzf;->zzn:Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowCloseListener;

    new-instance v1, Lcom/google/android/gms/maps/model/Marker;

    invoke-direct {v1, p1}, Lcom/google/android/gms/maps/model/Marker;-><init>(Lcom/google/android/gms/internal/maps/zzt;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowCloseListener;->onInfoWindowClose(Lcom/google/android/gms/maps/model/Marker;)V

    return-void
.end method
