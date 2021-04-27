.class public final Lcom/google/android/gms/maps/model/MarkerOptions;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/maps/model/MarkerOptions;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private alpha:F

.field private position:Lcom/google/android/gms/maps/model/LatLng;

.field private zzcs:F

.field private zzct:Z

.field private zzdb:F

.field private zzdc:F

.field private zzdn:Ljava/lang/String;

.field private zzdo:Ljava/lang/String;

.field private zzdp:Lcom/google/android/gms/maps/model/BitmapDescriptor;

.field private zzdq:Z

.field private zzdr:Z

.field private zzds:F

.field private zzdt:F

.field private zzdu:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/maps/model/zzh;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/zzh;-><init>()V

    sput-object v0, Lcom/google/android/gms/maps/model/MarkerOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/high16 v0, 0x3f000000    # 0.5f

    .line 2
    iput v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzdb:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 3
    iput v1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzdc:F

    const/4 v2, 0x1

    .line 4
    iput-boolean v2, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzct:Z

    const/4 v2, 0x0

    .line 5
    iput-boolean v2, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzdr:Z

    const/4 v2, 0x0

    .line 6
    iput v2, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzds:F

    .line 7
    iput v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzdt:F

    .line 8
    iput v2, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzdu:F

    .line 9
    iput v1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->alpha:F

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/maps/model/LatLng;Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;FFZZZFFFFF)V
    .locals 4

    move-object v0, p0

    .line 11
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/high16 v1, 0x3f000000    # 0.5f

    .line 12
    iput v1, v0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzdb:F

    const/high16 v2, 0x3f800000    # 1.0f

    .line 13
    iput v2, v0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzdc:F

    const/4 v3, 0x1

    .line 14
    iput-boolean v3, v0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzct:Z

    const/4 v3, 0x0

    .line 15
    iput-boolean v3, v0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzdr:Z

    const/4 v3, 0x0

    .line 16
    iput v3, v0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzds:F

    .line 17
    iput v1, v0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzdt:F

    .line 18
    iput v3, v0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzdu:F

    .line 19
    iput v2, v0, Lcom/google/android/gms/maps/model/MarkerOptions;->alpha:F

    move-object v1, p1

    .line 20
    iput-object v1, v0, Lcom/google/android/gms/maps/model/MarkerOptions;->position:Lcom/google/android/gms/maps/model/LatLng;

    move-object v1, p2

    .line 21
    iput-object v1, v0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzdn:Ljava/lang/String;

    move-object v1, p3

    .line 22
    iput-object v1, v0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzdo:Ljava/lang/String;

    if-nez p4, :cond_0

    const/4 v1, 0x0

    .line 24
    iput-object v1, v0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzdp:Lcom/google/android/gms/maps/model/BitmapDescriptor;

    goto :goto_0

    .line 25
    :cond_0
    new-instance v1, Lcom/google/android/gms/maps/model/BitmapDescriptor;

    .line 26
    invoke-static {p4}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/maps/model/BitmapDescriptor;-><init>(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    iput-object v1, v0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzdp:Lcom/google/android/gms/maps/model/BitmapDescriptor;

    :goto_0
    move v1, p5

    .line 27
    iput v1, v0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzdb:F

    move v1, p6

    .line 28
    iput v1, v0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzdc:F

    move v1, p7

    .line 29
    iput-boolean v1, v0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzdq:Z

    move v1, p8

    .line 30
    iput-boolean v1, v0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzct:Z

    move v1, p9

    .line 31
    iput-boolean v1, v0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzdr:Z

    move v1, p10

    .line 32
    iput v1, v0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzds:F

    move v1, p11

    .line 33
    iput v1, v0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzdt:F

    move/from16 v1, p12

    .line 34
    iput v1, v0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzdu:F

    move/from16 v1, p13

    .line 35
    iput v1, v0, Lcom/google/android/gms/maps/model/MarkerOptions;->alpha:F

    move/from16 v1, p14

    .line 36
    iput v1, v0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzcs:F

    return-void
.end method


# virtual methods
.method public final alpha(F)Lcom/google/android/gms/maps/model/MarkerOptions;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->alpha:F

    return-object p0
.end method

.method public final anchor(FF)Lcom/google/android/gms/maps/model/MarkerOptions;
    .locals 0

    .line 97
    iput p1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzdb:F

    .line 98
    iput p2, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzdc:F

    return-object p0
.end method

.method public final draggable(Z)Lcom/google/android/gms/maps/model/MarkerOptions;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzdq:Z

    return-object p0
.end method

.method public final flat(Z)Lcom/google/android/gms/maps/model/MarkerOptions;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzdr:Z

    return-object p0
.end method

.method public final getAlpha()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->alpha:F

    return v0
.end method

.method public final getAnchorU()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzdb:F

    return v0
.end method

.method public final getAnchorV()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzdc:F

    return v0
.end method

.method public final getIcon()Lcom/google/android/gms/maps/model/BitmapDescriptor;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzdp:Lcom/google/android/gms/maps/model/BitmapDescriptor;

    return-object v0
.end method

.method public final getInfoWindowAnchorU()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzdt:F

    return v0
.end method

.method public final getInfoWindowAnchorV()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzdu:F

    return v0
.end method

.method public final getPosition()Lcom/google/android/gms/maps/model/LatLng;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->position:Lcom/google/android/gms/maps/model/LatLng;

    return-object v0
.end method

.method public final getRotation()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzds:F

    return v0
.end method

.method public final getSnippet()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzdo:Ljava/lang/String;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzdn:Ljava/lang/String;

    return-object v0
.end method

.method public final getZIndex()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzcs:F

    return v0
.end method

.method public final icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzdp:Lcom/google/android/gms/maps/model/BitmapDescriptor;

    return-object p0
.end method

.method public final infoWindowAnchor(FF)Lcom/google/android/gms/maps/model/MarkerOptions;
    .locals 0

    .line 100
    iput p1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzdt:F

    .line 101
    iput p2, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzdu:F

    return-object p0
.end method

.method public final isDraggable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzdq:Z

    return v0
.end method

.method public final isFlat()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzdr:Z

    return v0
.end method

.method public final isVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzct:Z

    return v0
.end method

.method public final position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;
    .locals 1

    if-eqz p1, :cond_0

    .line 91
    iput-object p1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->position:Lcom/google/android/gms/maps/model/LatLng;

    return-object p0

    .line 90
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "latlng cannot be null - a position is required."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final rotation(F)Lcom/google/android/gms/maps/model/MarkerOptions;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzds:F

    return-object p0
.end method

.method public final snippet(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzdo:Ljava/lang/String;

    return-object p0
.end method

.method public final title(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzdn:Ljava/lang/String;

    return-object p0
.end method

.method public final visible(Z)Lcom/google/android/gms/maps/model/MarkerOptions;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzct:Z

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 39
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    .line 41
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/MarkerOptions;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 42
    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 44
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/MarkerOptions;->getTitle()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x3

    .line 45
    invoke-static {p1, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 47
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/MarkerOptions;->getSnippet()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x4

    .line 48
    invoke-static {p1, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 51
    iget-object p2, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzdp:Lcom/google/android/gms/maps/model/BitmapDescriptor;

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 53
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/maps/model/BitmapDescriptor;->zzb()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p2

    .line 54
    invoke-interface {p2}, Lcom/google/android/gms/dynamic/IObjectWrapper;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    :goto_0
    const/4 v1, 0x5

    .line 56
    invoke-static {p1, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeIBinder(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/4 p2, 0x6

    .line 58
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/MarkerOptions;->getAnchorU()F

    move-result v1

    .line 59
    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeFloat(Landroid/os/Parcel;IF)V

    const/4 p2, 0x7

    .line 61
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/MarkerOptions;->getAnchorV()F

    move-result v1

    .line 62
    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeFloat(Landroid/os/Parcel;IF)V

    const/16 p2, 0x8

    .line 64
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/MarkerOptions;->isDraggable()Z

    move-result v1

    .line 65
    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    const/16 p2, 0x9

    .line 67
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/MarkerOptions;->isVisible()Z

    move-result v1

    .line 68
    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    const/16 p2, 0xa

    .line 70
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/MarkerOptions;->isFlat()Z

    move-result v1

    .line 71
    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    const/16 p2, 0xb

    .line 73
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/MarkerOptions;->getRotation()F

    move-result v1

    .line 74
    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeFloat(Landroid/os/Parcel;IF)V

    const/16 p2, 0xc

    .line 76
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/MarkerOptions;->getInfoWindowAnchorU()F

    move-result v1

    .line 77
    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeFloat(Landroid/os/Parcel;IF)V

    const/16 p2, 0xd

    .line 79
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/MarkerOptions;->getInfoWindowAnchorV()F

    move-result v1

    .line 80
    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeFloat(Landroid/os/Parcel;IF)V

    const/16 p2, 0xe

    .line 82
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/MarkerOptions;->getAlpha()F

    move-result v1

    .line 83
    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeFloat(Landroid/os/Parcel;IF)V

    const/16 p2, 0xf

    .line 85
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/MarkerOptions;->getZIndex()F

    move-result v1

    .line 86
    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeFloat(Landroid/os/Parcel;IF)V

    .line 87
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zIndex(F)Lcom/google/android/gms/maps/model/MarkerOptions;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->zzcs:F

    return-object p0
.end method
