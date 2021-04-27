.class final Lcom/google/android/gms/maps/GoogleMap$zza;
.super Lcom/google/android/gms/maps/internal/zzd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/maps/GoogleMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "zza"
.end annotation


# instance fields
.field private final zzai:Lcom/google/android/gms/maps/GoogleMap$CancelableCallback;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/GoogleMap$CancelableCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/maps/internal/zzd;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/maps/GoogleMap$zza;->zzai:Lcom/google/android/gms/maps/GoogleMap$CancelableCallback;

    return-void
.end method


# virtual methods
.method public final onCancel()V
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap$zza;->zzai:Lcom/google/android/gms/maps/GoogleMap$CancelableCallback;

    invoke-interface {v0}, Lcom/google/android/gms/maps/GoogleMap$CancelableCallback;->onCancel()V

    return-void
.end method

.method public final onFinish()V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap$zza;->zzai:Lcom/google/android/gms/maps/GoogleMap$CancelableCallback;

    invoke-interface {v0}, Lcom/google/android/gms/maps/GoogleMap$CancelableCallback;->onFinish()V

    return-void
.end method
