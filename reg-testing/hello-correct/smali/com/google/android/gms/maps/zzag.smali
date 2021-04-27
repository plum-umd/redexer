.class final Lcom/google/android/gms/maps/zzag;
.super Lcom/google/android/gms/maps/internal/zzbo;


# instance fields
.field private final synthetic zzbs:Lcom/google/android/gms/maps/StreetViewPanorama$OnStreetViewPanoramaLongClickListener;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/StreetViewPanorama;Lcom/google/android/gms/maps/StreetViewPanorama$OnStreetViewPanoramaLongClickListener;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/maps/zzag;->zzbs:Lcom/google/android/gms/maps/StreetViewPanorama$OnStreetViewPanoramaLongClickListener;

    invoke-direct {p0}, Lcom/google/android/gms/maps/internal/zzbo;-><init>()V

    return-void
.end method


# virtual methods
.method public final onStreetViewPanoramaLongClick(Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/maps/zzag;->zzbs:Lcom/google/android/gms/maps/StreetViewPanorama$OnStreetViewPanoramaLongClickListener;

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/StreetViewPanorama$OnStreetViewPanoramaLongClickListener;->onStreetViewPanoramaLongClick(Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;)V

    return-void
.end method
