.class public Lcom/facebook/places/internal/ScannerFactory;
.super Ljava/lang/Object;
.source "ScannerFactory.java"


# static fields
.field public static final OS_VERSION_JELLY_BEAN_MR1:I = 0x11

.field public static final OS_VERSION_JELLY_BEAN_MR2:I = 0x12

.field public static final OS_VERSION_LOLLIPOP:I = 0x15


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newBleScanner(Landroid/content/Context;Lcom/facebook/places/internal/LocationPackageRequestParams;)Lcom/facebook/places/internal/BleScanner;
    .locals 7

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Lcom/facebook/places/internal/ScannerFactory;"

    const-string v1, "newBleScanner"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v5, v6, :cond_0

    new-instance v5, Lcom/facebook/places/internal/BleScannerImpl;

    invoke-direct {v5, p0, p1}, Lcom/facebook/places/internal/BleScannerImpl;-><init>(Landroid/content/Context;Lcom/facebook/places/internal/LocationPackageRequestParams;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/places/internal/ScannerFactory;"

    const-string v1, "newBleScanner"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5

    :cond_0
    new-instance p0, Lcom/facebook/places/internal/BleScannerLegacy;

    invoke-direct {p0}, Lcom/facebook/places/internal/BleScannerLegacy;-><init>()V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/places/internal/ScannerFactory;"

    const-string v1, "newBleScanner"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0
.end method

.method public static newLocationScanner(Landroid/content/Context;Lcom/facebook/places/internal/LocationPackageRequestParams;)Lcom/facebook/places/internal/LocationScanner;
    .locals 6

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Lcom/facebook/places/internal/ScannerFactory;"

    const-string v1, "newLocationScanner"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v5, Lcom/facebook/places/internal/LocationScannerImpl;

    invoke-direct {v5, p0, p1}, Lcom/facebook/places/internal/LocationScannerImpl;-><init>(Landroid/content/Context;Lcom/facebook/places/internal/LocationPackageRequestParams;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/places/internal/ScannerFactory;"

    const-string v1, "newLocationScanner"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5
.end method

.method public static newWifiScanner(Landroid/content/Context;Lcom/facebook/places/internal/LocationPackageRequestParams;)Lcom/facebook/places/internal/WifiScanner;
    .locals 6

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Lcom/facebook/places/internal/ScannerFactory;"

    const-string v1, "newWifiScanner"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v5, Lcom/facebook/places/internal/WifiScannerImpl;

    invoke-direct {v5, p0, p1}, Lcom/facebook/places/internal/WifiScannerImpl;-><init>(Landroid/content/Context;Lcom/facebook/places/internal/LocationPackageRequestParams;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/places/internal/ScannerFactory;"

    const-string v1, "newWifiScanner"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5
.end method
