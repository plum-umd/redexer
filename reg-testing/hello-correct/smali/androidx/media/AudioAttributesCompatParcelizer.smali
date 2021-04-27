.class public final Landroidx/media/AudioAttributesCompatParcelizer;
.super Ljava/lang/Object;
.source "AudioAttributesCompatParcelizer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Landroidx/versionedparcelable/VersionedParcel;)Landroidx/media/AudioAttributesCompat;
    .locals 8

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/media/AudioAttributesCompatParcelizer;"

    const-string v1, "read"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v5, Landroidx/media/AudioAttributesCompat;

    invoke-direct {v5}, Landroidx/media/AudioAttributesCompat;-><init>()V

    iget-object v6, v5, Landroidx/media/AudioAttributesCompat;->mImpl:Landroidx/media/AudioAttributesImpl;

    const/4 v7, 0x1

    invoke-virtual {p0, v6, v7}, Landroidx/versionedparcelable/VersionedParcel;->readVersionedParcelable(Landroidx/versionedparcelable/VersionedParcelable;I)Landroidx/versionedparcelable/VersionedParcelable;

    move-result-object p0

    check-cast p0, Landroidx/media/AudioAttributesImpl;

    iput-object p0, v5, Landroidx/media/AudioAttributesCompat;->mImpl:Landroidx/media/AudioAttributesImpl;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/media/AudioAttributesCompatParcelizer;"

    const-string v1, "read"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5
.end method

.method public static write(Landroidx/media/AudioAttributesCompat;Landroidx/versionedparcelable/VersionedParcel;)V
    .locals 6

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroidx/media/AudioAttributesCompatParcelizer;"

    const-string v1, "write"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v5, 0x0

    invoke-virtual {p1, v5, v5}, Landroidx/versionedparcelable/VersionedParcel;->setSerializationFlags(ZZ)V

    iget-object p0, p0, Landroidx/media/AudioAttributesCompat;->mImpl:Landroidx/media/AudioAttributesImpl;

    const/4 v5, 0x1

    invoke-virtual {p1, p0, v5}, Landroidx/versionedparcelable/VersionedParcel;->writeVersionedParcelable(Landroidx/versionedparcelable/VersionedParcelable;I)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/media/AudioAttributesCompatParcelizer;"

    const-string v1, "write"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
