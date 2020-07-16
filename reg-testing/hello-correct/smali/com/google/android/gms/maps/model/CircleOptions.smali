.class public final Lcom/google/android/gms/maps/model/CircleOptions;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/maps/model/CircleOptions;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private fillColor:I

.field private strokeColor:I

.field private zzcp:Lcom/google/android/gms/maps/model/LatLng;

.field private zzcq:D

.field private zzcr:F

.field private zzcs:F

.field private zzct:Z

.field private zzcu:Z

.field private zzcv:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/maps/model/PatternItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/maps/model/zzc;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/zzc;-><init>()V

    sput-object v0, Lcom/google/android/gms/maps/model/CircleOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->zzcp:Lcom/google/android/gms/maps/model/LatLng;

    const-wide/16 v1, 0x0

    .line 3
    iput-wide v1, p0, Lcom/google/android/gms/maps/model/CircleOptions;->zzcq:D

    const/high16 v1, 0x41200000    # 10.0f

    .line 4
    iput v1, p0, Lcom/google/android/gms/maps/model/CircleOptions;->zzcr:F

    const/high16 v1, -0x1000000

    .line 5
    iput v1, p0, Lcom/google/android/gms/maps/model/CircleOptions;->strokeColor:I

    const/4 v1, 0x0

    .line 6
    iput v1, p0, Lcom/google/android/gms/maps/model/CircleOptions;->fillColor:I

    const/4 v2, 0x0

    .line 7
    iput v2, p0, Lcom/google/android/gms/maps/model/CircleOptions;->zzcs:F

    const/4 v2, 0x1

    .line 8
    iput-boolean v2, p0, Lcom/google/android/gms/maps/model/CircleOptions;->zzct:Z

    .line 9
    iput-boolean v1, p0, Lcom/google/android/gms/maps/model/CircleOptions;->zzcu:Z

    .line 10
    iput-object v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->zzcv:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/maps/model/LatLng;DFIIFZZLjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/maps/model/LatLng;",
            "DFIIFZZ",
            "Ljava/util/List<",
            "Lcom/google/android/gms/maps/model/PatternItem;",
            ">;)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->zzcp:Lcom/google/android/gms/maps/model/LatLng;

    const-wide/16 v1, 0x0

    .line 14
    iput-wide v1, p0, Lcom/google/android/gms/maps/model/CircleOptions;->zzcq:D

    const/high16 v1, 0x41200000    # 10.0f

    .line 15
    iput v1, p0, Lcom/google/android/gms/maps/model/CircleOptions;->zzcr:F

    const/high16 v1, -0x1000000

    .line 16
    iput v1, p0, Lcom/google/android/gms/maps/model/CircleOptions;->strokeColor:I

    const/4 v1, 0x0

    .line 17
    iput v1, p0, Lcom/google/android/gms/maps/model/CircleOptions;->fillColor:I

    const/4 v2, 0x0

    .line 18
    iput v2, p0, Lcom/google/android/gms/maps/model/CircleOptions;->zzcs:F

    const/4 v2, 0x1

    .line 19
    iput-boolean v2, p0, Lcom/google/android/gms/maps/model/CircleOptions;->zzct:Z

    .line 20
    iput-boolean v1, p0, Lcom/google/android/gms/maps/model/CircleOptions;->zzcu:Z

    .line 21
    iput-object v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->zzcv:Ljava/util/List;

    .line 22
    iput-object p1, p0, Lcom/google/android/gms/maps/model/CircleOptions;->zzcp:Lcom/google/android/gms/maps/model/LatLng;

    .line 23
    iput-wide p2, p0, Lcom/google/android/gms/maps/model/CircleOptions;->zzcq:D

    .line 24
    iput p4, p0, Lcom/google/android/gms/maps/model/CircleOptions;->zzcr:F

    .line 25
    iput p5, p0, Lcom/google/android/gms/maps/model/CircleOptions;->strokeColor:I

    .line 26
    iput p6, p0, Lcom/google/android/gms/maps/model/CircleOptions;->fillColor:I

    .line 27
    iput p7, p0, Lcom/google/android/gms/maps/model/CircleOptions;->zzcs:F

    .line 28
    iput-boolean p8, p0, Lcom/google/android/gms/maps/model/CircleOptions;->zzct:Z

    .line 29
    iput-boolean p9, p0, Lcom/google/android/gms/maps/model/CircleOptions;->zzcu:Z

    .line 30
    iput-object p10, p0, Lcom/google/android/gms/maps/model/CircleOptions;->zzcv:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final center(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/CircleOptions;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/maps/model/CircleOptions;->zzcp:Lcom/google/android/gms/maps/model/LatLng;

    return-object p0
.end method

.method public final clickable(Z)Lcom/google/android/gms/maps/model/CircleOptions;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/maps/model/CircleOptions;->zzcu:Z

    return-object p0
.end method

.method public final fillColor(I)Lcom/google/android/gms/maps/model/CircleOptions;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/maps/model/CircleOptions;->fillColor:I

    return-object p0
.end method

.method public final getCenter()Lcom/google/android/gms/maps/model/LatLng;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->zzcp:Lcom/google/android/gms/maps/model/LatLng;

    return-object v0
.end method

.method public final getFillColor()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->fillColor:I

    return v0
.end method

.method public final getRadius()D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->zzcq:D

    return-wide v0
.end method

.method public final getStrokeColor()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->strokeColor:I

    return v0
.end method

.method public final getStrokePattern()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/maps/model/PatternItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->zzcv:Ljava/util/List;

    return-object v0
.end method

.method public final getStrokeWidth()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->zzcr:F

    return v0
.end method

.method public final getZIndex()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->zzcs:F

    return v0
.end method

.method public final isClickable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->zzcu:Z

    return v0
.end method

.method public final isVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->zzct:Z

    return v0
.end method

.method public final radius(D)Lcom/google/android/gms/maps/model/CircleOptions;
    .locals 0

    iput-wide p1, p0, Lcom/google/android/gms/maps/model/CircleOptions;->zzcq:D

    return-object p0
.end method

.method public final strokeColor(I)Lcom/google/android/gms/maps/model/CircleOptions;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/maps/model/CircleOptions;->strokeColor:I

    return-object p0
.end method

.method public final strokePattern(Ljava/util/List;)Lcom/google/android/gms/maps/model/CircleOptions;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/maps/model/PatternItem;",
            ">;)",
            "Lcom/google/android/gms/maps/model/CircleOptions;"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/maps/model/CircleOptions;->zzcv:Ljava/util/List;

    return-object p0
.end method

.method public final strokeWidth(F)Lcom/google/android/gms/maps/model/CircleOptions;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/maps/model/CircleOptions;->zzcr:F

    return-object p0
.end method

.method public final visible(Z)Lcom/google/android/gms/maps/model/CircleOptions;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/maps/model/CircleOptions;->zzct:Z

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    .line 33
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    .line 35
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/CircleOptions;->getCenter()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 36
    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 38
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/CircleOptions;->getRadius()D

    move-result-wide v3

    const/4 p2, 0x3

    .line 39
    invoke-static {p1, p2, v3, v4}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeDouble(Landroid/os/Parcel;ID)V

    .line 41
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/CircleOptions;->getStrokeWidth()F

    move-result p2

    const/4 v1, 0x4

    .line 42
    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeFloat(Landroid/os/Parcel;IF)V

    .line 44
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/CircleOptions;->getStrokeColor()I

    move-result p2

    const/4 v1, 0x5

    .line 45
    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 47
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/CircleOptions;->getFillColor()I

    move-result p2

    const/4 v1, 0x6

    .line 48
    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 50
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/CircleOptions;->getZIndex()F

    move-result p2

    const/4 v1, 0x7

    .line 51
    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeFloat(Landroid/os/Parcel;IF)V

    .line 53
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/CircleOptions;->isVisible()Z

    move-result p2

    const/16 v1, 0x8

    .line 54
    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 56
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/CircleOptions;->isClickable()Z

    move-result p2

    const/16 v1, 0x9

    .line 57
    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 59
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/CircleOptions;->getStrokePattern()Ljava/util/List;

    move-result-object p2

    const/16 v1, 0xa

    .line 60
    invoke-static {p1, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeTypedList(Landroid/os/Parcel;ILjava/util/List;Z)V

    .line 61
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zIndex(F)Lcom/google/android/gms/maps/model/CircleOptions;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/maps/model/CircleOptions;->zzcs:F

    return-object p0
.end method
