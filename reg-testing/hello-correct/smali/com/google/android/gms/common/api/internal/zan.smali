.class final Lcom/google/android/gms/common/api/internal/zan;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zadj:Lcom/google/android/gms/common/api/internal/zam;

.field final synthetic zadk:Lcom/google/android/gms/common/api/internal/zal;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/zal;Lcom/google/android/gms/common/api/internal/zam;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zan;->zadk:Lcom/google/android/gms/common/api/internal/zal;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/zan;->zadj:Lcom/google/android/gms/common/api/internal/zam;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zan;->zadk:Lcom/google/android/gms/common/api/internal/zal;

    iget-boolean v0, v0, Lcom/google/android/gms/common/api/internal/zal;->mStarted:Z

    if-nez v0, :cond_0

    return-void

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zan;->zadj:Lcom/google/android/gms/common/api/internal/zam;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zam;->getConnectionResult()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zan;->zadk:Lcom/google/android/gms/common/api/internal/zal;

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/zal;->mLifecycleFragment:Lcom/google/android/gms/common/api/internal/LifecycleFragment;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zan;->zadk:Lcom/google/android/gms/common/api/internal/zal;

    .line 10
    invoke-virtual {v2}, Lcom/google/android/gms/common/api/internal/zal;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->getResolution()Landroid/app/PendingIntent;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/zan;->zadj:Lcom/google/android/gms/common/api/internal/zam;

    .line 12
    invoke-virtual {v3}, Lcom/google/android/gms/common/api/internal/zam;->zar()I

    move-result v3

    const/4 v4, 0x0

    .line 13
    invoke-static {v2, v0, v3, v4}, Lcom/google/android/gms/common/api/GoogleApiActivity;->zaa(Landroid/content/Context;Landroid/app/PendingIntent;IZ)Landroid/content/Intent;

    move-result-object v0

    const/4 v2, 0x1

    .line 14
    invoke-interface {v1, v0, v2}, Lcom/google/android/gms/common/api/internal/LifecycleFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    .line 15
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zan;->zadk:Lcom/google/android/gms/common/api/internal/zal;

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/zal;->zacd:Lcom/google/android/gms/common/GoogleApiAvailability;

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/GoogleApiAvailability;->isUserResolvableError(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 16
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zan;->zadk:Lcom/google/android/gms/common/api/internal/zal;

    iget-object v2, v1, Lcom/google/android/gms/common/api/internal/zal;->zacd:Lcom/google/android/gms/common/GoogleApiAvailability;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zan;->zadk:Lcom/google/android/gms/common/api/internal/zal;

    .line 17
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zal;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zan;->zadk:Lcom/google/android/gms/common/api/internal/zal;

    iget-object v4, v1, Lcom/google/android/gms/common/api/internal/zal;->mLifecycleFragment:Lcom/google/android/gms/common/api/internal/LifecycleFragment;

    .line 18
    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v5

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/google/android/gms/common/api/internal/zan;->zadk:Lcom/google/android/gms/common/api/internal/zal;

    .line 19
    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/common/GoogleApiAvailability;->zaa(Landroid/app/Activity;Lcom/google/android/gms/common/api/internal/LifecycleFragment;IILandroid/content/DialogInterface$OnCancelListener;)Z

    return-void

    .line 20
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v1

    const/16 v2, 0x12

    if-ne v1, v2, :cond_3

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zan;->zadk:Lcom/google/android/gms/common/api/internal/zal;

    .line 22
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zal;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zan;->zadk:Lcom/google/android/gms/common/api/internal/zal;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/GoogleApiAvailability;->zaa(Landroid/app/Activity;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object v0

    .line 23
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zan;->zadk:Lcom/google/android/gms/common/api/internal/zal;

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/zal;->zacd:Lcom/google/android/gms/common/GoogleApiAvailability;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zan;->zadk:Lcom/google/android/gms/common/api/internal/zal;

    .line 24
    invoke-virtual {v2}, Lcom/google/android/gms/common/api/internal/zal;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/common/api/internal/zao;

    invoke-direct {v3, p0, v0}, Lcom/google/android/gms/common/api/internal/zao;-><init>(Lcom/google/android/gms/common/api/internal/zan;Landroid/app/Dialog;)V

    .line 25
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/common/GoogleApiAvailability;->zaa(Landroid/content/Context;Lcom/google/android/gms/common/api/internal/zabr;)Lcom/google/android/gms/common/api/internal/zabq;

    return-void

    .line 27
    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zan;->zadk:Lcom/google/android/gms/common/api/internal/zal;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zan;->zadj:Lcom/google/android/gms/common/api/internal/zam;

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/internal/zam;->zar()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/common/api/internal/zal;->zaa(Lcom/google/android/gms/common/ConnectionResult;I)V

    return-void
.end method
