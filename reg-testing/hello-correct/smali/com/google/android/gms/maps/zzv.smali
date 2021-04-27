.class final Lcom/google/android/gms/maps/zzv;
.super Lcom/google/android/gms/maps/internal/zzs;


# instance fields
.field private final synthetic zzad:Lcom/google/android/gms/maps/GoogleMap$OnCameraMoveListener;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/GoogleMap$OnCameraMoveListener;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/maps/zzv;->zzad:Lcom/google/android/gms/maps/GoogleMap$OnCameraMoveListener;

    invoke-direct {p0}, Lcom/google/android/gms/maps/internal/zzs;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCameraMove()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/maps/zzv;->zzad:Lcom/google/android/gms/maps/GoogleMap$OnCameraMoveListener;

    invoke-interface {v0}, Lcom/google/android/gms/maps/GoogleMap$OnCameraMoveListener;->onCameraMove()V

    return-void
.end method
