.class public final Lcom/google/android/gms/common/ConnectionResult;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final API_UNAVAILABLE:I = 0x10

.field public static final CANCELED:I = 0xd

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/common/ConnectionResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEVELOPER_ERROR:I = 0xa

.field public static final DRIVE_EXTERNAL_STORAGE_REQUIRED:I = 0x5dc
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final INTERNAL_ERROR:I = 0x8

.field public static final INTERRUPTED:I = 0xf

.field public static final INVALID_ACCOUNT:I = 0x5

.field public static final LICENSE_CHECK_FAILED:I = 0xb

.field public static final NETWORK_ERROR:I = 0x7

.field public static final RESOLUTION_REQUIRED:I = 0x6

.field public static final RESTRICTED_PROFILE:I = 0x14

.field public static final RESULT_SUCCESS:Lcom/google/android/gms/common/ConnectionResult;

.field public static final SERVICE_DISABLED:I = 0x3

.field public static final SERVICE_INVALID:I = 0x9

.field public static final SERVICE_MISSING:I = 0x1

.field public static final SERVICE_MISSING_PERMISSION:I = 0x13

.field public static final SERVICE_UPDATING:I = 0x12

.field public static final SERVICE_VERSION_UPDATE_REQUIRED:I = 0x2

.field public static final SIGN_IN_FAILED:I = 0x11

.field public static final SIGN_IN_REQUIRED:I = 0x4

.field public static final SUCCESS:I = 0x0

.field public static final TIMEOUT:I = 0xe

.field public static final UNKNOWN:I = -0x1


# instance fields
.field private final zzg:I

.field private final zzh:I

.field private final zzi:Landroid/app/PendingIntent;

.field private final zzj:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 80
    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/common/ConnectionResult;->RESULT_SUCCESS:Lcom/google/android/gms/common/ConnectionResult;

    .line 81
    new-instance v0, Lcom/google/android/gms/common/zza;

    invoke-direct {v0}, Lcom/google/android/gms/common/zza;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/ConnectionResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 7
    invoke-direct {p0, p1, v0, v0}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(IILandroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/android/gms/common/ConnectionResult;->zzg:I

    .line 3
    iput p2, p0, Lcom/google/android/gms/common/ConnectionResult;->zzh:I

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/common/ConnectionResult;->zzi:Landroid/app/PendingIntent;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/common/ConnectionResult;->zzj:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILandroid/app/PendingIntent;)V
    .locals 1

    const/4 v0, 0x0

    .line 9
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILandroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 11
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/gms/common/ConnectionResult;-><init>(IILandroid/app/PendingIntent;Ljava/lang/String;)V

    return-void
.end method

.method static zza(I)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x63

    if-eq p0, v0, :cond_1

    const/16 v0, 0x5dc

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    const/16 v0, 0x1f

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "UNKNOWN_ERROR_CODE("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "API_VERSION_UPDATE_REQUIRED"

    return-object p0

    :pswitch_1
    const-string p0, "RESTRICTED_PROFILE"

    return-object p0

    :pswitch_2
    const-string p0, "SERVICE_MISSING_PERMISSION"

    return-object p0

    :pswitch_3
    const-string p0, "SERVICE_UPDATING"

    return-object p0

    :pswitch_4
    const-string p0, "SIGN_IN_FAILED"

    return-object p0

    :pswitch_5
    const-string p0, "API_UNAVAILABLE"

    return-object p0

    :pswitch_6
    const-string p0, "INTERRUPTED"

    return-object p0

    :pswitch_7
    const-string p0, "TIMEOUT"

    return-object p0

    :pswitch_8
    const-string p0, "CANCELED"

    return-object p0

    :pswitch_9
    const-string p0, "LICENSE_CHECK_FAILED"

    return-object p0

    :pswitch_a
    const-string p0, "DEVELOPER_ERROR"

    return-object p0

    :pswitch_b
    const-string p0, "SERVICE_INVALID"

    return-object p0

    :pswitch_c
    const-string p0, "INTERNAL_ERROR"

    return-object p0

    :pswitch_d
    const-string p0, "NETWORK_ERROR"

    return-object p0

    :pswitch_e
    const-string p0, "RESOLUTION_REQUIRED"

    return-object p0

    :pswitch_f
    const-string p0, "INVALID_ACCOUNT"

    return-object p0

    :pswitch_10
    const-string p0, "SIGN_IN_REQUIRED"

    return-object p0

    :pswitch_11
    const-string p0, "SERVICE_DISABLED"

    return-object p0

    :pswitch_12
    const-string p0, "SERVICE_VERSION_UPDATE_REQUIRED"

    return-object p0

    :pswitch_13
    const-string p0, "SERVICE_MISSING"

    return-object p0

    :pswitch_14
    const-string p0, "SUCCESS"

    return-object p0

    :pswitch_15
    const-string p0, "UNKNOWN"

    return-object p0

    :cond_0
    const-string p0, "DRIVE_EXTERNAL_STORAGE_REQUIRED"

    return-object p0

    :cond_1
    const-string p0, "UNFINISHED"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xd
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 52
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/common/ConnectionResult;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 54
    :cond_1
    check-cast p1, Lcom/google/android/gms/common/ConnectionResult;

    .line 55
    iget v1, p0, Lcom/google/android/gms/common/ConnectionResult;->zzh:I

    iget v3, p1, Lcom/google/android/gms/common/ConnectionResult;->zzh:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/common/ConnectionResult;->zzi:Landroid/app/PendingIntent;

    iget-object v3, p1, Lcom/google/android/gms/common/ConnectionResult;->zzi:Landroid/app/PendingIntent;

    .line 56
    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/common/ConnectionResult;->zzj:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/common/ConnectionResult;->zzj:Ljava/lang/String;

    .line 57
    invoke-static {v1, p1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final getErrorCode()I
    .locals 1

    .line 21
    iget v0, p0, Lcom/google/android/gms/common/ConnectionResult;->zzh:I

    return v0
.end method

.method public final getErrorMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/ConnectionResult;->zzj:Ljava/lang/String;

    return-object v0
.end method

.method public final getResolution()Landroid/app/PendingIntent;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/common/ConnectionResult;->zzi:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public final hasResolution()Z
    .locals 1

    .line 19
    iget v0, p0, Lcom/google/android/gms/common/ConnectionResult;->zzh:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/ConnectionResult;->zzi:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 59
    iget v1, p0, Lcom/google/android/gms/common/ConnectionResult;->zzh:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/common/ConnectionResult;->zzi:Landroid/app/PendingIntent;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/common/ConnectionResult;->zzj:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final isSuccess()Z
    .locals 1

    .line 20
    iget v0, p0, Lcom/google/android/gms/common/ConnectionResult;->zzh:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final startResolutionForResult(Landroid/app/Activity;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .line 13
    invoke-virtual {p0}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/ConnectionResult;->zzi:Landroid/app/PendingIntent;

    .line 16
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    move v3, p2

    .line 17
    invoke-virtual/range {v1 .. v7}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 60
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/common/ConnectionResult;->zzh:I

    .line 61
    invoke-static {v1}, Lcom/google/android/gms/common/ConnectionResult;->zza(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "statusCode"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/ConnectionResult;->zzi:Landroid/app/PendingIntent;

    const-string v2, "resolution"

    .line 62
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/ConnectionResult;->zzj:Ljava/lang/String;

    const-string v2, "message"

    .line 63
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 67
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    .line 68
    iget v1, p0, Lcom/google/android/gms/common/ConnectionResult;->zzg:I

    const/4 v2, 0x1

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 70
    invoke-virtual {p0}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v1

    const/4 v2, 0x2

    .line 71
    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 73
    invoke-virtual {p0}, Lcom/google/android/gms/common/ConnectionResult;->getResolution()Landroid/app/PendingIntent;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x3

    .line 74
    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 76
    invoke-virtual {p0}, Lcom/google/android/gms/common/ConnectionResult;->getErrorMessage()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x4

    .line 77
    invoke-static {p1, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 78
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method
