.class final Lcom/google/android/gms/common/internal/zae;
.super Lcom/google/android/gms/common/internal/DialogRedirect;


# instance fields
.field private final synthetic val$requestCode:I

.field private final synthetic zaoh:Landroid/content/Intent;

.field private final synthetic zaoi:Lcom/google/android/gms/common/api/internal/LifecycleFragment;


# direct methods
.method constructor <init>(Landroid/content/Intent;Lcom/google/android/gms/common/api/internal/LifecycleFragment;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/common/internal/zae;->zaoh:Landroid/content/Intent;

    iput-object p2, p0, Lcom/google/android/gms/common/internal/zae;->zaoi:Lcom/google/android/gms/common/api/internal/LifecycleFragment;

    iput p3, p0, Lcom/google/android/gms/common/internal/zae;->val$requestCode:I

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/DialogRedirect;-><init>()V

    return-void
.end method


# virtual methods
.method public final redirect()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zae;->zaoh:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/common/internal/zae;->zaoi:Lcom/google/android/gms/common/api/internal/LifecycleFragment;

    iget v2, p0, Lcom/google/android/gms/common/internal/zae;->val$requestCode:I

    invoke-interface {v1, v0, v2}, Lcom/google/android/gms/common/api/internal/LifecycleFragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method
