.class final Lcom/google/android/gms/common/api/internal/zaax;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/GmsClientEventManager$GmsClientEventState;


# instance fields
.field private final synthetic zahh:Lcom/google/android/gms/common/api/internal/zaaw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/zaaw;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zaax;->zahh:Lcom/google/android/gms/common/api/internal/zaaw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getConnectionHint()Landroid/os/Bundle;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final isConnected()Z
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaax;->zahh:Lcom/google/android/gms/common/api/internal/zaaw;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    return v0
.end method
