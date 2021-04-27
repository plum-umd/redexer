.class Landroidx/core/os/LocaleListCompat$LocaleListCompatBaseImpl;
.super Ljava/lang/Object;
.source "LocaleListCompat.java"

# interfaces
.implements Landroidx/core/os/LocaleListInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/os/LocaleListCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LocaleListCompatBaseImpl"
.end annotation


# instance fields
.field private mLocaleList:Landroidx/core/os/LocaleListHelper;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Landroidx/core/os/LocaleListHelper;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/util/Locale;

    invoke-direct {v0, v1}, Landroidx/core/os/LocaleListHelper;-><init>([Ljava/util/Locale;)V

    iput-object v0, p0, Landroidx/core/os/LocaleListCompat$LocaleListCompatBaseImpl;->mLocaleList:Landroidx/core/os/LocaleListHelper;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroidx/core/os/LocaleListCompat$LocaleListCompatBaseImpl;"

    const-string v1, "equals"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/core/os/LocaleListCompat$LocaleListCompatBaseImpl;->mLocaleList:Landroidx/core/os/LocaleListHelper;

    check-cast p1, Landroidx/core/os/LocaleListCompat;

    invoke-virtual {p1}, Landroidx/core/os/LocaleListCompat;->unwrap()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v5, p1}, Landroidx/core/os/LocaleListHelper;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/core/os/LocaleListCompat$LocaleListCompatBaseImpl;"

    const-string v1, "equals"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p1
.end method

.method public get(I)Ljava/util/Locale;
    .locals 6

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/core/os/LocaleListCompat$LocaleListCompatBaseImpl;"

    const-string v1, "get"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/core/os/LocaleListCompat$LocaleListCompatBaseImpl;->mLocaleList:Landroidx/core/os/LocaleListHelper;

    invoke-virtual {v5, p1}, Landroidx/core/os/LocaleListHelper;->get(I)Ljava/util/Locale;

    move-result-object p1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/core/os/LocaleListCompat$LocaleListCompatBaseImpl;"

    const-string v1, "get"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p1
.end method

.method public getFirstMatch([Ljava/lang/String;)Ljava/util/Locale;
    .locals 6

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroidx/core/os/LocaleListCompat$LocaleListCompatBaseImpl;"

    const-string v1, "getFirstMatch"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/core/os/LocaleListCompat$LocaleListCompatBaseImpl;->mLocaleList:Landroidx/core/os/LocaleListHelper;

    if-eqz v5, :cond_0

    invoke-virtual {v5, p1}, Landroidx/core/os/LocaleListHelper;->getFirstMatch([Ljava/lang/String;)Ljava/util/Locale;

    move-result-object p1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/core/os/LocaleListCompat$LocaleListCompatBaseImpl;"

    const-string v1, "getFirstMatch"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p1

    :cond_0
    const/4 p1, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/core/os/LocaleListCompat$LocaleListCompatBaseImpl;"

    const-string v1, "getFirstMatch"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p1
.end method

.method public getLocaleList()Ljava/lang/Object;
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/core/os/LocaleListCompat$LocaleListCompatBaseImpl;"

    const-string v1, "getLocaleList"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/core/os/LocaleListCompat$LocaleListCompatBaseImpl;->mLocaleList:Landroidx/core/os/LocaleListHelper;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/core/os/LocaleListCompat$LocaleListCompatBaseImpl;"

    const-string v1, "getLocaleList"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Landroidx/core/os/LocaleListCompat$LocaleListCompatBaseImpl;->mLocaleList:Landroidx/core/os/LocaleListHelper;

    invoke-virtual {v0}, Landroidx/core/os/LocaleListHelper;->hashCode()I

    move-result v0

    return v0
.end method

.method public indexOf(Ljava/util/Locale;)I
    .locals 6

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroidx/core/os/LocaleListCompat$LocaleListCompatBaseImpl;"

    const-string v1, "indexOf"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/core/os/LocaleListCompat$LocaleListCompatBaseImpl;->mLocaleList:Landroidx/core/os/LocaleListHelper;

    invoke-virtual {v5, p1}, Landroidx/core/os/LocaleListHelper;->indexOf(Ljava/util/Locale;)I

    move-result p1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/core/os/LocaleListCompat$LocaleListCompatBaseImpl;"

    const-string v1, "indexOf"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p1
.end method

.method public isEmpty()Z
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/core/os/LocaleListCompat$LocaleListCompatBaseImpl;"

    const-string v1, "isEmpty"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/core/os/LocaleListCompat$LocaleListCompatBaseImpl;->mLocaleList:Landroidx/core/os/LocaleListHelper;

    invoke-virtual {v5}, Landroidx/core/os/LocaleListHelper;->isEmpty()Z

    move-result v5

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/core/os/LocaleListCompat$LocaleListCompatBaseImpl;"

    const-string v1, "isEmpty"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5
.end method

.method public varargs setLocaleList([Ljava/util/Locale;)V
    .locals 6

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroidx/core/os/LocaleListCompat$LocaleListCompatBaseImpl;"

    const-string v1, "setLocaleList"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v5, Landroidx/core/os/LocaleListHelper;

    invoke-direct {v5, p1}, Landroidx/core/os/LocaleListHelper;-><init>([Ljava/util/Locale;)V

    iput-object v5, p0, Landroidx/core/os/LocaleListCompat$LocaleListCompatBaseImpl;->mLocaleList:Landroidx/core/os/LocaleListHelper;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/core/os/LocaleListCompat$LocaleListCompatBaseImpl;"

    const-string v1, "setLocaleList"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public size()I
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/core/os/LocaleListCompat$LocaleListCompatBaseImpl;"

    const-string v1, "size"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/core/os/LocaleListCompat$LocaleListCompatBaseImpl;->mLocaleList:Landroidx/core/os/LocaleListHelper;

    invoke-virtual {v5}, Landroidx/core/os/LocaleListHelper;->size()I

    move-result v5

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/core/os/LocaleListCompat$LocaleListCompatBaseImpl;"

    const-string v1, "size"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5
.end method

.method public toLanguageTags()Ljava/lang/String;
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/core/os/LocaleListCompat$LocaleListCompatBaseImpl;"

    const-string v1, "toLanguageTags"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/core/os/LocaleListCompat$LocaleListCompatBaseImpl;->mLocaleList:Landroidx/core/os/LocaleListHelper;

    invoke-virtual {v5}, Landroidx/core/os/LocaleListHelper;->toLanguageTags()Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/core/os/LocaleListCompat$LocaleListCompatBaseImpl;"

    const-string v1, "toLanguageTags"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/core/os/LocaleListCompat$LocaleListCompatBaseImpl;"

    const-string v1, "toString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/core/os/LocaleListCompat$LocaleListCompatBaseImpl;->mLocaleList:Landroidx/core/os/LocaleListHelper;

    invoke-virtual {v5}, Landroidx/core/os/LocaleListHelper;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/core/os/LocaleListCompat$LocaleListCompatBaseImpl;"

    const-string v1, "toString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5
.end method
