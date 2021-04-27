.class Landroidx/media/MediaSessionManagerImplBase$RemoteUserInfoImplBase;
.super Ljava/lang/Object;
.source "MediaSessionManagerImplBase.java"

# interfaces
.implements Landroidx/media/MediaSessionManager$RemoteUserInfoImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media/MediaSessionManagerImplBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RemoteUserInfoImplBase"
.end annotation


# instance fields
.field private mPackageName:Ljava/lang/String;

.field private mPid:I

.field private mUid:I


# direct methods
.method constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-object p1, p0, Landroidx/media/MediaSessionManagerImplBase$RemoteUserInfoImplBase;->mPackageName:Ljava/lang/String;

    .line 127
    iput p2, p0, Landroidx/media/MediaSessionManagerImplBase$RemoteUserInfoImplBase;->mPid:I

    .line 128
    iput p3, p0, Landroidx/media/MediaSessionManagerImplBase$RemoteUserInfoImplBase;->mUid:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 9

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroidx/media/MediaSessionManagerImplBase$RemoteUserInfoImplBase;"

    const-string v1, "equals"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v5, 0x1

    if-ne p0, p1, :cond_0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/media/MediaSessionManagerImplBase$RemoteUserInfoImplBase;"

    const-string v1, "equals"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5

    :cond_0
    instance-of v6, p1, Landroidx/media/MediaSessionManagerImplBase$RemoteUserInfoImplBase;

    const/4 v7, 0x0

    if-nez v6, :cond_1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/media/MediaSessionManagerImplBase$RemoteUserInfoImplBase;"

    const-string v1, "equals"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v7

    :cond_1
    check-cast p1, Landroidx/media/MediaSessionManagerImplBase$RemoteUserInfoImplBase;

    iget-object v6, p0, Landroidx/media/MediaSessionManagerImplBase$RemoteUserInfoImplBase;->mPackageName:Ljava/lang/String;

    iget-object v8, p1, Landroidx/media/MediaSessionManagerImplBase$RemoteUserInfoImplBase;->mPackageName:Ljava/lang/String;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const/4 v1, 0x5

    aput-object v8, v2, v1

    const-string v0, "Landroid/text/TextUtils;"

    const-string v1, "equals"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v6, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v6 .. v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/text/TextUtils;"

    const-string v1, "equals"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v6, :cond_2

    iget v6, p0, Landroidx/media/MediaSessionManagerImplBase$RemoteUserInfoImplBase;->mPid:I

    iget v8, p1, Landroidx/media/MediaSessionManagerImplBase$RemoteUserInfoImplBase;->mPid:I

    if-ne v6, v8, :cond_2

    iget v6, p0, Landroidx/media/MediaSessionManagerImplBase$RemoteUserInfoImplBase;->mUid:I

    iget p1, p1, Landroidx/media/MediaSessionManagerImplBase$RemoteUserInfoImplBase;->mUid:I

    if-ne v6, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    :goto_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/media/MediaSessionManagerImplBase$RemoteUserInfoImplBase;"

    const-string v1, "equals"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/media/MediaSessionManagerImplBase$RemoteUserInfoImplBase;"

    const-string v1, "getPackageName"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/media/MediaSessionManagerImplBase$RemoteUserInfoImplBase;->mPackageName:Ljava/lang/String;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/media/MediaSessionManagerImplBase$RemoteUserInfoImplBase;"

    const-string v1, "getPackageName"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5
.end method

.method public getPid()I
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/media/MediaSessionManagerImplBase$RemoteUserInfoImplBase;"

    const-string v1, "getPid"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v5, p0, Landroidx/media/MediaSessionManagerImplBase$RemoteUserInfoImplBase;->mPid:I

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/media/MediaSessionManagerImplBase$RemoteUserInfoImplBase;"

    const-string v1, "getPid"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5
.end method

.method public getUid()I
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/media/MediaSessionManagerImplBase$RemoteUserInfoImplBase;"

    const-string v1, "getUid"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v5, p0, Landroidx/media/MediaSessionManagerImplBase$RemoteUserInfoImplBase;->mUid:I

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/media/MediaSessionManagerImplBase$RemoteUserInfoImplBase;"

    const-string v1, "getUid"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 162
    iget-object v1, p0, Landroidx/media/MediaSessionManagerImplBase$RemoteUserInfoImplBase;->mPackageName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroidx/media/MediaSessionManagerImplBase$RemoteUserInfoImplBase;->mPid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroidx/media/MediaSessionManagerImplBase$RemoteUserInfoImplBase;->mUid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Landroidx/core/util/ObjectsCompat;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
