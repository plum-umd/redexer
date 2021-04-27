.class public Lcom/google/android/material/circularreveal/CircularRevealWidget$CircularRevealEvaluator;
.super Ljava/lang/Object;
.source "CircularRevealWidget.java"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/circularreveal/CircularRevealWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CircularRevealEvaluator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator<",
        "Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;",
        ">;"
    }
.end annotation


# static fields
.field public static final CIRCULAR_REVEAL:Landroid/animation/TypeEvaluator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/animation/TypeEvaluator<",
            "Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final revealInfo:Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/material/circularreveal/CircularRevealWidget$CircularRevealEvaluator;

    invoke-direct {v0}, Lcom/google/android/material/circularreveal/CircularRevealWidget$CircularRevealEvaluator;-><init>()V

    sput-object v0, Lcom/google/android/material/circularreveal/CircularRevealWidget$CircularRevealEvaluator;->CIRCULAR_REVEAL:Landroid/animation/TypeEvaluator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    new-instance v0, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;-><init>(Lcom/google/android/material/circularreveal/CircularRevealWidget$1;)V

    iput-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealWidget$CircularRevealEvaluator;->revealInfo:Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    return-void
.end method


# virtual methods
.method public evaluate(FLcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;)Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;
    .locals 4

    .line 213
    iget-object v0, p0, Lcom/google/android/material/circularreveal/CircularRevealWidget$CircularRevealEvaluator;->revealInfo:Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    iget v1, p2, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->centerX:F

    iget v2, p3, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->centerX:F

    .line 214
    invoke-static {v1, v2, p1}, Lcom/google/android/material/math/MathUtils;->lerp(FFF)F

    move-result v1

    iget v2, p2, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->centerY:F

    iget v3, p3, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->centerY:F

    .line 215
    invoke-static {v2, v3, p1}, Lcom/google/android/material/math/MathUtils;->lerp(FFF)F

    move-result v2

    iget p2, p2, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->radius:F

    iget p3, p3, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->radius:F

    .line 216
    invoke-static {p2, p3, p1}, Lcom/google/android/material/math/MathUtils;->lerp(FFF)F

    move-result p1

    .line 213
    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;->set(FFF)V

    .line 217
    iget-object p1, p0, Lcom/google/android/material/circularreveal/CircularRevealWidget$CircularRevealEvaluator;->revealInfo:Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    return-object p1
.end method

.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 206
    check-cast p2, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    check-cast p3, Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/material/circularreveal/CircularRevealWidget$CircularRevealEvaluator;->evaluate(FLcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;)Lcom/google/android/material/circularreveal/CircularRevealWidget$RevealInfo;

    move-result-object p1

    return-object p1
.end method
