.class public abstract Landroidx/recyclerview/widget/AsyncListUtil$ViewCallback;
.super Ljava/lang/Object;
.source "AsyncListUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/AsyncListUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ViewCallback"
.end annotation


# static fields
.field public static final HINT_SCROLL_ASC:I = 0x2

.field public static final HINT_SCROLL_DESC:I = 0x1

.field public static final HINT_SCROLL_NONE:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 521
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public extendRangeInto([I[II)V
    .locals 11

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const/4 v1, 0x6

    aput-object p2, v2, v1

    const/4 v1, 0x7

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/recyclerview/widget/AsyncListUtil$ViewCallback;"

    const-string v1, "extendRangeInto"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v5, 0x1

    aget v6, p1, v5

    const/4 v7, 0x0

    aget v8, p1, v7

    sub-int/2addr v6, v8

    add-int/2addr v6, v5

    div-int/lit8 v8, v6, 0x2

    aget v9, p1, v7

    if-ne p3, v5, :cond_0

    move v10, v6

    goto :goto_0

    :cond_0
    move v10, v8

    :goto_0
    sub-int/2addr v9, v10

    aput v9, p2, v7

    aget p1, p1, v5

    const/4 v7, 0x2

    if-ne p3, v7, :cond_1

    goto :goto_1

    :cond_1
    move v6, v8

    :goto_1
    add-int/2addr p1, v6

    aput p1, p2, v5

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/recyclerview/widget/AsyncListUtil$ViewCallback;"

    const-string v1, "extendRangeInto"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public abstract getItemRangeInto([I)V
.end method

.method public abstract onDataRefresh()V
.end method

.method public abstract onItemLoaded(I)V
.end method
