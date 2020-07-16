.class public Landroidx/core/graphics/drawable/IconCompatParcelizer;
.super Ljava/lang/Object;
.source "IconCompatParcelizer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Landroidx/versionedparcelable/VersionedParcel;)Landroidx/core/graphics/drawable/IconCompat;
    .locals 8

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/core/graphics/drawable/IconCompatParcelizer;"

    const-string v1, "read"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v5, Landroidx/core/graphics/drawable/IconCompat;

    invoke-direct {v5}, Landroidx/core/graphics/drawable/IconCompat;-><init>()V

    iget v6, v5, Landroidx/core/graphics/drawable/IconCompat;->mType:I

    const/4 v7, 0x1

    invoke-virtual {p0, v6, v7}, Landroidx/versionedparcelable/VersionedParcel;->readInt(II)I

    move-result v6

    iput v6, v5, Landroidx/core/graphics/drawable/IconCompat;->mType:I

    iget-object v6, v5, Landroidx/core/graphics/drawable/IconCompat;->mData:[B

    const/4 v7, 0x2

    invoke-virtual {p0, v6, v7}, Landroidx/versionedparcelable/VersionedParcel;->readByteArray([BI)[B

    move-result-object v6

    iput-object v6, v5, Landroidx/core/graphics/drawable/IconCompat;->mData:[B

    iget-object v6, v5, Landroidx/core/graphics/drawable/IconCompat;->mParcelable:Landroid/os/Parcelable;

    const/4 v7, 0x3

    invoke-virtual {p0, v6, v7}, Landroidx/versionedparcelable/VersionedParcel;->readParcelable(Landroid/os/Parcelable;I)Landroid/os/Parcelable;

    move-result-object v6

    iput-object v6, v5, Landroidx/core/graphics/drawable/IconCompat;->mParcelable:Landroid/os/Parcelable;

    iget v6, v5, Landroidx/core/graphics/drawable/IconCompat;->mInt1:I

    const/4 v7, 0x4

    invoke-virtual {p0, v6, v7}, Landroidx/versionedparcelable/VersionedParcel;->readInt(II)I

    move-result v6

    iput v6, v5, Landroidx/core/graphics/drawable/IconCompat;->mInt1:I

    iget v6, v5, Landroidx/core/graphics/drawable/IconCompat;->mInt2:I

    const/4 v7, 0x5

    invoke-virtual {p0, v6, v7}, Landroidx/versionedparcelable/VersionedParcel;->readInt(II)I

    move-result v6

    iput v6, v5, Landroidx/core/graphics/drawable/IconCompat;->mInt2:I

    iget-object v6, v5, Landroidx/core/graphics/drawable/IconCompat;->mTintList:Landroid/content/res/ColorStateList;

    const/4 v7, 0x6

    invoke-virtual {p0, v6, v7}, Landroidx/versionedparcelable/VersionedParcel;->readParcelable(Landroid/os/Parcelable;I)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/content/res/ColorStateList;

    iput-object v6, v5, Landroidx/core/graphics/drawable/IconCompat;->mTintList:Landroid/content/res/ColorStateList;

    iget-object v6, v5, Landroidx/core/graphics/drawable/IconCompat;->mTintModeStr:Ljava/lang/String;

    const/4 v7, 0x7

    invoke-virtual {p0, v6, v7}, Landroidx/versionedparcelable/VersionedParcel;->readString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v5, Landroidx/core/graphics/drawable/IconCompat;->mTintModeStr:Ljava/lang/String;

    invoke-virtual {v5}, Landroidx/core/graphics/drawable/IconCompat;->onPostParceling()V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/core/graphics/drawable/IconCompatParcelizer;"

    const-string v1, "read"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5
.end method

.method public static write(Landroidx/core/graphics/drawable/IconCompat;Landroidx/versionedparcelable/VersionedParcel;)V
    .locals 7

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroidx/core/graphics/drawable/IconCompatParcelizer;"

    const-string v1, "write"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v5, 0x1

    invoke-virtual {p1, v5, v5}, Landroidx/versionedparcelable/VersionedParcel;->setSerializationFlags(ZZ)V

    invoke-virtual {p1}, Landroidx/versionedparcelable/VersionedParcel;->isStream()Z

    move-result v6

    invoke-virtual {p0, v6}, Landroidx/core/graphics/drawable/IconCompat;->onPreParceling(Z)V

    iget v6, p0, Landroidx/core/graphics/drawable/IconCompat;->mType:I

    invoke-virtual {p1, v6, v5}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(II)V

    iget-object v5, p0, Landroidx/core/graphics/drawable/IconCompat;->mData:[B

    const/4 v6, 0x2

    invoke-virtual {p1, v5, v6}, Landroidx/versionedparcelable/VersionedParcel;->writeByteArray([BI)V

    iget-object v5, p0, Landroidx/core/graphics/drawable/IconCompat;->mParcelable:Landroid/os/Parcelable;

    const/4 v6, 0x3

    invoke-virtual {p1, v5, v6}, Landroidx/versionedparcelable/VersionedParcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget v5, p0, Landroidx/core/graphics/drawable/IconCompat;->mInt1:I

    const/4 v6, 0x4

    invoke-virtual {p1, v5, v6}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(II)V

    iget v5, p0, Landroidx/core/graphics/drawable/IconCompat;->mInt2:I

    const/4 v6, 0x5

    invoke-virtual {p1, v5, v6}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(II)V

    iget-object v5, p0, Landroidx/core/graphics/drawable/IconCompat;->mTintList:Landroid/content/res/ColorStateList;

    const/4 v6, 0x6

    invoke-virtual {p1, v5, v6}, Landroidx/versionedparcelable/VersionedParcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object p0, p0, Landroidx/core/graphics/drawable/IconCompat;->mTintModeStr:Ljava/lang/String;

    const/4 v5, 0x7

    invoke-virtual {p1, p0, v5}, Landroidx/versionedparcelable/VersionedParcel;->writeString(Ljava/lang/String;I)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/core/graphics/drawable/IconCompatParcelizer;"

    const-string v1, "write"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
