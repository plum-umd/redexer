.class public final Lcom/google/android/gms/common/api/internal/zabv;
.super Ljava/lang/Object;


# instance fields
.field public final zajr:Lcom/google/android/gms/common/api/internal/zab;

.field public final zajs:I

.field public final zajt:Lcom/google/android/gms/common/api/GoogleApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/GoogleApi<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/zab;ILcom/google/android/gms/common/api/GoogleApi;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/zab;",
            "I",
            "Lcom/google/android/gms/common/api/GoogleApi<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zabv;->zajr:Lcom/google/android/gms/common/api/internal/zab;

    .line 3
    iput p2, p0, Lcom/google/android/gms/common/api/internal/zabv;->zajs:I

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/common/api/internal/zabv;->zajt:Lcom/google/android/gms/common/api/GoogleApi;

    return-void
.end method
