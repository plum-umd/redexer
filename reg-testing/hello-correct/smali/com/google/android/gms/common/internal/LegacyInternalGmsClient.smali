.class public abstract Lcom/google/android/gms/common/internal/LegacyInternalGmsClient;
.super Lcom/google/android/gms/common/internal/GmsClient;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/IInterface;",
        ">",
        "Lcom/google/android/gms/common/internal/GmsClient<",
        "TT;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final zags:Lcom/google/android/gms/common/internal/GmsClientEventManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/google/android/gms/common/internal/ClientSettings;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/google/android/gms/common/internal/GmsClient;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/ClientSettings;)V

    .line 2
    new-instance p2, Lcom/google/android/gms/common/internal/GmsClientEventManager;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Lcom/google/android/gms/common/internal/GmsClientEventManager;-><init>(Landroid/os/Looper;Lcom/google/android/gms/common/internal/GmsClientEventManager$GmsClientEventState;)V

    iput-object p2, p0, Lcom/google/android/gms/common/internal/LegacyInternalGmsClient;->zags:Lcom/google/android/gms/common/internal/GmsClientEventManager;

    .line 3
    iget-object p1, p0, Lcom/google/android/gms/common/internal/LegacyInternalGmsClient;->zags:Lcom/google/android/gms/common/internal/GmsClientEventManager;

    invoke-virtual {p1, p4}, Lcom/google/android/gms/common/internal/GmsClientEventManager;->registerConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V

    .line 4
    iget-object p1, p0, Lcom/google/android/gms/common/internal/LegacyInternalGmsClient;->zags:Lcom/google/android/gms/common/internal/GmsClientEventManager;

    invoke-virtual {p1, p5}, Lcom/google/android/gms/common/internal/GmsClientEventManager;->registerConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    return-void
.end method


# virtual methods
.method public checkAvailabilityAndConnect()V
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/common/internal/LegacyInternalGmsClient;->zags:Lcom/google/android/gms/common/internal/GmsClientEventManager;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/GmsClientEventManager;->enableCallbacks()V

    .line 7
    invoke-super {p0}, Lcom/google/android/gms/common/internal/GmsClient;->checkAvailabilityAndConnect()V

    return-void
.end method

.method public disconnect()V
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/common/internal/LegacyInternalGmsClient;->zags:Lcom/google/android/gms/common/internal/GmsClientEventManager;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/GmsClientEventManager;->disableCallbacks()V

    .line 10
    invoke-super {p0}, Lcom/google/android/gms/common/internal/GmsClient;->disconnect()V

    return-void
.end method

.method public getMinApkVersion()I
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/common/internal/GmsClient;->getMinApkVersion()I

    move-result v0

    return v0
.end method

.method public isConnectionCallbacksRegistered(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Z
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/common/internal/LegacyInternalGmsClient;->zags:Lcom/google/android/gms/common/internal/GmsClientEventManager;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/GmsClientEventManager;->isConnectionCallbacksRegistered(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Z

    move-result p1

    return p1
.end method

.method public isConnectionFailedListenerRegistered(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/LegacyInternalGmsClient;->zags:Lcom/google/android/gms/common/internal/GmsClientEventManager;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/GmsClientEventManager;->isConnectionFailedListenerRegistered(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Z

    move-result p1

    return p1
.end method

.method public onConnectedLocked(Landroid/os/IInterface;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 12
    invoke-super {p0, p1}, Lcom/google/android/gms/common/internal/GmsClient;->onConnectedLocked(Landroid/os/IInterface;)V

    .line 13
    iget-object p1, p0, Lcom/google/android/gms/common/internal/LegacyInternalGmsClient;->zags:Lcom/google/android/gms/common/internal/GmsClientEventManager;

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/LegacyInternalGmsClient;->getConnectionHint()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/internal/GmsClientEventManager;->onConnectionSuccess(Landroid/os/Bundle;)V

    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1

    .line 18
    invoke-super {p0, p1}, Lcom/google/android/gms/common/internal/GmsClient;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/common/internal/LegacyInternalGmsClient;->zags:Lcom/google/android/gms/common/internal/GmsClientEventManager;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/GmsClientEventManager;->onConnectionFailure(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 1

    .line 15
    invoke-super {p0, p1}, Lcom/google/android/gms/common/internal/GmsClient;->onConnectionSuspended(I)V

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/common/internal/LegacyInternalGmsClient;->zags:Lcom/google/android/gms/common/internal/GmsClientEventManager;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/GmsClientEventManager;->onUnintentionalDisconnection(I)V

    return-void
.end method

.method public registerConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/LegacyInternalGmsClient;->zags:Lcom/google/android/gms/common/internal/GmsClientEventManager;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/GmsClientEventManager;->registerConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V

    return-void
.end method

.method public registerConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/LegacyInternalGmsClient;->zags:Lcom/google/android/gms/common/internal/GmsClientEventManager;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/GmsClientEventManager;->registerConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    return-void
.end method

.method public unregisterConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/LegacyInternalGmsClient;->zags:Lcom/google/android/gms/common/internal/GmsClientEventManager;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/GmsClientEventManager;->unregisterConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V

    return-void
.end method

.method public unregisterConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/LegacyInternalGmsClient;->zags:Lcom/google/android/gms/common/internal/GmsClientEventManager;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/GmsClientEventManager;->unregisterConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    return-void
.end method
