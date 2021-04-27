.class final Lcom/google/android/gms/maps/zzx;
.super Lcom/google/android/gms/maps/internal/zzo;


# instance fields
.field private final synthetic zzaf:Lcom/google/android/gms/maps/GoogleMap$OnCameraIdleListener;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/GoogleMap$OnCameraIdleListener;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/maps/zzx;->zzaf:Lcom/google/android/gms/maps/GoogleMap$OnCameraIdleListener;

    invoke-direct {p0}, Lcom/google/android/gms/maps/internal/zzo;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCameraIdle()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/maps/zzx;->zzaf:Lcom/google/android/gms/maps/GoogleMap$OnCameraIdleListener;

    invoke-interface {v0}, Lcom/google/android/gms/maps/GoogleMap$OnCameraIdleListener;->onCameraIdle()V

    return-void
.end method
