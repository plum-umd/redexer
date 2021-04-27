.class final Lcom/google/android/gms/common/internal/zac;
.super Lcom/google/android/gms/common/internal/DialogRedirect;


# instance fields
.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$requestCode:I

.field private final synthetic zaoh:Landroid/content/Intent;


# direct methods
.method constructor <init>(Landroid/content/Intent;Landroid/app/Activity;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/common/internal/zac;->zaoh:Landroid/content/Intent;

    iput-object p2, p0, Lcom/google/android/gms/common/internal/zac;->val$activity:Landroid/app/Activity;

    iput p3, p0, Lcom/google/android/gms/common/internal/zac;->val$requestCode:I

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/DialogRedirect;-><init>()V

    return-void
.end method


# virtual methods
.method public final redirect()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zac;->zaoh:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/common/internal/zac;->val$activity:Landroid/app/Activity;

    iget v2, p0, Lcom/google/android/gms/common/internal/zac;->val$requestCode:I

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method
