.class public Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;
.super Ljava/lang/Object;
.source "StaggeredGridLayoutManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mAnchorLayoutFromEnd:Z

.field mAnchorPosition:I

.field mFullSpanItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;",
            ">;"
        }
    .end annotation
.end field

.field mLastLayoutRTL:Z

.field mReverseLayout:Z

.field mSpanLookup:[I

.field mSpanLookupSize:I

.field mSpanOffsets:[I

.field mSpanOffsetsSize:I

.field mVisibleAnchorPosition:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 3238
    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState$1;

    invoke-direct {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState$1;-><init>()V

    sput-object v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 3165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3166
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    .line 3167
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mVisibleAnchorPosition:I

    .line 3168
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    .line 3169
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    if-lez v0, :cond_0

    .line 3170
    new-array v0, v0, [I

    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsets:[I

    .line 3171
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsets:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    .line 3174
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanLookupSize:I

    .line 3175
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanLookupSize:I

    if-lez v0, :cond_1

    .line 3176
    new-array v0, v0, [I

    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanLookup:[I

    .line 3177
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanLookup:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    .line 3179
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mReverseLayout:Z

    .line 3180
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    .line 3181
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_4

    const/4 v1, 0x1

    :cond_4
    iput-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mLastLayoutRTL:Z

    .line 3183
    const-class v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    .line 3184
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 3183
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mFullSpanItems:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;)V
    .locals 1

    .line 3187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3188
    iget v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    .line 3189
    iget v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    .line 3190
    iget v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mVisibleAnchorPosition:I

    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mVisibleAnchorPosition:I

    .line 3191
    iget-object v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsets:[I

    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsets:[I

    .line 3192
    iget v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanLookupSize:I

    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanLookupSize:I

    .line 3193
    iget-object v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanLookup:[I

    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanLookup:[I

    .line 3194
    iget-boolean v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mReverseLayout:Z

    iput-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mReverseLayout:Z

    .line 3195
    iget-boolean v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    iput-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    .line 3196
    iget-boolean v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mLastLayoutRTL:Z

    iput-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mLastLayoutRTL:Z

    .line 3197
    iget-object p1, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mFullSpanItems:Ljava/util/List;

    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mFullSpanItems:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;"

    const-string v1, "describeContents"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v5, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;"

    const-string v1, "describeContents"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5
.end method

.method invalidateAnchorPositionInfo()V
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;"

    const-string v1, "invalidateAnchorPositionInfo"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v5, 0x0

    iput-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsets:[I

    const/4 v5, 0x0

    iput v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    const/4 v5, -0x1

    iput v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    iput v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mVisibleAnchorPosition:I

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;"

    const-string v1, "invalidateAnchorPositionInfo"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method invalidateSpanInfo()V
    .locals 7

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;"

    const-string v1, "invalidateSpanInfo"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v5, 0x0

    iput-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsets:[I

    const/4 v6, 0x0

    iput v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    iput v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanLookupSize:I

    iput-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanLookup:[I

    iput-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mFullSpanItems:Ljava/util/List;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;"

    const-string v1, "invalidateSpanInfo"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const/4 v1, 0x6

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;"

    const-string v1, "writeToParcel"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/os/Parcel;"

    const-string v1, "writeInt"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/os/Parcel;"

    const-string v1, "writeInt"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mVisibleAnchorPosition:I

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/os/Parcel;"

    const-string v1, "writeInt"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/os/Parcel;"

    const-string v1, "writeInt"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/os/Parcel;"

    const-string v1, "writeInt"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/os/Parcel;"

    const-string v1, "writeInt"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    if-lez p2, :cond_0

    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsets:[I

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const/4 v1, 0x5

    aput-object p2, v2, v1

    const-string v0, "Landroid/os/Parcel;"

    const-string v1, "writeIntArray"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/os/Parcel;"

    const-string v1, "writeIntArray"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanLookupSize:I

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/os/Parcel;"

    const-string v1, "writeInt"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/os/Parcel;"

    const-string v1, "writeInt"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanLookupSize:I

    if-lez p2, :cond_1

    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanLookup:[I

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const/4 v1, 0x5

    aput-object p2, v2, v1

    const-string v0, "Landroid/os/Parcel;"

    const-string v1, "writeIntArray"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/os/Parcel;"

    const-string v1, "writeIntArray"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    iget-boolean p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mReverseLayout:Z

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/os/Parcel;"

    const-string v1, "writeInt"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/os/Parcel;"

    const-string v1, "writeInt"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/os/Parcel;"

    const-string v1, "writeInt"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/os/Parcel;"

    const-string v1, "writeInt"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mLastLayoutRTL:Z

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/os/Parcel;"

    const-string v1, "writeInt"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/os/Parcel;"

    const-string v1, "writeInt"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mFullSpanItems:Ljava/util/List;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const/4 v1, 0x5

    aput-object p2, v2, v1

    const-string v0, "Landroid/os/Parcel;"

    const-string v1, "writeList"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/os/Parcel;"

    const-string v1, "writeList"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;"

    const-string v1, "writeToParcel"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
