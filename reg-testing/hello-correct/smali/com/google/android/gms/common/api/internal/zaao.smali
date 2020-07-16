.class final Lcom/google/android/gms/common/api/internal/zaao;
.super Lcom/google/android/gms/common/api/internal/zabf;


# instance fields
.field private final synthetic zagm:Lcom/google/android/gms/common/ConnectionResult;

.field private final synthetic zagn:Lcom/google/android/gms/common/api/internal/zaan;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/zaan;Lcom/google/android/gms/common/api/internal/zabd;Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zaao;->zagn:Lcom/google/android/gms/common/api/internal/zaan;

    iput-object p3, p0, Lcom/google/android/gms/common/api/internal/zaao;->zagm:Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {p0, p2}, Lcom/google/android/gms/common/api/internal/zabf;-><init>(Lcom/google/android/gms/common/api/internal/zabd;)V

    return-void
.end method


# virtual methods
.method public final zaan()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaao;->zagn:Lcom/google/android/gms/common/api/internal/zaan;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zaan;->zagj:Lcom/google/android/gms/common/api/internal/zaak;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaao;->zagm:Lcom/google/android/gms/common/ConnectionResult;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/api/internal/zaak;->zaa(Lcom/google/android/gms/common/api/internal/zaak;Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method
