.class final Lcom/google/android/gms/maps/zzp;
.super Lcom/google/android/gms/maps/internal/zzbe;


# instance fields
.field private final synthetic zzx:Lcom/google/android/gms/maps/GoogleMap$OnPolygonClickListener;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/GoogleMap$OnPolygonClickListener;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/maps/zzp;->zzx:Lcom/google/android/gms/maps/GoogleMap$OnPolygonClickListener;

    invoke-direct {p0}, Lcom/google/android/gms/maps/internal/zzbe;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/maps/zzw;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/maps/zzp;->zzx:Lcom/google/android/gms/maps/GoogleMap$OnPolygonClickListener;

    new-instance v1, Lcom/google/android/gms/maps/model/Polygon;

    invoke-direct {v1, p1}, Lcom/google/android/gms/maps/model/Polygon;-><init>(Lcom/google/android/gms/internal/maps/zzw;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/GoogleMap$OnPolygonClickListener;->onPolygonClick(Lcom/google/android/gms/maps/model/Polygon;)V

    return-void
.end method
