.class public Landroidx/constraintlayout/solver/widgets/Rectangle;
.super Ljava/lang/Object;
.source "Rectangle.java"


# instance fields
.field public height:I

.field public width:I

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(II)Z
    .locals 7

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x6

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/Rectangle;"

    const-string v1, "contains"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v5, p0, Landroidx/constraintlayout/solver/widgets/Rectangle;->x:I

    if-lt p1, v5, :cond_0

    iget v6, p0, Landroidx/constraintlayout/solver/widgets/Rectangle;->width:I

    add-int/2addr v5, v6

    if-ge p1, v5, :cond_0

    iget p1, p0, Landroidx/constraintlayout/solver/widgets/Rectangle;->y:I

    if-lt p2, p1, :cond_0

    iget v5, p0, Landroidx/constraintlayout/solver/widgets/Rectangle;->height:I

    add-int/2addr p1, v5

    if-ge p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/Rectangle;"

    const-string v1, "contains"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p1
.end method

.method public getCenterX()I
    .locals 7

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/Rectangle;"

    const-string v1, "getCenterX"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v5, p0, Landroidx/constraintlayout/solver/widgets/Rectangle;->x:I

    iget v6, p0, Landroidx/constraintlayout/solver/widgets/Rectangle;->width:I

    add-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/Rectangle;"

    const-string v1, "getCenterX"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5
.end method

.method public getCenterY()I
    .locals 7

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/Rectangle;"

    const-string v1, "getCenterY"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v5, p0, Landroidx/constraintlayout/solver/widgets/Rectangle;->y:I

    iget v6, p0, Landroidx/constraintlayout/solver/widgets/Rectangle;->height:I

    add-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/Rectangle;"

    const-string v1, "getCenterY"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5
.end method

.method grow(II)V
    .locals 6

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x6

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/Rectangle;"

    const-string v1, "grow"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v5, p0, Landroidx/constraintlayout/solver/widgets/Rectangle;->x:I

    sub-int/2addr v5, p1

    iput v5, p0, Landroidx/constraintlayout/solver/widgets/Rectangle;->x:I

    iget v5, p0, Landroidx/constraintlayout/solver/widgets/Rectangle;->y:I

    sub-int/2addr v5, p2

    iput v5, p0, Landroidx/constraintlayout/solver/widgets/Rectangle;->y:I

    iget v5, p0, Landroidx/constraintlayout/solver/widgets/Rectangle;->width:I

    mul-int/lit8 p1, p1, 0x2

    add-int/2addr v5, p1

    iput v5, p0, Landroidx/constraintlayout/solver/widgets/Rectangle;->width:I

    iget p1, p0, Landroidx/constraintlayout/solver/widgets/Rectangle;->height:I

    mul-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Rectangle;->height:I

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/Rectangle;"

    const-string v1, "grow"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method intersects(Landroidx/constraintlayout/solver/widgets/Rectangle;)Z
    .locals 8

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/Rectangle;"

    const-string v1, "intersects"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v5, p0, Landroidx/constraintlayout/solver/widgets/Rectangle;->x:I

    iget v6, p1, Landroidx/constraintlayout/solver/widgets/Rectangle;->x:I

    if-lt v5, v6, :cond_0

    iget v7, p1, Landroidx/constraintlayout/solver/widgets/Rectangle;->width:I

    add-int/2addr v6, v7

    if-ge v5, v6, :cond_0

    iget v5, p0, Landroidx/constraintlayout/solver/widgets/Rectangle;->y:I

    iget v6, p1, Landroidx/constraintlayout/solver/widgets/Rectangle;->y:I

    if-lt v5, v6, :cond_0

    iget p1, p1, Landroidx/constraintlayout/solver/widgets/Rectangle;->height:I

    add-int/2addr v6, p1

    if-ge v5, v6, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/Rectangle;"

    const-string v1, "intersects"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p1
.end method

.method public setBounds(IIII)V
    .locals 5

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x6

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x7

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/16 v1, 0x8

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroidx/constraintlayout/solver/widgets/Rectangle;"

    const-string v1, "setBounds"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Rectangle;->x:I

    iput p2, p0, Landroidx/constraintlayout/solver/widgets/Rectangle;->y:I

    iput p3, p0, Landroidx/constraintlayout/solver/widgets/Rectangle;->width:I

    iput p4, p0, Landroidx/constraintlayout/solver/widgets/Rectangle;->height:I

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/constraintlayout/solver/widgets/Rectangle;"

    const-string v1, "setBounds"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
