.class final Lcom/google/android/gms/maps/zzu;
.super Lcom/google/android/gms/maps/internal/zzu;


# instance fields
.field private final synthetic zzac:Lcom/google/android/gms/maps/GoogleMap$OnCameraMoveStartedListener;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/GoogleMap$OnCameraMoveStartedListener;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/maps/zzu;->zzac:Lcom/google/android/gms/maps/GoogleMap$OnCameraMoveStartedListener;

    invoke-direct {p0}, Lcom/google/android/gms/maps/internal/zzu;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCameraMoveStarted(I)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/maps/zzu;->zzac:Lcom/google/android/gms/maps/GoogleMap$OnCameraMoveStartedListener;

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/GoogleMap$OnCameraMoveStartedListener;->onCameraMoveStarted(I)V

    return-void
.end method
