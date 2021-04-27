.class public abstract Lcom/google/android/gms/common/data/AbstractDataBuffer;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/data/DataBuffer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/data/DataBuffer<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected final mDataHolder:Lcom/google/android/gms/common/data/DataHolder;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/common/data/AbstractDataBuffer;->mDataHolder:Lcom/google/android/gms/common/data/DataHolder;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/common/data/AbstractDataBuffer;->release()V

    return-void
.end method

.method public abstract get(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation
.end method

.method public getCount()I
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/common/data/AbstractDataBuffer;->mDataHolder:Lcom/google/android/gms/common/data/DataHolder;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/common/data/DataHolder;->getCount()I

    move-result v0

    return v0
.end method

.method public getMetadata()Landroid/os/Bundle;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/common/data/AbstractDataBuffer;->mDataHolder:Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {v0}, Lcom/google/android/gms/common/data/DataHolder;->getMetadata()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public isClosed()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/common/data/AbstractDataBuffer;->mDataHolder:Lcom/google/android/gms/common/data/DataHolder;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/common/data/DataHolder;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 9
    new-instance v0, Lcom/google/android/gms/common/data/DataBufferIterator;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/data/DataBufferIterator;-><init>(Lcom/google/android/gms/common/data/DataBuffer;)V

    return-object v0
.end method

.method public release()V
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/common/data/AbstractDataBuffer;->mDataHolder:Lcom/google/android/gms/common/data/DataHolder;

    if-eqz v0, :cond_0

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    :cond_0
    return-void
.end method

.method public singleRefIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 10
    new-instance v0, Lcom/google/android/gms/common/data/SingleRefDataBufferIterator;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/data/SingleRefDataBufferIterator;-><init>(Lcom/google/android/gms/common/data/DataBuffer;)V

    return-object v0
.end method
