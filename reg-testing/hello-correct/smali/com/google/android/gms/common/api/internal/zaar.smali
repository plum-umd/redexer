.class final Lcom/google/android/gms/common/api/internal/zaar;
.super Lcom/google/android/gms/signin/internal/zac;


# instance fields
.field private final zagk:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/gms/common/api/internal/zaak;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/zaak;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/signin/internal/zac;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zaar;->zagk:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final zab(Lcom/google/android/gms/signin/internal/zaj;)V
    .locals 3

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaar;->zagk:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/zaak;

    if-nez v0, :cond_0

    return-void

    .line 7
    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zaak;->zad(Lcom/google/android/gms/common/api/internal/zaak;)Lcom/google/android/gms/common/api/internal/zabe;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/common/api/internal/zaas;

    invoke-direct {v2, p0, v0, v0, p1}, Lcom/google/android/gms/common/api/internal/zaas;-><init>(Lcom/google/android/gms/common/api/internal/zaar;Lcom/google/android/gms/common/api/internal/zabd;Lcom/google/android/gms/common/api/internal/zaak;Lcom/google/android/gms/signin/internal/zaj;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/internal/zabe;->zaa(Lcom/google/android/gms/common/api/internal/zabf;)V

    return-void
.end method
