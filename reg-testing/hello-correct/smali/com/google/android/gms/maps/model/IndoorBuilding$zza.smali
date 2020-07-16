.class final Lcom/google/android/gms/maps/model/IndoorBuilding$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/maps/model/IndoorBuilding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "zza"
.end annotation


# static fields
.field public static final zzdf:Lcom/google/android/gms/maps/model/IndoorBuilding$zza;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 4
    new-instance v0, Lcom/google/android/gms/maps/model/IndoorBuilding$zza;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/IndoorBuilding$zza;-><init>()V

    sput-object v0, Lcom/google/android/gms/maps/model/IndoorBuilding$zza;->zzdf:Lcom/google/android/gms/maps/model/IndoorBuilding$zza;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zza(Landroid/os/IBinder;)Lcom/google/android/gms/internal/maps/zzq;
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/maps/zzr;->zzf(Landroid/os/IBinder;)Lcom/google/android/gms/internal/maps/zzq;

    move-result-object p0

    return-object p0
.end method

.method public static zza(Lcom/google/android/gms/internal/maps/zzq;)Lcom/google/android/gms/maps/model/IndoorLevel;
    .locals 1

    .line 2
    new-instance v0, Lcom/google/android/gms/maps/model/IndoorLevel;

    invoke-direct {v0, p0}, Lcom/google/android/gms/maps/model/IndoorLevel;-><init>(Lcom/google/android/gms/internal/maps/zzq;)V

    return-object v0
.end method
