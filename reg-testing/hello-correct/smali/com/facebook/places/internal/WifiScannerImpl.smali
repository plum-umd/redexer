.class public Lcom/facebook/places/internal/WifiScannerImpl;
.super Ljava/lang/Object;
.source "WifiScannerImpl.java"

# interfaces
.implements Lcom/facebook/places/internal/WifiScanner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/places/internal/WifiScannerImpl$ScanResultBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final SSID_NOMAP:Ljava/lang/String; = "_nomap"

.field private static final SSID_OPTOUT:Ljava/lang/String; = "_optout"


# instance fields
.field private broadcastReceiver:Lcom/facebook/places/internal/WifiScannerImpl$ScanResultBroadcastReceiver;

.field private context:Landroid/content/Context;

.field private final params:Lcom/facebook/places/internal/LocationPackageRequestParams;

.field private final scanLock:Ljava/lang/Object;

.field private wifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/facebook/places/internal/LocationPackageRequestParams;)V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/facebook/places/internal/WifiScannerImpl;->scanLock:Ljava/lang/Object;

    .line 62
    iput-object p1, p0, Lcom/facebook/places/internal/WifiScannerImpl;->context:Landroid/content/Context;

    .line 63
    iput-object p2, p0, Lcom/facebook/places/internal/WifiScannerImpl;->params:Lcom/facebook/places/internal/LocationPackageRequestParams;

    return-void
.end method

.method static synthetic access$100(Lcom/facebook/places/internal/WifiScannerImpl;)Ljava/lang/Object;
    .locals 5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Lcom/facebook/places/internal/WifiScannerImpl;"

    const-string v1, "access$100"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/facebook/places/internal/WifiScannerImpl;->scanLock:Ljava/lang/Object;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/places/internal/WifiScannerImpl;"

    const-string v1, "access$100"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0
.end method

.method static synthetic access$200(Lcom/facebook/places/internal/WifiScannerImpl;)V
    .locals 5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Lcom/facebook/places/internal/WifiScannerImpl;"

    const-string v1, "access$200"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/facebook/places/internal/WifiScannerImpl;->unregisterBroadcastReceiver()V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/places/internal/WifiScannerImpl;"

    const-string v1, "access$200"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static filterResults(Ljava/util/List;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;I)V"
        }
    .end annotation

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Lcom/facebook/places/internal/WifiScannerImpl;"

    const-string v1, "filterResults"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Ljava/util/List;"

    const-string v1, "size"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v5 .. v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/util/List;"

    const-string v1, "size"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-le v5, p1, :cond_0

    new-instance v5, Lcom/facebook/places/internal/WifiScannerImpl$1;

    invoke-direct {v5}, Lcom/facebook/places/internal/WifiScannerImpl$1;-><init>()V

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object v5, v2, v1

    const-string v0, "Ljava/util/Collections;"

    const-string v1, "sort"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/util/Collections;"

    const-string v1, "sort"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Ljava/util/List;"

    const-string v1, "size"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v5 .. v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/util/List;"

    const-string v1, "size"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x6

    invoke-static/range {v5 .. v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/util/List;"

    const-string v1, "subList"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p0, p1, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Ljava/util/List;"

    const-string v1, "subList"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Ljava/util/List;"

    const-string v1, "clear"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p0}, Ljava/util/List;->clear()V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/util/List;"

    const-string v1, "clear"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/places/internal/WifiScannerImpl;"

    const-string v1, "filterResults"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static filterWifiScanResultsByMaxAge(Ljava/util/List;J)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;J)",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Lcom/facebook/places/internal/WifiScannerImpl;"

    const-string v1, "filterWifiScanResultsByMaxAge"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_3

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x11

    if-ge v6, v7, :cond_0

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    aput-object p0, v2, v1

    const-string v0, "Ljava/util/List;"

    const-string v1, "addAll"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v5, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/util/List;"

    const-string v1, "addAll"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/os/SystemClock;"

    const-string v1, "elapsedRealtime"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v6 .. v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/os/SystemClock;"

    const-string v1, "elapsedRealtime"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Ljava/util/List;"

    const-string v1, "iterator"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Ljava/util/List;"

    const-string v1, "iterator"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Ljava/util/Iterator;"

    const-string v1, "hasNext"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v8 .. v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/util/Iterator;"

    const-string v1, "hasNext"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v8, :cond_3

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Ljava/util/Iterator;"

    const-string v1, "next"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v8, v2, v1

    const-string v0, "Ljava/util/Iterator;"

    const-string v1, "next"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    check-cast v8, Landroid/net/wifi/ScanResult;

    iget-wide v9, v8, Landroid/net/wifi/ScanResult;->timestamp:J

    const-wide/16 v11, 0x3e8

    div-long/2addr v9, v11

    sub-long v9, v6, v9

    const-wide/16 v11, 0x0

    cmp-long v13, v9, v11

    if-gez v13, :cond_2

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/System;"

    const-string v1, "currentTimeMillis"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v9 .. v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/System;"

    const-string v1, "currentTimeMillis"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-wide v11, v8, Landroid/net/wifi/ScanResult;->timestamp:J

    sub-long/2addr v9, v11

    :cond_2
    cmp-long v11, v9, p1

    if-gez v11, :cond_1

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    aput-object v8, v2, v1

    const-string v0, "Ljava/util/List;"

    const-string v1, "add"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/util/List;"

    const-string v1, "add"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_3
    :goto_1
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/places/internal/WifiScannerImpl;"

    const-string v1, "filterWifiScanResultsByMaxAge"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5
.end method

.method private getActiveScanResults()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/places/internal/WifiScanResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/places/internal/ScannerException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 227
    :try_start_0
    iget-object v1, p0, Lcom/facebook/places/internal/WifiScannerImpl;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/facebook/internal/Validate;->hasChangeWifiStatePermission(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 228
    invoke-direct {p0}, Lcom/facebook/places/internal/WifiScannerImpl;->registerBroadcastReceiver()V

    .line 229
    iget-object v1, p0, Lcom/facebook/places/internal/WifiScannerImpl;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->startScan()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    .line 232
    :try_start_1
    iget-object v1, p0, Lcom/facebook/places/internal/WifiScannerImpl;->scanLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 233
    :try_start_2
    iget-object v2, p0, Lcom/facebook/places/internal/WifiScannerImpl;->scanLock:Ljava/lang/Object;

    iget-object v3, p0, Lcom/facebook/places/internal/WifiScannerImpl;->params:Lcom/facebook/places/internal/LocationPackageRequestParams;

    invoke-virtual {v3}, Lcom/facebook/places/internal/LocationPackageRequestParams;->getWifiScanTimeoutMs()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/Object;->wait(J)V

    .line 234
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 238
    :catch_0
    :goto_0
    :try_start_4
    invoke-direct {p0}, Lcom/facebook/places/internal/WifiScannerImpl;->getCachedScanResults()Ljava/util/List;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    .line 244
    invoke-direct {p0}, Lcom/facebook/places/internal/WifiScannerImpl;->unregisterBroadcastReceiver()V

    .line 245
    throw v0

    .line 244
    :catch_1
    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/facebook/places/internal/WifiScannerImpl;->unregisterBroadcastReceiver()V

    return-object v0
.end method

.method private getCachedScanResults()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/places/internal/WifiScanResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/places/internal/ScannerException;
        }
    .end annotation

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Lcom/facebook/places/internal/WifiScannerImpl;"

    const-string v1, "getCachedScanResults"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    iget-object v5, p0, Lcom/facebook/places/internal/WifiScannerImpl;->wifiManager:Landroid/net/wifi/WifiManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Landroid/net/wifi/WifiManager;"

    const-string v1, "getScanResults"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_1
    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Landroid/net/wifi/WifiManager;"

    const-string v1, "getScanResults"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_2
    iget-object v6, p0, Lcom/facebook/places/internal/WifiScannerImpl;->params:Lcom/facebook/places/internal/LocationPackageRequestParams;

    invoke-virtual {v6}, Lcom/facebook/places/internal/LocationPackageRequestParams;->getWifiScanMaxAgeMs()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lcom/facebook/places/internal/WifiScannerImpl;->filterWifiScanResultsByMaxAge(Ljava/util/List;J)Ljava/util/List;

    move-result-object v5

    iget-object v6, p0, Lcom/facebook/places/internal/WifiScannerImpl;->params:Lcom/facebook/places/internal/LocationPackageRequestParams;

    invoke-virtual {v6}, Lcom/facebook/places/internal/LocationPackageRequestParams;->getWifiMaxScanResults()I

    move-result v6

    invoke-static {v5, v6}, Lcom/facebook/places/internal/WifiScannerImpl;->filterResults(Ljava/util/List;I)V

    new-instance v6, Ljava/util/ArrayList;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Ljava/util/List;"

    const-string v1, "size"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_3
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v7 .. v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/util/List;"

    const-string v1, "size"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_4
    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Ljava/util/List;"

    const-string v1, "iterator"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_5
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Ljava/util/List;"

    const-string v1, "iterator"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Ljava/util/Iterator;"

    const-string v1, "hasNext"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v7 .. v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/util/Iterator;"

    const-string v1, "hasNext"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_7
    if-eqz v7, :cond_2
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Ljava/util/Iterator;"

    const-string v1, "next"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_8
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v7, v2, v1

    const-string v0, "Ljava/util/Iterator;"

    const-string v1, "next"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_9
    check-cast v7, Landroid/net/wifi/ScanResult;

    iget-object v8, v7, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v8}, Lcom/facebook/places/internal/WifiScannerImpl;->isWifiSsidBlacklisted(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    new-instance v8, Lcom/facebook/places/internal/WifiScanResult;

    invoke-direct {v8}, Lcom/facebook/places/internal/WifiScanResult;-><init>()V

    iget-object v9, v7, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iput-object v9, v8, Lcom/facebook/places/internal/WifiScanResult;->bssid:Ljava/lang/String;

    iget-object v9, v7, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iput-object v9, v8, Lcom/facebook/places/internal/WifiScanResult;->ssid:Ljava/lang/String;

    iget v9, v7, Landroid/net/wifi/ScanResult;->level:I

    iput v9, v8, Lcom/facebook/places/internal/WifiScanResult;->rssi:I

    iget v9, v7, Landroid/net/wifi/ScanResult;->frequency:I

    iput v9, v8, Lcom/facebook/places/internal/WifiScanResult;->frequency:I

    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x11

    if-lt v9, v10, :cond_1

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v10, v7, Landroid/net/wifi/ScanResult;->timestamp:J
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v9, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v10 .. v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/util/concurrent/TimeUnit;"

    const-string v1, "toMillis"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_a
    invoke-virtual {v9, v10, v11}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v9
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v9 .. v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/util/concurrent/TimeUnit;"

    const-string v1, "toMillis"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_b
    iput-wide v9, v8, Lcom/facebook/places/internal/WifiScanResult;->timestampMs:J

    goto/16 :goto_1
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    :cond_1
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/os/SystemClock;"

    const-string v1, "elapsedRealtime"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_c
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v9 .. v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/os/SystemClock;"

    const-string v1, "elapsedRealtime"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_d
    iput-wide v9, v8, Lcom/facebook/places/internal/WifiScanResult;->timestampMs:J
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0

    :goto_1
    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const/4 v1, 0x5

    aput-object v8, v2, v1

    const-string v0, "Ljava/util/List;"

    const-string v1, "add"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_e
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/util/List;"

    const-string v1, "add"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_2
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/places/internal/WifiScannerImpl;"

    const-string v1, "getCachedScanResults"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v6

    :catch_0
    move-exception v5

    new-instance v6, Lcom/facebook/places/internal/ScannerException;

    sget-object v7, Lcom/facebook/places/internal/ScannerException$Type;->UNKNOWN_ERROR:Lcom/facebook/places/internal/ScannerException$Type;

    invoke-direct {v6, v7, v5}, Lcom/facebook/places/internal/ScannerException;-><init>(Lcom/facebook/places/internal/ScannerException$Type;Ljava/lang/Exception;)V

    goto/16 :goto_3

    :goto_2
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/places/internal/WifiScannerImpl;"

    const-string v1, "getCachedScanResults"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v6

    :goto_3
    goto/16 :goto_2
.end method

.method private isWifiScanningAlwaysOn()Z
    .locals 7

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Lcom/facebook/places/internal/WifiScannerImpl;"

    const-string v1, "isWifiScanningAlwaysOn"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x12

    if-lt v5, v6, :cond_0

    iget-object v5, p0, Lcom/facebook/places/internal/WifiScannerImpl;->wifiManager:Landroid/net/wifi/WifiManager;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Landroid/net/wifi/WifiManager;"

    const-string v1, "isScanAlwaysAvailable"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->isScanAlwaysAvailable()Z

    move-result v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v5 .. v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/net/wifi/WifiManager;"

    const-string v1, "isScanAlwaysAvailable"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/places/internal/WifiScannerImpl;"

    const-string v1, "isWifiScanningAlwaysOn"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5

    :cond_0
    const/4 v5, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/places/internal/WifiScannerImpl;"

    const-string v1, "isWifiScanningAlwaysOn"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5
.end method

.method private static isWifiSsidBlacklisted(Ljava/lang/String;)Z
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Lcom/facebook/places/internal/WifiScannerImpl;"

    const-string v1, "isWifiSsidBlacklisted"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p0, :cond_1

    const-string v5, "_nomap"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object v5, v2, v1

    const-string v0, "Ljava/lang/String;"

    const-string v1, "endsWith"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v5 .. v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/String;"

    const-string v1, "endsWith"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v5, :cond_0

    const-string v5, "_optout"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object v5, v2, v1

    const-string v0, "Ljava/lang/String;"

    const-string v1, "contains"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {p0 .. p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Ljava/lang/String;"

    const-string v1, "contains"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/places/internal/WifiScannerImpl;"

    const-string v1, "isWifiSsidBlacklisted"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p0

    :cond_1
    const/4 p0, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/places/internal/WifiScannerImpl;"

    const-string v1, "isWifiSsidBlacklisted"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p0
.end method

.method private registerBroadcastReceiver()V
    .locals 8

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Lcom/facebook/places/internal/WifiScannerImpl;"

    const-string v1, "registerBroadcastReceiver"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/facebook/places/internal/WifiScannerImpl;->broadcastReceiver:Lcom/facebook/places/internal/WifiScannerImpl$ScanResultBroadcastReceiver;

    if-eqz v5, :cond_0

    invoke-direct {p0}, Lcom/facebook/places/internal/WifiScannerImpl;->unregisterBroadcastReceiver()V

    :cond_0
    new-instance v5, Lcom/facebook/places/internal/WifiScannerImpl$ScanResultBroadcastReceiver;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/facebook/places/internal/WifiScannerImpl$ScanResultBroadcastReceiver;-><init>(Lcom/facebook/places/internal/WifiScannerImpl;Lcom/facebook/places/internal/WifiScannerImpl$1;)V

    iput-object v5, p0, Lcom/facebook/places/internal/WifiScannerImpl;->broadcastReceiver:Lcom/facebook/places/internal/WifiScannerImpl$ScanResultBroadcastReceiver;

    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    const-string v6, "android.net.wifi.SCAN_RESULTS"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    aput-object v6, v2, v1

    const-string v0, "Landroid/content/IntentFilter;"

    const-string v1, "addAction"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/content/IntentFilter;"

    const-string v1, "addAction"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v6, p0, Lcom/facebook/places/internal/WifiScannerImpl;->context:Landroid/content/Context;

    iget-object v7, p0, Lcom/facebook/places/internal/WifiScannerImpl;->broadcastReceiver:Lcom/facebook/places/internal/WifiScannerImpl$ScanResultBroadcastReceiver;

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const/4 v1, 0x5

    aput-object v7, v2, v1

    const/4 v1, 0x6

    aput-object v5, v2, v1

    const-string v0, "Landroid/content/Context;"

    const-string v1, "registerReceiver"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v6, v7, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/content/Context;"

    const-string v1, "registerReceiver"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/places/internal/WifiScannerImpl;"

    const-string v1, "registerBroadcastReceiver"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private unregisterBroadcastReceiver()V
    .locals 7

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Lcom/facebook/places/internal/WifiScannerImpl;"

    const-string v1, "unregisterBroadcastReceiver"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/facebook/places/internal/WifiScannerImpl;->broadcastReceiver:Lcom/facebook/places/internal/WifiScannerImpl$ScanResultBroadcastReceiver;

    if-eqz v5, :cond_0

    :try_start_0
    iget-object v6, p0, Lcom/facebook/places/internal/WifiScannerImpl;->context:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const/4 v1, 0x5

    aput-object v5, v2, v1

    const-string v0, "Landroid/content/Context;"

    const-string v1, "unregisterReceiver"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_1
    invoke-virtual {v6, v5}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/content/Context;"

    const-string v1, "unregisterReceiver"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :catch_0
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/facebook/places/internal/WifiScannerImpl;->broadcastReceiver:Lcom/facebook/places/internal/WifiScannerImpl$ScanResultBroadcastReceiver;

    :cond_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/places/internal/WifiScannerImpl;"

    const-string v1, "unregisterBroadcastReceiver"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getConnectedWifi()Lcom/facebook/places/internal/WifiScanResult;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/places/internal/ScannerException;
        }
    .end annotation

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Lcom/facebook/places/internal/WifiScannerImpl;"

    const-string v1, "getConnectedWifi"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    iget-object v5, p0, Lcom/facebook/places/internal/WifiScannerImpl;->wifiManager:Landroid/net/wifi/WifiManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Landroid/net/wifi/WifiManager;"

    const-string v1, "getConnectionInfo"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_1
    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Landroid/net/wifi/WifiManager;"

    const-string v1, "getConnectionInfo"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_2
    if-eqz v5, :cond_2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Landroid/net/wifi/WifiInfo;"

    const-string v1, "getBSSID"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_3
    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v6
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const-string v0, "Landroid/net/wifi/WifiInfo;"

    const-string v1, "getBSSID"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const-string v0, "Landroid/text/TextUtils;"

    const-string v1, "isEmpty"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_4
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v6 .. v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/text/TextUtils;"

    const-string v1, "isEmpty"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_5
    if-nez v6, :cond_2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Landroid/net/wifi/WifiInfo;"

    const-string v1, "getSupplicantState"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_6
    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v6
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const-string v0, "Landroid/net/wifi/WifiInfo;"

    const-string v1, "getSupplicantState"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_7
    sget-object v7, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    if-ne v6, v7, :cond_2
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Landroid/net/wifi/WifiInfo;"

    const-string v1, "getSSID"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_8
    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v6
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const-string v0, "Landroid/net/wifi/WifiInfo;"

    const-string v1, "getSSID"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_9
    invoke-static {v6}, Lcom/facebook/places/internal/WifiScannerImpl;->isWifiSsidBlacklisted(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto/16 :goto_0

    :cond_0
    new-instance v6, Lcom/facebook/places/internal/WifiScanResult;

    invoke-direct {v6}, Lcom/facebook/places/internal/WifiScanResult;-><init>()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Landroid/net/wifi/WifiInfo;"

    const-string v1, "getBSSID"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_a
    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v7
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v7, v2, v1

    const-string v0, "Landroid/net/wifi/WifiInfo;"

    const-string v1, "getBSSID"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_b
    iput-object v7, v6, Lcom/facebook/places/internal/WifiScanResult;->bssid:Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Landroid/net/wifi/WifiInfo;"

    const-string v1, "getSSID"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_c
    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v7
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v7, v2, v1

    const-string v0, "Landroid/net/wifi/WifiInfo;"

    const-string v1, "getSSID"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_d
    iput-object v7, v6, Lcom/facebook/places/internal/WifiScanResult;->ssid:Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Landroid/net/wifi/WifiInfo;"

    const-string v1, "getRssi"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_e
    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v7
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v7 .. v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/net/wifi/WifiInfo;"

    const-string v1, "getRssi"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_f
    iput v7, v6, Lcom/facebook/places/internal/WifiScanResult;->rssi:I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/os/SystemClock;"

    const-string v1, "elapsedRealtime"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v7 .. v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/os/SystemClock;"

    const-string v1, "elapsedRealtime"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_11
    iput-wide v7, v6, Lcom/facebook/places/internal/WifiScanResult;->timestampMs:J

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x15

    if-lt v7, v8, :cond_1
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Landroid/net/wifi/WifiInfo;"

    const-string v1, "getFrequency"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_12
    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v5
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v5 .. v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/net/wifi/WifiInfo;"

    const-string v1, "getFrequency"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_13
    iput v5, v6, Lcom/facebook/places/internal/WifiScanResult;->frequency:I
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_0

    :cond_1
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/places/internal/WifiScannerImpl;"

    const-string v1, "getConnectedWifi"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v6

    :cond_2
    :goto_0
    const/4 v5, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/places/internal/WifiScannerImpl;"

    const-string v1, "getConnectedWifi"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5

    :catch_0
    move-exception v5

    new-instance v6, Lcom/facebook/places/internal/ScannerException;

    sget-object v7, Lcom/facebook/places/internal/ScannerException$Type;->UNKNOWN_ERROR:Lcom/facebook/places/internal/ScannerException$Type;

    invoke-direct {v6, v7, v5}, Lcom/facebook/places/internal/ScannerException;-><init>(Lcom/facebook/places/internal/ScannerException$Type;Ljava/lang/Exception;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/places/internal/WifiScannerImpl;"

    const-string v1, "getConnectedWifi"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v6
.end method

.method public declared-synchronized getWifiScans()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/places/internal/WifiScanResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/places/internal/ScannerException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 213
    :try_start_0
    iget-object v1, p0, Lcom/facebook/places/internal/WifiScannerImpl;->params:Lcom/facebook/places/internal/LocationPackageRequestParams;

    invoke-virtual {v1}, Lcom/facebook/places/internal/LocationPackageRequestParams;->isWifiActiveScanForced()Z

    move-result v1

    if-nez v1, :cond_0

    .line 214
    invoke-direct {p0}, Lcom/facebook/places/internal/WifiScannerImpl;->getCachedScanResults()Ljava/util/List;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_2

    .line 216
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    .line 217
    :goto_1
    iget-object v2, p0, Lcom/facebook/places/internal/WifiScannerImpl;->params:Lcom/facebook/places/internal/LocationPackageRequestParams;

    invoke-virtual {v2}, Lcom/facebook/places/internal/LocationPackageRequestParams;->isWifiActiveScanForced()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/facebook/places/internal/WifiScannerImpl;->params:Lcom/facebook/places/internal/LocationPackageRequestParams;

    invoke-virtual {v2}, Lcom/facebook/places/internal/LocationPackageRequestParams;->isWifiActiveScanAllowed()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v1, :cond_4

    .line 218
    :cond_3
    invoke-direct {p0}, Lcom/facebook/places/internal/WifiScannerImpl;->getActiveScanResults()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    :cond_4
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public initAndCheckEligibility()V
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

    const-string v0, "Lcom/facebook/places/internal/WifiScannerImpl;"

    const-string v1, "initAndCheckEligibility"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/facebook/places/internal/WifiScannerImpl;->context:Landroid/content/Context;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Landroid/content/Context;"

    const-string v1, "getPackageManager"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Landroid/content/Context;"

    const-string v1, "getPackageManager"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v6, "android.hardware.wifi"

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

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/facebook/places/internal/WifiScannerImpl;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/facebook/internal/Validate;->hasWiFiPermission(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/facebook/places/internal/WifiScannerImpl;->wifiManager:Landroid/net/wifi/WifiManager;

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/facebook/places/internal/WifiScannerImpl;->context:Landroid/content/Context;

    const-string v6, "wifi"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    aput-object v6, v2, v1

    const-string v0, "Landroid/content/Context;"

    const-string v1, "getSystemService"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Landroid/content/Context;"

    const-string v1, "getSystemService"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    check-cast v5, Landroid/net/wifi/WifiManager;

    iput-object v5, p0, Lcom/facebook/places/internal/WifiScannerImpl;->wifiManager:Landroid/net/wifi/WifiManager;

    :cond_0
    invoke-direct {p0}, Lcom/facebook/places/internal/WifiScannerImpl;->isWifiScanningAlwaysOn()Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/facebook/places/internal/WifiScannerImpl;->wifiManager:Landroid/net/wifi/WifiManager;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Landroid/net/wifi/WifiManager;"

    const-string v1, "isWifiEnabled"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v5 .. v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/net/wifi/WifiManager;"

    const-string v1, "isWifiEnabled"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v5, :cond_1

    goto/16 :goto_0

    :cond_1
    new-instance v5, Lcom/facebook/places/internal/ScannerException;

    sget-object v6, Lcom/facebook/places/internal/ScannerException$Type;->DISABLED:Lcom/facebook/places/internal/ScannerException$Type;

    invoke-direct {v5, v6}, Lcom/facebook/places/internal/ScannerException;-><init>(Lcom/facebook/places/internal/ScannerException$Type;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/places/internal/WifiScannerImpl;"

    const-string v1, "initAndCheckEligibility"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v5

    :cond_2
    :goto_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/places/internal/WifiScannerImpl;"

    const-string v1, "initAndCheckEligibility"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_3
    new-instance v5, Lcom/facebook/places/internal/ScannerException;

    sget-object v6, Lcom/facebook/places/internal/ScannerException$Type;->PERMISSION_DENIED:Lcom/facebook/places/internal/ScannerException$Type;

    invoke-direct {v5, v6}, Lcom/facebook/places/internal/ScannerException;-><init>(Lcom/facebook/places/internal/ScannerException$Type;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/places/internal/WifiScannerImpl;"

    const-string v1, "initAndCheckEligibility"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v5

    :cond_4
    new-instance v5, Lcom/facebook/places/internal/ScannerException;

    sget-object v6, Lcom/facebook/places/internal/ScannerException$Type;->NOT_SUPPORTED:Lcom/facebook/places/internal/ScannerException$Type;

    invoke-direct {v5, v6}, Lcom/facebook/places/internal/ScannerException;-><init>(Lcom/facebook/places/internal/ScannerException$Type;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/places/internal/WifiScannerImpl;"

    const-string v1, "initAndCheckEligibility"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v5
.end method

.method public isWifiScanningEnabled()Z
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Lcom/facebook/places/internal/WifiScannerImpl;"

    const-string v1, "isWifiScanningEnabled"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/places/internal/WifiScannerImpl;->initAndCheckEligibility()V

    iget-object v5, p0, Lcom/facebook/places/internal/WifiScannerImpl;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/facebook/internal/Validate;->hasLocationPermission(Landroid/content/Context;)Z

    move-result v5
    :try_end_0
    .catch Lcom/facebook/places/internal/ScannerException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/places/internal/WifiScannerImpl;"

    const-string v1, "isWifiScanningEnabled"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5

    :catch_0
    :cond_0
    const/4 v5, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/places/internal/WifiScannerImpl;"

    const-string v1, "isWifiScanningEnabled"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5
.end method
