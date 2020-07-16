.class public final Landroidx/media/AudioAttributesImplBaseParcelizer;
.super Ljava/lang/Object;
.source "AudioAttributesImplBaseParcelizer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Landroidx/versionedparcelable/VersionedParcel;)Landroidx/media/AudioAttributesImplBase;
    .locals 8

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/media/AudioAttributesImplBaseParcelizer;"

    const-string v1, "read"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v5, Landroidx/media/AudioAttributesImplBase;

    invoke-direct {v5}, Landroidx/media/AudioAttributesImplBase;-><init>()V

    iget v6, v5, Landroidx/media/AudioAttributesImplBase;->mUsage:I

    const/4 v7, 0x1

    invoke-virtual {p0, v6, v7}, Landroidx/versionedparcelable/VersionedParcel;->readInt(II)I

    move-result v6

    iput v6, v5, Landroidx/media/AudioAttributesImplBase;->mUsage:I

    iget v6, v5, Landroidx/media/AudioAttributesImplBase;->mContentType:I

    const/4 v7, 0x2

    invoke-virtual {p0, v6, v7}, Landroidx/versionedparcelable/VersionedParcel;->readInt(II)I

    move-result v6

    iput v6, v5, Landroidx/media/AudioAttributesImplBase;->mContentType:I

    iget v6, v5, Landroidx/media/AudioAttributesImplBase;->mFlags:I

    const/4 v7, 0x3

    invoke-virtual {p0, v6, v7}, Landroidx/versionedparcelable/VersionedParcel;->readInt(II)I

    move-result v6

    iput v6, v5, Landroidx/media/AudioAttributesImplBase;->mFlags:I

    iget v6, v5, Landroidx/media/AudioAttributesImplBase;->mLegacyStream:I

    const/4 v7, 0x4

    invoke-virtual {p0, v6, v7}, Landroidx/versionedparcelable/VersionedParcel;->readInt(II)I

    move-result p0

    iput p0, v5, Landroidx/media/AudioAttributesImplBase;->mLegacyStream:I

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/media/AudioAttributesImplBaseParcelizer;"

    const-string v1, "read"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5
.end method

.method public static write(Landroidx/media/AudioAttributesImplBase;Landroidx/versionedparcelable/VersionedParcel;)V
    .locals 7

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroidx/media/AudioAttributesImplBaseParcelizer;"

    const-string v1, "write"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v5, 0x0

    invoke-virtual {p1, v5, v5}, Landroidx/versionedparcelable/VersionedParcel;->setSerializationFlags(ZZ)V

    iget v5, p0, Landroidx/media/AudioAttributesImplBase;->mUsage:I

    const/4 v6, 0x1

    invoke-virtual {p1, v5, v6}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(II)V

    iget v5, p0, Landroidx/media/AudioAttributesImplBase;->mContentType:I

    const/4 v6, 0x2

    invoke-virtual {p1, v5, v6}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(II)V

    iget v5, p0, Landroidx/media/AudioAttributesImplBase;->mFlags:I

    const/4 v6, 0x3

    invoke-virtual {p1, v5, v6}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(II)V

    iget p0, p0, Landroidx/media/AudioAttributesImplBase;->mLegacyStream:I

    const/4 v5, 0x4

    invoke-virtual {p1, p0, v5}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(II)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/media/AudioAttributesImplBaseParcelizer;"

    const-string v1, "write"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
