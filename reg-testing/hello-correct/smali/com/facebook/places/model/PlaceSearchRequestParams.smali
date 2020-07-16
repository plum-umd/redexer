.class public final Lcom/facebook/places/model/PlaceSearchRequestParams;
.super Ljava/lang/Object;
.source "PlaceSearchRequestParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/places/model/PlaceSearchRequestParams$Builder;
    }
.end annotation


# instance fields
.field private final categories:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final distance:I

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

.field private final searchText:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/facebook/places/model/PlaceSearchRequestParams$Builder;)V
    .locals 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/facebook/places/model/PlaceSearchRequestParams;->categories:Ljava/util/Set;

    .line 36
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/facebook/places/model/PlaceSearchRequestParams;->fields:Ljava/util/Set;

    .line 39
    invoke-static {p1}, Lcom/facebook/places/model/PlaceSearchRequestParams$Builder;->access$000(Lcom/facebook/places/model/PlaceSearchRequestParams$Builder;)I

    move-result v0

    iput v0, p0, Lcom/facebook/places/model/PlaceSearchRequestParams;->distance:I

    .line 40
    invoke-static {p1}, Lcom/facebook/places/model/PlaceSearchRequestParams$Builder;->access$100(Lcom/facebook/places/model/PlaceSearchRequestParams$Builder;)I

    move-result v0

    iput v0, p0, Lcom/facebook/places/model/PlaceSearchRequestParams;->limit:I

    .line 41
    invoke-static {p1}, Lcom/facebook/places/model/PlaceSearchRequestParams$Builder;->access$200(Lcom/facebook/places/model/PlaceSearchRequestParams$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/places/model/PlaceSearchRequestParams;->searchText:Ljava/lang/String;

    .line 42
    iget-object v0, p0, Lcom/facebook/places/model/PlaceSearchRequestParams;->categories:Ljava/util/Set;

    invoke-static {p1}, Lcom/facebook/places/model/PlaceSearchRequestParams$Builder;->access$300(Lcom/facebook/places/model/PlaceSearchRequestParams$Builder;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 43
    iget-object v0, p0, Lcom/facebook/places/model/PlaceSearchRequestParams;->fields:Ljava/util/Set;

    invoke-static {p1}, Lcom/facebook/places/model/PlaceSearchRequestParams$Builder;->access$400(Lcom/facebook/places/model/PlaceSearchRequestParams$Builder;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/places/model/PlaceSearchRequestParams$Builder;Lcom/facebook/places/model/PlaceSearchRequestParams$1;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/facebook/places/model/PlaceSearchRequestParams;-><init>(Lcom/facebook/places/model/PlaceSearchRequestParams$Builder;)V

    return-void
.end method


# virtual methods
.method public getCategories()Ljava/util/Set;
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

    const-string v0, "Lcom/facebook/places/model/PlaceSearchRequestParams;"

    const-string v1, "getCategories"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/facebook/places/model/PlaceSearchRequestParams;->categories:Ljava/util/Set;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/places/model/PlaceSearchRequestParams;"

    const-string v1, "getCategories"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5
.end method

.method public getDistance()I
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Lcom/facebook/places/model/PlaceSearchRequestParams;"

    const-string v1, "getDistance"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v5, p0, Lcom/facebook/places/model/PlaceSearchRequestParams;->distance:I

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/places/model/PlaceSearchRequestParams;"

    const-string v1, "getDistance"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5
.end method

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

    const-string v0, "Lcom/facebook/places/model/PlaceSearchRequestParams;"

    const-string v1, "getFields"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/facebook/places/model/PlaceSearchRequestParams;->fields:Ljava/util/Set;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/places/model/PlaceSearchRequestParams;"

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

    const-string v0, "Lcom/facebook/places/model/PlaceSearchRequestParams;"

    const-string v1, "getLimit"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v5, p0, Lcom/facebook/places/model/PlaceSearchRequestParams;->limit:I

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/places/model/PlaceSearchRequestParams;"

    const-string v1, "getLimit"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5
.end method

.method public getSearchText()Ljava/lang/String;
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Lcom/facebook/places/model/PlaceSearchRequestParams;"

    const-string v1, "getSearchText"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/facebook/places/model/PlaceSearchRequestParams;->searchText:Ljava/lang/String;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/places/model/PlaceSearchRequestParams;"

    const-string v1, "getSearchText"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5
.end method
