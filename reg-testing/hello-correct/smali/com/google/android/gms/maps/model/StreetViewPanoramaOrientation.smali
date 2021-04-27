.class public Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final bearing:F

.field public final tilt:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/maps/model/zzp;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/zzp;-><init>()V

    sput-object v0, Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/high16 v0, -0x3d4c0000    # -90.0f

    cmpg-float v0, v0, p1

    if-gtz v0, :cond_0

    const/high16 v0, 0x42b40000    # 90.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x3e

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Tilt needs to be between -90 and 90 inclusive: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    const/4 v0, 0x0

    add-float/2addr p1, v0

    .line 3
    iput p1, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;->tilt:F

    float-to-double v0, p2

    const-wide/16 v2, 0x0

    const/high16 p1, 0x43b40000    # 360.0f

    cmpg-double v4, v0, v2

    if-gtz v4, :cond_1

    rem-float/2addr p2, p1

    add-float/2addr p2, p1

    :cond_1
    rem-float/2addr p2, p1

    .line 4
    iput p2, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;->bearing:F

    return-void
.end method

.method public static builder()Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation$Builder;
    .locals 1

    new-instance v0, Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation$Builder;-><init>()V

    return-object v0
.end method

.method public static builder(Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;)Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation$Builder;
    .locals 1

    new-instance v0, Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation$Builder;

    invoke-direct {v0, p0}, Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation$Builder;-><init>(Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 17
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 19
    :cond_1
    check-cast p1, Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;

    .line 20
    iget v1, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;->tilt:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    iget v3, p1, Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;->tilt:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;->bearing:F

    .line 21
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    iget p1, p1, Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;->bearing:F

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    if-ne v1, p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 14
    iget v1, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;->tilt:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;->bearing:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/common/internal/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;->tilt:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "tilt"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;->bearing:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "bearing"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 7
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result p2

    .line 8
    iget v0, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;->tilt:F

    const/4 v1, 0x2

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeFloat(Landroid/os/Parcel;IF)V

    .line 9
    iget v0, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;->bearing:F

    const/4 v1, 0x3

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeFloat(Landroid/os/Parcel;IF)V

    .line 10
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method
