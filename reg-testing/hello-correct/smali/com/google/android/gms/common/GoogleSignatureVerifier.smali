.class public Lcom/google/android/gms/common/GoogleSignatureVerifier;
.super Ljava/lang/Object;


# annotations
.annotation runtime Ljavax/annotation/CheckReturnValue;
.end annotation


# static fields
.field private static zzam:Lcom/google/android/gms/common/GoogleSignatureVerifier;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private volatile zzan:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/GoogleSignatureVerifier;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/google/android/gms/common/GoogleSignatureVerifier;
    .locals 2

    .line 4
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    const-class v0, Lcom/google/android/gms/common/GoogleSignatureVerifier;

    monitor-enter v0

    .line 6
    :try_start_0
    sget-object v1, Lcom/google/android/gms/common/GoogleSignatureVerifier;->zzam:Lcom/google/android/gms/common/GoogleSignatureVerifier;

    if-nez v1, :cond_0

    .line 7
    invoke-static {p0}, Lcom/google/android/gms/common/zzc;->zza(Landroid/content/Context;)V

    .line 8
    new-instance v1, Lcom/google/android/gms/common/GoogleSignatureVerifier;

    invoke-direct {v1, p0}, Lcom/google/android/gms/common/GoogleSignatureVerifier;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/google/android/gms/common/GoogleSignatureVerifier;->zzam:Lcom/google/android/gms/common/GoogleSignatureVerifier;

    .line 9
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    sget-object p0, Lcom/google/android/gms/common/GoogleSignatureVerifier;->zzam:Lcom/google/android/gms/common/GoogleSignatureVerifier;

    return-object p0

    :catchall_0
    move-exception p0

    .line 9
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private static varargs zza(Landroid/content/pm/PackageInfo;[Lcom/google/android/gms/common/zze;)Lcom/google/android/gms/common/zze;
    .locals 3

    .line 109
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 111
    :cond_0
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v0, v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const-string p0, "GoogleSignatureVerifier"

    const-string p1, "Package has more than one signature."

    .line 112
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 114
    :cond_1
    new-instance v0, Lcom/google/android/gms/common/zzf;

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v2, 0x0

    aget-object p0, p0, v2

    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/zzf;-><init>([B)V

    .line 115
    :goto_0
    array-length p0, p1

    if-ge v2, p0, :cond_3

    .line 116
    aget-object p0, p1, v2

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/zze;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 117
    aget-object p0, p1, v2

    return-object p0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method private final zza(Ljava/lang/String;I)Lcom/google/android/gms/common/zzm;
    .locals 6

    .line 47
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/GoogleSignatureVerifier;->mContext:Landroid/content/Context;

    .line 48
    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0

    const/16 v1, 0x40

    .line 49
    invoke-virtual {v0, p1, v1, p2}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->zza(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object p2

    .line 52
    iget-object v0, p0, Lcom/google/android/gms/common/GoogleSignatureVerifier;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->honorsDebugCertificates(Landroid/content/Context;)Z

    move-result v0

    if-nez p2, :cond_0

    const-string p2, "null pkg"

    .line 55
    invoke-static {p2}, Lcom/google/android/gms/common/zzm;->zzb(Ljava/lang/String;)Lcom/google/android/gms/common/zzm;

    move-result-object p1

    return-object p1

    .line 56
    :cond_0
    iget-object v1, p2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v1, v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const-string p2, "single cert required"

    .line 57
    invoke-static {p2}, Lcom/google/android/gms/common/zzm;->zzb(Ljava/lang/String;)Lcom/google/android/gms/common/zzm;

    move-result-object p1

    return-object p1

    .line 58
    :cond_1
    new-instance v1, Lcom/google/android/gms/common/zzf;

    iget-object v3, p2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/google/android/gms/common/zzf;-><init>([B)V

    .line 59
    iget-object v3, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 61
    invoke-static {v3, v1, v0, v4}, Lcom/google/android/gms/common/zzc;->zza(Ljava/lang/String;Lcom/google/android/gms/common/zze;ZZ)Lcom/google/android/gms/common/zzm;

    move-result-object v0

    .line 63
    iget-boolean v5, v0, Lcom/google/android/gms/common/zzm;->zzad:Z

    if-eqz v5, :cond_2

    .line 64
    iget-object v5, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v5, :cond_2

    iget-object p2, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p2, p2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_2

    .line 65
    invoke-static {v3, v1, v4, v2}, Lcom/google/android/gms/common/zzc;->zza(Ljava/lang/String;Lcom/google/android/gms/common/zze;ZZ)Lcom/google/android/gms/common/zzm;

    move-result-object p2

    .line 66
    iget-boolean p2, p2, Lcom/google/android/gms/common/zzm;->zzad:Z

    if-eqz p2, :cond_2

    const-string p2, "debuggable release cert app rejected"

    .line 68
    invoke-static {p2}, Lcom/google/android/gms/common/zzm;->zzb(Ljava/lang/String;)Lcom/google/android/gms/common/zzm;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_2
    return-object v0

    :catch_0
    nop

    const-string p2, "no pkg "

    .line 72
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/common/zzm;->zzb(Ljava/lang/String;)Lcom/google/android/gms/common/zzm;

    move-result-object p1

    return-object p1
.end method

.method public static zza(Landroid/content/pm/PackageInfo;Z)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 33
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 35
    sget-object p1, Lcom/google/android/gms/common/zzh;->zzx:[Lcom/google/android/gms/common/zze;

    invoke-static {p0, p1}, Lcom/google/android/gms/common/GoogleSignatureVerifier;->zza(Landroid/content/pm/PackageInfo;[Lcom/google/android/gms/common/zze;)Lcom/google/android/gms/common/zze;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-array p1, v1, [Lcom/google/android/gms/common/zze;

    .line 36
    sget-object v2, Lcom/google/android/gms/common/zzh;->zzx:[Lcom/google/android/gms/common/zze;

    aget-object v2, v2, v0

    aput-object v2, p1, v0

    invoke-static {p0, p1}, Lcom/google/android/gms/common/GoogleSignatureVerifier;->zza(Landroid/content/pm/PackageInfo;[Lcom/google/android/gms/common/zze;)Lcom/google/android/gms/common/zze;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    return v1

    :cond_1
    return v0
.end method

.method private final zzc(Ljava/lang/String;)Lcom/google/android/gms/common/zzm;
    .locals 7

    const-string v0, "null pkg"

    if-nez p1, :cond_0

    .line 74
    invoke-static {v0}, Lcom/google/android/gms/common/zzm;->zzb(Ljava/lang/String;)Lcom/google/android/gms/common/zzm;

    move-result-object p1

    return-object p1

    .line 75
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/common/GoogleSignatureVerifier;->zzan:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 76
    invoke-static {}, Lcom/google/android/gms/common/zzm;->zze()Lcom/google/android/gms/common/zzm;

    move-result-object p1

    return-object p1

    .line 77
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/common/GoogleSignatureVerifier;->mContext:Landroid/content/Context;

    .line 78
    invoke-static {v1}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v1

    const/16 v2, 0x40

    .line 79
    invoke-virtual {v1, p1, v2}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    iget-object v2, p0, Lcom/google/android/gms/common/GoogleSignatureVerifier;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->honorsDebugCertificates(Landroid/content/Context;)Z

    move-result v2

    if-nez v1, :cond_2

    .line 88
    invoke-static {v0}, Lcom/google/android/gms/common/zzm;->zzb(Ljava/lang/String;)Lcom/google/android/gms/common/zzm;

    move-result-object v0

    goto :goto_0

    .line 89
    :cond_2
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v0, v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_3

    const-string v0, "single cert required"

    .line 90
    invoke-static {v0}, Lcom/google/android/gms/common/zzm;->zzb(Ljava/lang/String;)Lcom/google/android/gms/common/zzm;

    move-result-object v0

    goto :goto_0

    .line 91
    :cond_3
    new-instance v0, Lcom/google/android/gms/common/zzf;

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/google/android/gms/common/zzf;-><init>([B)V

    .line 92
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 94
    invoke-static {v4, v0, v2, v5}, Lcom/google/android/gms/common/zzc;->zza(Ljava/lang/String;Lcom/google/android/gms/common/zze;ZZ)Lcom/google/android/gms/common/zzm;

    move-result-object v2

    .line 96
    iget-boolean v6, v2, Lcom/google/android/gms/common/zzm;->zzad:Z

    if-eqz v6, :cond_4

    .line 97
    iget-object v6, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v6, :cond_4

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_4

    .line 98
    invoke-static {v4, v0, v5, v3}, Lcom/google/android/gms/common/zzc;->zza(Ljava/lang/String;Lcom/google/android/gms/common/zze;ZZ)Lcom/google/android/gms/common/zzm;

    move-result-object v0

    .line 99
    iget-boolean v0, v0, Lcom/google/android/gms/common/zzm;->zzad:Z

    if-eqz v0, :cond_4

    const-string v0, "debuggable release cert app rejected"

    .line 101
    invoke-static {v0}, Lcom/google/android/gms/common/zzm;->zzb(Ljava/lang/String;)Lcom/google/android/gms/common/zzm;

    move-result-object v0

    goto :goto_0

    :cond_4
    move-object v0, v2

    .line 105
    :goto_0
    iget-boolean v1, v0, Lcom/google/android/gms/common/zzm;->zzad:Z

    if-eqz v1, :cond_5

    .line 107
    iput-object p1, p0, Lcom/google/android/gms/common/GoogleSignatureVerifier;->zzan:Ljava/lang/String;

    :cond_5
    return-object v0

    :catch_0
    nop

    const-string v0, "no pkg "

    .line 82
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_6
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-static {p1}, Lcom/google/android/gms/common/zzm;->zzb(Ljava/lang/String;)Lcom/google/android/gms/common/zzm;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public isGooglePublicSignedPackage(Landroid/content/pm/PackageInfo;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 40
    :cond_0
    invoke-static {p1, v0}, Lcom/google/android/gms/common/GoogleSignatureVerifier;->zza(Landroid/content/pm/PackageInfo;Z)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    .line 42
    :cond_1
    invoke-static {p1, v2}, Lcom/google/android/gms/common/GoogleSignatureVerifier;->zza(Landroid/content/pm/PackageInfo;Z)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 43
    iget-object p1, p0, Lcom/google/android/gms/common/GoogleSignatureVerifier;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->honorsDebugCertificates(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v2

    :cond_2
    const-string p1, "GoogleSignatureVerifier"

    const-string v1, "Test-keys aren\'t accepted on this build."

    .line 45
    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v0
.end method

.method public isPackageGoogleSigned(Ljava/lang/String;)Z
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/GoogleSignatureVerifier;->zzc(Ljava/lang/String;)Lcom/google/android/gms/common/zzm;

    move-result-object p1

    .line 29
    invoke-virtual {p1}, Lcom/google/android/gms/common/zzm;->zzf()V

    .line 31
    iget-boolean p1, p1, Lcom/google/android/gms/common/zzm;->zzad:Z

    return p1
.end method

.method public isUidGoogleSigned(I)Z
    .locals 5

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/common/GoogleSignatureVerifier;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 13
    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 16
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v1, v0, v3

    .line 17
    invoke-direct {p0, v1, p1}, Lcom/google/android/gms/common/GoogleSignatureVerifier;->zza(Ljava/lang/String;I)Lcom/google/android/gms/common/zzm;

    move-result-object v1

    .line 19
    iget-boolean v4, v1, Lcom/google/android/gms/common/zzm;->zzad:Z

    if-nez v4, :cond_2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const-string p1, "no pkgs"

    .line 14
    invoke-static {p1}, Lcom/google/android/gms/common/zzm;->zzb(Ljava/lang/String;)Lcom/google/android/gms/common/zzm;

    move-result-object v1

    .line 24
    :cond_2
    invoke-virtual {v1}, Lcom/google/android/gms/common/zzm;->zzf()V

    .line 26
    iget-boolean p1, v1, Lcom/google/android/gms/common/zzm;->zzad:Z

    return p1
.end method
