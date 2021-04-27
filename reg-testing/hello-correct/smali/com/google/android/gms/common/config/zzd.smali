.class final Lcom/google/android/gms/common/config/zzd;
.super Lcom/google/android/gms/common/config/GservicesValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/config/GservicesValue<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Float;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/config/GservicesValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected final synthetic zzd(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .line 4
    iget-object p1, p0, Lcom/google/android/gms/common/config/zzd;->mKey:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/common/config/zzd;->zzbq:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    const/4 v1, 0x0

    invoke-interface {v1, p1, v0}, Lcom/google/android/gms/common/config/GservicesValue$zza;->zza(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method
