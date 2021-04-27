.class public Lcom/facebook/places/internal/LocationScannerImpl;
.super Ljava/lang/Object;
.source "LocationScannerImpl.java"

# interfaces
.implements Lcom/facebook/places/internal/LocationScanner;
.implements Landroid/location/LocationListener;


# static fields
.field private static final MIN_DISTANCE_BETWEEN_UPDATES:F = 0.0f

.field private static final MIN_TIME_BETWEEN_UPDATES:J = 0x64L


# instance fields
.field private context:Landroid/content/Context;

.field private enabledProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private freshLocation:Landroid/location/Location;

.field private locationManager:Landroid/location/LocationManager;

.field private params:Lcom/facebook/places/internal/LocationPackageRequestParams;

.field private final scanLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/places/internal/LocationPackageRequestParams;)V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/facebook/places/internal/LocationScannerImpl;->scanLock:Ljava/lang/Object;

    .line 56
    iput-object p1, p0, Lcom/facebook/places/internal/LocationScannerImpl;->context:Landroid/content/Context;

    .line 57
    iput-object p2, p0, Lcom/facebook/places/internal/LocationScannerImpl;->params:Lcom/facebook/places/internal/LocationPackageRequestParams;

    const-string p2, "location"

    .line 58
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManager;

    iput-object p1, p0, Lcom/facebook/places/internal/LocationScannerImpl;->locationManager:Landroid/location/LocationManager;

    return-void
.end method

.method private getFreshLocation()Landroid/location/Location;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/places/internal/ScannerException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 104
    iput-object v0, p0, Lcom/facebook/places/internal/LocationScannerImpl;->freshLocation:Landroid/location/Location;

    .line 105
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "LocationScanner"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 107
    :try_start_0
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 108
    iget-object v1, p0, Lcom/facebook/places/internal/LocationScannerImpl;->enabledProviders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    .line 109
    iget-object v3, p0, Lcom/facebook/places/internal/LocationScannerImpl;->locationManager:Landroid/location/LocationManager;

    const-wide/16 v5, 0x64

    const/4 v7, 0x0

    .line 114
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v9

    move-object v8, p0

    .line 109
    invoke-virtual/range {v3 .. v9}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_0

    .line 117
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/facebook/places/internal/LocationScannerImpl;->scanLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 118
    :try_start_2
    iget-object v2, p0, Lcom/facebook/places/internal/LocationScannerImpl;->scanLock:Ljava/lang/Object;

    iget-object v3, p0, Lcom/facebook/places/internal/LocationScannerImpl;->params:Lcom/facebook/places/internal/LocationPackageRequestParams;

    invoke-virtual {v3}, Lcom/facebook/places/internal/LocationPackageRequestParams;->getLocationRequestTimeoutMs()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/Object;->wait(J)V

    .line 119
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 124
    :catch_0
    :goto_1
    iget-object v1, p0, Lcom/facebook/places/internal/LocationScannerImpl;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v1, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 125
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 128
    iget-object v0, p0, Lcom/facebook/places/internal/LocationScannerImpl;->freshLocation:Landroid/location/Location;

    if-eqz v0, :cond_1

    return-object v0

    .line 129
    :cond_1
    new-instance v0, Lcom/facebook/places/internal/ScannerException;

    sget-object v1, Lcom/facebook/places/internal/ScannerException$Type;->TIMEOUT:Lcom/facebook/places/internal/ScannerException$Type;

    invoke-direct {v0, v1}, Lcom/facebook/places/internal/ScannerException;-><init>(Lcom/facebook/places/internal/ScannerException$Type;)V

    throw v0

    :catchall_1
    move-exception v1

    .line 124
    iget-object v2, p0, Lcom/facebook/places/internal/LocationScannerImpl;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v2, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 125
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 126
    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2
.end method

.method private getLastLocation(Ljava/lang/String;)Landroid/location/Location;
    .locals 10

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Lcom/facebook/places/internal/LocationScannerImpl;"

    const-string v1, "getLastLocation"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/facebook/places/internal/LocationScannerImpl;->locationManager:Landroid/location/LocationManager;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroid/location/LocationManager;"

    const-string v1, "getLastKnownLocation"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5, p1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object p1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const-string v0, "Landroid/location/LocationManager;"

    const-string v1, "getLastKnownLocation"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const-string v0, "Landroid/location/Location;"

    const-string v1, "getTime"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v5 .. v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/location/Location;"

    const-string v1, "getTime"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/System;"

    const-string v1, "currentTimeMillis"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v7 .. v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/System;"

    const-string v1, "currentTimeMillis"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sub-long/2addr v7, v5

    iget-object v5, p0, Lcom/facebook/places/internal/LocationScannerImpl;->params:Lcom/facebook/places/internal/LocationPackageRequestParams;

    invoke-virtual {v5}, Lcom/facebook/places/internal/LocationPackageRequestParams;->getLastLocationMaxAgeMs()J

    move-result-wide v5

    cmp-long v9, v7, v5

    if-gez v9, :cond_0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/places/internal/LocationScannerImpl;"

    const-string v1, "getLastLocation"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p1

    :cond_0
    const/4 p1, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/places/internal/LocationScannerImpl;"

    const-string v1, "getLastLocation"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p1
.end method


# virtual methods
.method public getLocation()Landroid/location/Location;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/places/internal/ScannerException;
        }
    .end annotation

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Lcom/facebook/places/internal/LocationScannerImpl;"

    const-string v1, "getLocation"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/facebook/places/internal/LocationScannerImpl;->enabledProviders:Ljava/util/List;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Ljava/util/List;"

    const-string v1, "iterator"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Ljava/util/List;"

    const-string v1, "iterator"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Ljava/util/Iterator;"

    const-string v1, "hasNext"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v6 .. v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/util/Iterator;"

    const-string v1, "hasNext"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v6, :cond_1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Ljava/util/Iterator;"

    const-string v1, "next"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const-string v0, "Ljava/util/Iterator;"

    const-string v1, "next"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    check-cast v6, Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/facebook/places/internal/LocationScannerImpl;->getLastLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v6

    if-eqz v6, :cond_0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/places/internal/LocationScannerImpl;"

    const-string v1, "getLocation"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v6

    :cond_1
    invoke-direct {p0}, Lcom/facebook/places/internal/LocationScannerImpl;->getFreshLocation()Landroid/location/Location;

    move-result-object v5

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/places/internal/LocationScannerImpl;"

    const-string v1, "getLocation"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5
.end method

.method public initAndCheckEligibility()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/places/internal/ScannerException;
        }
    .end annotation

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Lcom/facebook/places/internal/LocationScannerImpl;"

    const-string v1, "initAndCheckEligibility"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/facebook/places/internal/LocationScannerImpl;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/facebook/internal/Validate;->hasLocationPermission(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_3

    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/facebook/places/internal/LocationScannerImpl;->params:Lcom/facebook/places/internal/LocationPackageRequestParams;

    invoke-virtual {v6}, Lcom/facebook/places/internal/LocationPackageRequestParams;->getLocationProviders()[Ljava/lang/String;

    move-result-object v6

    array-length v6, v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p0, Lcom/facebook/places/internal/LocationScannerImpl;->enabledProviders:Ljava/util/List;

    iget-object v5, p0, Lcom/facebook/places/internal/LocationScannerImpl;->params:Lcom/facebook/places/internal/LocationPackageRequestParams;

    invoke-virtual {v5}, Lcom/facebook/places/internal/LocationPackageRequestParams;->getLocationProviders()[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_1

    aget-object v8, v5, v7

    iget-object v9, p0, Lcom/facebook/places/internal/LocationScannerImpl;->locationManager:Landroid/location/LocationManager;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v9, v2, v1

    const/4 v1, 0x5

    aput-object v8, v2, v1

    const-string v0, "Landroid/location/LocationManager;"

    const-string v1, "isProviderEnabled"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v9, v8}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v9

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v9 .. v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/location/LocationManager;"

    const-string v1, "isProviderEnabled"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/facebook/places/internal/LocationScannerImpl;->enabledProviders:Ljava/util/List;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v9, v2, v1

    const/4 v1, 0x5

    aput-object v8, v2, v1

    const-string v0, "Ljava/util/List;"

    const-string v1, "add"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/util/List;"

    const-string v1, "add"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_1
    iget-object v5, p0, Lcom/facebook/places/internal/LocationScannerImpl;->enabledProviders:Ljava/util/List;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Ljava/util/List;"

    const-string v1, "isEmpty"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v5 .. v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/util/List;"

    const-string v1, "isEmpty"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v5, :cond_2

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/places/internal/LocationScannerImpl;"

    const-string v1, "initAndCheckEligibility"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_2
    new-instance v5, Lcom/facebook/places/internal/ScannerException;

    sget-object v6, Lcom/facebook/places/internal/ScannerException$Type;->DISABLED:Lcom/facebook/places/internal/ScannerException$Type;

    invoke-direct {v5, v6}, Lcom/facebook/places/internal/ScannerException;-><init>(Lcom/facebook/places/internal/ScannerException$Type;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/places/internal/LocationScannerImpl;"

    const-string v1, "initAndCheckEligibility"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v5

    :cond_3
    new-instance v5, Lcom/facebook/places/internal/ScannerException;

    sget-object v6, Lcom/facebook/places/internal/ScannerException$Type;->PERMISSION_DENIED:Lcom/facebook/places/internal/ScannerException$Type;

    invoke-direct {v5, v6}, Lcom/facebook/places/internal/ScannerException;-><init>(Lcom/facebook/places/internal/ScannerException$Type;)V

    goto/16 :goto_2

    :goto_1
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/places/internal/LocationScannerImpl;"

    const-string v1, "initAndCheckEligibility"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v5

    :goto_2
    goto/16 :goto_1
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/facebook/places/internal/LocationScannerImpl;->freshLocation:Landroid/location/Location;

    if-nez v0, :cond_0

    .line 137
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    iget-object v1, p0, Lcom/facebook/places/internal/LocationScannerImpl;->params:Lcom/facebook/places/internal/LocationPackageRequestParams;

    invoke-virtual {v1}, Lcom/facebook/places/internal/LocationPackageRequestParams;->getLocationMaxAccuracyMeters()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/facebook/places/internal/LocationScannerImpl;->scanLock:Ljava/lang/Object;

    monitor-enter v0

    .line 139
    :try_start_0
    iput-object p1, p0, Lcom/facebook/places/internal/LocationScannerImpl;->freshLocation:Landroid/location/Location;

    .line 140
    iget-object p1, p0, Lcom/facebook/places/internal/LocationScannerImpl;->scanLock:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    .line 141
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 5

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Lcom/facebook/places/internal/LocationScannerImpl;"

    const-string v1, "onProviderDisabled"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/places/internal/LocationScannerImpl;"

    const-string v1, "onProviderDisabled"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 5

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Lcom/facebook/places/internal/LocationScannerImpl;"

    const-string v1, "onProviderEnabled"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/places/internal/LocationScannerImpl;"

    const-string v1, "onProviderEnabled"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 5

    const/16 v2, 0x8

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

    const-string v0, "Lcom/facebook/places/internal/LocationScannerImpl;"

    const-string v1, "onStatusChanged"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/places/internal/LocationScannerImpl;"

    const-string v1, "onStatusChanged"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
