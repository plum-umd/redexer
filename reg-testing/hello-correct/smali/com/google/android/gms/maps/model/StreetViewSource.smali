.class public final Lcom/google/android/gms/maps/model/StreetViewSource;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/maps/model/StreetViewSource;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT:Lcom/google/android/gms/maps/model/StreetViewSource;

.field public static final OUTDOOR:Lcom/google/android/gms/maps/model/StreetViewSource;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final type:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    const-class v0, Lcom/google/android/gms/maps/model/StreetViewSource;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/maps/model/StreetViewSource;->TAG:Ljava/lang/String;

    .line 26
    new-instance v0, Lcom/google/android/gms/maps/model/zzq;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/zzq;-><init>()V

    sput-object v0, Lcom/google/android/gms/maps/model/StreetViewSource;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 27
    new-instance v0, Lcom/google/android/gms/maps/model/StreetViewSource;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/maps/model/StreetViewSource;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/maps/model/StreetViewSource;->DEFAULT:Lcom/google/android/gms/maps/model/StreetViewSource;

    .line 28
    new-instance v0, Lcom/google/android/gms/maps/model/StreetViewSource;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/maps/model/StreetViewSource;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/maps/model/StreetViewSource;->OUTDOOR:Lcom/google/android/gms/maps/model/StreetViewSource;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/android/gms/maps/model/StreetViewSource;->type:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 14
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/maps/model/StreetViewSource;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 16
    :cond_1
    check-cast p1, Lcom/google/android/gms/maps/model/StreetViewSource;

    .line 17
    iget v1, p0, Lcom/google/android/gms/maps/model/StreetViewSource;->type:I

    iget p1, p1, Lcom/google/android/gms/maps/model/StreetViewSource;->type:I

    if-ne v1, p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 11
    iget v1, p0, Lcom/google/android/gms/maps/model/StreetViewSource;->type:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 18
    iget v0, p0, Lcom/google/android/gms/maps/model/StreetViewSource;->type:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v2, :cond_0

    new-array v3, v2, [Ljava/lang/Object;

    .line 23
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    const-string v0, "UNKNOWN(%s)"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "OUTDOOR"

    goto :goto_0

    :cond_1
    const-string v0, "DEFAULT"

    :goto_0
    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    const-string v0, "StreetViewSource:%s"

    .line 24
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result p2

    .line 7
    iget v0, p0, Lcom/google/android/gms/maps/model/StreetViewSource;->type:I

    const/4 v1, 0x2

    .line 8
    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 9
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method
