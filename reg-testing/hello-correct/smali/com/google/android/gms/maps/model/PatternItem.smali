.class public Lcom/google/android/gms/maps/model/PatternItem;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/maps/model/PatternItem;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final type:I

.field private final zzdv:Ljava/lang/Float;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    const-class v0, Lcom/google/android/gms/maps/model/PatternItem;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/maps/model/PatternItem;->TAG:Ljava/lang/String;

    .line 42
    new-instance v0, Lcom/google/android/gms/maps/model/zzi;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/zzi;-><init>()V

    sput-object v0, Lcom/google/android/gms/maps/model/PatternItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/Float;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Invalid PatternItem: type="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " length="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 5
    iput p1, p0, Lcom/google/android/gms/maps/model/PatternItem;->type:I

    .line 6
    iput-object p2, p0, Lcom/google/android/gms/maps/model/PatternItem;->zzdv:Ljava/lang/Float;

    return-void
.end method

.method static zza(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/maps/model/PatternItem;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/google/android/gms/maps/model/PatternItem;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 29
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 30
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/maps/model/PatternItem;

    if-nez v2, :cond_1

    move-object v2, v0

    goto :goto_2

    .line 32
    :cond_1
    iget v3, v2, Lcom/google/android/gms/maps/model/PatternItem;->type:I

    if-eqz v3, :cond_4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    .line 36
    sget-object v4, Lcom/google/android/gms/maps/model/PatternItem;->TAG:Ljava/lang/String;

    const/16 v5, 0x25

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Unknown PatternItem type: "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 35
    :cond_2
    new-instance v3, Lcom/google/android/gms/maps/model/Gap;

    iget-object v2, v2, Lcom/google/android/gms/maps/model/PatternItem;->zzdv:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-direct {v3, v2}, Lcom/google/android/gms/maps/model/Gap;-><init>(F)V

    goto :goto_1

    .line 34
    :cond_3
    new-instance v2, Lcom/google/android/gms/maps/model/Dot;

    invoke-direct {v2}, Lcom/google/android/gms/maps/model/Dot;-><init>()V

    goto :goto_2

    .line 33
    :cond_4
    new-instance v3, Lcom/google/android/gms/maps/model/Dash;

    iget-object v2, v2, Lcom/google/android/gms/maps/model/PatternItem;->zzdv:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-direct {v3, v2}, Lcom/google/android/gms/maps/model/Dash;-><init>(F)V

    :goto_1
    move-object v2, v3

    .line 38
    :goto_2
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    return-object v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 22
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/maps/model/PatternItem;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 24
    :cond_1
    check-cast p1, Lcom/google/android/gms/maps/model/PatternItem;

    .line 25
    iget v1, p0, Lcom/google/android/gms/maps/model/PatternItem;->type:I

    iget v3, p1, Lcom/google/android/gms/maps/model/PatternItem;->type:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/maps/model/PatternItem;->zzdv:Ljava/lang/Float;

    iget-object p1, p1, Lcom/google/android/gms/maps/model/PatternItem;->zzdv:Ljava/lang/Float;

    invoke-static {v1, p1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 19
    iget v1, p0, Lcom/google/android/gms/maps/model/PatternItem;->type:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/maps/model/PatternItem;->zzdv:Ljava/lang/Float;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lcom/google/android/gms/maps/model/PatternItem;->type:I

    iget-object v1, p0, Lcom/google/android/gms/maps/model/PatternItem;->zzdv:Ljava/lang/Float;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x27

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "[PatternItem: type="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " length="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 9
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result p2

    .line 11
    iget v0, p0, Lcom/google/android/gms/maps/model/PatternItem;->type:I

    const/4 v1, 0x2

    .line 12
    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/maps/model/PatternItem;->zzdv:Ljava/lang/Float;

    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 16
    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeFloatObject(Landroid/os/Parcel;ILjava/lang/Float;Z)V

    .line 17
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method
