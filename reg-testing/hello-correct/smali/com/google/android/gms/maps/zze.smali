.class final Lcom/google/android/gms/maps/zze;
.super Lcom/google/android/gms/maps/internal/zzag;


# instance fields
.field private final synthetic zzm:Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowLongClickListener;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowLongClickListener;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/maps/zze;->zzm:Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowLongClickListener;

    invoke-direct {p0}, Lcom/google/android/gms/maps/internal/zzag;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzf(Lcom/google/android/gms/internal/maps/zzt;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/maps/zze;->zzm:Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowLongClickListener;

    new-instance v1, Lcom/google/android/gms/maps/model/Marker;

    invoke-direct {v1, p1}, Lcom/google/android/gms/maps/model/Marker;-><init>(Lcom/google/android/gms/internal/maps/zzt;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowLongClickListener;->onInfoWindowLongClick(Lcom/google/android/gms/maps/model/Marker;)V

    return-void
.end method
