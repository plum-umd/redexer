.class public final Lcom/google/android/gms/common/internal/zzh;
.super Ljava/lang/Object;


# instance fields
.field private final mPackageName:Ljava/lang/String;

.field private final zzdt:I

.field private final zzej:Ljava/lang/String;

.field private final zzek:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzh;->mPackageName:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/common/internal/zzh;->zzej:Ljava/lang/String;

    .line 4
    iput-boolean p3, p0, Lcom/google/android/gms/common/internal/zzh;->zzek:Z

    const/16 p1, 0x81

    .line 5
    iput p1, p0, Lcom/google/android/gms/common/internal/zzh;->zzdt:I

    return-void
.end method


# virtual methods
.method final getPackageName()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzh;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method final zzq()I
    .locals 1

    .line 9
    iget v0, p0, Lcom/google/android/gms/common/internal/zzh;->zzdt:I

    return v0
.end method

.method final zzt()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzh;->zzej:Ljava/lang/String;

    return-object v0
.end method
