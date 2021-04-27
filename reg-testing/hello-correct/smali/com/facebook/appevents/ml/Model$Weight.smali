.class Lcom/facebook/appevents/ml/Model$Weight;
.super Ljava/lang/Object;
.source "Model.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/appevents/ml/Model;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Weight"
.end annotation


# instance fields
.field public data:[F

.field public shape:[I


# direct methods
.method constructor <init>([I[F)V
    .locals 0

    .line 383
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 384
    iput-object p1, p0, Lcom/facebook/appevents/ml/Model$Weight;->shape:[I

    .line 385
    iput-object p2, p0, Lcom/facebook/appevents/ml/Model$Weight;->data:[F

    return-void
.end method
