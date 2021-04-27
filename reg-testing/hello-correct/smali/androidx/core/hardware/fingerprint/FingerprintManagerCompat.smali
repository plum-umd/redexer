.class public final Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;
.super Ljava/lang/Object;
.source "FingerprintManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;,
        Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationResult;,
        Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static from(Landroid/content/Context;)Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;"

    const-string v1, "from"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v5, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;

    invoke-direct {v5, p0}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;"

    const-string v1, "from"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5
.end method

.method private static getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;
    .locals 7

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;"

    const-string v1, "getFingerprintManagerOrNull"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroid/content/Context;"

    const-string v1, "getPackageManager"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Landroid/content/Context;"

    const-string v1, "getPackageManager"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v6, "android.hardware.fingerprint"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    aput-object v6, v2, v1

    const-string v0, "Landroid/content/pm/PackageManager;"

    const-string v1, "hasSystemFeature"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v5 .. v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/content/pm/PackageManager;"

    const-string v1, "hasSystemFeature"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v5, :cond_0

    const-class v5, Landroid/hardware/fingerprint/FingerprintManager;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object v5, v2, v1

    const-string v0, "Landroid/content/Context;"

    const-string v1, "getSystemService"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroid/content/Context;"

    const-string v1, "getSystemService"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    check-cast p0, Landroid/hardware/fingerprint/FingerprintManager;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;"

    const-string v1, "getFingerprintManagerOrNull"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0

    :cond_0
    const/4 p0, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;"

    const-string v1, "getFingerprintManagerOrNull"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0
.end method

.method static unwrapCryptoObject(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;)Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;
    .locals 7

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;"

    const-string v1, "unwrapCryptoObject"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v5, 0x0

    if-nez p0, :cond_0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;"

    const-string v1, "unwrapCryptoObject"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5

    :cond_0
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;"

    const-string v1, "getCipher"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;->getCipher()Ljavax/crypto/Cipher;

    move-result-object v6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const-string v0, "Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;"

    const-string v1, "getCipher"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v6, :cond_1

    new-instance v5, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;"

    const-string v1, "getCipher"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;->getCipher()Ljavax/crypto/Cipher;

    move-result-object p0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;"

    const-string v1, "getCipher"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {v5, p0}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;-><init>(Ljavax/crypto/Cipher;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;"

    const-string v1, "unwrapCryptoObject"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5

    :cond_1
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;"

    const-string v1, "getSignature"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;->getSignature()Ljava/security/Signature;

    move-result-object v6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const-string v0, "Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;"

    const-string v1, "getSignature"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v6, :cond_2

    new-instance v5, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;"

    const-string v1, "getSignature"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;->getSignature()Ljava/security/Signature;

    move-result-object p0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;"

    const-string v1, "getSignature"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {v5, p0}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;-><init>(Ljava/security/Signature;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;"

    const-string v1, "unwrapCryptoObject"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5

    :cond_2
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;"

    const-string v1, "getMac"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;->getMac()Ljavax/crypto/Mac;

    move-result-object v6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const-string v0, "Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;"

    const-string v1, "getMac"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v6, :cond_3

    new-instance v5, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;"

    const-string v1, "getMac"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;->getMac()Ljavax/crypto/Mac;

    move-result-object p0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;"

    const-string v1, "getMac"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {v5, p0}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;-><init>(Ljavax/crypto/Mac;)V

    :cond_3
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;"

    const-string v1, "unwrapCryptoObject"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5
.end method

.method private static wrapCallback(Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;)Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;"

    const-string v1, "wrapCallback"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v5, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$1;

    invoke-direct {v5, p0}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$1;-><init>(Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;"

    const-string v1, "wrapCallback"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5
.end method

.method private static wrapCryptoObject(Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;)Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;
    .locals 7

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;"

    const-string v1, "wrapCryptoObject"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v5, 0x0

    if-nez p0, :cond_0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;"

    const-string v1, "wrapCryptoObject"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5

    :cond_0
    invoke-virtual {p0}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->getCipher()Ljavax/crypto/Cipher;

    move-result-object v6

    if-eqz v6, :cond_1

    new-instance v5, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

    invoke-virtual {p0}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->getCipher()Ljavax/crypto/Cipher;

    move-result-object p0

    invoke-direct {v5, p0}, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;-><init>(Ljavax/crypto/Cipher;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;"

    const-string v1, "wrapCryptoObject"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5

    :cond_1
    invoke-virtual {p0}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->getSignature()Ljava/security/Signature;

    move-result-object v6

    if-eqz v6, :cond_2

    new-instance v5, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

    invoke-virtual {p0}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->getSignature()Ljava/security/Signature;

    move-result-object p0

    invoke-direct {v5, p0}, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;-><init>(Ljava/security/Signature;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;"

    const-string v1, "wrapCryptoObject"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5

    :cond_2
    invoke-virtual {p0}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->getMac()Ljavax/crypto/Mac;

    move-result-object v6

    if-eqz v6, :cond_3

    new-instance v5, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

    invoke-virtual {p0}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;->getMac()Ljavax/crypto/Mac;

    move-result-object p0

    invoke-direct {v5, p0}, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;-><init>(Ljavax/crypto/Mac;)V

    :cond_3
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;"

    const-string v1, "wrapCryptoObject"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5
.end method


# virtual methods
.method public authenticate(Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;ILandroidx/core/os/CancellationSignal;Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;Landroid/os/Handler;)V
    .locals 12

    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const/4 v1, 0x6

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x7

    aput-object p3, v2, v1

    const/16 v1, 0x8

    aput-object p4, v2, v1

    const/16 v1, 0x9

    aput-object p5, v2, v1

    const-string v0, "Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;"

    const-string v1, "authenticate"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-lt v5, v6, :cond_1

    iget-object v5, p0, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v6

    if-eqz v6, :cond_1

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroidx/core/os/CancellationSignal;->getCancellationSignalObject()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/CancellationSignal;

    goto/16 :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    move-object v8, p3

    invoke-static {p1}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;->wrapCryptoObject(Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;)Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

    move-result-object v7

    move-object/from16 v0, p4

    invoke-static/range {v0 .. v0}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;->wrapCallback(Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;)Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    move-result-object v10

    move v9, p2

    move-object/from16 v11, p5

    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const/4 v1, 0x5

    aput-object v7, v2, v1

    const/4 v1, 0x6

    aput-object v8, v2, v1

    const/4 v1, 0x7

    invoke-static/range {v9 .. v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/16 v1, 0x8

    aput-object v10, v2, v1

    const/16 v1, 0x9

    aput-object v11, v2, v1

    const-string v0, "Landroid/hardware/fingerprint/FingerprintManager;"

    const-string v1, "authenticate"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual/range {v6 .. v11}, Landroid/hardware/fingerprint/FingerprintManager;->authenticate(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/os/CancellationSignal;ILandroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;Landroid/os/Handler;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/hardware/fingerprint/FingerprintManager;"

    const-string v1, "authenticate"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;"

    const-string v1, "authenticate"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public hasEnrolledFingerprints()Z
    .locals 8

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;"

    const-string v1, "hasEnrolledFingerprints"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v6, 0x0

    const/16 v7, 0x17

    if-lt v5, v7, :cond_0

    iget-object v5, p0, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v5

    if-eqz v5, :cond_0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Landroid/hardware/fingerprint/FingerprintManager;"

    const-string v1, "hasEnrolledFingerprints"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints()Z

    move-result v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v5 .. v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/hardware/fingerprint/FingerprintManager;"

    const-string v1, "hasEnrolledFingerprints"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v5, :cond_0

    const/4 v6, 0x1

    :cond_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;"

    const-string v1, "hasEnrolledFingerprints"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v6
.end method

.method public isHardwareDetected()Z
    .locals 8

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;"

    const-string v1, "isHardwareDetected"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v6, 0x0

    const/16 v7, 0x17

    if-lt v5, v7, :cond_0

    iget-object v5, p0, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v5

    if-eqz v5, :cond_0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Landroid/hardware/fingerprint/FingerprintManager;"

    const-string v1, "isHardwareDetected"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v5 .. v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/hardware/fingerprint/FingerprintManager;"

    const-string v1, "isHardwareDetected"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v5, :cond_0

    const/4 v6, 0x1

    :cond_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/core/hardware/fingerprint/FingerprintManagerCompat;"

    const-string v1, "isHardwareDetected"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v6
.end method
