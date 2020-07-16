.class final Lcom/google/android/gms/common/api/internal/zaaj;
.super Lcom/google/android/gms/common/api/internal/zabf;


# instance fields
.field private final synthetic zafv:Lcom/google/android/gms/common/api/internal/zaah;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/zaah;Lcom/google/android/gms/common/api/internal/zabd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zaaj;->zafv:Lcom/google/android/gms/common/api/internal/zaah;

    invoke-direct {p0, p2}, Lcom/google/android/gms/common/api/internal/zabf;-><init>(Lcom/google/android/gms/common/api/internal/zabd;)V

    return-void
.end method


# virtual methods
.method public final zaan()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaj;->zafv:Lcom/google/android/gms/common/api/internal/zaah;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zaah;->zaa(Lcom/google/android/gms/common/api/internal/zaah;)Lcom/google/android/gms/common/api/internal/zabe;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zabe;->zaht:Lcom/google/android/gms/common/api/internal/zabt;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/internal/zabt;->zab(Landroid/os/Bundle;)V

    return-void
.end method
