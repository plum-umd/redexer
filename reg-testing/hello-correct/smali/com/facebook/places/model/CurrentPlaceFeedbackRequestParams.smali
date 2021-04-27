.class public Lcom/facebook/places/model/CurrentPlaceFeedbackRequestParams;
.super Ljava/lang/Object;
.source "CurrentPlaceFeedbackRequestParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/places/model/CurrentPlaceFeedbackRequestParams$Builder;
    }
.end annotation


# instance fields
.field private final placeId:Ljava/lang/String;

.field private final tracking:Ljava/lang/String;

.field private final wasHere:Ljava/lang/Boolean;


# direct methods
.method private constructor <init>(Lcom/facebook/places/model/CurrentPlaceFeedbackRequestParams$Builder;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {p1}, Lcom/facebook/places/model/CurrentPlaceFeedbackRequestParams$Builder;->access$000(Lcom/facebook/places/model/CurrentPlaceFeedbackRequestParams$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/places/model/CurrentPlaceFeedbackRequestParams;->tracking:Ljava/lang/String;

    .line 35
    invoke-static {p1}, Lcom/facebook/places/model/CurrentPlaceFeedbackRequestParams$Builder;->access$100(Lcom/facebook/places/model/CurrentPlaceFeedbackRequestParams$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/places/model/CurrentPlaceFeedbackRequestParams;->placeId:Ljava/lang/String;

    .line 36
    invoke-static {p1}, Lcom/facebook/places/model/CurrentPlaceFeedbackRequestParams$Builder;->access$200(Lcom/facebook/places/model/CurrentPlaceFeedbackRequestParams$Builder;)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/places/model/CurrentPlaceFeedbackRequestParams;->wasHere:Ljava/lang/Boolean;

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/places/model/CurrentPlaceFeedbackRequestParams$Builder;Lcom/facebook/places/model/CurrentPlaceFeedbackRequestParams$1;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/facebook/places/model/CurrentPlaceFeedbackRequestParams;-><init>(Lcom/facebook/places/model/CurrentPlaceFeedbackRequestParams$Builder;)V

    return-void
.end method


# virtual methods
.method public getPlaceId()Ljava/lang/String;
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Lcom/facebook/places/model/CurrentPlaceFeedbackRequestParams;"

    const-string v1, "getPlaceId"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/facebook/places/model/CurrentPlaceFeedbackRequestParams;->placeId:Ljava/lang/String;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/places/model/CurrentPlaceFeedbackRequestParams;"

    const-string v1, "getPlaceId"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5
.end method

.method public getTracking()Ljava/lang/String;
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Lcom/facebook/places/model/CurrentPlaceFeedbackRequestParams;"

    const-string v1, "getTracking"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/facebook/places/model/CurrentPlaceFeedbackRequestParams;->tracking:Ljava/lang/String;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/places/model/CurrentPlaceFeedbackRequestParams;"

    const-string v1, "getTracking"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5
.end method

.method public wasHere()Ljava/lang/Boolean;
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Lcom/facebook/places/model/CurrentPlaceFeedbackRequestParams;"

    const-string v1, "wasHere"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/facebook/places/model/CurrentPlaceFeedbackRequestParams;->wasHere:Ljava/lang/Boolean;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/places/model/CurrentPlaceFeedbackRequestParams;"

    const-string v1, "wasHere"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5
.end method
