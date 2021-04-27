.class public final Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public bearing:F

.field public tilt:F

.field public zoom:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "StreetViewPanoramaCamera"

    .line 3
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget v0, p1, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;->zoom:F

    iput v0, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera$Builder;->zoom:F

    .line 5
    iget v0, p1, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;->bearing:F

    iput v0, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera$Builder;->bearing:F

    .line 6
    iget p1, p1, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;->tilt:F

    iput p1, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera$Builder;->tilt:F

    return-void
.end method


# virtual methods
.method public final bearing(F)Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera$Builder;
    .locals 0

    .line 16
    iput p1, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera$Builder;->bearing:F

    return-object p0
.end method

.method public final build()Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;
    .locals 4

    .line 18
    new-instance v0, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;

    iget v1, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera$Builder;->zoom:F

    iget v2, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera$Builder;->tilt:F

    iget v3, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera$Builder;->bearing:F

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;-><init>(FFF)V

    return-object v0
.end method

.method public final orientation(Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;)Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera$Builder;
    .locals 1

    const-string v0, "StreetViewPanoramaOrientation"

    .line 10
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget v0, p1, Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;->tilt:F

    iput v0, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera$Builder;->tilt:F

    .line 12
    iget p1, p1, Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;->bearing:F

    iput p1, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera$Builder;->bearing:F

    return-object p0
.end method

.method public final tilt(F)Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera$Builder;
    .locals 0

    .line 14
    iput p1, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera$Builder;->tilt:F

    return-object p0
.end method

.method public final zoom(F)Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera$Builder;
    .locals 0

    .line 8
    iput p1, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera$Builder;->zoom:F

    return-object p0
.end method
