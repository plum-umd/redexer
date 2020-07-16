.class public abstract Lcom/google/android/gms/common/internal/DowngradeableSafeParcel;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;

# interfaces
.implements Lcom/google/android/gms/common/internal/ReflectedParcelable;


# static fields
.field private static final zzdc:Ljava/lang/Object;

.field private static zzdd:Ljava/lang/ClassLoader;

.field private static zzde:Ljava/lang/Integer;


# instance fields
.field private zzdf:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/internal/DowngradeableSafeParcel;->zzdc:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 15
    sput-object v0, Lcom/google/android/gms/common/internal/DowngradeableSafeParcel;->zzdd:Ljava/lang/ClassLoader;

    .line 16
    sput-object v0, Lcom/google/android/gms/common/internal/DowngradeableSafeParcel;->zzde:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/common/internal/DowngradeableSafeParcel;->zzdf:Z

    return-void
.end method

.method protected static canUnparcelSafely(Ljava/lang/String;)Z
    .locals 0

    .line 12
    invoke-static {}, Lcom/google/android/gms/common/internal/DowngradeableSafeParcel;->zzp()Ljava/lang/ClassLoader;

    const/4 p0, 0x1

    return p0
.end method

.method protected static getUnparcelClientVersion()Ljava/lang/Integer;
    .locals 2

    .line 6
    sget-object v0, Lcom/google/android/gms/common/internal/DowngradeableSafeParcel;->zzdc:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 7
    :try_start_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static zzp()Ljava/lang/ClassLoader;
    .locals 2

    .line 3
    sget-object v0, Lcom/google/android/gms/common/internal/DowngradeableSafeParcel;->zzdc:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 4
    :try_start_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method protected abstract prepareForClientVersion(I)Z
.end method

.method public setShouldDowngrade(Z)V
    .locals 0

    .line 10
    iput-boolean p1, p0, Lcom/google/android/gms/common/internal/DowngradeableSafeParcel;->zzdf:Z

    return-void
.end method

.method protected shouldDowngrade()Z
    .locals 1

    .line 9
    iget-boolean v0, p0, Lcom/google/android/gms/common/internal/DowngradeableSafeParcel;->zzdf:Z

    return v0
.end method
