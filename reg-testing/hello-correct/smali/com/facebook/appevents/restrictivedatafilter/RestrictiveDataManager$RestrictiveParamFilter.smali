.class Lcom/facebook/appevents/restrictivedatafilter/RestrictiveDataManager$RestrictiveParamFilter;
.super Ljava/lang/Object;
.source "RestrictiveDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/appevents/restrictivedatafilter/RestrictiveDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RestrictiveParamFilter"
.end annotation


# instance fields
.field eventName:Ljava/lang/String;

.field restrictiveParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    iput-object p1, p0, Lcom/facebook/appevents/restrictivedatafilter/RestrictiveDataManager$RestrictiveParamFilter;->eventName:Ljava/lang/String;

    .line 151
    iput-object p2, p0, Lcom/facebook/appevents/restrictivedatafilter/RestrictiveDataManager$RestrictiveParamFilter;->restrictiveParams:Ljava/util/Map;

    return-void
.end method
