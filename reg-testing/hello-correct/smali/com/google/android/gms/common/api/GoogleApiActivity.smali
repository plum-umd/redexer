.class public Lcom/google/android/gms/common/api/GoogleApiActivity;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field private zabp:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/google/android/gms/common/api/GoogleApiActivity;->zabp:I

    return-void
.end method

.method public static zaa(Landroid/content/Context;Landroid/app/PendingIntent;I)Landroid/app/PendingIntent;
    .locals 1

    const/4 v0, 0x1

    .line 3
    invoke-static {p0, p1, p2, v0}, Lcom/google/android/gms/common/api/GoogleApiActivity;->zaa(Landroid/content/Context;Landroid/app/PendingIntent;IZ)Landroid/content/Intent;

    move-result-object p1

    const/4 p2, 0x0

    const/high16 v0, 0x8000000

    .line 4
    invoke-static {p0, p2, p1, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public static zaa(Landroid/content/Context;Landroid/app/PendingIntent;IZ)Landroid/content/Intent;
    .locals 2

    .line 6
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gms/common/api/GoogleApiActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "pending_intent"

    .line 7
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p0, "failing_client_id"

    .line 8
    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "notify_manager"

    .line 9
    invoke-virtual {v0, p0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .line 44
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 47
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/GoogleApiActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v2, "notify_manager"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 48
    iput v0, p0, Lcom/google/android/gms/common/api/GoogleApiActivity;->zabp:I

    .line 50
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/common/api/GoogleApiActivity;->setResult(ILandroid/content/Intent;)V

    if-eqz p1, :cond_3

    .line 52
    invoke-static {p0}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zab(Landroid/content/Context;)Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    move-result-object p1

    const/4 p3, -0x1

    if-eq p2, p3, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 54
    :cond_0
    new-instance p2, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v0, 0xd

    const/4 v1, 0x0

    invoke-direct {p2, v0, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    .line 55
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/GoogleApiActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "failing_client_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p3

    .line 56
    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaa(Lcom/google/android/gms/common/ConnectionResult;I)V

    goto :goto_0

    .line 58
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zao()V

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    .line 60
    iput v0, p0, Lcom/google/android/gms/common/api/GoogleApiActivity;->zabp:I

    .line 62
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/common/api/GoogleApiActivity;->setResult(ILandroid/content/Intent;)V

    .line 63
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/GoogleApiActivity;->finish()V

    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x0

    .line 68
    iput p1, p0, Lcom/google/android/gms/common/api/GoogleApiActivity;->zabp:I

    .line 69
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/GoogleApiActivity;->setResult(I)V

    .line 70
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/GoogleApiActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    .line 14
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "resolution"

    .line 16
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/common/api/GoogleApiActivity;->zabp:I

    .line 17
    :cond_0
    iget p1, p0, Lcom/google/android/gms/common/api/GoogleApiActivity;->zabp:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    .line 19
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/GoogleApiActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "GoogleApiActivity"

    if-nez p1, :cond_1

    const-string p1, "Activity started without extras"

    .line 21
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/GoogleApiActivity;->finish()V

    return-void

    :cond_1
    const-string v2, "pending_intent"

    .line 24
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    const-string v3, "error_code"

    .line 25
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez v2, :cond_2

    if-nez p1, :cond_2

    const-string p1, "Activity started without resolution"

    .line 27
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/GoogleApiActivity;->finish()V

    return-void

    :cond_2
    if-eqz v2, :cond_3

    .line 32
    :try_start_0
    invoke-virtual {v2}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    .line 33
    invoke-virtual/range {v2 .. v8}, Lcom/google/android/gms/common/api/GoogleApiActivity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    .line 34
    iput v0, p0, Lcom/google/android/gms/common/api/GoogleApiActivity;->zabp:I
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "Failed to launch pendingIntent"

    .line 37
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 38
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/GoogleApiActivity;->finish()V

    return-void

    .line 40
    :cond_3
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v1

    .line 41
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v2, 0x2

    invoke-virtual {v1, p0, p1, v2, p0}, Lcom/google/android/gms/common/GoogleApiAvailability;->showErrorDialogFragment(Landroid/app/Activity;IILandroid/content/DialogInterface$OnCancelListener;)Z

    .line 42
    iput v0, p0, Lcom/google/android/gms/common/api/GoogleApiActivity;->zabp:I

    :cond_4
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/common/api/GoogleApiActivity;->zabp:I

    const-string v1, "resolution"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
