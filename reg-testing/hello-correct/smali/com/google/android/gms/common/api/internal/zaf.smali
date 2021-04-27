.class public final Lcom/google/android/gms/common/api/internal/zaf;
.super Lcom/google/android/gms/common/api/internal/zad;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/internal/zad<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final zacp:Lcom/google/android/gms/common/api/internal/RegisterListenerMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/RegisterListenerMethod<",
            "Lcom/google/android/gms/common/api/Api$AnyClient;",
            "*>;"
        }
    .end annotation
.end field

.field private final zacq:Lcom/google/android/gms/common/api/internal/UnregisterListenerMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/UnregisterListenerMethod<",
            "Lcom/google/android/gms/common/api/Api$AnyClient;",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/zabw;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/zabw;",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x3

    .line 1
    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/common/api/internal/zad;-><init>(ILcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 2
    iget-object p2, p1, Lcom/google/android/gms/common/api/internal/zabw;->zajx:Lcom/google/android/gms/common/api/internal/RegisterListenerMethod;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/zaf;->zacp:Lcom/google/android/gms/common/api/internal/RegisterListenerMethod;

    .line 3
    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/zabw;->zajy:Lcom/google/android/gms/common/api/internal/UnregisterListenerMethod;

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zaf;->zacq:Lcom/google/android/gms/common/api/internal/UnregisterListenerMethod;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zaa(Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    .line 16
    invoke-super {p0, p1}, Lcom/google/android/gms/common/api/internal/zad;->zaa(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method public final bridge synthetic zaa(Lcom/google/android/gms/common/api/internal/zaab;Z)V
    .locals 0

    return-void
.end method

.method public final bridge synthetic zaa(Ljava/lang/RuntimeException;)V
    .locals 0

    .line 15
    invoke-super {p0, p1}, Lcom/google/android/gms/common/api/internal/zad;->zaa(Ljava/lang/RuntimeException;)V

    return-void
.end method

.method public final zab(Lcom/google/android/gms/common/api/internal/GoogleApiManager$zaa;)[Lcom/google/android/gms/common/Feature;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/GoogleApiManager$zaa<",
            "*>;)[",
            "Lcom/google/android/gms/common/Feature;"
        }
    .end annotation

    .line 12
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zaf;->zacp:Lcom/google/android/gms/common/api/internal/RegisterListenerMethod;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/RegisterListenerMethod;->getRequiredFeatures()[Lcom/google/android/gms/common/Feature;

    move-result-object p1

    return-object p1
.end method

.method public final zac(Lcom/google/android/gms/common/api/internal/GoogleApiManager$zaa;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/GoogleApiManager$zaa<",
            "*>;)Z"
        }
    .end annotation

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zaf;->zacp:Lcom/google/android/gms/common/api/internal/RegisterListenerMethod;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/RegisterListenerMethod;->shouldAutoResolveMissingFeatures()Z

    move-result p1

    return p1
.end method

.method public final zad(Lcom/google/android/gms/common/api/internal/GoogleApiManager$zaa;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/GoogleApiManager$zaa<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaf;->zacp:Lcom/google/android/gms/common/api/internal/RegisterListenerMethod;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zaa;->zaab()Lcom/google/android/gms/common/api/Api$Client;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zaf;->zacn:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/api/internal/RegisterListenerMethod;->registerListener(Lcom/google/android/gms/common/api/Api$AnyClient;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaf;->zacp:Lcom/google/android/gms/common/api/internal/RegisterListenerMethod;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/RegisterListenerMethod;->getListenerKey()Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zaa;->zabk()Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaf;->zacp:Lcom/google/android/gms/common/api/internal/RegisterListenerMethod;

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/RegisterListenerMethod;->getListenerKey()Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/common/api/internal/zabw;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zaf;->zacp:Lcom/google/android/gms/common/api/internal/RegisterListenerMethod;

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/zaf;->zacq:Lcom/google/android/gms/common/api/internal/UnregisterListenerMethod;

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/common/api/internal/zabw;-><init>(Lcom/google/android/gms/common/api/internal/RegisterListenerMethod;Lcom/google/android/gms/common/api/internal/UnregisterListenerMethod;)V

    .line 10
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
