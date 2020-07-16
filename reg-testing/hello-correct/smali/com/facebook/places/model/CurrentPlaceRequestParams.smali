.class public Lcom/facebook/places/model/CurrentPlaceRequestParams;
.super Ljava/lang/Object;
.source "CurrentPlaceRequestParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/places/model/CurrentPlaceRequestParams$Builder;,
        Lcom/facebook/places/model/CurrentPlaceRequestParams$ScanMode;,
        Lcom/facebook/places/model/CurrentPlaceRequestParams$ConfidenceLevel;
    }
.end annotation


# instance fields
.field private final fields:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final limit:I

.field private final location:Landroid/location/Location;

.field private final minConfidenceLevel:Lcom/facebook/places/model/CurrentPlaceRequestParams$ConfidenceLevel;

.field private final scanMode:Lcom/facebook/places/model/CurrentPlaceRequestParams$ScanMode;


# direct methods
.method private constructor <init>(Lcom/facebook/places/model/CurrentPlaceRequestParams$Builder;)V
    .locals 1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/facebook/places/model/CurrentPlaceRequestParams;->fields:Ljava/util/Set;

    .line 75
    invoke-static {p1}, Lcom/facebook/places/model/CurrentPlaceRequestParams$Builder;->access$000(Lcom/facebook/places/model/CurrentPlaceRequestParams$Builder;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/places/model/CurrentPlaceRequestParams;->location:Landroid/location/Location;

    .line 76
    invoke-static {p1}, Lcom/facebook/places/model/CurrentPlaceRequestParams$Builder;->access$100(Lcom/facebook/places/model/CurrentPlaceRequestParams$Builder;)Lcom/facebook/places/model/CurrentPlaceRequestParams$ScanMode;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/places/model/CurrentPlaceRequestParams;->scanMode:Lcom/facebook/places/model/CurrentPlaceRequestParams$ScanMode;

    .line 77
    invoke-static {p1}, Lcom/facebook/places/model/CurrentPlaceRequestParams$Builder;->access$200(Lcom/facebook/places/model/CurrentPlaceRequestParams$Builder;)Lcom/facebook/places/model/CurrentPlaceRequestParams$ConfidenceLevel;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/places/model/CurrentPlaceRequestParams;->minConfidenceLevel:Lcom/facebook/places/model/CurrentPlaceRequestParams$ConfidenceLevel;

    .line 78
    invoke-static {p1}, Lcom/facebook/places/model/CurrentPlaceRequestParams$Builder;->access$300(Lcom/facebook/places/model/CurrentPlaceRequestParams$Builder;)I

    move-result v0

    iput v0, p0, Lcom/facebook/places/model/CurrentPlaceRequestParams;->limit:I

    .line 79
    iget-object v0, p0, Lcom/facebook/places/model/CurrentPlaceRequestParams;->fields:Ljava/util/Set;

    invoke-static {p1}, Lcom/facebook/places/model/CurrentPlaceRequestParams$Builder;->access$400(Lcom/facebook/places/model/CurrentPlaceRequestParams$Builder;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/places/model/CurrentPlaceRequestParams$Builder;Lcom/facebook/places/model/CurrentPlaceRequestParams$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/facebook/places/model/CurrentPlaceRequestParams;-><init>(Lcom/facebook/places/model/CurrentPlaceRequestParams$Builder;)V

    return-void
.end method


# virtual methods
.method public getFields()Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Lcom/facebook/places/model/CurrentPlaceRequestParams;"

    const-string v1, "getFields"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/facebook/places/model/CurrentPlaceRequestParams;->fields:Ljava/util/Set;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/places/model/CurrentPlaceRequestParams;"

    const-string v1, "getFields"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5
.end method

.method public getLimit()I
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Lcom/facebook/places/model/CurrentPlaceRequestParams;"

    const-string v1, "getLimit"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v5, p0, Lcom/facebook/places/model/CurrentPlaceRequestParams;->limit:I

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/places/model/CurrentPlaceRequestParams;"

    const-string v1, "getLimit"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5
.end method

.method public getLocation()Landroid/location/Location;
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Lcom/facebook/places/model/CurrentPlaceRequestParams;"

    const-string v1, "getLocation"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/facebook/places/model/CurrentPlaceRequestParams;->location:Landroid/location/Location;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/places/model/CurrentPlaceRequestParams;"

    const-string v1, "getLocation"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5
.end method

.method public getMinConfidenceLevel()Lcom/facebook/places/model/CurrentPlaceRequestParams$ConfidenceLevel;
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Lcom/facebook/places/model/CurrentPlaceRequestParams;"

    const-string v1, "getMinConfidenceLevel"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/facebook/places/model/CurrentPlaceRequestParams;->minConfidenceLevel:Lcom/facebook/places/model/CurrentPlaceRequestParams$ConfidenceLevel;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/places/model/CurrentPlaceRequestParams;"

    const-string v1, "getMinConfidenceLevel"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5
.end method

.method public getScanMode()Lcom/facebook/places/model/CurrentPlaceRequestParams$ScanMode;
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Lcom/facebook/places/model/CurrentPlaceRequestParams;"

    const-string v1, "getScanMode"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/facebook/places/model/CurrentPlaceRequestParams;->scanMode:Lcom/facebook/places/model/CurrentPlaceRequestParams$ScanMode;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/places/model/CurrentPlaceRequestParams;"

    const-string v1, "getScanMode"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5
.end method
