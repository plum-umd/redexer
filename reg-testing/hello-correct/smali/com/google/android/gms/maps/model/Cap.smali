.class public Lcom/google/android/gms/maps/model/Cap;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/maps/model/Cap;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final bitmapDescriptor:Lcom/google/android/gms/maps/model/BitmapDescriptor;

.field private final type:I

.field private final zzcn:Ljava/lang/Float;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 60
    const-class v0, Lcom/google/android/gms/maps/model/Cap;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/maps/model/Cap;->TAG:Ljava/lang/String;

    .line 61
    new-instance v0, Lcom/google/android/gms/maps/model/zzb;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/zzb;-><init>()V

    sput-object v0, Lcom/google/android/gms/maps/model/Cap;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 21
    invoke-direct {p0, p1, v0, v0}, Lcom/google/android/gms/maps/model/Cap;-><init>(ILcom/google/android/gms/maps/model/BitmapDescriptor;Ljava/lang/Float;)V

    return-void
.end method

.method constructor <init>(ILandroid/os/IBinder;Ljava/lang/Float;)V
    .locals 1

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 15
    :cond_0
    invoke-static {p2}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p2

    .line 16
    new-instance v0, Lcom/google/android/gms/maps/model/BitmapDescriptor;

    invoke-direct {v0, p2}, Lcom/google/android/gms/maps/model/BitmapDescriptor;-><init>(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    move-object p2, v0

    .line 17
    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/maps/model/Cap;-><init>(ILcom/google/android/gms/maps/model/BitmapDescriptor;Ljava/lang/Float;)V

    return-void
.end method

.method private constructor <init>(ILcom/google/android/gms/maps/model/BitmapDescriptor;Ljava/lang/Float;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    .line 2
    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x3

    if-ne p1, v3, :cond_2

    if-eqz p2, :cond_1

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v2, 0x1

    :goto_2
    new-array v3, v3, [Ljava/lang/Object;

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    aput-object p2, v3, v0

    const/4 v0, 0x2

    aput-object p3, v3, v0

    const-string v0, "Invalid Cap: type=%s bitmapDescriptor=%s bitmapRefWidth=%s"

    .line 5
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {v2, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 7
    iput p1, p0, Lcom/google/android/gms/maps/model/Cap;->type:I

    .line 8
    iput-object p2, p0, Lcom/google/android/gms/maps/model/Cap;->bitmapDescriptor:Lcom/google/android/gms/maps/model/BitmapDescriptor;

    .line 9
    iput-object p3, p0, Lcom/google/android/gms/maps/model/Cap;->zzcn:Ljava/lang/Float;

    return-void
.end method

.method protected constructor <init>(Lcom/google/android/gms/maps/model/BitmapDescriptor;F)V
    .locals 1

    .line 19
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/maps/model/Cap;-><init>(ILcom/google/android/gms/maps/model/BitmapDescriptor;Ljava/lang/Float;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 45
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/maps/model/Cap;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 47
    :cond_1
    check-cast p1, Lcom/google/android/gms/maps/model/Cap;

    .line 48
    iget v1, p0, Lcom/google/android/gms/maps/model/Cap;->type:I

    iget v3, p1, Lcom/google/android/gms/maps/model/Cap;->type:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/maps/model/Cap;->bitmapDescriptor:Lcom/google/android/gms/maps/model/BitmapDescriptor;

    iget-object v3, p1, Lcom/google/android/gms/maps/model/Cap;->bitmapDescriptor:Lcom/google/android/gms/maps/model/BitmapDescriptor;

    .line 49
    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/maps/model/Cap;->zzcn:Ljava/lang/Float;

    iget-object p1, p1, Lcom/google/android/gms/maps/model/Cap;->zzcn:Ljava/lang/Float;

    .line 50
    invoke-static {v1, p1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 42
    iget v1, p0, Lcom/google/android/gms/maps/model/Cap;->type:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/maps/model/Cap;->bitmapDescriptor:Lcom/google/android/gms/maps/model/BitmapDescriptor;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/maps/model/Cap;->zzcn:Ljava/lang/Float;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/google/android/gms/maps/model/Cap;->type:I

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x17

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "[Cap: type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 24
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result p2

    .line 26
    iget v0, p0, Lcom/google/android/gms/maps/model/Cap;->type:I

    const/4 v1, 0x2

    .line 27
    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 30
    iget-object v0, p0, Lcom/google/android/gms/maps/model/Cap;->bitmapDescriptor:Lcom/google/android/gms/maps/model/BitmapDescriptor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/BitmapDescriptor;->zzb()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    .line 33
    invoke-interface {v0}, Lcom/google/android/gms/dynamic/IObjectWrapper;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x3

    .line 35
    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeIBinder(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/4 v0, 0x4

    .line 37
    iget-object v2, p0, Lcom/google/android/gms/maps/model/Cap;->zzcn:Ljava/lang/Float;

    .line 39
    invoke-static {p1, v0, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeFloatObject(Landroid/os/Parcel;ILjava/lang/Float;Z)V

    .line 40
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method

.method final zzh()Lcom/google/android/gms/maps/model/Cap;
    .locals 4

    .line 53
    iget v0, p0, Lcom/google/android/gms/maps/model/Cap;->type:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 58
    sget-object v1, Lcom/google/android/gms/maps/model/Cap;->TAG:Ljava/lang/String;

    const/16 v2, 0x1d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unknown Cap type: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    .line 57
    :cond_0
    new-instance v0, Lcom/google/android/gms/maps/model/CustomCap;

    iget-object v1, p0, Lcom/google/android/gms/maps/model/Cap;->bitmapDescriptor:Lcom/google/android/gms/maps/model/BitmapDescriptor;

    iget-object v2, p0, Lcom/google/android/gms/maps/model/Cap;->zzcn:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/maps/model/CustomCap;-><init>(Lcom/google/android/gms/maps/model/BitmapDescriptor;F)V

    return-object v0

    .line 56
    :cond_1
    new-instance v0, Lcom/google/android/gms/maps/model/RoundCap;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/RoundCap;-><init>()V

    return-object v0

    .line 55
    :cond_2
    new-instance v0, Lcom/google/android/gms/maps/model/SquareCap;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/SquareCap;-><init>()V

    return-object v0

    .line 54
    :cond_3
    new-instance v0, Lcom/google/android/gms/maps/model/ButtCap;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/ButtCap;-><init>()V

    return-object v0
.end method
